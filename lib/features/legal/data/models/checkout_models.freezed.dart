// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CheckoutSteps _$CheckoutStepsFromJson(Map<String, dynamic> json) {
  return _CheckoutSteps.fromJson(json);
}

/// @nodoc
mixin _$CheckoutSteps {
  LocalizedText get briefTitle => throw _privateConstructorUsedError;
  LocalizedText get summaryTitle => throw _privateConstructorUsedError;

  /// Serializes this CheckoutSteps to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckoutSteps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutStepsCopyWith<CheckoutSteps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStepsCopyWith<$Res> {
  factory $CheckoutStepsCopyWith(
    CheckoutSteps value,
    $Res Function(CheckoutSteps) then,
  ) = _$CheckoutStepsCopyWithImpl<$Res, CheckoutSteps>;
  @useResult
  $Res call({LocalizedText briefTitle, LocalizedText summaryTitle});

  $LocalizedTextCopyWith<$Res> get briefTitle;
  $LocalizedTextCopyWith<$Res> get summaryTitle;
}

/// @nodoc
class _$CheckoutStepsCopyWithImpl<$Res, $Val extends CheckoutSteps>
    implements $CheckoutStepsCopyWith<$Res> {
  _$CheckoutStepsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutSteps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? briefTitle = null, Object? summaryTitle = null}) {
    return _then(
      _value.copyWith(
            briefTitle:
                null == briefTitle
                    ? _value.briefTitle
                    : briefTitle // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            summaryTitle:
                null == summaryTitle
                    ? _value.summaryTitle
                    : summaryTitle // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
          )
          as $Val,
    );
  }

  /// Create a copy of CheckoutSteps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get briefTitle {
    return $LocalizedTextCopyWith<$Res>(_value.briefTitle, (value) {
      return _then(_value.copyWith(briefTitle: value) as $Val);
    });
  }

  /// Create a copy of CheckoutSteps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get summaryTitle {
    return $LocalizedTextCopyWith<$Res>(_value.summaryTitle, (value) {
      return _then(_value.copyWith(summaryTitle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckoutStepsImplCopyWith<$Res>
    implements $CheckoutStepsCopyWith<$Res> {
  factory _$$CheckoutStepsImplCopyWith(
    _$CheckoutStepsImpl value,
    $Res Function(_$CheckoutStepsImpl) then,
  ) = __$$CheckoutStepsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocalizedText briefTitle, LocalizedText summaryTitle});

  @override
  $LocalizedTextCopyWith<$Res> get briefTitle;
  @override
  $LocalizedTextCopyWith<$Res> get summaryTitle;
}

/// @nodoc
class __$$CheckoutStepsImplCopyWithImpl<$Res>
    extends _$CheckoutStepsCopyWithImpl<$Res, _$CheckoutStepsImpl>
    implements _$$CheckoutStepsImplCopyWith<$Res> {
  __$$CheckoutStepsImplCopyWithImpl(
    _$CheckoutStepsImpl _value,
    $Res Function(_$CheckoutStepsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CheckoutSteps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? briefTitle = null, Object? summaryTitle = null}) {
    return _then(
      _$CheckoutStepsImpl(
        briefTitle:
            null == briefTitle
                ? _value.briefTitle
                : briefTitle // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        summaryTitle:
            null == summaryTitle
                ? _value.summaryTitle
                : summaryTitle // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutStepsImpl implements _CheckoutSteps {
  const _$CheckoutStepsImpl({
    required this.briefTitle,
    required this.summaryTitle,
  });

  factory _$CheckoutStepsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutStepsImplFromJson(json);

  @override
  final LocalizedText briefTitle;
  @override
  final LocalizedText summaryTitle;

  @override
  String toString() {
    return 'CheckoutSteps(briefTitle: $briefTitle, summaryTitle: $summaryTitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutStepsImpl &&
            (identical(other.briefTitle, briefTitle) ||
                other.briefTitle == briefTitle) &&
            (identical(other.summaryTitle, summaryTitle) ||
                other.summaryTitle == summaryTitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, briefTitle, summaryTitle);

  /// Create a copy of CheckoutSteps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutStepsImplCopyWith<_$CheckoutStepsImpl> get copyWith =>
      __$$CheckoutStepsImplCopyWithImpl<_$CheckoutStepsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutStepsImplToJson(this);
  }
}

abstract class _CheckoutSteps implements CheckoutSteps {
  const factory _CheckoutSteps({
    required final LocalizedText briefTitle,
    required final LocalizedText summaryTitle,
  }) = _$CheckoutStepsImpl;

  factory _CheckoutSteps.fromJson(Map<String, dynamic> json) =
      _$CheckoutStepsImpl.fromJson;

  @override
  LocalizedText get briefTitle;
  @override
  LocalizedText get summaryTitle;

  /// Create a copy of CheckoutSteps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutStepsImplCopyWith<_$CheckoutStepsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckoutCta _$CheckoutCtaFromJson(Map<String, dynamic> json) {
  return _CheckoutCta.fromJson(json);
}

/// @nodoc
mixin _$CheckoutCta {
  LocalizedText get continueText => throw _privateConstructorUsedError;
  LocalizedText get proceedText => throw _privateConstructorUsedError;
  LocalizedText get note => throw _privateConstructorUsedError;

  /// Serializes this CheckoutCta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckoutCta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutCtaCopyWith<CheckoutCta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutCtaCopyWith<$Res> {
  factory $CheckoutCtaCopyWith(
    CheckoutCta value,
    $Res Function(CheckoutCta) then,
  ) = _$CheckoutCtaCopyWithImpl<$Res, CheckoutCta>;
  @useResult
  $Res call({
    LocalizedText continueText,
    LocalizedText proceedText,
    LocalizedText note,
  });

  $LocalizedTextCopyWith<$Res> get continueText;
  $LocalizedTextCopyWith<$Res> get proceedText;
  $LocalizedTextCopyWith<$Res> get note;
}

/// @nodoc
class _$CheckoutCtaCopyWithImpl<$Res, $Val extends CheckoutCta>
    implements $CheckoutCtaCopyWith<$Res> {
  _$CheckoutCtaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutCta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? continueText = null,
    Object? proceedText = null,
    Object? note = null,
  }) {
    return _then(
      _value.copyWith(
            continueText:
                null == continueText
                    ? _value.continueText
                    : continueText // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            proceedText:
                null == proceedText
                    ? _value.proceedText
                    : proceedText // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            note:
                null == note
                    ? _value.note
                    : note // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
          )
          as $Val,
    );
  }

  /// Create a copy of CheckoutCta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get continueText {
    return $LocalizedTextCopyWith<$Res>(_value.continueText, (value) {
      return _then(_value.copyWith(continueText: value) as $Val);
    });
  }

  /// Create a copy of CheckoutCta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get proceedText {
    return $LocalizedTextCopyWith<$Res>(_value.proceedText, (value) {
      return _then(_value.copyWith(proceedText: value) as $Val);
    });
  }

  /// Create a copy of CheckoutCta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get note {
    return $LocalizedTextCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckoutCtaImplCopyWith<$Res>
    implements $CheckoutCtaCopyWith<$Res> {
  factory _$$CheckoutCtaImplCopyWith(
    _$CheckoutCtaImpl value,
    $Res Function(_$CheckoutCtaImpl) then,
  ) = __$$CheckoutCtaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    LocalizedText continueText,
    LocalizedText proceedText,
    LocalizedText note,
  });

  @override
  $LocalizedTextCopyWith<$Res> get continueText;
  @override
  $LocalizedTextCopyWith<$Res> get proceedText;
  @override
  $LocalizedTextCopyWith<$Res> get note;
}

/// @nodoc
class __$$CheckoutCtaImplCopyWithImpl<$Res>
    extends _$CheckoutCtaCopyWithImpl<$Res, _$CheckoutCtaImpl>
    implements _$$CheckoutCtaImplCopyWith<$Res> {
  __$$CheckoutCtaImplCopyWithImpl(
    _$CheckoutCtaImpl _value,
    $Res Function(_$CheckoutCtaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CheckoutCta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? continueText = null,
    Object? proceedText = null,
    Object? note = null,
  }) {
    return _then(
      _$CheckoutCtaImpl(
        continueText:
            null == continueText
                ? _value.continueText
                : continueText // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        proceedText:
            null == proceedText
                ? _value.proceedText
                : proceedText // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        note:
            null == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutCtaImpl implements _CheckoutCta {
  const _$CheckoutCtaImpl({
    required this.continueText,
    required this.proceedText,
    required this.note,
  });

  factory _$CheckoutCtaImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutCtaImplFromJson(json);

  @override
  final LocalizedText continueText;
  @override
  final LocalizedText proceedText;
  @override
  final LocalizedText note;

  @override
  String toString() {
    return 'CheckoutCta(continueText: $continueText, proceedText: $proceedText, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutCtaImpl &&
            (identical(other.continueText, continueText) ||
                other.continueText == continueText) &&
            (identical(other.proceedText, proceedText) ||
                other.proceedText == proceedText) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, continueText, proceedText, note);

  /// Create a copy of CheckoutCta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutCtaImplCopyWith<_$CheckoutCtaImpl> get copyWith =>
      __$$CheckoutCtaImplCopyWithImpl<_$CheckoutCtaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutCtaImplToJson(this);
  }
}

abstract class _CheckoutCta implements CheckoutCta {
  const factory _CheckoutCta({
    required final LocalizedText continueText,
    required final LocalizedText proceedText,
    required final LocalizedText note,
  }) = _$CheckoutCtaImpl;

  factory _CheckoutCta.fromJson(Map<String, dynamic> json) =
      _$CheckoutCtaImpl.fromJson;

  @override
  LocalizedText get continueText;
  @override
  LocalizedText get proceedText;
  @override
  LocalizedText get note;

  /// Create a copy of CheckoutCta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutCtaImplCopyWith<_$CheckoutCtaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckoutField _$CheckoutFieldFromJson(Map<String, dynamic> json) {
  return _CheckoutField.fromJson(json);
}

/// @nodoc
mixin _$CheckoutField {
  String get key => throw _privateConstructorUsedError;
  LocalizedText get label => throw _privateConstructorUsedError;
  List<LocalizedText> get options => throw _privateConstructorUsedError;

  /// Serializes this CheckoutField to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckoutField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutFieldCopyWith<CheckoutField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutFieldCopyWith<$Res> {
  factory $CheckoutFieldCopyWith(
    CheckoutField value,
    $Res Function(CheckoutField) then,
  ) = _$CheckoutFieldCopyWithImpl<$Res, CheckoutField>;
  @useResult
  $Res call({String key, LocalizedText label, List<LocalizedText> options});

  $LocalizedTextCopyWith<$Res> get label;
}

/// @nodoc
class _$CheckoutFieldCopyWithImpl<$Res, $Val extends CheckoutField>
    implements $CheckoutFieldCopyWith<$Res> {
  _$CheckoutFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
    Object? options = null,
  }) {
    return _then(
      _value.copyWith(
            key:
                null == key
                    ? _value.key
                    : key // ignore: cast_nullable_to_non_nullable
                        as String,
            label:
                null == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            options:
                null == options
                    ? _value.options
                    : options // ignore: cast_nullable_to_non_nullable
                        as List<LocalizedText>,
          )
          as $Val,
    );
  }

  /// Create a copy of CheckoutField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get label {
    return $LocalizedTextCopyWith<$Res>(_value.label, (value) {
      return _then(_value.copyWith(label: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckoutFieldImplCopyWith<$Res>
    implements $CheckoutFieldCopyWith<$Res> {
  factory _$$CheckoutFieldImplCopyWith(
    _$CheckoutFieldImpl value,
    $Res Function(_$CheckoutFieldImpl) then,
  ) = __$$CheckoutFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, LocalizedText label, List<LocalizedText> options});

  @override
  $LocalizedTextCopyWith<$Res> get label;
}

/// @nodoc
class __$$CheckoutFieldImplCopyWithImpl<$Res>
    extends _$CheckoutFieldCopyWithImpl<$Res, _$CheckoutFieldImpl>
    implements _$$CheckoutFieldImplCopyWith<$Res> {
  __$$CheckoutFieldImplCopyWithImpl(
    _$CheckoutFieldImpl _value,
    $Res Function(_$CheckoutFieldImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CheckoutField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? label = null,
    Object? options = null,
  }) {
    return _then(
      _$CheckoutFieldImpl(
        key:
            null == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                    as String,
        label:
            null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        options:
            null == options
                ? _value._options
                : options // ignore: cast_nullable_to_non_nullable
                    as List<LocalizedText>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutFieldImpl implements _CheckoutField {
  const _$CheckoutFieldImpl({
    required this.key,
    required this.label,
    final List<LocalizedText> options = const [],
  }) : _options = options;

  factory _$CheckoutFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutFieldImplFromJson(json);

  @override
  final String key;
  @override
  final LocalizedText label;
  final List<LocalizedText> _options;
  @override
  @JsonKey()
  List<LocalizedText> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'CheckoutField(key: $key, label: $label, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutFieldImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    key,
    label,
    const DeepCollectionEquality().hash(_options),
  );

  /// Create a copy of CheckoutField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutFieldImplCopyWith<_$CheckoutFieldImpl> get copyWith =>
      __$$CheckoutFieldImplCopyWithImpl<_$CheckoutFieldImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutFieldImplToJson(this);
  }
}

abstract class _CheckoutField implements CheckoutField {
  const factory _CheckoutField({
    required final String key,
    required final LocalizedText label,
    final List<LocalizedText> options,
  }) = _$CheckoutFieldImpl;

  factory _CheckoutField.fromJson(Map<String, dynamic> json) =
      _$CheckoutFieldImpl.fromJson;

  @override
  String get key;
  @override
  LocalizedText get label;
  @override
  List<LocalizedText> get options;

  /// Create a copy of CheckoutField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutFieldImplCopyWith<_$CheckoutFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckoutTargets _$CheckoutTargetsFromJson(Map<String, dynamic> json) {
  return _CheckoutTargets.fromJson(json);
}

/// @nodoc
mixin _$CheckoutTargets {
  String get khamsatUrl => throw _privateConstructorUsedError;
  String get whatsappPhone => throw _privateConstructorUsedError;
  LocalizedText get whatsappPrefill => throw _privateConstructorUsedError;

  /// Serializes this CheckoutTargets to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckoutTargets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutTargetsCopyWith<CheckoutTargets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutTargetsCopyWith<$Res> {
  factory $CheckoutTargetsCopyWith(
    CheckoutTargets value,
    $Res Function(CheckoutTargets) then,
  ) = _$CheckoutTargetsCopyWithImpl<$Res, CheckoutTargets>;
  @useResult
  $Res call({
    String khamsatUrl,
    String whatsappPhone,
    LocalizedText whatsappPrefill,
  });

  $LocalizedTextCopyWith<$Res> get whatsappPrefill;
}

/// @nodoc
class _$CheckoutTargetsCopyWithImpl<$Res, $Val extends CheckoutTargets>
    implements $CheckoutTargetsCopyWith<$Res> {
  _$CheckoutTargetsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutTargets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? khamsatUrl = null,
    Object? whatsappPhone = null,
    Object? whatsappPrefill = null,
  }) {
    return _then(
      _value.copyWith(
            khamsatUrl:
                null == khamsatUrl
                    ? _value.khamsatUrl
                    : khamsatUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            whatsappPhone:
                null == whatsappPhone
                    ? _value.whatsappPhone
                    : whatsappPhone // ignore: cast_nullable_to_non_nullable
                        as String,
            whatsappPrefill:
                null == whatsappPrefill
                    ? _value.whatsappPrefill
                    : whatsappPrefill // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
          )
          as $Val,
    );
  }

  /// Create a copy of CheckoutTargets
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get whatsappPrefill {
    return $LocalizedTextCopyWith<$Res>(_value.whatsappPrefill, (value) {
      return _then(_value.copyWith(whatsappPrefill: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckoutTargetsImplCopyWith<$Res>
    implements $CheckoutTargetsCopyWith<$Res> {
  factory _$$CheckoutTargetsImplCopyWith(
    _$CheckoutTargetsImpl value,
    $Res Function(_$CheckoutTargetsImpl) then,
  ) = __$$CheckoutTargetsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String khamsatUrl,
    String whatsappPhone,
    LocalizedText whatsappPrefill,
  });

  @override
  $LocalizedTextCopyWith<$Res> get whatsappPrefill;
}

/// @nodoc
class __$$CheckoutTargetsImplCopyWithImpl<$Res>
    extends _$CheckoutTargetsCopyWithImpl<$Res, _$CheckoutTargetsImpl>
    implements _$$CheckoutTargetsImplCopyWith<$Res> {
  __$$CheckoutTargetsImplCopyWithImpl(
    _$CheckoutTargetsImpl _value,
    $Res Function(_$CheckoutTargetsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CheckoutTargets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? khamsatUrl = null,
    Object? whatsappPhone = null,
    Object? whatsappPrefill = null,
  }) {
    return _then(
      _$CheckoutTargetsImpl(
        khamsatUrl:
            null == khamsatUrl
                ? _value.khamsatUrl
                : khamsatUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        whatsappPhone:
            null == whatsappPhone
                ? _value.whatsappPhone
                : whatsappPhone // ignore: cast_nullable_to_non_nullable
                    as String,
        whatsappPrefill:
            null == whatsappPrefill
                ? _value.whatsappPrefill
                : whatsappPrefill // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutTargetsImpl implements _CheckoutTargets {
  const _$CheckoutTargetsImpl({
    required this.khamsatUrl,
    required this.whatsappPhone,
    required this.whatsappPrefill,
  });

  factory _$CheckoutTargetsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutTargetsImplFromJson(json);

  @override
  final String khamsatUrl;
  @override
  final String whatsappPhone;
  @override
  final LocalizedText whatsappPrefill;

  @override
  String toString() {
    return 'CheckoutTargets(khamsatUrl: $khamsatUrl, whatsappPhone: $whatsappPhone, whatsappPrefill: $whatsappPrefill)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutTargetsImpl &&
            (identical(other.khamsatUrl, khamsatUrl) ||
                other.khamsatUrl == khamsatUrl) &&
            (identical(other.whatsappPhone, whatsappPhone) ||
                other.whatsappPhone == whatsappPhone) &&
            (identical(other.whatsappPrefill, whatsappPrefill) ||
                other.whatsappPrefill == whatsappPrefill));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, khamsatUrl, whatsappPhone, whatsappPrefill);

  /// Create a copy of CheckoutTargets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutTargetsImplCopyWith<_$CheckoutTargetsImpl> get copyWith =>
      __$$CheckoutTargetsImplCopyWithImpl<_$CheckoutTargetsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutTargetsImplToJson(this);
  }
}

abstract class _CheckoutTargets implements CheckoutTargets {
  const factory _CheckoutTargets({
    required final String khamsatUrl,
    required final String whatsappPhone,
    required final LocalizedText whatsappPrefill,
  }) = _$CheckoutTargetsImpl;

  factory _CheckoutTargets.fromJson(Map<String, dynamic> json) =
      _$CheckoutTargetsImpl.fromJson;

  @override
  String get khamsatUrl;
  @override
  String get whatsappPhone;
  @override
  LocalizedText get whatsappPrefill;

  /// Create a copy of CheckoutTargets
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutTargetsImplCopyWith<_$CheckoutTargetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckoutPageModel _$CheckoutPageModelFromJson(Map<String, dynamic> json) {
  return _CheckoutPageModel.fromJson(json);
}

/// @nodoc
mixin _$CheckoutPageModel {
  LocalizedText get title => throw _privateConstructorUsedError;
  LocalizedText get subtitle => throw _privateConstructorUsedError;
  CheckoutSteps get steps => throw _privateConstructorUsedError;
  List<CheckoutField> get fields => throw _privateConstructorUsedError;
  CheckoutCta get cta => throw _privateConstructorUsedError;
  CheckoutTargets get contactTargets => throw _privateConstructorUsedError;

  /// Serializes this CheckoutPageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckoutPageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutPageModelCopyWith<CheckoutPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutPageModelCopyWith<$Res> {
  factory $CheckoutPageModelCopyWith(
    CheckoutPageModel value,
    $Res Function(CheckoutPageModel) then,
  ) = _$CheckoutPageModelCopyWithImpl<$Res, CheckoutPageModel>;
  @useResult
  $Res call({
    LocalizedText title,
    LocalizedText subtitle,
    CheckoutSteps steps,
    List<CheckoutField> fields,
    CheckoutCta cta,
    CheckoutTargets contactTargets,
  });

  $LocalizedTextCopyWith<$Res> get title;
  $LocalizedTextCopyWith<$Res> get subtitle;
  $CheckoutStepsCopyWith<$Res> get steps;
  $CheckoutCtaCopyWith<$Res> get cta;
  $CheckoutTargetsCopyWith<$Res> get contactTargets;
}

/// @nodoc
class _$CheckoutPageModelCopyWithImpl<$Res, $Val extends CheckoutPageModel>
    implements $CheckoutPageModelCopyWith<$Res> {
  _$CheckoutPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutPageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? steps = null,
    Object? fields = null,
    Object? cta = null,
    Object? contactTargets = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            subtitle:
                null == subtitle
                    ? _value.subtitle
                    : subtitle // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            steps:
                null == steps
                    ? _value.steps
                    : steps // ignore: cast_nullable_to_non_nullable
                        as CheckoutSteps,
            fields:
                null == fields
                    ? _value.fields
                    : fields // ignore: cast_nullable_to_non_nullable
                        as List<CheckoutField>,
            cta:
                null == cta
                    ? _value.cta
                    : cta // ignore: cast_nullable_to_non_nullable
                        as CheckoutCta,
            contactTargets:
                null == contactTargets
                    ? _value.contactTargets
                    : contactTargets // ignore: cast_nullable_to_non_nullable
                        as CheckoutTargets,
          )
          as $Val,
    );
  }

  /// Create a copy of CheckoutPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get title {
    return $LocalizedTextCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of CheckoutPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get subtitle {
    return $LocalizedTextCopyWith<$Res>(_value.subtitle, (value) {
      return _then(_value.copyWith(subtitle: value) as $Val);
    });
  }

  /// Create a copy of CheckoutPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckoutStepsCopyWith<$Res> get steps {
    return $CheckoutStepsCopyWith<$Res>(_value.steps, (value) {
      return _then(_value.copyWith(steps: value) as $Val);
    });
  }

  /// Create a copy of CheckoutPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckoutCtaCopyWith<$Res> get cta {
    return $CheckoutCtaCopyWith<$Res>(_value.cta, (value) {
      return _then(_value.copyWith(cta: value) as $Val);
    });
  }

  /// Create a copy of CheckoutPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CheckoutTargetsCopyWith<$Res> get contactTargets {
    return $CheckoutTargetsCopyWith<$Res>(_value.contactTargets, (value) {
      return _then(_value.copyWith(contactTargets: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckoutPageModelImplCopyWith<$Res>
    implements $CheckoutPageModelCopyWith<$Res> {
  factory _$$CheckoutPageModelImplCopyWith(
    _$CheckoutPageModelImpl value,
    $Res Function(_$CheckoutPageModelImpl) then,
  ) = __$$CheckoutPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    LocalizedText title,
    LocalizedText subtitle,
    CheckoutSteps steps,
    List<CheckoutField> fields,
    CheckoutCta cta,
    CheckoutTargets contactTargets,
  });

  @override
  $LocalizedTextCopyWith<$Res> get title;
  @override
  $LocalizedTextCopyWith<$Res> get subtitle;
  @override
  $CheckoutStepsCopyWith<$Res> get steps;
  @override
  $CheckoutCtaCopyWith<$Res> get cta;
  @override
  $CheckoutTargetsCopyWith<$Res> get contactTargets;
}

/// @nodoc
class __$$CheckoutPageModelImplCopyWithImpl<$Res>
    extends _$CheckoutPageModelCopyWithImpl<$Res, _$CheckoutPageModelImpl>
    implements _$$CheckoutPageModelImplCopyWith<$Res> {
  __$$CheckoutPageModelImplCopyWithImpl(
    _$CheckoutPageModelImpl _value,
    $Res Function(_$CheckoutPageModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CheckoutPageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? steps = null,
    Object? fields = null,
    Object? cta = null,
    Object? contactTargets = null,
  }) {
    return _then(
      _$CheckoutPageModelImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        subtitle:
            null == subtitle
                ? _value.subtitle
                : subtitle // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        steps:
            null == steps
                ? _value.steps
                : steps // ignore: cast_nullable_to_non_nullable
                    as CheckoutSteps,
        fields:
            null == fields
                ? _value._fields
                : fields // ignore: cast_nullable_to_non_nullable
                    as List<CheckoutField>,
        cta:
            null == cta
                ? _value.cta
                : cta // ignore: cast_nullable_to_non_nullable
                    as CheckoutCta,
        contactTargets:
            null == contactTargets
                ? _value.contactTargets
                : contactTargets // ignore: cast_nullable_to_non_nullable
                    as CheckoutTargets,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutPageModelImpl implements _CheckoutPageModel {
  const _$CheckoutPageModelImpl({
    required this.title,
    required this.subtitle,
    required this.steps,
    final List<CheckoutField> fields = const [],
    required this.cta,
    required this.contactTargets,
  }) : _fields = fields;

  factory _$CheckoutPageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutPageModelImplFromJson(json);

  @override
  final LocalizedText title;
  @override
  final LocalizedText subtitle;
  @override
  final CheckoutSteps steps;
  final List<CheckoutField> _fields;
  @override
  @JsonKey()
  List<CheckoutField> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  @override
  final CheckoutCta cta;
  @override
  final CheckoutTargets contactTargets;

  @override
  String toString() {
    return 'CheckoutPageModel(title: $title, subtitle: $subtitle, steps: $steps, fields: $fields, cta: $cta, contactTargets: $contactTargets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutPageModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.steps, steps) || other.steps == steps) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            (identical(other.cta, cta) || other.cta == cta) &&
            (identical(other.contactTargets, contactTargets) ||
                other.contactTargets == contactTargets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    subtitle,
    steps,
    const DeepCollectionEquality().hash(_fields),
    cta,
    contactTargets,
  );

  /// Create a copy of CheckoutPageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutPageModelImplCopyWith<_$CheckoutPageModelImpl> get copyWith =>
      __$$CheckoutPageModelImplCopyWithImpl<_$CheckoutPageModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutPageModelImplToJson(this);
  }
}

abstract class _CheckoutPageModel implements CheckoutPageModel {
  const factory _CheckoutPageModel({
    required final LocalizedText title,
    required final LocalizedText subtitle,
    required final CheckoutSteps steps,
    final List<CheckoutField> fields,
    required final CheckoutCta cta,
    required final CheckoutTargets contactTargets,
  }) = _$CheckoutPageModelImpl;

  factory _CheckoutPageModel.fromJson(Map<String, dynamic> json) =
      _$CheckoutPageModelImpl.fromJson;

  @override
  LocalizedText get title;
  @override
  LocalizedText get subtitle;
  @override
  CheckoutSteps get steps;
  @override
  List<CheckoutField> get fields;
  @override
  CheckoutCta get cta;
  @override
  CheckoutTargets get contactTargets;

  /// Create a copy of CheckoutPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutPageModelImplCopyWith<_$CheckoutPageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
