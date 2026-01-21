import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/responsive/breakpoints.dart';
import '../../../../core/responsive/responsive.dart';
import '../../../../core/widgets/max_width_container.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key, this.planKey});
  final String? planKey;

  bool _isAr(BuildContext context) => Localizations.localeOf(context).languageCode == 'ar';

  Future<void> _open(String url) async {
    final uri = Uri.tryParse(url);
    if (uri == null) return;
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  String _fmtEgp(int amount) => '$amount ج.م';

  int? _totalForPlan(String planKey) {
    switch (planKey) {
      case 'starter':
        return 8000;
      case 'standard':
        return 15000;
      case 'premium':
        return null; // حسب المشروع
      default:
        return 8000;
    }
  }

  int _depositForPlan(String planKey) {
    final total = _totalForPlan(planKey);
    if (total == null) return 2000; // عربون حجز مبدئي للمشاريع الكبيرة
    return (total * 0.10).round(); // 10%
  }

  String _planName(BuildContext context, String key) {
    final ar = _isAr(context);
    switch (key) {
      case 'starter':
        return ar ? 'Starter' : 'Starter';
      case 'standard':
        return ar ? 'Standard' : 'Standard';
      case 'premium':
        return ar ? 'Premium' : 'Premium';
      default:
        return ar ? 'Starter' : 'Starter';
    }
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    // ✅ استلام الباقة من صفحة الأسعار
    final planKey  = this.planKey ?? 'starter';

    print("plan ====================$planKey");
    // ✅ روابط الدفع (PAYLINX) — استبدلها بروابطك الحقيقية
    final payLinks = <String, String>{
      'starter': 'https://checkouts.kashier.io/en/paymentpage?ppLink=PP-4236740001,test',
      'standard': 'https://checkouts.kashier.io/en/paymentpage?ppLink=PP-4236740001,test',
      'premium': 'https://checkouts.kashier.io/en/paymentpage?ppLink=PP-4236740001,test',
    };

    final total = _totalForPlan(planKey);
    final deposit = _depositForPlan(planKey);

    final isAr = _isAr(context);

    return Scaffold(
      body: MaxWidthContainer(
        padding: EdgeInsets.symmetric(horizontal: pageHorizontalPadding(context), vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isAr ? 'إتمام الطلب' : 'Checkout',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 10),
              Text(
                isAr
                    ? 'راجِع ملخص طلبك ثم ادفع العربون (10%) لتأكيد الحجز. سيتم الدفع عبر Kashier PayLink.'
                    : 'Review your order summary then pay a 10% deposit to confirm booking. Payment is via Kashier PayLink.',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  height: 1.5,
                  color: cs.onSurfaceVariant,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 18),

              // ✅ ملخص الطلب
              _SummaryCard(
                planName: _planName(context, planKey),
                totalText: total == null ? (isAr ? 'حسب المشروع' : 'Custom (after scope review)') : _fmtEgp(total),
                depositText: _fmtEgp(deposit),
                isAr: isAr,
              ),
              const SizedBox(height: 12),

              // ✅ شرح كيف سيتم الأمر
              _InfoCard(
                title: isAr ? 'كيف سيتم الأمر؟' : 'How it works',
                body: isAr
                    ? 'ستدفع الآن عربون 10% لتأكيد الحجز وبدء تحليل المتطلبات. بعد تأكيد الدفع سأتواصل معك خلال 24 ساعة لتأكيد التفاصيل وجدولة التنفيذ. العربون يُخصم بالكامل من إجمالي التكلفة.'
                    : 'You will pay a 10% deposit to confirm booking and start requirements review. After payment confirmation, I will contact you within 24 hours to confirm details and schedule delivery. The deposit is fully deducted from the final total.',
              ),
              const SizedBox(height: 12),

              // ✅ زر الدفع عبر Kashier
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: () {
                    final link = payLinks[planKey] ?? payLinks['starter']!;
                    _open(link);
                  },
                  icon: const Icon(Icons.lock_outline),
                  label: Text(isAr ? 'ادفع العربون الآن' : 'Pay deposit now'),
                ),
              ),

              const SizedBox(height: 10),

              // ✅ روابط السياسات (مهم لكاشير)
              _MiniPolicyRow(
                isAr: isAr,
                onOpen: (path) async => context.go(path)
              ),

              const SizedBox(height: 14),

              // ✅ زر رجوع (اختياري)
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () => Navigator.of(context).maybePop(),
                  child: Text(isAr ? 'رجوع' : 'Back'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------- UI ----------

class _SummaryCard extends StatelessWidget {
  const _SummaryCard({
    required this.planName,
    required this.totalText,
    required this.depositText,
    required this.isAr,
  });

  final String planName;
  final String totalText;
  final String depositText;
  final bool isAr;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    Widget row(String k, String v) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Expanded(
              child: Text(
                k,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w800),
              ),
            ),
            Text(
              v,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w900, color: cs.primary),
            ),
          ],
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: cs.surface.withOpacity(0.78),
        border: Border.all(color: cs.outlineVariant.withOpacity(0.28)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isAr ? 'ملخص الطلب' : 'Order summary',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 12),
          row(isAr ? 'الباقة' : 'Plan', planName),
          row(isAr ? 'السعر التقريبي الكلي' : 'Estimated total', totalText),
          row(isAr ? 'الدفع الآن (عربون 10%)' : 'Pay now (10% deposit)', depositText),
          const SizedBox(height: 6),
          Text(
            isAr
                ? 'العربون يُخصم بالكامل من إجمالي التكلفة بعد تأكيد المتطلبات.'
                : 'The deposit is fully deducted from the final total once scope is confirmed.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: cs.onSurfaceVariant,
              fontWeight: FontWeight.w700,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({required this.title, required this.body});
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: cs.surface.withOpacity(0.78),
        border: Border.all(color: cs.outlineVariant.withOpacity(0.28)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.info_outline, color: cs.primary),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            body,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: cs.onSurfaceVariant,
              fontWeight: FontWeight.w700,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

class _MiniPolicyRow extends StatelessWidget {
  const _MiniPolicyRow({required this.onOpen, required this.isAr});
  final Future<void> Function(String path) onOpen;
  final bool isAr;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: cs.surface.withOpacity(0.78),
        border: Border.all(color: cs.outlineVariant.withOpacity(0.28)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.policy_outlined, color: cs.primary),
              const SizedBox(width: 10),
              Text(
                isAr ? 'قبل الدفع تأكد من قرائة' : 'Before paying ensure read',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              OutlinedButton(onPressed: () => onOpen('/refund-policy'), child: Text(isAr ? 'سياسة الاسترجاع' : 'Refund')),
             ],
          ),
        ],
      ),
    );
  }
}
