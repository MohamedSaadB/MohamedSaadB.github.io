// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AboutCardModel _$AboutCardModelFromJson(Map<String, dynamic> json) {
  return _AboutCardModel.fromJson(json);
}

/// @nodoc
mixin _$AboutCardModel {
  String get icon => throw _privateConstructorUsedError; // key from json
  LocalizedText get title => throw _privateConstructorUsedError;
  LocalizedText get value => throw _privateConstructorUsedError;
  LocalizedText get subtitle => throw _privateConstructorUsedError;

  /// Serializes this AboutCardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AboutCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AboutCardModelCopyWith<AboutCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutCardModelCopyWith<$Res> {
  factory $AboutCardModelCopyWith(
    AboutCardModel value,
    $Res Function(AboutCardModel) then,
  ) = _$AboutCardModelCopyWithImpl<$Res, AboutCardModel>;
  @useResult
  $Res call({
    String icon,
    LocalizedText title,
    LocalizedText value,
    LocalizedText subtitle,
  });

  $LocalizedTextCopyWith<$Res> get title;
  $LocalizedTextCopyWith<$Res> get value;
  $LocalizedTextCopyWith<$Res> get subtitle;
}

/// @nodoc
class _$AboutCardModelCopyWithImpl<$Res, $Val extends AboutCardModel>
    implements $AboutCardModelCopyWith<$Res> {
  _$AboutCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AboutCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? title = null,
    Object? value = null,
    Object? subtitle = null,
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
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            subtitle:
                null == subtitle
                    ? _value.subtitle
                    : subtitle // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
          )
          as $Val,
    );
  }

  /// Create a copy of AboutCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get title {
    return $LocalizedTextCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of AboutCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get value {
    return $LocalizedTextCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }

  /// Create a copy of AboutCardModel
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
abstract class _$$AboutCardModelImplCopyWith<$Res>
    implements $AboutCardModelCopyWith<$Res> {
  factory _$$AboutCardModelImplCopyWith(
    _$AboutCardModelImpl value,
    $Res Function(_$AboutCardModelImpl) then,
  ) = __$$AboutCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String icon,
    LocalizedText title,
    LocalizedText value,
    LocalizedText subtitle,
  });

  @override
  $LocalizedTextCopyWith<$Res> get title;
  @override
  $LocalizedTextCopyWith<$Res> get value;
  @override
  $LocalizedTextCopyWith<$Res> get subtitle;
}

/// @nodoc
class __$$AboutCardModelImplCopyWithImpl<$Res>
    extends _$AboutCardModelCopyWithImpl<$Res, _$AboutCardModelImpl>
    implements _$$AboutCardModelImplCopyWith<$Res> {
  __$$AboutCardModelImplCopyWithImpl(
    _$AboutCardModelImpl _value,
    $Res Function(_$AboutCardModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AboutCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? title = null,
    Object? value = null,
    Object? subtitle = null,
  }) {
    return _then(
      _$AboutCardModelImpl(
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
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        subtitle:
            null == subtitle
                ? _value.subtitle
                : subtitle // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AboutCardModelImpl implements _AboutCardModel {
  const _$AboutCardModelImpl({
    required this.icon,
    required this.title,
    required this.value,
    required this.subtitle,
  });

  factory _$AboutCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutCardModelImplFromJson(json);

  @override
  final String icon;
  // key from json
  @override
  final LocalizedText title;
  @override
  final LocalizedText value;
  @override
  final LocalizedText subtitle;

  @override
  String toString() {
    return 'AboutCardModel(icon: $icon, title: $title, value: $value, subtitle: $subtitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutCardModelImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, icon, title, value, subtitle);

  /// Create a copy of AboutCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutCardModelImplCopyWith<_$AboutCardModelImpl> get copyWith =>
      __$$AboutCardModelImplCopyWithImpl<_$AboutCardModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AboutCardModelImplToJson(this);
  }
}

abstract class _AboutCardModel implements AboutCardModel {
  const factory _AboutCardModel({
    required final String icon,
    required final LocalizedText title,
    required final LocalizedText value,
    required final LocalizedText subtitle,
  }) = _$AboutCardModelImpl;

  factory _AboutCardModel.fromJson(Map<String, dynamic> json) =
      _$AboutCardModelImpl.fromJson;

  @override
  String get icon; // key from json
  @override
  LocalizedText get title;
  @override
  LocalizedText get value;
  @override
  LocalizedText get subtitle;

  /// Create a copy of AboutCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AboutCardModelImplCopyWith<_$AboutCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AboutModel _$AboutModelFromJson(Map<String, dynamic> json) {
  return _AboutModel.fromJson(json);
}

/// @nodoc
mixin _$AboutModel {
  LocalizedText get title => throw _privateConstructorUsedError;
  LocalizedText get bio => throw _privateConstructorUsedError;
  List<String> get skills => throw _privateConstructorUsedError;
  List<AboutCardModel> get cards => throw _privateConstructorUsedError;

  /// Serializes this AboutModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AboutModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AboutModelCopyWith<AboutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutModelCopyWith<$Res> {
  factory $AboutModelCopyWith(
    AboutModel value,
    $Res Function(AboutModel) then,
  ) = _$AboutModelCopyWithImpl<$Res, AboutModel>;
  @useResult
  $Res call({
    LocalizedText title,
    LocalizedText bio,
    List<String> skills,
    List<AboutCardModel> cards,
  });

  $LocalizedTextCopyWith<$Res> get title;
  $LocalizedTextCopyWith<$Res> get bio;
}

/// @nodoc
class _$AboutModelCopyWithImpl<$Res, $Val extends AboutModel>
    implements $AboutModelCopyWith<$Res> {
  _$AboutModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AboutModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? bio = null,
    Object? skills = null,
    Object? cards = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            bio:
                null == bio
                    ? _value.bio
                    : bio // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            skills:
                null == skills
                    ? _value.skills
                    : skills // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            cards:
                null == cards
                    ? _value.cards
                    : cards // ignore: cast_nullable_to_non_nullable
                        as List<AboutCardModel>,
          )
          as $Val,
    );
  }

  /// Create a copy of AboutModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get title {
    return $LocalizedTextCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of AboutModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get bio {
    return $LocalizedTextCopyWith<$Res>(_value.bio, (value) {
      return _then(_value.copyWith(bio: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AboutModelImplCopyWith<$Res>
    implements $AboutModelCopyWith<$Res> {
  factory _$$AboutModelImplCopyWith(
    _$AboutModelImpl value,
    $Res Function(_$AboutModelImpl) then,
  ) = __$$AboutModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    LocalizedText title,
    LocalizedText bio,
    List<String> skills,
    List<AboutCardModel> cards,
  });

  @override
  $LocalizedTextCopyWith<$Res> get title;
  @override
  $LocalizedTextCopyWith<$Res> get bio;
}

/// @nodoc
class __$$AboutModelImplCopyWithImpl<$Res>
    extends _$AboutModelCopyWithImpl<$Res, _$AboutModelImpl>
    implements _$$AboutModelImplCopyWith<$Res> {
  __$$AboutModelImplCopyWithImpl(
    _$AboutModelImpl _value,
    $Res Function(_$AboutModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AboutModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? bio = null,
    Object? skills = null,
    Object? cards = null,
  }) {
    return _then(
      _$AboutModelImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        bio:
            null == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        skills:
            null == skills
                ? _value._skills
                : skills // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        cards:
            null == cards
                ? _value._cards
                : cards // ignore: cast_nullable_to_non_nullable
                    as List<AboutCardModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AboutModelImpl implements _AboutModel {
  const _$AboutModelImpl({
    required this.title,
    required this.bio,
    final List<String> skills = const [],
    final List<AboutCardModel> cards = const [],
  }) : _skills = skills,
       _cards = cards;

  factory _$AboutModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutModelImplFromJson(json);

  @override
  final LocalizedText title;
  @override
  final LocalizedText bio;
  final List<String> _skills;
  @override
  @JsonKey()
  List<String> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  final List<AboutCardModel> _cards;
  @override
  @JsonKey()
  List<AboutCardModel> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'AboutModel(title: $title, bio: $bio, skills: $skills, cards: $cards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    bio,
    const DeepCollectionEquality().hash(_skills),
    const DeepCollectionEquality().hash(_cards),
  );

  /// Create a copy of AboutModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutModelImplCopyWith<_$AboutModelImpl> get copyWith =>
      __$$AboutModelImplCopyWithImpl<_$AboutModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AboutModelImplToJson(this);
  }
}

abstract class _AboutModel implements AboutModel {
  const factory _AboutModel({
    required final LocalizedText title,
    required final LocalizedText bio,
    final List<String> skills,
    final List<AboutCardModel> cards,
  }) = _$AboutModelImpl;

  factory _AboutModel.fromJson(Map<String, dynamic> json) =
      _$AboutModelImpl.fromJson;

  @override
  LocalizedText get title;
  @override
  LocalizedText get bio;
  @override
  List<String> get skills;
  @override
  List<AboutCardModel> get cards;

  /// Create a copy of AboutModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AboutModelImplCopyWith<_$AboutModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
