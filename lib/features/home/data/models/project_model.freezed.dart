// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) {
  return _ProjectModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectModel {
  String get slug => throw _privateConstructorUsedError;
  LocalizedText get title => throw _privateConstructorUsedError;
  LocalizedText get summary => throw _privateConstructorUsedError;
  LocalizedText? get role => throw _privateConstructorUsedError;
  List<String> get tech => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  List<String> get gallery => throw _privateConstructorUsedError;
  String? get liveUrlPlay => throw _privateConstructorUsedError;
  String? get liveUrlIos => throw _privateConstructorUsedError;
  String? get repoUrl => throw _privateConstructorUsedError;

  /// Serializes this ProjectModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProjectModelCopyWith<ProjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectModelCopyWith<$Res> {
  factory $ProjectModelCopyWith(
    ProjectModel value,
    $Res Function(ProjectModel) then,
  ) = _$ProjectModelCopyWithImpl<$Res, ProjectModel>;
  @useResult
  $Res call({
    String slug,
    LocalizedText title,
    LocalizedText summary,
    LocalizedText? role,
    List<String> tech,
    String thumbnail,
    List<String> gallery,
    String? liveUrlPlay,
    String? liveUrlIos,
    String? repoUrl,
  });

  $LocalizedTextCopyWith<$Res> get title;
  $LocalizedTextCopyWith<$Res> get summary;
  $LocalizedTextCopyWith<$Res>? get role;
}

/// @nodoc
class _$ProjectModelCopyWithImpl<$Res, $Val extends ProjectModel>
    implements $ProjectModelCopyWith<$Res> {
  _$ProjectModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? title = null,
    Object? summary = null,
    Object? role = freezed,
    Object? tech = null,
    Object? thumbnail = null,
    Object? gallery = null,
    Object? liveUrlPlay = freezed,
    Object? liveUrlIos = freezed,
    Object? repoUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            slug:
                null == slug
                    ? _value.slug
                    : slug // ignore: cast_nullable_to_non_nullable
                        as String,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            summary:
                null == summary
                    ? _value.summary
                    : summary // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            role:
                freezed == role
                    ? _value.role
                    : role // ignore: cast_nullable_to_non_nullable
                        as LocalizedText?,
            tech:
                null == tech
                    ? _value.tech
                    : tech // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            thumbnail:
                null == thumbnail
                    ? _value.thumbnail
                    : thumbnail // ignore: cast_nullable_to_non_nullable
                        as String,
            gallery:
                null == gallery
                    ? _value.gallery
                    : gallery // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            liveUrlPlay:
                freezed == liveUrlPlay
                    ? _value.liveUrlPlay
                    : liveUrlPlay // ignore: cast_nullable_to_non_nullable
                        as String?,
            liveUrlIos:
                freezed == liveUrlIos
                    ? _value.liveUrlIos
                    : liveUrlIos // ignore: cast_nullable_to_non_nullable
                        as String?,
            repoUrl:
                freezed == repoUrl
                    ? _value.repoUrl
                    : repoUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get title {
    return $LocalizedTextCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get summary {
    return $LocalizedTextCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $LocalizedTextCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectModelImplCopyWith<$Res>
    implements $ProjectModelCopyWith<$Res> {
  factory _$$ProjectModelImplCopyWith(
    _$ProjectModelImpl value,
    $Res Function(_$ProjectModelImpl) then,
  ) = __$$ProjectModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String slug,
    LocalizedText title,
    LocalizedText summary,
    LocalizedText? role,
    List<String> tech,
    String thumbnail,
    List<String> gallery,
    String? liveUrlPlay,
    String? liveUrlIos,
    String? repoUrl,
  });

  @override
  $LocalizedTextCopyWith<$Res> get title;
  @override
  $LocalizedTextCopyWith<$Res> get summary;
  @override
  $LocalizedTextCopyWith<$Res>? get role;
}

/// @nodoc
class __$$ProjectModelImplCopyWithImpl<$Res>
    extends _$ProjectModelCopyWithImpl<$Res, _$ProjectModelImpl>
    implements _$$ProjectModelImplCopyWith<$Res> {
  __$$ProjectModelImplCopyWithImpl(
    _$ProjectModelImpl _value,
    $Res Function(_$ProjectModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slug = null,
    Object? title = null,
    Object? summary = null,
    Object? role = freezed,
    Object? tech = null,
    Object? thumbnail = null,
    Object? gallery = null,
    Object? liveUrlPlay = freezed,
    Object? liveUrlIos = freezed,
    Object? repoUrl = freezed,
  }) {
    return _then(
      _$ProjectModelImpl(
        slug:
            null == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                    as String,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        summary:
            null == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        role:
            freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                    as LocalizedText?,
        tech:
            null == tech
                ? _value._tech
                : tech // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        thumbnail:
            null == thumbnail
                ? _value.thumbnail
                : thumbnail // ignore: cast_nullable_to_non_nullable
                    as String,
        gallery:
            null == gallery
                ? _value._gallery
                : gallery // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        liveUrlPlay:
            freezed == liveUrlPlay
                ? _value.liveUrlPlay
                : liveUrlPlay // ignore: cast_nullable_to_non_nullable
                    as String?,
        liveUrlIos:
            freezed == liveUrlIos
                ? _value.liveUrlIos
                : liveUrlIos // ignore: cast_nullable_to_non_nullable
                    as String?,
        repoUrl:
            freezed == repoUrl
                ? _value.repoUrl
                : repoUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectModelImpl implements _ProjectModel {
  const _$ProjectModelImpl({
    required this.slug,
    required this.title,
    required this.summary,
    this.role,
    final List<String> tech = const [],
    required this.thumbnail,
    final List<String> gallery = const [],
    this.liveUrlPlay,
    this.liveUrlIos,
    this.repoUrl,
  }) : _tech = tech,
       _gallery = gallery;

  factory _$ProjectModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectModelImplFromJson(json);

  @override
  final String slug;
  @override
  final LocalizedText title;
  @override
  final LocalizedText summary;
  @override
  final LocalizedText? role;
  final List<String> _tech;
  @override
  @JsonKey()
  List<String> get tech {
    if (_tech is EqualUnmodifiableListView) return _tech;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tech);
  }

  @override
  final String thumbnail;
  final List<String> _gallery;
  @override
  @JsonKey()
  List<String> get gallery {
    if (_gallery is EqualUnmodifiableListView) return _gallery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gallery);
  }

  @override
  final String? liveUrlPlay;
  @override
  final String? liveUrlIos;
  @override
  final String? repoUrl;

  @override
  String toString() {
    return 'ProjectModel(slug: $slug, title: $title, summary: $summary, role: $role, tech: $tech, thumbnail: $thumbnail, gallery: $gallery, liveUrlPlay: $liveUrlPlay, liveUrlIos: $liveUrlIos, repoUrl: $repoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectModelImpl &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other._tech, _tech) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            const DeepCollectionEquality().equals(other._gallery, _gallery) &&
            (identical(other.liveUrlPlay, liveUrlPlay) ||
                other.liveUrlPlay == liveUrlPlay) &&
            (identical(other.liveUrlIos, liveUrlIos) ||
                other.liveUrlIos == liveUrlIos) &&
            (identical(other.repoUrl, repoUrl) || other.repoUrl == repoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    slug,
    title,
    summary,
    role,
    const DeepCollectionEquality().hash(_tech),
    thumbnail,
    const DeepCollectionEquality().hash(_gallery),
    liveUrlPlay,
    liveUrlIos,
    repoUrl,
  );

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectModelImplCopyWith<_$ProjectModelImpl> get copyWith =>
      __$$ProjectModelImplCopyWithImpl<_$ProjectModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectModelImplToJson(this);
  }
}

abstract class _ProjectModel implements ProjectModel {
  const factory _ProjectModel({
    required final String slug,
    required final LocalizedText title,
    required final LocalizedText summary,
    final LocalizedText? role,
    final List<String> tech,
    required final String thumbnail,
    final List<String> gallery,
    final String? liveUrlPlay,
    final String? liveUrlIos,
    final String? repoUrl,
  }) = _$ProjectModelImpl;

  factory _ProjectModel.fromJson(Map<String, dynamic> json) =
      _$ProjectModelImpl.fromJson;

  @override
  String get slug;
  @override
  LocalizedText get title;
  @override
  LocalizedText get summary;
  @override
  LocalizedText? get role;
  @override
  List<String> get tech;
  @override
  String get thumbnail;
  @override
  List<String> get gallery;
  @override
  String? get liveUrlPlay;
  @override
  String? get liveUrlIos;
  @override
  String? get repoUrl;

  /// Create a copy of ProjectModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProjectModelImplCopyWith<_$ProjectModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
