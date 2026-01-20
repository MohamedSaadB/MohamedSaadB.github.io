// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pricing_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PricingFaq _$PricingFaqFromJson(Map<String, dynamic> json) {
  return _PricingFaq.fromJson(json);
}

/// @nodoc
mixin _$PricingFaq {
  LocalizedText get q => throw _privateConstructorUsedError;
  LocalizedText get a => throw _privateConstructorUsedError;

  /// Serializes this PricingFaq to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PricingFaq
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PricingFaqCopyWith<PricingFaq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingFaqCopyWith<$Res> {
  factory $PricingFaqCopyWith(
    PricingFaq value,
    $Res Function(PricingFaq) then,
  ) = _$PricingFaqCopyWithImpl<$Res, PricingFaq>;
  @useResult
  $Res call({LocalizedText q, LocalizedText a});

  $LocalizedTextCopyWith<$Res> get q;
  $LocalizedTextCopyWith<$Res> get a;
}

/// @nodoc
class _$PricingFaqCopyWithImpl<$Res, $Val extends PricingFaq>
    implements $PricingFaqCopyWith<$Res> {
  _$PricingFaqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PricingFaq
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? q = null, Object? a = null}) {
    return _then(
      _value.copyWith(
            q:
                null == q
                    ? _value.q
                    : q // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            a:
                null == a
                    ? _value.a
                    : a // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
          )
          as $Val,
    );
  }

  /// Create a copy of PricingFaq
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get q {
    return $LocalizedTextCopyWith<$Res>(_value.q, (value) {
      return _then(_value.copyWith(q: value) as $Val);
    });
  }

  /// Create a copy of PricingFaq
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get a {
    return $LocalizedTextCopyWith<$Res>(_value.a, (value) {
      return _then(_value.copyWith(a: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PricingFaqImplCopyWith<$Res>
    implements $PricingFaqCopyWith<$Res> {
  factory _$$PricingFaqImplCopyWith(
    _$PricingFaqImpl value,
    $Res Function(_$PricingFaqImpl) then,
  ) = __$$PricingFaqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocalizedText q, LocalizedText a});

  @override
  $LocalizedTextCopyWith<$Res> get q;
  @override
  $LocalizedTextCopyWith<$Res> get a;
}

/// @nodoc
class __$$PricingFaqImplCopyWithImpl<$Res>
    extends _$PricingFaqCopyWithImpl<$Res, _$PricingFaqImpl>
    implements _$$PricingFaqImplCopyWith<$Res> {
  __$$PricingFaqImplCopyWithImpl(
    _$PricingFaqImpl _value,
    $Res Function(_$PricingFaqImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PricingFaq
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? q = null, Object? a = null}) {
    return _then(
      _$PricingFaqImpl(
        q:
            null == q
                ? _value.q
                : q // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        a:
            null == a
                ? _value.a
                : a // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PricingFaqImpl implements _PricingFaq {
  const _$PricingFaqImpl({required this.q, required this.a});

  factory _$PricingFaqImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricingFaqImplFromJson(json);

  @override
  final LocalizedText q;
  @override
  final LocalizedText a;

  @override
  String toString() {
    return 'PricingFaq(q: $q, a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricingFaqImpl &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, q, a);

  /// Create a copy of PricingFaq
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PricingFaqImplCopyWith<_$PricingFaqImpl> get copyWith =>
      __$$PricingFaqImplCopyWithImpl<_$PricingFaqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricingFaqImplToJson(this);
  }
}

abstract class _PricingFaq implements PricingFaq {
  const factory _PricingFaq({
    required final LocalizedText q,
    required final LocalizedText a,
  }) = _$PricingFaqImpl;

  factory _PricingFaq.fromJson(Map<String, dynamic> json) =
      _$PricingFaqImpl.fromJson;

  @override
  LocalizedText get q;
  @override
  LocalizedText get a;

  /// Create a copy of PricingFaq
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PricingFaqImplCopyWith<_$PricingFaqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PricingPlan _$PricingPlanFromJson(Map<String, dynamic> json) {
  return _PricingPlan.fromJson(json);
}

/// @nodoc
mixin _$PricingPlan {
  LocalizedText get tag => throw _privateConstructorUsedError;
  LocalizedText get name => throw _privateConstructorUsedError;
  LocalizedText get priceText => throw _privateConstructorUsedError;
  LocalizedText get durationText => throw _privateConstructorUsedError;
  bool get highlight => throw _privateConstructorUsedError;
  List<LocalizedText> get features => throw _privateConstructorUsedError;
  LocalizedText get ctaLabel => throw _privateConstructorUsedError;
  String get ctaTarget => throw _privateConstructorUsedError;

  /// Serializes this PricingPlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PricingPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PricingPlanCopyWith<PricingPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingPlanCopyWith<$Res> {
  factory $PricingPlanCopyWith(
    PricingPlan value,
    $Res Function(PricingPlan) then,
  ) = _$PricingPlanCopyWithImpl<$Res, PricingPlan>;
  @useResult
  $Res call({
    LocalizedText tag,
    LocalizedText name,
    LocalizedText priceText,
    LocalizedText durationText,
    bool highlight,
    List<LocalizedText> features,
    LocalizedText ctaLabel,
    String ctaTarget,
  });

  $LocalizedTextCopyWith<$Res> get tag;
  $LocalizedTextCopyWith<$Res> get name;
  $LocalizedTextCopyWith<$Res> get priceText;
  $LocalizedTextCopyWith<$Res> get durationText;
  $LocalizedTextCopyWith<$Res> get ctaLabel;
}

/// @nodoc
class _$PricingPlanCopyWithImpl<$Res, $Val extends PricingPlan>
    implements $PricingPlanCopyWith<$Res> {
  _$PricingPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PricingPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? name = null,
    Object? priceText = null,
    Object? durationText = null,
    Object? highlight = null,
    Object? features = null,
    Object? ctaLabel = null,
    Object? ctaTarget = null,
  }) {
    return _then(
      _value.copyWith(
            tag:
                null == tag
                    ? _value.tag
                    : tag // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            priceText:
                null == priceText
                    ? _value.priceText
                    : priceText // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            durationText:
                null == durationText
                    ? _value.durationText
                    : durationText // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            highlight:
                null == highlight
                    ? _value.highlight
                    : highlight // ignore: cast_nullable_to_non_nullable
                        as bool,
            features:
                null == features
                    ? _value.features
                    : features // ignore: cast_nullable_to_non_nullable
                        as List<LocalizedText>,
            ctaLabel:
                null == ctaLabel
                    ? _value.ctaLabel
                    : ctaLabel // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            ctaTarget:
                null == ctaTarget
                    ? _value.ctaTarget
                    : ctaTarget // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of PricingPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get tag {
    return $LocalizedTextCopyWith<$Res>(_value.tag, (value) {
      return _then(_value.copyWith(tag: value) as $Val);
    });
  }

  /// Create a copy of PricingPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get name {
    return $LocalizedTextCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  /// Create a copy of PricingPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get priceText {
    return $LocalizedTextCopyWith<$Res>(_value.priceText, (value) {
      return _then(_value.copyWith(priceText: value) as $Val);
    });
  }

  /// Create a copy of PricingPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get durationText {
    return $LocalizedTextCopyWith<$Res>(_value.durationText, (value) {
      return _then(_value.copyWith(durationText: value) as $Val);
    });
  }

  /// Create a copy of PricingPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get ctaLabel {
    return $LocalizedTextCopyWith<$Res>(_value.ctaLabel, (value) {
      return _then(_value.copyWith(ctaLabel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PricingPlanImplCopyWith<$Res>
    implements $PricingPlanCopyWith<$Res> {
  factory _$$PricingPlanImplCopyWith(
    _$PricingPlanImpl value,
    $Res Function(_$PricingPlanImpl) then,
  ) = __$$PricingPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    LocalizedText tag,
    LocalizedText name,
    LocalizedText priceText,
    LocalizedText durationText,
    bool highlight,
    List<LocalizedText> features,
    LocalizedText ctaLabel,
    String ctaTarget,
  });

  @override
  $LocalizedTextCopyWith<$Res> get tag;
  @override
  $LocalizedTextCopyWith<$Res> get name;
  @override
  $LocalizedTextCopyWith<$Res> get priceText;
  @override
  $LocalizedTextCopyWith<$Res> get durationText;
  @override
  $LocalizedTextCopyWith<$Res> get ctaLabel;
}

/// @nodoc
class __$$PricingPlanImplCopyWithImpl<$Res>
    extends _$PricingPlanCopyWithImpl<$Res, _$PricingPlanImpl>
    implements _$$PricingPlanImplCopyWith<$Res> {
  __$$PricingPlanImplCopyWithImpl(
    _$PricingPlanImpl _value,
    $Res Function(_$PricingPlanImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PricingPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? name = null,
    Object? priceText = null,
    Object? durationText = null,
    Object? highlight = null,
    Object? features = null,
    Object? ctaLabel = null,
    Object? ctaTarget = null,
  }) {
    return _then(
      _$PricingPlanImpl(
        tag:
            null == tag
                ? _value.tag
                : tag // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        priceText:
            null == priceText
                ? _value.priceText
                : priceText // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        durationText:
            null == durationText
                ? _value.durationText
                : durationText // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        highlight:
            null == highlight
                ? _value.highlight
                : highlight // ignore: cast_nullable_to_non_nullable
                    as bool,
        features:
            null == features
                ? _value._features
                : features // ignore: cast_nullable_to_non_nullable
                    as List<LocalizedText>,
        ctaLabel:
            null == ctaLabel
                ? _value.ctaLabel
                : ctaLabel // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        ctaTarget:
            null == ctaTarget
                ? _value.ctaTarget
                : ctaTarget // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PricingPlanImpl implements _PricingPlan {
  const _$PricingPlanImpl({
    required this.tag,
    required this.name,
    required this.priceText,
    required this.durationText,
    this.highlight = false,
    final List<LocalizedText> features = const [],
    required this.ctaLabel,
    required this.ctaTarget,
  }) : _features = features;

  factory _$PricingPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricingPlanImplFromJson(json);

  @override
  final LocalizedText tag;
  @override
  final LocalizedText name;
  @override
  final LocalizedText priceText;
  @override
  final LocalizedText durationText;
  @override
  @JsonKey()
  final bool highlight;
  final List<LocalizedText> _features;
  @override
  @JsonKey()
  List<LocalizedText> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  @override
  final LocalizedText ctaLabel;
  @override
  final String ctaTarget;

  @override
  String toString() {
    return 'PricingPlan(tag: $tag, name: $name, priceText: $priceText, durationText: $durationText, highlight: $highlight, features: $features, ctaLabel: $ctaLabel, ctaTarget: $ctaTarget)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricingPlanImpl &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.priceText, priceText) ||
                other.priceText == priceText) &&
            (identical(other.durationText, durationText) ||
                other.durationText == durationText) &&
            (identical(other.highlight, highlight) ||
                other.highlight == highlight) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            (identical(other.ctaLabel, ctaLabel) ||
                other.ctaLabel == ctaLabel) &&
            (identical(other.ctaTarget, ctaTarget) ||
                other.ctaTarget == ctaTarget));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    tag,
    name,
    priceText,
    durationText,
    highlight,
    const DeepCollectionEquality().hash(_features),
    ctaLabel,
    ctaTarget,
  );

  /// Create a copy of PricingPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PricingPlanImplCopyWith<_$PricingPlanImpl> get copyWith =>
      __$$PricingPlanImplCopyWithImpl<_$PricingPlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PricingPlanImplToJson(this);
  }
}

abstract class _PricingPlan implements PricingPlan {
  const factory _PricingPlan({
    required final LocalizedText tag,
    required final LocalizedText name,
    required final LocalizedText priceText,
    required final LocalizedText durationText,
    final bool highlight,
    final List<LocalizedText> features,
    required final LocalizedText ctaLabel,
    required final String ctaTarget,
  }) = _$PricingPlanImpl;

  factory _PricingPlan.fromJson(Map<String, dynamic> json) =
      _$PricingPlanImpl.fromJson;

  @override
  LocalizedText get tag;
  @override
  LocalizedText get name;
  @override
  LocalizedText get priceText;
  @override
  LocalizedText get durationText;
  @override
  bool get highlight;
  @override
  List<LocalizedText> get features;
  @override
  LocalizedText get ctaLabel;
  @override
  String get ctaTarget;

  /// Create a copy of PricingPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PricingPlanImplCopyWith<_$PricingPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PricingPageModel _$PricingPageModelFromJson(Map<String, dynamic> json) {
  return _PricingPageModel.fromJson(json);
}

/// @nodoc
mixin _$PricingPageModel {
  LocalizedText get title => throw _privateConstructorUsedError;
  LocalizedText get subtitle => throw _privateConstructorUsedError;
  LocalizedText get note => throw _privateConstructorUsedError;
  List<PricingPlan> get plans => throw _privateConstructorUsedError;
  LocalizedText get faqTitle => throw _privateConstructorUsedError;
  List<PricingFaq> get faq => throw _privateConstructorUsedError;

  /// Serializes this PricingPageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PricingPageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PricingPageModelCopyWith<PricingPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricingPageModelCopyWith<$Res> {
  factory $PricingPageModelCopyWith(
    PricingPageModel value,
    $Res Function(PricingPageModel) then,
  ) = _$PricingPageModelCopyWithImpl<$Res, PricingPageModel>;
  @useResult
  $Res call({
    LocalizedText title,
    LocalizedText subtitle,
    LocalizedText note,
    List<PricingPlan> plans,
    LocalizedText faqTitle,
    List<PricingFaq> faq,
  });

  $LocalizedTextCopyWith<$Res> get title;
  $LocalizedTextCopyWith<$Res> get subtitle;
  $LocalizedTextCopyWith<$Res> get note;
  $LocalizedTextCopyWith<$Res> get faqTitle;
}

/// @nodoc
class _$PricingPageModelCopyWithImpl<$Res, $Val extends PricingPageModel>
    implements $PricingPageModelCopyWith<$Res> {
  _$PricingPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PricingPageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? note = null,
    Object? plans = null,
    Object? faqTitle = null,
    Object? faq = null,
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
            note:
                null == note
                    ? _value.note
                    : note // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            plans:
                null == plans
                    ? _value.plans
                    : plans // ignore: cast_nullable_to_non_nullable
                        as List<PricingPlan>,
            faqTitle:
                null == faqTitle
                    ? _value.faqTitle
                    : faqTitle // ignore: cast_nullable_to_non_nullable
                        as LocalizedText,
            faq:
                null == faq
                    ? _value.faq
                    : faq // ignore: cast_nullable_to_non_nullable
                        as List<PricingFaq>,
          )
          as $Val,
    );
  }

  /// Create a copy of PricingPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get title {
    return $LocalizedTextCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value) as $Val);
    });
  }

  /// Create a copy of PricingPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get subtitle {
    return $LocalizedTextCopyWith<$Res>(_value.subtitle, (value) {
      return _then(_value.copyWith(subtitle: value) as $Val);
    });
  }

  /// Create a copy of PricingPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get note {
    return $LocalizedTextCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value) as $Val);
    });
  }

  /// Create a copy of PricingPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalizedTextCopyWith<$Res> get faqTitle {
    return $LocalizedTextCopyWith<$Res>(_value.faqTitle, (value) {
      return _then(_value.copyWith(faqTitle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PricingPageModelImplCopyWith<$Res>
    implements $PricingPageModelCopyWith<$Res> {
  factory _$$PricingPageModelImplCopyWith(
    _$PricingPageModelImpl value,
    $Res Function(_$PricingPageModelImpl) then,
  ) = __$$PricingPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    LocalizedText title,
    LocalizedText subtitle,
    LocalizedText note,
    List<PricingPlan> plans,
    LocalizedText faqTitle,
    List<PricingFaq> faq,
  });

  @override
  $LocalizedTextCopyWith<$Res> get title;
  @override
  $LocalizedTextCopyWith<$Res> get subtitle;
  @override
  $LocalizedTextCopyWith<$Res> get note;
  @override
  $LocalizedTextCopyWith<$Res> get faqTitle;
}

/// @nodoc
class __$$PricingPageModelImplCopyWithImpl<$Res>
    extends _$PricingPageModelCopyWithImpl<$Res, _$PricingPageModelImpl>
    implements _$$PricingPageModelImplCopyWith<$Res> {
  __$$PricingPageModelImplCopyWithImpl(
    _$PricingPageModelImpl _value,
    $Res Function(_$PricingPageModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PricingPageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? note = null,
    Object? plans = null,
    Object? faqTitle = null,
    Object? faq = null,
  }) {
    return _then(
      _$PricingPageModelImpl(
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
        note:
            null == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        plans:
            null == plans
                ? _value._plans
                : plans // ignore: cast_nullable_to_non_nullable
                    as List<PricingPlan>,
        faqTitle:
            null == faqTitle
                ? _value.faqTitle
                : faqTitle // ignore: cast_nullable_to_non_nullable
                    as LocalizedText,
        faq:
            null == faq
                ? _value._faq
                : faq // ignore: cast_nullable_to_non_nullable
                    as List<PricingFaq>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PricingPageModelImpl implements _PricingPageModel {
  const _$PricingPageModelImpl({
    required this.title,
    required this.subtitle,
    required this.note,
    final List<PricingPlan> plans = const [],
    required this.faqTitle,
    final List<PricingFaq> faq = const [],
  }) : _plans = plans,
       _faq = faq;

  factory _$PricingPageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PricingPageModelImplFromJson(json);

  @override
  final LocalizedText title;
  @override
  final LocalizedText subtitle;
  @override
  final LocalizedText note;
  final List<PricingPlan> _plans;
  @override
  @JsonKey()
  List<PricingPlan> get plans {
    if (_plans is EqualUnmodifiableListView) return _plans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plans);
  }

  @override
  final LocalizedText faqTitle;
  final List<PricingFaq> _faq;
  @override
  @JsonKey()
  List<PricingFaq> get faq {
    if (_faq is EqualUnmodifiableListView) return _faq;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_faq);
  }

  @override
  String toString() {
    return 'PricingPageModel(title: $title, subtitle: $subtitle, note: $note, plans: $plans, faqTitle: $faqTitle, faq: $faq)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PricingPageModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality().equals(other._plans, _plans) &&
            (identical(other.faqTitle, faqTitle) ||
                other.faqTitle == faqTitle) &&
            const DeepCollectionEquality().equals(other._faq, _faq));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    subtitle,
    note,
    const DeepCollectionEquality().hash(_plans),
    faqTitle,
    const DeepCollectionEquality().hash(_faq),
  );

  /// Create a copy of PricingPageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PricingPageModelImplCopyWith<_$PricingPageModelImpl> get copyWith =>
      __$$PricingPageModelImplCopyWithImpl<_$PricingPageModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PricingPageModelImplToJson(this);
  }
}

abstract class _PricingPageModel implements PricingPageModel {
  const factory _PricingPageModel({
    required final LocalizedText title,
    required final LocalizedText subtitle,
    required final LocalizedText note,
    final List<PricingPlan> plans,
    required final LocalizedText faqTitle,
    final List<PricingFaq> faq,
  }) = _$PricingPageModelImpl;

  factory _PricingPageModel.fromJson(Map<String, dynamic> json) =
      _$PricingPageModelImpl.fromJson;

  @override
  LocalizedText get title;
  @override
  LocalizedText get subtitle;
  @override
  LocalizedText get note;
  @override
  List<PricingPlan> get plans;
  @override
  LocalizedText get faqTitle;
  @override
  List<PricingFaq> get faq;

  /// Create a copy of PricingPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PricingPageModelImplCopyWith<_$PricingPageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
