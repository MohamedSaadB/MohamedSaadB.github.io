// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) {
  return _ServiceModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceModel {
  String get icon => throw _privateConstructorUsedError; // key from json
  LocalizedText get title => throw _privateConstructorUsedError;
  LocalizedText get desc => throw _privateConstructorUsedError;
  List<LocalizedText> get bullets => throw _privateConstructorUsedError;

  /// Serializes this ServiceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceModelCopyWith<ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceModelCopyWith<$Res> {
  factory $ServiceModelCopyWith(
    ServiceModel value,
    $Res Function(ServiceModel) then,
  ) = _$ServiceModelCopyWithImpl<$Res, ServiceModel>;
  @useResult
  $Res call({
    String icon,
    LocalizedText title,
    LocalizedText desc,
    List<LocalizedText> bullets,
  });

  $LocalizedTextCopyWith<$Res> get title;
  $LocalizedTextCopyWith<$Res> get desc;
}

/// @nodoc
class _$ServiceModelCopyWithImpl<$Res, $Val extends ServiceModel>
    implements $ServiceModelCopyWith<$Res> {
  _$ServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? title = null,
    Object? desc = null,
    Object? bullets = null,
  }) {
    return _then(
      _value.copyWith(
            icon:
                null == icon
                    ? _value.icon
                    : icon // ignore: cast_nullable_to_non_nullable
                        as String,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            desc:
                null == desc
                    ? _value.desc
                    : desc // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of ServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get title {
    return $LocalizedTextCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of ServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get desc {
    return $LocalizedTextCopyWith<$Res>(_value.desc, (value) {
      return _then(_value.copyWith(desc: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServiceModelImplCopyWith<$Res>
    implements $ServiceModelCopyWith<$Res> {
  factory _$$ServiceModelImplCopyWith(
    _$ServiceModelImpl value,
    $Res Function(_$ServiceModelImpl) then,
  ) = __$$ServiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String icon,
    LocalizedText title,
    LocalizedText desc,
    List<LocalizedText> bullets,
  });

  @override
  $LocalizedTextCopyWith<$Res> get title;
  @override
  $LocalizedTextCopyWith<$Res> get desc;
}

/// @nodoc
class __$$ServiceModelImplCopyWithImpl<$Res>
    extends _$ServiceModelCopyWithImpl<$Res, _$ServiceModelImpl>
    implements _$$ServiceModelImplCopyWith<$Res> {
  __$$ServiceModelImplCopyWithImpl(
    _$ServiceModelImpl _value,
    $Res Function(_$ServiceModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? title = null,
    Object? desc = null,
    Object? bullets = null,
  }) {
    return _then(
      _$ServiceModelImpl(
        icon:
            null == icon
                ? _value.icon
                : icon // ignore: cast_nullable_to_non_nullable
                    as String,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        desc:
            null == desc
                ? _value.desc
                : desc // ignore: cast_nullable_to_non_nullable
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
class _$ServiceModelImpl implements _ServiceModel {
  const _$ServiceModelImpl({
    required this.icon,
    required this.title,
    required this.desc,
    final List<LocalizedText> bullets = const [],
  }) : _bullets = bullets;

  factory _$ServiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceModelImplFromJson(json);

  @override
  final String icon;
  // key from json
  @override
  final LocalizedText title;
  @override
  final LocalizedText desc;
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
    return 'ServiceModel(icon: $icon, title: $title, desc: $desc, bullets: $bullets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceModelImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            const DeepCollectionEquality().equals(other._bullets, _bullets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    icon,
    title,
    desc,
    const DeepCollectionEquality().hash(_bullets),
  );

  /// Create a copy of ServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceModelImplCopyWith<_$ServiceModelImpl> get copyWith =>
      __$$ServiceModelImplCopyWithImpl<_$ServiceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceModelImplToJson(this);
  }
}

abstract class _ServiceModel implements ServiceModel {
  const factory _ServiceModel({
    required final String icon,
    required final LocalizedText title,
    required final LocalizedText desc,
    final List<LocalizedText> bullets,
  }) = _$ServiceModelImpl;

  factory _ServiceModel.fromJson(Map<String, dynamic> json) =
      _$ServiceModelImpl.fromJson;

  @override
  String get icon; // key from json
  @override
  LocalizedText get title;
  @override
  LocalizedText get desc;
  @override
  List<LocalizedText> get bullets;

  /// Create a copy of ServiceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceModelImplCopyWith<_$ServiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
