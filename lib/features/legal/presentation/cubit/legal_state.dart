import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/pricing_models.dart';
import '../../data/models/refund_models.dart';
import '../../data/models/checkout_models.dart';

part 'legal_state.freezed.dart';

@freezed
class LegalState with _$LegalState {
  const factory LegalState.initial() = _Initial;
  const factory LegalState.loading() = _Loading;
  const factory LegalState.loaded({
    PricingPageModel? pricing,
    RefundPolicyPageModel? refund,
    CheckoutPageModel? checkout,
  }) = _Loaded;
  const factory LegalState.error(String message) = _Error;
}
