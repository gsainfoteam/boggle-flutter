import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boggle_flutter/app/modules/domain/enums/page_source.dart';
import 'package:boggle_flutter/app/modules/domain/enums/post_type.dart';

part 'analytics_event.freezed.dart';
part 'analytics_event.g.dart';

// 우선 ziggle에 있는 event들 모두 가져옴. 개발이 진행됨에 따라 boggle 맞춤으로 수정 예정
@freezed
class AnalyticsEvent with _$AnalyticsEvent {
  const AnalyticsEvent._();
  factory AnalyticsEvent.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsEventFromJson(json);

  // 메인화면 이벤트
  const factory AnalyticsEvent.feed() = _Feed;
  const factory AnalyticsEvent.category() = _Category;
  const factory AnalyticsEvent.categoryType(PostType postType) = _CategoryType;
  const factory AnalyticsEvent.list(PostType postType) = _List;
  const factory AnalyticsEvent.profile() = _Profile;
  const factory AnalyticsEvent.search([PageSource? from]) = _Search;
  const factory AnalyticsEvent.write([PageSource? from]) = _Write;
  const factory AnalyticsEvent.back(PageSource from) = _Back;

  // 공지 관련 이벤트
  const factory AnalyticsEvent.post(int id, [PageSource? from]) = _Post;
  const factory AnalyticsEvent.postShare(int id, PageSource from) = _PostShare;
  const factory AnalyticsEvent.postCopy(int id) = _PostCopy;
  const factory AnalyticsEvent.postEdit(int id) = _PostEdit;
  const factory AnalyticsEvent.postDelete(int id) = _PostDelete;
  const factory AnalyticsEvent.postSendNotification(int id) =
      _PostSendNotification;

  // 공지 작성 이벤트
  const factory AnalyticsEvent.writeSaveDraft() = _WriteSaveDraft;
  const factory AnalyticsEvent.writeWithoutSaveDraft() = _WriteWithoutSaveDraft;
  const factory AnalyticsEvent.writeContinueWriting() = _WriteContinueWriting;
  const factory AnalyticsEvent.writeAddPhoto() = _WriteAddPhoto;
  const factory AnalyticsEvent.writeUseAiTranslation() = _WriteUseAiTranslation;
  const factory AnalyticsEvent.writeAbortUseAiTranslation() =
      _WriteAbortUseAiTranslation;
  const factory AnalyticsEvent.writeUndoUseAiTranslation() =
      _WriteUndoUseAiTranslation;
  const factory AnalyticsEvent.writeConfig() = _WriteConfig;
  const factory AnalyticsEvent.writeConfigChangeAccount() =
      _WriteConfigChangeAccount;
  const factory AnalyticsEvent.writeConfigChangeAccountTo(int id) =
      _WriteConfigChangeAccountTo;
  const factory AnalyticsEvent.writeConfigAddDeadline() =
      _WriteConfigAddDeadline;
  const factory AnalyticsEvent.writeConfigSetDeadline() =
      _WriteConfigSetDeadline;
  const factory AnalyticsEvent.writeConfigSetDeadlineCancel() =
      _WriteConfigSetDeadlineCancel;
  const factory AnalyticsEvent.writeConfigChangeDeadline() =
      _WriteConfigChangeDeadline;
  const factory AnalyticsEvent.writeConfigDeleteDeadline() =
      _WriteConfigDeleteDeadline;
  const factory AnalyticsEvent.writeConfigCategory(PostType postType) =
      _WriteConfigCategory;
  const factory AnalyticsEvent.writeConfigAddHashtag() = _WriteConfigAddHashtag;
  const factory AnalyticsEvent.writeConfigDoneHashtag() =
      _WriteConfigDoneHashtag;
  const factory AnalyticsEvent.writeConfigAddHashtagAutocomplete() =
      _WriteConfigAddHashtagAutocomplete;
  const factory AnalyticsEvent.writeConfigAddHashtagDelete() =
      _WriteConfigAddHashtagDelete;
  const factory AnalyticsEvent.writeConfigDeleteHashtag() =
      _WriteConfigDeleteHashtag;
  const factory AnalyticsEvent.writeConfigPreview() = _WriteConfigPreview;
  const factory AnalyticsEvent.writeConfigPublish() = _WriteConfigPublish;
  const factory AnalyticsEvent.writeConfigPublishAgree(
      String value, String type) = _WriteConfigPublishAgree;
  const factory AnalyticsEvent.writeConfigPublishUpload() =
      _WriteConfigPublishUpload;

// 공지 수정 이벤트
  const factory AnalyticsEvent.postEditPublish(int id) = _PostEditPublish;
  const factory AnalyticsEvent.postEditBody(int id) = _PostEditBody;
  const factory AnalyticsEvent.postEditBodyUseAiTranslation() =
      _PostEditBodyUseAiTranslation;
  const factory AnalyticsEvent.postEditBodyAbortUseAiTranslation() =
      _PostEditBodyAbortUseAiTranslation;
  const factory AnalyticsEvent.postEditBodyUndoUseAiTranslation() =
      _PostEditBodyUndoUseAiTranslation;
  const factory AnalyticsEvent.postEditEnglish(int id) = _PostEditEnglish;
  const factory AnalyticsEvent.postEditAdditional(int id) = _PostEditAdditional;
  const factory AnalyticsEvent.postEditAdditionalDone() =
      _PostEditAdditionalDone;
  const factory AnalyticsEvent.postEditChangeDeadline([int? id]) =
      _PostEditChangeDeadline;
  const factory AnalyticsEvent.postEditSetDeadline() = _PostEditSetDeadline;
  const factory AnalyticsEvent.postEditSetDeadlineCancel() =
      _PostEditSetDeadlineCancel;
  const factory AnalyticsEvent.postEditPreview(int id) = _PostEditPreview;

// 프로필 페이지 이벤트
  const factory AnalyticsEvent.profileSetting() = _ProfileSetting;
  const factory AnalyticsEvent.profileMyPosts() = _ProfileMyPosts;
  const factory AnalyticsEvent.profileFeedback() = _ProfileFeedback;
  const factory AnalyticsEvent.profileLogout(PageSource from) = _ProfileLogout;
  const factory AnalyticsEvent.profileWithdraw() = _ProfileWithdraw;
  const factory AnalyticsEvent.profileLogin(PageSource from) = _ProfileLogin;
  const factory AnalyticsEvent.profileSettingEnableNotification() =
      _ProfileSettingEnableNotification;
  const factory AnalyticsEvent.profileSettingInformation() =
      _ProfileSettingInformation;
  const factory AnalyticsEvent.profileSettingInformationTos() =
      _ProfileSettingInformationTos;
  const factory AnalyticsEvent.profileSettingInformationPrivacy() =
      _ProfileSettingInformationPrivacy;
  const factory AnalyticsEvent.profileSettingInformationLicense() =
      _ProfileSettingInformationLicense;

  Map<String, Object> get parameters {
    final json = toJson();
    json.remove('runtimeType');
    json.removeWhere((key, value) => value == null);
    return json.cast<String, Object>();
  }

  String get name {
    final json = toJson();
    return _camelToSnake(json['runtimeType']);
  }
}

String _camelToSnake(String text) {
  return text.replaceAllMapped(
    RegExp(r'[A-Z]'),
    (Match match) => '_${match.group(0)!.toLowerCase()}',
  );
}
