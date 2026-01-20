// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refund_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RefundSection _$RefundSectionFromJson(Map<String, dynamic> json) {
  return _RefundSection.fromJson(json);
}

/// @nodoc
mixin _$RefundSection {
  LocalizedText get title => throw _privateConstructorUsedError;
  List<LocalizedText> get bullets => throw _privateConstructorUsedError;

  /// Serializes this RefundSection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundSectionCopyWith<RefundSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundSectionCopyWith<$Res> {
  factory $RefundSectionCopyWith(
    RefundSection value,
    $Res Function(RefundSection) then,
  ) = _$RefundSectionCopyWithImpl<$Res, RefundSection>;
  @useResult
  $Res call({LocalizedText title, List<LocalizedText> bullets});

  $LocalizedTextCopyWith<$Res> get title;
}

/// @nodoc
class _$RefundSectionCopyWithImpl<$Res, $Val extends RefundSection>
    implements $RefundSectionCopyWith<$Res> {
  _$RefundSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null, Object? bullets = null}) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            bullets:
                null == bullets
                    ? _value.bullets
                    : bullets // ignore: cast_nullable_to_non_nullable
                        as List<LocalizedText>,
          )
          as $Val,
    );
  }

  /// Create a copy of RefundSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get title {
    return $LocalizedTextCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RefundSectionImplCopyWith<$Res>
    implements $RefundSectionCopyWith<$Res> {
  factory _$$RefundSectionImplCopyWith(
    _$RefundSectionImpl value,
    $Res Function(_$RefundSectionImpl) then,
  ) = __$$RefundSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocalizedText title, List<LocalizedText> bullets});

  @override
  $LocalizedTextCopyWith<$Res> get title;
}

/// @nodoc
class __$$RefundSectionImplCopyWithImpl<$Res>
    extends _$RefundSectionCopyWithImpl<$Res, _$RefundSectionImpl>
    implements _$$RefundSectionImplCopyWith<$Res> {
  __$$RefundSectionImplCopyWithImpl(
    _$RefundSectionImpl _value,
    $Res Function(_$RefundSectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RefundSection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null, Object? bullets = null}) {
    return _then(
      _$RefundSectionImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        bullets:
            null == bullets
                ? _value._bullets
                : bullets // ignore: cast_nullable_to_non_nullable
                    as List<LocalizedText>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundSectionImpl implements _RefundSection {
  const _$RefundSectionImpl({
    required this.title,
    final List<LocalizedText> bullets = const [],
  }) : _bullets = bullets;

  factory _$RefundSectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundSectionImplFromJson(json);

  @override
  final LocalizedText title;
  final List<LocalizedText> _bullets;
  @override
  @JsonKey()
  List<LocalizedText> get bullets {
    if (_bullets is EqualUnmodifiableListView) return _bullets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bullets);
  }

  @override
  String toString() {
    return 'RefundSection(title: $title, bullets: $bullets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundSectionImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._bullets, _bullets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    const DeepCollectionEquality().hash(_bullets),
  );

  /// Create a copy of RefundSection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundSectionImplCopyWith<_$RefundSectionImpl> get copyWith =>
      __$$RefundSectionImplCopyWithImpl<_$RefundSectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundSectionImplToJson(this);
  }
}

abstract class _RefundSection implements RefundSection {
  const factory _RefundSection({
    required final LocalizedText title,
    final List<LocalizedText> bullets,
  }) = _$RefundSectionImpl;

  factory _RefundSection.fromJson(Map<String, dynamic> json) =
      _$RefundSectionImpl.fromJson;

  @override
  LocalizedText get title;
  @override
  List<LocalizedText> get bullets;

  /// Create a copy of RefundSection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundSectionImplCopyWith<_$RefundSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefundPolicyPageModel _$RefundPolicyPageModelFromJson(
  Map<String, dynamic> json,
) {
  return _RefundPolicyPageModel.fromJson(json);
}

/// @nodoc
mixin _$RefundPolicyPageModel {
  LocalizedText get title => throw _privateConstructorUsedError;
  LocalizedText get subtitle => throw _privateConstructorUsedError;
  List<RefundSection> get sections => throw _privateConstructorUsedError;

  /// Serializes this RefundPolicyPageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundPolicyPageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundPolicyPageModelCopyWith<RefundPolicyPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundPolicyPageModelCopyWith<$Res> {
  factory $RefundPolicyPageModelCopyWith(
    RefundPolicyPageModel value,
    $Res Function(RefundPolicyPageModel) then,
  ) = _$RefundPolicyPageModelCopyWithImpl<$Res, RefundPolicyPageModel>;
  @useResult
  $Res call({
    LocalizedText title,
    LocalizedText subtitle,
    List<RefundSection> sections,
  });

  $LocalizedTextCopyWith<$Res> get title;
  $LocalizedTextCopyWith<$Res> get subtitle;
}

/// @nodoc
class _$RefundPolicyPageModelCopyWithImpl<
  $Res,
  $Val extends RefundPolicyPageModel
>
    implements $RefundPolicyPageModelCopyWith<$Res> {
  _$RefundPolicyPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundPolicyPageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? sections = null,
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
            sections:
                null == sections
                    ? _value.sections
                    : sections // ignore: cast_nullable_to_non_nullable
                        as List<RefundSection>,
          )
          as $Val,
    );
  }

  /// Create a copy of RefundPolicyPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get title {
    return $LocalizedTextCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of RefundPolicyPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get subtitle {
    return $LocalizedTextCopyWith<$Res>(_value.subtitle, (value) {
      return _then(_value.copyWith(subtitle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RefundPolicyPageModelImplCopyWith<$Res>
    implements $RefundPolicyPageModelCopyWith<$Res> {
  factory _$$RefundPolicyPageModelImplCopyWith(
    _$RefundPolicyPageModelImpl value,
    $Res Function(_$RefundPolicyPageModelImpl) then,
  ) = __$$RefundPolicyPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    LocalizedText title,
    LocalizedText subtitle,
    List<RefundSection> sections,
  });

  @override
  $LocalizedTextCopyWith<$Res> get title;
  @override
  $LocalizedTextCopyWith<$Res> get subtitle;
}

/// @nodoc
class __$$RefundPolicyPageModelImplCopyWithImpl<$Res>
    extends
        _$RefundPolicyPageModelCopyWithImpl<$Res, _$RefundPolicyPageModelImpl>
    implements _$$RefundPolicyPageModelImplCopyWith<$Res> {
  __$$RefundPolicyPageModelImplCopyWithImpl(
    _$RefundPolicyPageModelImpl _value,
    $Res Function(_$RefundPolicyPageModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RefundPolicyPageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? sections = null,
  }) {
    return _then(
      _$RefundPolicyPageModelImpl(
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
        sections:
            null == sections
                ? _value._sections
                : sections // ignore: cast_nullable_to_non_nullable
                    as List<RefundSection>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundPolicyPageModelImpl implements _RefundPolicyPageModel {
  const _$RefundPolicyPageModelImpl({
    required this.title,
    required this.subtitle,
    final List<RefundSection> sections = const [],
  }) : _sections = sections;

  factory _$RefundPolicyPageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundPolicyPageModelImplFromJson(json);

  @override
  final LocalizedText title;
  @override
  final LocalizedText subtitle;
  final List<RefundSection> _sections;
  @override
  @JsonKey()
  List<RefundSection> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  String toString() {
    return 'RefundPolicyPageModel(title: $title, subtitle: $subtitle, sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundPolicyPageModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    subtitle,
    const DeepCollectionEquality().hash(_sections),
  );

  /// Create a copy of RefundPolicyPageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundPolicyPageModelImplCopyWith<_$RefundPolicyPageModelImpl>
  get copyWith =>
      __$$RefundPolicyPageModelImplCopyWithImpl<_$RefundPolicyPageModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundPolicyPageModelImplToJson(this);
  }
}

abstract class _RefundPolicyPageModel implements RefundPolicyPageModel {
  const factory _RefundPolicyPageModel({
    required final LocalizedText title,
    required final LocalizedText subtitle,
    final List<RefundSection> sections,
  }) = _$RefundPolicyPageModelImpl;

  factory _RefundPolicyPageModel.fromJson(Map<String, dynamic> json) =
      _$RefundPolicyPageModelImpl.fromJson;

  @override
  LocalizedText get title;
  @override
  LocalizedText get subtitle;
  @override
  List<RefundSection> get sections;

  /// Create a copy of RefundPolicyPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundPolicyPageModelImplCopyWith<_$RefundPolicyPageModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
