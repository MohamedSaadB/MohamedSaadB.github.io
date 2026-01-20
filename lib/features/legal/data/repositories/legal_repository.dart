import 'dart:convert';
import 'package:flutter/services.dart';

import '../models/checkout_models.dart';
import '../models/pricing_models.dart';
import '../models/refund_models.dart';



class LegalRepository {
  const LegalRepository();

  Future<PricingPageModel> loadPricing() async {
    final raw = await rootBundle.loadString('assets/content/price.json');
    return PricingPageModel.fromJson(jsonDecode(raw) as Map<String, dynamic>);
  }

  Future<RefundPolicyPageModel> loadRefundPolicy() async {
    final raw = await rootBundle.loadString('assets/content/refund_policy.json');
    return RefundPolicyPageModel.fromJson(jsonDecode(raw) as Map<String, dynamic>);
  }

  Future<CheckoutPageModel> loadCheckout() async {
    final raw = await rootBundle.loadString('assets/content/checkout.json');
    return CheckoutPageModel.fromJson(jsonDecode(raw) as Map<String, dynamic>);
  }
}
