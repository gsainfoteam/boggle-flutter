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
      $enumDecode(_$PostTypeEnumMap, json['postType']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CategoryTypeImplToJson(_$CategoryTypeImpl instance) =>
    <String, dynamic>{
      'postType': _$PostTypeEnumMap[instance.postType]!,
      'runtimeType': instance.$type,
    };

const _$PostTypeEnumMap = {
  PostType.general: 'general',
  PostType.written: 'written',
  PostType.deadline: 'deadline',
  PostType.study: 'study',
  PostType.hobby: 'hobby',
  PostType.project: 'project',
  PostType.delivery: 'delivery',
  PostType.roommate: 'roommate',
  PostType.group: 'group',
  PostType.dummy: 'dummy',
};

_$ListImpl _$$ListImplFromJson(Map<String, dynamic> json) => _$ListImpl(
      $enumDecode(_$PostTypeEnumMap, json['postType']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ListImplToJson(_$ListImpl instance) =>
    <String, dynamic>{
      'postType': _$PostTypeEnumMap[instance.postType]!,
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

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      (json['id'] as num).toInt(),
      $enumDecodeNullable(_$PageSourceEnumMap, json['from']),
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': _$PageSourceEnumMap[instance.from],
      'runtimeType': instance.$type,
    };

_$PostShareImpl _$$PostShareImplFromJson(Map<String, dynamic> json) =>
    _$PostShareImpl(
      (json['id'] as num).toInt(),
      $enumDecode(_$PageSourceEnumMap, json['from']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostShareImplToJson(_$PostShareImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': _$PageSourceEnumMap[instance.from]!,
      'runtimeType': instance.$type,
    };

_$PostCopyImpl _$$PostCopyImplFromJson(Map<String, dynamic> json) =>
    _$PostCopyImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostCopyImplToJson(_$PostCopyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$PostEditImpl _$$PostEditImplFromJson(Map<String, dynamic> json) =>
    _$PostEditImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostEditImplToJson(_$PostEditImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$PostDeleteImpl _$$PostDeleteImplFromJson(Map<String, dynamic> json) =>
    _$PostDeleteImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostDeleteImplToJson(_$PostDeleteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$PostSendNotificationImpl _$$PostSendNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$PostSendNotificationImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostSendNotificationImplToJson(
        _$PostSendNotificationImpl instance) =>
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
      $enumDecode(_$PostTypeEnumMap, json['postType']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WriteConfigCategoryImplToJson(
        _$WriteConfigCategoryImpl instance) =>
    <String, dynamic>{
      'postType': _$PostTypeEnumMap[instance.postType]!,
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

_$PostEditPublishImpl _$$PostEditPublishImplFromJson(
        Map<String, dynamic> json) =>
    _$PostEditPublishImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostEditPublishImplToJson(
        _$PostEditPublishImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$PostEditBodyImpl _$$PostEditBodyImplFromJson(Map<String, dynamic> json) =>
    _$PostEditBodyImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostEditBodyImplToJson(_$PostEditBodyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$PostEditBodyUseAiTranslationImpl _$$PostEditBodyUseAiTranslationImplFromJson(
        Map<String, dynamic> json) =>
    _$PostEditBodyUseAiTranslationImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostEditBodyUseAiTranslationImplToJson(
        _$PostEditBodyUseAiTranslationImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$PostEditBodyAbortUseAiTranslationImpl
    _$$PostEditBodyAbortUseAiTranslationImplFromJson(
            Map<String, dynamic> json) =>
        _$PostEditBodyAbortUseAiTranslationImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$PostEditBodyAbortUseAiTranslationImplToJson(
        _$PostEditBodyAbortUseAiTranslationImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$PostEditBodyUndoUseAiTranslationImpl
    _$$PostEditBodyUndoUseAiTranslationImplFromJson(
            Map<String, dynamic> json) =>
        _$PostEditBodyUndoUseAiTranslationImpl(
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$PostEditBodyUndoUseAiTranslationImplToJson(
        _$PostEditBodyUndoUseAiTranslationImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$PostEditEnglishImpl _$$PostEditEnglishImplFromJson(
        Map<String, dynamic> json) =>
    _$PostEditEnglishImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostEditEnglishImplToJson(
        _$PostEditEnglishImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$PostEditAdditionalImpl _$$PostEditAdditionalImplFromJson(
        Map<String, dynamic> json) =>
    _$PostEditAdditionalImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostEditAdditionalImplToJson(
        _$PostEditAdditionalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$PostEditAdditionalDoneImpl _$$PostEditAdditionalDoneImplFromJson(
        Map<String, dynamic> json) =>
    _$PostEditAdditionalDoneImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostEditAdditionalDoneImplToJson(
        _$PostEditAdditionalDoneImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$PostEditChangeDeadlineImpl _$$PostEditChangeDeadlineImplFromJson(
        Map<String, dynamic> json) =>
    _$PostEditChangeDeadlineImpl(
      (json['id'] as num?)?.toInt(),
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostEditChangeDeadlineImplToJson(
        _$PostEditChangeDeadlineImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$PostEditSetDeadlineImpl _$$PostEditSetDeadlineImplFromJson(
        Map<String, dynamic> json) =>
    _$PostEditSetDeadlineImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostEditSetDeadlineImplToJson(
        _$PostEditSetDeadlineImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$PostEditSetDeadlineCancelImpl _$$PostEditSetDeadlineCancelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostEditSetDeadlineCancelImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostEditSetDeadlineCancelImplToJson(
        _$PostEditSetDeadlineCancelImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$PostEditPreviewImpl _$$PostEditPreviewImplFromJson(
        Map<String, dynamic> json) =>
    _$PostEditPreviewImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostEditPreviewImplToJson(
        _$PostEditPreviewImpl instance) =>
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

_$ProfileMyPostsImpl _$$ProfileMyPostsImplFromJson(Map<String, dynamic> json) =>
    _$ProfileMyPostsImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ProfileMyPostsImplToJson(
        _$ProfileMyPostsImpl instance) =>
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
