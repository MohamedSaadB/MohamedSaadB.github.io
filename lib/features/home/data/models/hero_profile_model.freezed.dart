// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hero_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HeroHighlight _$HeroHighlightFromJson(Map<String, dynamic> json) {
  return _HeroHighlight.fromJson(json);
}

/// @nodoc
mixin _$HeroHighlight {
  String get icon =>
      throw _privateConstructorUsedError; // speed / architecture / design ...
  LocalizedText get title => throw _privateConstructorUsedError;
  LocalizedText get desc => throw _privateConstructorUsedError;

  /// Serializes this HeroHighlight to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeroHighlight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeroHighlightCopyWith<HeroHighlight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroHighlightCopyWith<$Res> {
  factory $HeroHighlightCopyWith(
    HeroHighlight value,
    $Res Function(HeroHighlight) then,
  ) = _$HeroHighlightCopyWithImpl<$Res, HeroHighlight>;
  @useResult
  $Res call({String icon, LocalizedText title, LocalizedText desc});

  $LocalizedTextCopyWith<$Res> get title;
  $LocalizedTextCopyWith<$Res> get desc;
}

/// @nodoc
class _$HeroHighlightCopyWithImpl<$Res, $Val extends HeroHighlight>
    implements $HeroHighlightCopyWith<$Res> {
  _$HeroHighlightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeroHighlight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? icon = null, Object? title = null, Object? desc = null}) {
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
          )
          as $Val,
    );
  }

  /// Create a copy of HeroHighlight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get title {
    return $LocalizedTextCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of HeroHighlight
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
abstract class _$$HeroHighlightImplCopyWith<$Res>
    implements $HeroHighlightCopyWith<$Res> {
  factory _$$HeroHighlightImplCopyWith(
    _$HeroHighlightImpl value,
    $Res Function(_$HeroHighlightImpl) then,
  ) = __$$HeroHighlightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String icon, LocalizedText title, LocalizedText desc});

  @override
  $LocalizedTextCopyWith<$Res> get title;
  @override
  $LocalizedTextCopyWith<$Res> get desc;
}

/// @nodoc
class __$$HeroHighlightImplCopyWithImpl<$Res>
    extends _$HeroHighlightCopyWithImpl<$Res, _$HeroHighlightImpl>
    implements _$$HeroHighlightImplCopyWith<$Res> {
  __$$HeroHighlightImplCopyWithImpl(
    _$HeroHighlightImpl _value,
    $Res Function(_$HeroHighlightImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HeroHighlight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? icon = null, Object? title = null, Object? desc = null}) {
    return _then(
      _$HeroHighlightImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HeroHighlightImpl implements _HeroHighlight {
  const _$HeroHighlightImpl({
    required this.icon,
    required this.title,
    required this.desc,
  });

  factory _$HeroHighlightImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeroHighlightImplFromJson(json);

  @override
  final String icon;
  // speed / architecture / design ...
  @override
  final LocalizedText title;
  @override
  final LocalizedText desc;

  @override
  String toString() {
    return 'HeroHighlight(icon: $icon, title: $title, desc: $desc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeroHighlightImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, icon, title, desc);

  /// Create a copy of HeroHighlight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeroHighlightImplCopyWith<_$HeroHighlightImpl> get copyWith =>
      __$$HeroHighlightImplCopyWithImpl<_$HeroHighlightImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeroHighlightImplToJson(this);
  }
}

abstract class _HeroHighlight implements HeroHighlight {
  const factory _HeroHighlight({
    required final String icon,
    required final LocalizedText title,
    required final LocalizedText desc,
  }) = _$HeroHighlightImpl;

  factory _HeroHighlight.fromJson(Map<String, dynamic> json) =
      _$HeroHighlightImpl.fromJson;

  @override
  String get icon; // speed / architecture / design ...
  @override
  LocalizedText get title;
  @override
  LocalizedText get desc;

  /// Create a copy of HeroHighlight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeroHighlightImplCopyWith<_$HeroHighlightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HeroProfileModel _$HeroProfileModelFromJson(Map<String, dynamic> json) {
  return _HeroProfileModel.fromJson(json);
}

/// @nodoc
mixin _$HeroProfileModel {
  String get name => throw _privateConstructorUsedError;
  LocalizedText get title => throw _privateConstructorUsedError;
  LocalizedText get summary => throw _privateConstructorUsedError;
  LocalizedText get badge => throw _privateConstructorUsedError;
  LocalizedText get highlightsTitle => throw _privateConstructorUsedError;
  List<HeroHighlight> get highlights => throw _privateConstructorUsedError;
  LocalizedText get ctaContact => throw _privateConstructorUsedError;
  LocalizedText get ctaCv => throw _privateConstructorUsedError;
  ContactModel get contact => throw _privateConstructorUsedError;
  ContactHubModel get contactHub => throw _privateConstructorUsedError;
  AboutModel get about => throw _privateConstructorUsedError;

  /// Serializes this HeroProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeroProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeroProfileModelCopyWith<HeroProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroProfileModelCopyWith<$Res> {
  factory $HeroProfileModelCopyWith(
    HeroProfileModel value,
    $Res Function(HeroProfileModel) then,
  ) = _$HeroProfileModelCopyWithImpl<$Res, HeroProfileModel>;
  @useResult
  $Res call({
    String name,
    LocalizedText title,
    LocalizedText summary,
    LocalizedText badge,
    LocalizedText highlightsTitle,
    List<HeroHighlight> highlights,
    LocalizedText ctaContact,
    LocalizedText ctaCv,
    ContactModel contact,
    ContactHubModel contactHub,
    AboutModel about,
  });

  $LocalizedTextCopyWith<$Res> get title;
  $LocalizedTextCopyWith<$Res> get summary;
  $LocalizedTextCopyWith<$Res> get badge;
  $LocalizedTextCopyWith<$Res> get highlightsTitle;
  $LocalizedTextCopyWith<$Res> get ctaContact;
  $LocalizedTextCopyWith<$Res> get ctaCv;
  $ContactModelCopyWith<$Res> get contact;
  $ContactHubModelCopyWith<$Res> get contactHub;
  $AboutModelCopyWith<$Res> get about;
}

/// @nodoc
class _$HeroProfileModelCopyWithImpl<$Res, $Val extends HeroProfileModel>
    implements $HeroProfileModelCopyWith<$Res> {
  _$HeroProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeroProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? title = null,
    Object? summary = null,
    Object? badge = null,
    Object? highlightsTitle = null,
    Object? highlights = null,
    Object? ctaContact = null,
    Object? ctaCv = null,
    Object? contact = null,
    Object? contactHub = null,
    Object? about = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
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
            badge:
                null == badge
                    ? _value.badge
                    : badge // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            highlightsTitle:
                null == highlightsTitle
                    ? _value.highlightsTitle
                    : highlightsTitle // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            highlights:
                null == highlights
                    ? _value.highlights
                    : highlights // ignore: cast_nullable_to_non_nullable
                        as List<HeroHighlight>,
            ctaContact:
                null == ctaContact
                    ? _value.ctaContact
                    : ctaContact // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            ctaCv:
                null == ctaCv
                    ? _value.ctaCv
                    : ctaCv // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            contact:
                null == contact
                    ? _value.contact
                    : contact // ignore: cast_nullable_to_non_nullable
                        as ContactModel,
            contactHub:
                null == contactHub
                    ? _value.contactHub
                    : contactHub // ignore: cast_nullable_to_non_nullable
                        as ContactHubModel,
            about:
                null == about
                    ? _value.about
                    : about // ignore: cast_nullable_to_non_nullable
                        as AboutModel,
          )
          as $Val,
    );
  }

  /// Create a copy of HeroProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get title {
    return $LocalizedTextCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of HeroProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get summary {
    return $LocalizedTextCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }

  /// Create a copy of HeroProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get badge {
    return $LocalizedTextCopyWith<$Res>(_value.badge, (value) {
      return _then(_value.copyWith(badge: value) as $Val);
    });
  }

  /// Create a copy of HeroProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get highlightsTitle {
    return $LocalizedTextCopyWith<$Res>(_value.highlightsTitle, (value) {
      return _then(_value.copyWith(highlightsTitle: value) as $Val);
    });
  }

  /// Create a copy of HeroProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get ctaContact {
    return $LocalizedTextCopyWith<$Res>(_value.ctaContact, (value) {
      return _then(_value.copyWith(ctaContact: value) as $Val);
    });
  }

  /// Create a copy of HeroProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get ctaCv {
    return $LocalizedTextCopyWith<$Res>(_value.ctaCv, (value) {
      return _then(_value.copyWith(ctaCv: value) as $Val);
    });
  }

  /// Create a copy of HeroProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactModelCopyWith<$Res> get contact {
    return $ContactModelCopyWith<$Res>(_value.contact, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }

  /// Create a copy of HeroProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactHubModelCopyWith<$Res> get contactHub {
    return $ContactHubModelCopyWith<$Res>(_value.contactHub, (value) {
      return _then(_value.copyWith(contactHub: value) as $Val);
    });
  }

  /// Create a copy of HeroProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AboutModelCopyWith<$Res> get about {
    return $AboutModelCopyWith<$Res>(_value.about, (value) {
      return _then(_value.copyWith(about: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HeroProfileModelImplCopyWith<$Res>
    implements $HeroProfileModelCopyWith<$Res> {
  factory _$$HeroProfileModelImplCopyWith(
    _$HeroProfileModelImpl value,
    $Res Function(_$HeroProfileModelImpl) then,
  ) = __$$HeroProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    LocalizedText title,
    LocalizedText summary,
    LocalizedText badge,
    LocalizedText highlightsTitle,
    List<HeroHighlight> highlights,
    LocalizedText ctaContact,
    LocalizedText ctaCv,
    ContactModel contact,
    ContactHubModel contactHub,
    AboutModel about,
  });

  @override
  $LocalizedTextCopyWith<$Res> get title;
  @override
  $LocalizedTextCopyWith<$Res> get summary;
  @override
  $LocalizedTextCopyWith<$Res> get badge;
  @override
  $LocalizedTextCopyWith<$Res> get highlightsTitle;
  @override
  $LocalizedTextCopyWith<$Res> get ctaContact;
  @override
  $LocalizedTextCopyWith<$Res> get ctaCv;
  @override
  $ContactModelCopyWith<$Res> get contact;
  @override
  $ContactHubModelCopyWith<$Res> get contactHub;
  @override
  $AboutModelCopyWith<$Res> get about;
}

/// @nodoc
class __$$HeroProfileModelImplCopyWithImpl<$Res>
    extends _$HeroProfileModelCopyWithImpl<$Res, _$HeroProfileModelImpl>
    implements _$$HeroProfileModelImplCopyWith<$Res> {
  __$$HeroProfileModelImplCopyWithImpl(
    _$HeroProfileModelImpl _value,
    $Res Function(_$HeroProfileModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HeroProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? title = null,
    Object? summary = null,
    Object? badge = null,
    Object? highlightsTitle = null,
    Object? highlights = null,
    Object? ctaContact = null,
    Object? ctaCv = null,
    Object? contact = null,
    Object? contactHub = null,
    Object? about = null,
  }) {
    return _then(
      _$HeroProfileModelImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
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
        badge:
            null == badge
                ? _value.badge
                : badge // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        highlightsTitle:
            null == highlightsTitle
                ? _value.highlightsTitle
                : highlightsTitle // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        highlights:
            null == highlights
                ? _value._highlights
                : highlights // ignore: cast_nullable_to_non_nullable
                    as List<HeroHighlight>,
        ctaContact:
            null == ctaContact
                ? _value.ctaContact
                : ctaContact // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        ctaCv:
            null == ctaCv
                ? _value.ctaCv
                : ctaCv // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        contact:
            null == contact
                ? _value.contact
                : contact // ignore: cast_nullable_to_non_nullable
                    as ContactModel,
        contactHub:
            null == contactHub
                ? _value.contactHub
                : contactHub // ignore: cast_nullable_to_non_nullable
                    as ContactHubModel,
        about:
            null == about
                ? _value.about
                : about // ignore: cast_nullable_to_non_nullable
                    as AboutModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HeroProfileModelImpl implements _HeroProfileModel {
  const _$HeroProfileModelImpl({
    required this.name,
    required this.title,
    required this.summary,
    required this.badge,
    required this.highlightsTitle,
    final List<HeroHighlight> highlights = const [],
    required this.ctaContact,
    required this.ctaCv,
    required this.contact,
    required this.contactHub,
    required this.about,
  }) : _highlights = highlights;

  factory _$HeroProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeroProfileModelImplFromJson(json);

  @override
  final String name;
  @override
  final LocalizedText title;
  @override
  final LocalizedText summary;
  @override
  final LocalizedText badge;
  @override
  final LocalizedText highlightsTitle;
  final List<HeroHighlight> _highlights;
  @override
  @JsonKey()
  List<HeroHighlight> get highlights {
    if (_highlights is EqualUnmodifiableListView) return _highlights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_highlights);
  }

  @override
  final LocalizedText ctaContact;
  @override
  final LocalizedText ctaCv;
  @override
  final ContactModel contact;
  @override
  final ContactHubModel contactHub;
  @override
  final AboutModel about;

  @override
  String toString() {
    return 'HeroProfileModel(name: $name, title: $title, summary: $summary, badge: $badge, highlightsTitle: $highlightsTitle, highlights: $highlights, ctaContact: $ctaContact, ctaCv: $ctaCv, contact: $contact, contactHub: $contactHub, about: $about)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeroProfileModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.badge, badge) || other.badge == badge) &&
            (identical(other.highlightsTitle, highlightsTitle) ||
                other.highlightsTitle == highlightsTitle) &&
            const DeepCollectionEquality().equals(
              other._highlights,
              _highlights,
            ) &&
            (identical(other.ctaContact, ctaContact) ||
                other.ctaContact == ctaContact) &&
            (identical(other.ctaCv, ctaCv) || other.ctaCv == ctaCv) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.contactHub, contactHub) ||
                other.contactHub == contactHub) &&
            (identical(other.about, about) || other.about == about));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    title,
    summary,
    badge,
    highlightsTitle,
    const DeepCollectionEquality().hash(_highlights),
    ctaContact,
    ctaCv,
    contact,
    contactHub,
    about,
  );

  /// Create a copy of HeroProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeroProfileModelImplCopyWith<_$HeroProfileModelImpl> get copyWith =>
      __$$HeroProfileModelImplCopyWithImpl<_$HeroProfileModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HeroProfileModelImplToJson(this);
  }
}

abstract class _HeroProfileModel implements HeroProfileModel {
  const factory _HeroProfileModel({
    required final String name,
    required final LocalizedText title,
    required final LocalizedText summary,
    required final LocalizedText badge,
    required final LocalizedText highlightsTitle,
    final List<HeroHighlight> highlights,
    required final LocalizedText ctaContact,
    required final LocalizedText ctaCv,
    required final ContactModel contact,
    required final ContactHubModel contactHub,
    required final AboutModel about,
  }) = _$HeroProfileModelImpl;

  factory _HeroProfileModel.fromJson(Map<String, dynamic> json) =
      _$HeroProfileModelImpl.fromJson;

  @override
  String get name;
  @override
  LocalizedText get title;
  @override
  LocalizedText get summary;
  @override
  LocalizedText get badge;
  @override
  LocalizedText get highlightsTitle;
  @override
  List<HeroHighlight> get highlights;
  @override
  LocalizedText get ctaContact;
  @override
  LocalizedText get ctaCv;
  @override
  ContactModel get contact;
  @override
  ContactHubModel get contactHub;
  @override
  AboutModel get about;

  /// Create a copy of HeroProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeroProfileModelImplCopyWith<_$HeroProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
