// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedImpl _$$FeedImplFromJson(Map<String, dynamic> json) => _$FeedImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FeedImplToJson(_$FeedImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$CategoryTypeImpl _$$CategoryTypeImplFromJson(Map<String, dynamic> json) =>
    _$CategoryTypeImpl(
      $enumDecode(_$NoticeTypeEnumMap, json['noticeType']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CategoryTypeImplToJson(_$CategoryTypeImpl instance) =>
    <String, dynamic>{
      'noticeType': _$NoticeTypeEnumMap[instance.noticeType]!,
      'runtimeType': instance.$type,
    };

const _$NoticeTypeEnumMap = {
  NoticeType.general: 'general',
  NoticeType.written: 'written',
  NoticeType.deadline: 'deadline',
  NoticeType.study: 'study',
  NoticeType.hobby: 'hobby',
  NoticeType.project: 'project',
  NoticeType.delivery: 'delivery',
  NoticeType.roommate: 'roommate',
};

_$ListImpl _$$ListImplFromJson(Map<String, dynamic> json) => _$ListImpl(
      $enumDecode(_$NoticeTypeEnumMap, json['noticeType']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ListImplToJson(_$ListImpl instance) =>
    <String, dynamic>{
      'noticeType': _$NoticeTypeEnumMap[instance.noticeType]!,
      'runtimeType': instance.$type,
    };

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$SearchImpl _$$SearchImplFromJson(Map<String, dynamic> json) => _$SearchImpl(
      $enumDecodeNullable(_$PageSourceEnumMap, json['from']),
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SearchImplToJson(_$SearchImpl instance) =>
    <String, dynamic>{
      'from': _$PageSourceEnumMap[instance.from],
      'runtimeType': instance.$type,
    };

const _$PageSourceEnumMap = {
  PageSource.category: 'category',
  PageSource.post: 'post',
  PageSource.home: 'home',
  PageSource.profile: 'profile',
  PageSource.postEdit: 'postEdit',
  PageSource.write: 'write',
};

_$WriteImpl _$$WriteImplFromJson(Map<String, dynamic> json) => _$WriteImpl(
      $enumDecodeNullable(_$PageSourceEnumMap, json['from']),
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteImplToJson(_$WriteImpl instance) =>
    <String, dynamic>{
      'from': _$PageSourceEnumMap[instance.from],
      'runtimeType': instance.$type,
    };

_$BackImpl _$$BackImplFromJson(Map<String, dynamic> json) => _$BackImpl(
      $enumDecode(_$PageSourceEnumMap, json['from']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BackImplToJson(_$BackImpl instance) =>
    <String, dynamic>{
      'from': _$PageSourceEnumMap[instance.from]!,
      'runtimeType': instance.$type,
    };

_$NoticeImpl _$$NoticeImplFromJson(Map<String, dynamic> json) => _$NoticeImpl(
      (json['id'] as num).toInt(),
      $enumDecodeNullable(_$PageSourceEnumMap, json['from']),
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeImplToJson(_$NoticeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': _$PageSourceEnumMap[instance.from],
      'runtimeType': instance.$type,
    };

_$NoticeShareImpl _$$NoticeShareImplFromJson(Map<String, dynamic> json) =>
    _$NoticeShareImpl(
      (json['id'] as num).toInt(),
      $enumDecode(_$PageSourceEnumMap, json['from']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeShareImplToJson(_$NoticeShareImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': _$PageSourceEnumMap[instance.from]!,
      'runtimeType': instance.$type,
    };

_$NoticeCopyImpl _$$NoticeCopyImplFromJson(Map<String, dynamic> json) =>
    _$NoticeCopyImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeCopyImplToJson(_$NoticeCopyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$NoticeEditImpl _$$NoticeEditImplFromJson(Map<String, dynamic> json) =>
    _$NoticeEditImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeEditImplToJson(_$NoticeEditImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$NoticeDeleteImpl _$$NoticeDeleteImplFromJson(Map<String, dynamic> json) =>
    _$NoticeDeleteImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeDeleteImplToJson(_$NoticeDeleteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$NoticeSendNotificationImpl _$$NoticeSendNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$NoticeSendNotificationImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeSendNotificationImplToJson(
        _$NoticeSendNotificationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$WriteSaveDraftImpl _$$WriteSaveDraftImplFromJson(Map<String, dynamic> json) =>
    _$WriteSaveDraftImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteSaveDraftImplToJson(
        _$WriteSaveDraftImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteWithoutSaveDraftImpl _$$WriteWithoutSaveDraftImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteWithoutSaveDraftImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteWithoutSaveDraftImplToJson(
        _$WriteWithoutSaveDraftImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteContinueWritingImpl _$$WriteContinueWritingImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteContinueWritingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteContinueWritingImplToJson(
        _$WriteContinueWritingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteAddPhotoImpl _$$WriteAddPhotoImplFromJson(Map<String, dynamic> json) =>
    _$WriteAddPhotoImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteAddPhotoImplToJson(_$WriteAddPhotoImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteUseAiTranslationImpl _$$WriteUseAiTranslationImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteUseAiTranslationImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteUseAiTranslationImplToJson(
        _$WriteUseAiTranslationImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteAbortUseAiTranslationImpl _$$WriteAbortUseAiTranslationImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteAbortUseAiTranslationImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteAbortUseAiTranslationImplToJson(
        _$WriteAbortUseAiTranslationImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteUndoUseAiTranslationImpl _$$WriteUndoUseAiTranslationImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteUndoUseAiTranslationImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteUndoUseAiTranslationImplToJson(
        _$WriteUndoUseAiTranslationImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteConfigImpl _$$WriteConfigImplFromJson(Map<String, dynamic> json) =>
    _$WriteConfigImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigImplToJson(_$WriteConfigImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteConfigChangeAccountImpl _$$WriteConfigChangeAccountImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteConfigChangeAccountImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigChangeAccountImplToJson(
        _$WriteConfigChangeAccountImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteConfigChangeAccountToImpl _$$WriteConfigChangeAccountToImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteConfigChangeAccountToImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigChangeAccountToImplToJson(
        _$WriteConfigChangeAccountToImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$WriteConfigAddDeadlineImpl _$$WriteConfigAddDeadlineImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteConfigAddDeadlineImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigAddDeadlineImplToJson(
        _$WriteConfigAddDeadlineImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteConfigSetDeadlineImpl _$$WriteConfigSetDeadlineImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteConfigSetDeadlineImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigSetDeadlineImplToJson(
        _$WriteConfigSetDeadlineImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteConfigSetDeadlineCancelImpl _$$WriteConfigSetDeadlineCancelImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteConfigSetDeadlineCancelImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigSetDeadlineCancelImplToJson(
        _$WriteConfigSetDeadlineCancelImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteConfigChangeDeadlineImpl _$$WriteConfigChangeDeadlineImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteConfigChangeDeadlineImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigChangeDeadlineImplToJson(
        _$WriteConfigChangeDeadlineImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteConfigDeleteDeadlineImpl _$$WriteConfigDeleteDeadlineImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteConfigDeleteDeadlineImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigDeleteDeadlineImplToJson(
        _$WriteConfigDeleteDeadlineImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteConfigCategoryImpl _$$WriteConfigCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteConfigCategoryImpl(
      $enumDecode(_$NoticeTypeEnumMap, json['noticeType']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigCategoryImplToJson(
        _$WriteConfigCategoryImpl instance) =>
    <String, dynamic>{
      'noticeType': _$NoticeTypeEnumMap[instance.noticeType]!,
      'runtimeType': instance.$type,
    };

_$WriteConfigAddHashtagImpl _$$WriteConfigAddHashtagImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteConfigAddHashtagImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigAddHashtagImplToJson(
        _$WriteConfigAddHashtagImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteConfigDoneHashtagImpl _$$WriteConfigDoneHashtagImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteConfigDoneHashtagImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigDoneHashtagImplToJson(
        _$WriteConfigDoneHashtagImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteConfigAddHashtagAutocompleteImpl
    _$$WriteConfigAddHashtagAutocompleteImplFromJson(
            Map<String, dynamic> json) =>
        _$WriteConfigAddHashtagAutocompleteImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$WriteConfigAddHashtagAutocompleteImplToJson(
        _$WriteConfigAddHashtagAutocompleteImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteConfigAddHashtagDeleteImpl _$$WriteConfigAddHashtagDeleteImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteConfigAddHashtagDeleteImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigAddHashtagDeleteImplToJson(
        _$WriteConfigAddHashtagDeleteImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteConfigDeleteHashtagImpl _$$WriteConfigDeleteHashtagImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteConfigDeleteHashtagImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigDeleteHashtagImplToJson(
        _$WriteConfigDeleteHashtagImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteConfigPreviewImpl _$$WriteConfigPreviewImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteConfigPreviewImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigPreviewImplToJson(
        _$WriteConfigPreviewImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteConfigPublishImpl _$$WriteConfigPublishImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteConfigPublishImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigPublishImplToJson(
        _$WriteConfigPublishImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$WriteConfigPublishAgreeImpl _$$WriteConfigPublishAgreeImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteConfigPublishAgreeImpl(
      json['value'] as String,
      json['type'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigPublishAgreeImplToJson(
        _$WriteConfigPublishAgreeImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'type': instance.type,
      'runtimeType': instance.$type,
    };

_$WriteConfigPublishUploadImpl _$$WriteConfigPublishUploadImplFromJson(
        Map<String, dynamic> json) =>
    _$WriteConfigPublishUploadImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigPublishUploadImplToJson(
        _$WriteConfigPublishUploadImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$NoticeEditPublishImpl _$$NoticeEditPublishImplFromJson(
        Map<String, dynamic> json) =>
    _$NoticeEditPublishImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeEditPublishImplToJson(
        _$NoticeEditPublishImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$NoticeEditBodyImpl _$$NoticeEditBodyImplFromJson(Map<String, dynamic> json) =>
    _$NoticeEditBodyImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeEditBodyImplToJson(
        _$NoticeEditBodyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$NoticeEditBodyUseAiTranslationImpl
    _$$NoticeEditBodyUseAiTranslationImplFromJson(Map<String, dynamic> json) =>
        _$NoticeEditBodyUseAiTranslationImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$NoticeEditBodyUseAiTranslationImplToJson(
        _$NoticeEditBodyUseAiTranslationImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$NoticeEditBodyAbortUseAiTranslationImpl
    _$$NoticeEditBodyAbortUseAiTranslationImplFromJson(
            Map<String, dynamic> json) =>
        _$NoticeEditBodyAbortUseAiTranslationImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$NoticeEditBodyAbortUseAiTranslationImplToJson(
        _$NoticeEditBodyAbortUseAiTranslationImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$NoticeEditBodyUndoUseAiTranslationImpl
    _$$NoticeEditBodyUndoUseAiTranslationImplFromJson(
            Map<String, dynamic> json) =>
        _$NoticeEditBodyUndoUseAiTranslationImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$NoticeEditBodyUndoUseAiTranslationImplToJson(
        _$NoticeEditBodyUndoUseAiTranslationImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$NoticeEditEnglishImpl _$$NoticeEditEnglishImplFromJson(
        Map<String, dynamic> json) =>
    _$NoticeEditEnglishImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeEditEnglishImplToJson(
        _$NoticeEditEnglishImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$NoticeEditAdditionalImpl _$$NoticeEditAdditionalImplFromJson(
        Map<String, dynamic> json) =>
    _$NoticeEditAdditionalImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeEditAdditionalImplToJson(
        _$NoticeEditAdditionalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$NoticeEditAdditionalDoneImpl _$$NoticeEditAdditionalDoneImplFromJson(
        Map<String, dynamic> json) =>
    _$NoticeEditAdditionalDoneImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeEditAdditionalDoneImplToJson(
        _$NoticeEditAdditionalDoneImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$NoticeEditChangeDeadlineImpl _$$NoticeEditChangeDeadlineImplFromJson(
        Map<String, dynamic> json) =>
    _$NoticeEditChangeDeadlineImpl(
      (json['id'] as num?)?.toInt(),
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeEditChangeDeadlineImplToJson(
        _$NoticeEditChangeDeadlineImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$NoticeEditSetDeadlineImpl _$$NoticeEditSetDeadlineImplFromJson(
        Map<String, dynamic> json) =>
    _$NoticeEditSetDeadlineImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeEditSetDeadlineImplToJson(
        _$NoticeEditSetDeadlineImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$NoticeEditSetDeadlineCancelImpl _$$NoticeEditSetDeadlineCancelImplFromJson(
        Map<String, dynamic> json) =>
    _$NoticeEditSetDeadlineCancelImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeEditSetDeadlineCancelImplToJson(
        _$NoticeEditSetDeadlineCancelImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$NoticeEditPreviewImpl _$$NoticeEditPreviewImplFromJson(
        Map<String, dynamic> json) =>
    _$NoticeEditPreviewImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NoticeEditPreviewImplToJson(
        _$NoticeEditPreviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$ProfileSettingImpl _$$ProfileSettingImplFromJson(Map<String, dynamic> json) =>
    _$ProfileSettingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ProfileSettingImplToJson(
        _$ProfileSettingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ProfileMyNoticesImpl _$$ProfileMyNoticesImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileMyNoticesImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ProfileMyNoticesImplToJson(
        _$ProfileMyNoticesImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ProfileFeedbackImpl _$$ProfileFeedbackImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileFeedbackImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ProfileFeedbackImplToJson(
        _$ProfileFeedbackImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ProfileLogoutImpl _$$ProfileLogoutImplFromJson(Map<String, dynamic> json) =>
    _$ProfileLogoutImpl(
      $enumDecode(_$PageSourceEnumMap, json['from']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ProfileLogoutImplToJson(_$ProfileLogoutImpl instance) =>
    <String, dynamic>{
      'from': _$PageSourceEnumMap[instance.from]!,
      'runtimeType': instance.$type,
    };

_$ProfileWithdrawImpl _$$ProfileWithdrawImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileWithdrawImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ProfileWithdrawImplToJson(
        _$ProfileWithdrawImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ProfileLoginImpl _$$ProfileLoginImplFromJson(Map<String, dynamic> json) =>
    _$ProfileLoginImpl(
      $enumDecode(_$PageSourceEnumMap, json['from']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ProfileLoginImplToJson(_$ProfileLoginImpl instance) =>
    <String, dynamic>{
      'from': _$PageSourceEnumMap[instance.from]!,
      'runtimeType': instance.$type,
    };

_$ProfileSettingEnableNotificationImpl
    _$$ProfileSettingEnableNotificationImplFromJson(
            Map<String, dynamic> json) =>
        _$ProfileSettingEnableNotificationImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$ProfileSettingEnableNotificationImplToJson(
        _$ProfileSettingEnableNotificationImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ProfileSettingInformationImpl _$$ProfileSettingInformationImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileSettingInformationImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ProfileSettingInformationImplToJson(
        _$ProfileSettingInformationImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ProfileSettingInformationTosImpl _$$ProfileSettingInformationTosImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileSettingInformationTosImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ProfileSettingInformationTosImplToJson(
        _$ProfileSettingInformationTosImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ProfileSettingInformationPrivacyImpl
    _$$ProfileSettingInformationPrivacyImplFromJson(
            Map<String, dynamic> json) =>
        _$ProfileSettingInformationPrivacyImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$ProfileSettingInformationPrivacyImplToJson(
        _$ProfileSettingInformationPrivacyImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ProfileSettingInformationLicenseImpl
    _$$ProfileSettingInformationLicenseImplFromJson(
            Map<String, dynamic> json) =>
        _$ProfileSettingInformationLicenseImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$ProfileSettingInformationLicenseImplToJson(
        _$ProfileSettingInformationLicenseImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
