import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/localization/localized_text.dart';
import '../../../../core/responsive/breakpoints.dart';
import '../../../../core/responsive/responsive.dart';
import '../../../../core/widgets/max_width_container.dart';
import '../../data/models/pricing_models.dart';
import '../../data/repositories/legal_repository.dart';
import '../cubit/legal_cubit.dart';
import '../cubit/legal_state.dart';

class PricingPage extends StatelessWidget {
  const PricingPage({super.key, required this.onGoCheckout});
  final VoidCallback onGoCheckout;

  String _t(BuildContext context, LocalizedText t) {
    final lang = Localizations.localeOf(context).languageCode;
    return lang == 'ar' ? t.ar : t.en;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LegalCubit(const _LegalRepoProvider().repo)..loadPricing(),
      child: BlocBuilder<LegalCubit, LegalState>(
        builder: (context, state) {
          final cs = Theme.of(context).colorScheme;
          final isDark = Theme.of(context).brightness == Brightness.dark;

          return Scaffold(
            body: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: _TopGlassHeader(
                    title: state.maybeWhen(
                      loaded: (pricing, _, __) => pricing == null ? '' : _t(context, pricing.title),
                      orElse: () => 'Pricing',
                    ),
                    subtitle: state.maybeWhen(
                      loaded: (pricing, _, __) => pricing == null ? '' : _t(context, pricing.subtitle),
                      orElse: () => '',
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: MaxWidthContainer(
                    padding: EdgeInsets.symmetric(
                      horizontal: pageHorizontalPadding(context),
                      vertical: 28,
                    ),
                    child: state.when(
                      initial: () => const SizedBox(height: 220),
                      loading: () => const _LoadingBlock(),
                      error: (m) => _ErrorBlock(m),
                      loaded: (pricing, _, __) {
                        final p = pricing!;
                        final cols = columnsForGrid(context, max: 3);

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _NoteCard(text: _t(context, p.note)),
                            const SizedBox(height: 16),

                            LayoutBuilder(
                              builder: (context, c) {
                                final gap = 14.0;
                                final totalGap = gap * (cols - 1);
                                final itemWidth = (c.maxWidth - totalGap) / cols;

                                return Wrap(
                                  spacing: gap,
                                  runSpacing: gap,
                                  children: [
                                    for (int i = 0; i < p.plans.length; i++)
                                      SizedBox(
                                        width: itemWidth,
                                        child: _PlanCard(
                                          tag: _t(context, p.plans[i].tag),
                                          name: _t(context, p.plans[i].name),
                                          price: _t(context, p.plans[i].priceText),
                                          duration: _t(context, p.plans[i].durationText),
                                          features: p.plans[i].features.map((f) => _t(context, f)).toList(),
                                          highlight: p.plans[i].highlight,
                                          cta: _t(context, p.plans[i].ctaLabel),
                                          onTap: onGoCheckout,
                                        )
                                            .animate()
                                            .fadeIn(delay: (70 * i).ms, duration: 420.ms)
                                            .moveY(begin: 12, end: 0, duration: 420.ms, curve: Curves.easeOutCubic),
                                      ),
                                  ],
                                );
                              },
                            ),

                            const SizedBox(height: 22),
                            Text(
                              _t(context, p.faqTitle),
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w900),
                            ),
                            const SizedBox(height: 12),
                            ...List.generate(
                              p.faq.length,
                                  (i) => _FaqTile(
                                q: _t(context, p.faq[i].q),
                                a: _t(context, p.faq[i].a),
                              )
                                  .animate()
                                  .fadeIn(delay: (60 * i).ms, duration: 380.ms)
                                  .moveY(begin: 8, end: 0, duration: 380.ms),
                            ),

                            const SizedBox(height: 46),
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: cs.primary.withOpacity(isDark ? 0.10 : 0.08),
                                border: Border.all(color: cs.primary.withOpacity(0.22)),
                              ),
                              child: Row(
                                children: [
                                  Icon(Icons.shield_outlined, color: cs.primary),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      (Localizations.localeOf(context).languageCode == 'ar')
                                          ? 'هذه الأسعار إرشادية. ستحصل على عرض سعر رسمي بعد فهم متطلبات مشروعك.'
                                          : 'These prices are guidelines. You’ll receive an official quote after scope review.',
                                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// -------- UI blocks --------

class _TopGlassHeader extends StatelessWidget {
  const _TopGlassHeader({required this.title, required this.subtitle});
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: pageHorizontalPadding(context), vertical: 34),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            cs.primary.withOpacity(isDark ? 0.22 : 0.12),
            cs.tertiary.withOpacity(isDark ? 0.18 : 0.09),
            cs.surface,
          ],
        ),
      ),
      child: MaxWidthContainer(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w900)),
            const SizedBox(height: 10),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Text(
                subtitle,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  height: 1.5,
                  color: cs.onSurfaceVariant,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NoteCard extends StatelessWidget {
  const _NoteCard({required this.text});
  final String text;

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
      child: Row(
        children: [
          Icon(Icons.info_outline, color: cs.primary),
          const SizedBox(width: 10),
          Expanded(
            child: Text(text, style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w700)),
          ),
        ],
      ),
    );
  }
}

class _PlanCard extends StatelessWidget {
  const _PlanCard({
    required this.tag,
    required this.name,
    required this.price,
    required this.duration,
    required this.features,
    required this.highlight,
    required this.cta,
    required this.onTap,
  });

  final String tag;
  final String name;
  final String price;
  final String duration;
  final List<String> features;
  final bool highlight;
  final String cta;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: cs.surface.withOpacity(0.78),
        border: Border.all(color: (highlight ? cs.primary : cs.outlineVariant).withOpacity(highlight ? 0.45 : 0.28)),
        boxShadow: [
          BoxShadow(
            blurRadius: highlight ? 26 : 18,
            offset: const Offset(0, 14),
            color: Colors.black.withOpacity(isDark ? 0.22 : 0.10),
          ),
        ],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            _Pill(text: tag, highlight: highlight),
            const Spacer(),
            if (highlight) Icon(Icons.star_rounded, color: cs.primary),
          ],
        ),
        const SizedBox(height: 12),
        Text(name, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w900)),
        const SizedBox(height: 6),
        Text(price, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w900, color: cs.primary)),
        const SizedBox(height: 4),
        Text(duration, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: cs.onSurfaceVariant, fontWeight: FontWeight.w700)),
        const SizedBox(height: 12),
        ...features.map((f) => Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            children: [
              Icon(Icons.check_circle, size: 18, color: cs.primary),
              const SizedBox(width: 8),
              Expanded(child: Text(f, style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700))),
            ],
          ),
        )),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          child: FilledButton(
            onPressed: onTap,
            child: Text(cta),
          ),
        ),
      ]),
    );
  }
}

class _Pill extends StatelessWidget {
  const _Pill({required this.text, required this.highlight});
  final String text;
  final bool highlight;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: cs.primary.withOpacity(highlight ? 0.16 : 0.10),
        border: Border.all(color: cs.primary.withOpacity(highlight ? 0.30 : 0.20)),
      ),
      child: Text(text, style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w800, color: cs.primary)),
    );
  }
}

class _FaqTile extends StatelessWidget {
  const _FaqTile({required this.q, required this.a});
  final String q;
  final String a;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: cs.surface.withOpacity(0.78),
        border: Border.all(color: cs.outlineVariant.withOpacity(0.28)),
      ),
      child: ExpansionTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        collapsedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        title: Text(q, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900)),
        childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        children: [
          Text(a, style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: cs.onSurfaceVariant, height: 1.5, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class _LoadingBlock extends StatelessWidget {
  const _LoadingBlock();
  @override
  Widget build(BuildContext context) => const SizedBox(height: 240);
}

class _ErrorBlock extends StatelessWidget {
  const _ErrorBlock(this.m);
  final String m;
  @override
  Widget build(BuildContext context) => Text(m);
}

class _LegalRepoProvider {
  const _LegalRepoProvider();
  LegalRepository get repo => const LegalRepository();
}
