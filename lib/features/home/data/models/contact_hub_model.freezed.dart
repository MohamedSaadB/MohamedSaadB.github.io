// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_hub_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ContactCta _$ContactCtaFromJson(Map<String, dynamic> json) {
  return _ContactCta.fromJson(json);
}

/// @nodoc
mixin _$ContactCta {
  LocalizedText get label => throw _privateConstructorUsedError;
  LocalizedText get hint => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  LocalizedText get prefill => throw _privateConstructorUsedError;

  /// Serializes this ContactCta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactCta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactCtaCopyWith<ContactCta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCtaCopyWith<$Res> {
  factory $ContactCtaCopyWith(
    ContactCta value,
    $Res Function(ContactCta) then,
  ) = _$ContactCtaCopyWithImpl<$Res, ContactCta>;
  @useResult
  $Res call({
    LocalizedText label,
    LocalizedText hint,
    String phone,
    LocalizedText prefill,
  });

  $LocalizedTextCopyWith<$Res> get label;
  $LocalizedTextCopyWith<$Res> get hint;
  $LocalizedTextCopyWith<$Res> get prefill;
}

/// @nodoc
class _$ContactCtaCopyWithImpl<$Res, $Val extends ContactCta>
    implements $ContactCtaCopyWith<$Res> {
  _$ContactCtaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactCta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? hint = null,
    Object? phone = null,
    Object? prefill = null,
  }) {
    return _then(
      _value.copyWith(
            label:
                null == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            hint:
                null == hint
                    ? _value.hint
                    : hint // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            phone:
                null == phone
                    ? _value.phone
                    : phone // ignore: cast_nullable_to_non_nullable
                        as String,
            prefill:
                null == prefill
                    ? _value.prefill
                    : prefill // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
          )
          as $Val,
    );
  }

  /// Create a copy of ContactCta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get label {
    return $LocalizedTextCopyWith<$Res>(_value.label, (value) {
      return _then(_value.copyWith(label: value) as $Val);
    });
  }

  /// Create a copy of ContactCta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get hint {
    return $LocalizedTextCopyWith<$Res>(_value.hint, (value) {
      return _then(_value.copyWith(hint: value) as $Val);
    });
  }

  /// Create a copy of ContactCta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get prefill {
    return $LocalizedTextCopyWith<$Res>(_value.prefill, (value) {
      return _then(_value.copyWith(prefill: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContactCtaImplCopyWith<$Res>
    implements $ContactCtaCopyWith<$Res> {
  factory _$$ContactCtaImplCopyWith(
    _$ContactCtaImpl value,
    $Res Function(_$ContactCtaImpl) then,
  ) = __$$ContactCtaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    LocalizedText label,
    LocalizedText hint,
    String phone,
    LocalizedText prefill,
  });

  @override
  $LocalizedTextCopyWith<$Res> get label;
  @override
  $LocalizedTextCopyWith<$Res> get hint;
  @override
  $LocalizedTextCopyWith<$Res> get prefill;
}

/// @nodoc
class __$$ContactCtaImplCopyWithImpl<$Res>
    extends _$ContactCtaCopyWithImpl<$Res, _$ContactCtaImpl>
    implements _$$ContactCtaImplCopyWith<$Res> {
  __$$ContactCtaImplCopyWithImpl(
    _$ContactCtaImpl _value,
    $Res Function(_$ContactCtaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactCta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? hint = null,
    Object? phone = null,
    Object? prefill = null,
  }) {
    return _then(
      _$ContactCtaImpl(
        label:
            null == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        hint:
            null == hint
                ? _value.hint
                : hint // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        phone:
            null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                    as String,
        prefill:
            null == prefill
                ? _value.prefill
                : prefill // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactCtaImpl implements _ContactCta {
  const _$ContactCtaImpl({
    required this.label,
    required this.hint,
    required this.phone,
    required this.prefill,
  });

  factory _$ContactCtaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactCtaImplFromJson(json);

  @override
  final LocalizedText label;
  @override
  final LocalizedText hint;
  @override
  final String phone;
  @override
  final LocalizedText prefill;

  @override
  String toString() {
    return 'ContactCta(label: $label, hint: $hint, phone: $phone, prefill: $prefill)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactCtaImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.prefill, prefill) || other.prefill == prefill));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, hint, phone, prefill);

  /// Create a copy of ContactCta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactCtaImplCopyWith<_$ContactCtaImpl> get copyWith =>
      __$$ContactCtaImplCopyWithImpl<_$ContactCtaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactCtaImplToJson(this);
  }
}

abstract class _ContactCta implements ContactCta {
  const factory _ContactCta({
    required final LocalizedText label,
    required final LocalizedText hint,
    required final String phone,
    required final LocalizedText prefill,
  }) = _$ContactCtaImpl;

  factory _ContactCta.fromJson(Map<String, dynamic> json) =
      _$ContactCtaImpl.fromJson;

  @override
  LocalizedText get label;
  @override
  LocalizedText get hint;
  @override
  String get phone;
  @override
  LocalizedText get prefill;

  /// Create a copy of ContactCta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactCtaImplCopyWith<_$ContactCtaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactCardModel _$ContactCardModelFromJson(Map<String, dynamic> json) {
  return _ContactCardModel.fromJson(json);
}

/// @nodoc
mixin _$ContactCardModel {
  String get type =>
      throw _privateConstructorUsedError; // email, github, linkedin, ...
  LocalizedText get title => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this ContactCardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactCardModelCopyWith<ContactCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCardModelCopyWith<$Res> {
  factory $ContactCardModelCopyWith(
    ContactCardModel value,
    $Res Function(ContactCardModel) then,
  ) = _$ContactCardModelCopyWithImpl<$Res, ContactCardModel>;
  @useResult
  $Res call({String type, LocalizedText title, String value, String url});

  $LocalizedTextCopyWith<$Res> get title;
}

/// @nodoc
class _$ContactCardModelCopyWithImpl<$Res, $Val extends ContactCardModel>
    implements $ContactCardModelCopyWith<$Res> {
  _$ContactCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? value = null,
    Object? url = null,
  }) {
    return _then(
      _value.copyWith(
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
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
                        as String,
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of ContactCardModel
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
abstract class _$$ContactCardModelImplCopyWith<$Res>
    implements $ContactCardModelCopyWith<$Res> {
  factory _$$ContactCardModelImplCopyWith(
    _$ContactCardModelImpl value,
    $Res Function(_$ContactCardModelImpl) then,
  ) = __$$ContactCardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, LocalizedText title, String value, String url});

  @override
  $LocalizedTextCopyWith<$Res> get title;
}

/// @nodoc
class __$$ContactCardModelImplCopyWithImpl<$Res>
    extends _$ContactCardModelCopyWithImpl<$Res, _$ContactCardModelImpl>
    implements _$$ContactCardModelImplCopyWith<$Res> {
  __$$ContactCardModelImplCopyWithImpl(
    _$ContactCardModelImpl _value,
    $Res Function(_$ContactCardModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactCardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? value = null,
    Object? url = null,
  }) {
    return _then(
      _$ContactCardModelImpl(
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
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
                    as String,
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactCardModelImpl implements _ContactCardModel {
  const _$ContactCardModelImpl({
    required this.type,
    required this.title,
    required this.value,
    required this.url,
  });

  factory _$ContactCardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactCardModelImplFromJson(json);

  @override
  final String type;
  // email, github, linkedin, ...
  @override
  final LocalizedText title;
  @override
  final String value;
  @override
  final String url;

  @override
  String toString() {
    return 'ContactCardModel(type: $type, title: $title, value: $value, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactCardModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, title, value, url);

  /// Create a copy of ContactCardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactCardModelImplCopyWith<_$ContactCardModelImpl> get copyWith =>
      __$$ContactCardModelImplCopyWithImpl<_$ContactCardModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactCardModelImplToJson(this);
  }
}

abstract class _ContactCardModel implements ContactCardModel {
  const factory _ContactCardModel({
    required final String type,
    required final LocalizedText title,
    required final String value,
    required final String url,
  }) = _$ContactCardModelImpl;

  factory _ContactCardModel.fromJson(Map<String, dynamic> json) =
      _$ContactCardModelImpl.fromJson;

  @override
  String get type; // email, github, linkedin, ...
  @override
  LocalizedText get title;
  @override
  String get value;
  @override
  String get url;

  /// Create a copy of ContactCardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactCardModelImplCopyWith<_$ContactCardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactHubModel _$ContactHubModelFromJson(Map<String, dynamic> json) {
  return _ContactHubModel.fromJson(json);
}

/// @nodoc
mixin _$ContactHubModel {
  LocalizedText get title => throw _privateConstructorUsedError;
  LocalizedText get subtitle => throw _privateConstructorUsedError;
  ContactCta get primaryCta => throw _privateConstructorUsedError;
  List<ContactCardModel> get cards => throw _privateConstructorUsedError;

  /// Serializes this ContactHubModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactHubModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactHubModelCopyWith<ContactHubModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactHubModelCopyWith<$Res> {
  factory $ContactHubModelCopyWith(
    ContactHubModel value,
    $Res Function(ContactHubModel) then,
  ) = _$ContactHubModelCopyWithImpl<$Res, ContactHubModel>;
  @useResult
  $Res call({
    LocalizedText title,
    LocalizedText subtitle,
    ContactCta primaryCta,
    List<ContactCardModel> cards,
  });

  $LocalizedTextCopyWith<$Res> get title;
  $LocalizedTextCopyWith<$Res> get subtitle;
  $ContactCtaCopyWith<$Res> get primaryCta;
}

/// @nodoc
class _$ContactHubModelCopyWithImpl<$Res, $Val extends ContactHubModel>
    implements $ContactHubModelCopyWith<$Res> {
  _$ContactHubModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactHubModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? primaryCta = null,
    Object? cards = null,
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
            primaryCta:
                null == primaryCta
                    ? _value.primaryCta
                    : primaryCta // ignore: cast_nullable_to_non_nullable
                        as ContactCta,
            cards:
                null == cards
                    ? _value.cards
                    : cards // ignore: cast_nullable_to_non_nullable
                        as List<ContactCardModel>,
          )
          as $Val,
    );
  }

  /// Create a copy of ContactHubModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get title {
    return $LocalizedTextCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of ContactHubModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get subtitle {
    return $LocalizedTextCopyWith<$Res>(_value.subtitle, (value) {
      return _then(_value.copyWith(subtitle: value) as $Val);
    });
  }

  /// Create a copy of ContactHubModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCtaCopyWith<$Res> get primaryCta {
    return $ContactCtaCopyWith<$Res>(_value.primaryCta, (value) {
      return _then(_value.copyWith(primaryCta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContactHubModelImplCopyWith<$Res>
    implements $ContactHubModelCopyWith<$Res> {
  factory _$$ContactHubModelImplCopyWith(
    _$ContactHubModelImpl value,
    $Res Function(_$ContactHubModelImpl) then,
  ) = __$$ContactHubModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    LocalizedText title,
    LocalizedText subtitle,
    ContactCta primaryCta,
    List<ContactCardModel> cards,
  });

  @override
  $LocalizedTextCopyWith<$Res> get title;
  @override
  $LocalizedTextCopyWith<$Res> get subtitle;
  @override
  $ContactCtaCopyWith<$Res> get primaryCta;
}

/// @nodoc
class __$$ContactHubModelImplCopyWithImpl<$Res>
    extends _$ContactHubModelCopyWithImpl<$Res, _$ContactHubModelImpl>
    implements _$$ContactHubModelImplCopyWith<$Res> {
  __$$ContactHubModelImplCopyWithImpl(
    _$ContactHubModelImpl _value,
    $Res Function(_$ContactHubModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContactHubModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? primaryCta = null,
    Object? cards = null,
  }) {
    return _then(
      _$ContactHubModelImpl(
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
        primaryCta:
            null == primaryCta
                ? _value.primaryCta
                : primaryCta // ignore: cast_nullable_to_non_nullable
                    as ContactCta,
        cards:
            null == cards
                ? _value._cards
                : cards // ignore: cast_nullable_to_non_nullable
                    as List<ContactCardModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactHubModelImpl implements _ContactHubModel {
  const _$ContactHubModelImpl({
    required this.title,
    required this.subtitle,
    required this.primaryCta,
    final List<ContactCardModel> cards = const [],
  }) : _cards = cards;

  factory _$ContactHubModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactHubModelImplFromJson(json);

  @override
  final LocalizedText title;
  @override
  final LocalizedText subtitle;
  @override
  final ContactCta primaryCta;
  final List<ContactCardModel> _cards;
  @override
  @JsonKey()
  List<ContactCardModel> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'ContactHubModel(title: $title, subtitle: $subtitle, primaryCta: $primaryCta, cards: $cards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactHubModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.primaryCta, primaryCta) ||
                other.primaryCta == primaryCta) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    subtitle,
    primaryCta,
    const DeepCollectionEquality().hash(_cards),
  );

  /// Create a copy of ContactHubModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactHubModelImplCopyWith<_$ContactHubModelImpl> get copyWith =>
      __$$ContactHubModelImplCopyWithImpl<_$ContactHubModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactHubModelImplToJson(this);
  }
}

abstract class _ContactHubModel implements ContactHubModel {
  const factory _ContactHubModel({
    required final LocalizedText title,
    required final LocalizedText subtitle,
    required final ContactCta primaryCta,
    final List<ContactCardModel> cards,
  }) = _$ContactHubModelImpl;

  factory _ContactHubModel.fromJson(Map<String, dynamic> json) =
      _$ContactHubModelImpl.fromJson;

  @override
  LocalizedText get title;
  @override
  LocalizedText get subtitle;
  @override
  ContactCta get primaryCta;
  @override
  List<ContactCardModel> get cards;

  /// Create a copy of ContactHubModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactHubModelImplCopyWith<_$ContactHubModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
