import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:boggle_flutter/app/modules/data/model/analytics_event.dart';
import 'package:boggle_flutter/app/modules/domain/enums/event_type.dart';
import 'package:boggle_flutter/app/modules/domain/repositories/analytics_repository.dart';
import 'package:boggle_flutter/app/modules/domain/entities/post_entity.dart';
import 'package:boggle_flutter/app/modules/domain/repositories/post_repository.dart';

part 'post_bloc.freezed.dart';

@injectable
class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository _repository;
  final AnalyticsRepository _analyticsRepository;

  PostBloc(this._repository, this._analyticsRepository)
      : super(const _Initial()) {
    on<_Load>((event, emit) async {
      try {
        emit(_Loaded(event.entity));
        emit(_Loaded(await _repository.getPost(event.entity.uuid)));
      } catch (e) {
        emit(PostState.error(e.toString()));
      }
    });
    on<_SendNotification>((event, emit) async {
      if (state.entity == null) return;
      try {
        emit(_Loading(state.entity!.copyWith(publishedAt: DateTime.now())));
        _analyticsRepository.logEvent(
          EventType.action,
          AnalyticsEvent.postSendNotification(state.entity!.id),
        );
        final entity = await _repository.sendNotification(state.entity!.id);
        emit(_Loaded(entity));
      } catch (e) {
        emit(PostState.error(e.toString()));
      }
    });
    on<_Delete>((event, emit) async {
      if (state.entity == null) return;
      try {
        emit(_Loading(state.entity!));
        _analyticsRepository.logEvent(
          EventType.action,
          AnalyticsEvent.postDelete(state.entity!.id),
        );
        await _repository.deletePost(state.entity!.id);
        emit(const _Deleted());
      } catch (e) {
        emit(PostState.error(e.toString()));
      }
    });
    on<_GetFull>((event, emit) async {
      if (state.entity == null) return;
      try {
        emit(_Loading(state.entity!));
        final post = await _repository.getPost(state.entity!.uuid);
        emit(_Loaded(post));
      } catch (e) {
        emit(PostState.error(e.toString()));
      }
    });
  }
}

@freezed
sealed class PostEvent with _$PostEvent {
  const factory PostEvent.load(PostEntity entity) = _Load;
  const factory PostEvent.sendNotification() = _SendNotification;
  const factory PostEvent.delete() = _Delete;
  const factory PostEvent.getFull() = _GetFull;
}

@freezed
sealed class PostState with _$PostState {
  const PostState._();
  const factory PostState.initial() = _Initial;
  const factory PostState.loaded(PostEntity entity) = _Loaded;
  const factory PostState.loading(PostEntity entity) = _Loading;
  const factory PostState.deleted() = _Deleted;
  const factory PostState.error(String message) = _Error;

  PostEntity? get entity => mapOrNull(loaded: (state) => state.entity);
  bool get isLoaded => this is _Loaded;
  bool get isDeleted => this is _Deleted;
}
