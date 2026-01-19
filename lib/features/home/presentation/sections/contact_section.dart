import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/localization/localized_text.dart';
import '../../../../core/responsive/breakpoints.dart';
import '../../../../core/responsive/responsive.dart';
import '../../../../core/widgets/max_width_container.dart';
import '../../../../core/widgets/reveal_on_scroll.dart';
import '../../data/models/contact_hub_model.dart';
import '../cubit/home_content_cubit.dart';
import '../cubit/home_content_state.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  String _t(BuildContext context, LocalizedText text) {
    final lang = Localizations.localeOf(context).languageCode;
    return (lang == 'ar') ? text.ar : text.en;
  }

  Future<void> _open(String url) async {
    final uri = Uri.parse(url);
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  String _whatsUrl(String phone, String message) {
    final encoded = Uri.encodeComponent(message);
    final cleanPhone = phone.replaceAll('+', '').replaceAll(' ', '');
    return 'https://wa.me/$cleanPhone?text=$encoded';
  }

  IconData _iconFor(String type) {
    switch (type) {
      case 'email':
        return Icons.mail_outline;
      case 'linkedin':
        return Icons.work_outline;
      case 'github':
        return Icons.code;
      case 'phone':
        return Icons.call_outlined;
      case 'telegram':
        return Icons.send_outlined;
      default:
        return Icons.open_in_new;
    }
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final desktop = isDesktop(context);

    return BlocBuilder<HomeContentCubit, HomeContentState>(
      builder: (context, state) {
        return RevealOnScroll(
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.topRight,
                radius: 1.2,
                colors: [
                  cs.primary.withOpacity(isDark ? 0.10 : 0.06),
                  Colors.transparent,
                ],
              ),
            ),
            child: MaxWidthContainer(
              padding: EdgeInsets.symmetric(
                horizontal: pageHorizontalPadding(context),
                vertical: 56,
              ),
              child: state.when(
                initial: () => const SizedBox(height: 220),
                loading: () => const _Loading(),
                error: (msg) => _Error(message: msg),
                loaded: (profile, services, projects) {
                  final ContactHubModel hub = profile.contactHub;

                  final primaryText = _t(context, hub.primaryCta.label);
                  final primaryHint = _t(context, hub.primaryCta.hint);
                  final prefill = _t(context, hub.primaryCta.prefill);

                  final wa = _whatsUrl(hub.primaryCta.phone, prefill);

                  final cols = desktop ? 2 : 1;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _t(context, hub.title),
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w900,
                          letterSpacing: -0.3,
                        ),
                      ),
                      const SizedBox(height: 10),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 820),
                        child: Text(
                          _t(context, hub.subtitle),
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            height: 1.5,
                            color: cs.onSurfaceVariant,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),

                      _PrimaryCtaCard(
                        title: primaryText,
                        hint: primaryHint,
                        onTap: () => _open(wa),
                      )
                          .animate()
                          .fadeIn(duration: 420.ms)
                          .moveY(begin: 12, end: 0, duration: 420.ms),

                      const SizedBox(height: 14),

                      LayoutBuilder(
                        builder: (context, c) {
                          final gap = 14.0;
                          final totalGap = gap * (cols - 1);
                          final itemWidth = (c.maxWidth - totalGap) / cols;

                          return Wrap(
                            spacing: gap,
                            runSpacing: gap,
                            children: [
                              for (int i = 0; i < hub.cards.length; i++)
                                SizedBox(
                                  width: itemWidth,
                                  child: _ContactCard(
                                    icon: _iconFor(hub.cards[i].type),
                                    title: _t(context, hub.cards[i].title),
                                    value: hub.cards[i].value,
                                    onTap: () => _open(hub.cards[i].url),
                                  )
                                      .animate()
                                      .fadeIn(delay: (80 * i).ms, duration: 420.ms)
                                      .moveY(begin: 10, end: 0, duration: 420.ms),
                                ),
                            ],
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

class _PrimaryCtaCard extends StatefulWidget {
  const _PrimaryCtaCard({
    required this.title,
    required this.hint,
    required this.onTap,
  });

  final String title;
  final String hint;
  final VoidCallback onTap;

  @override
  State<_PrimaryCtaCard> createState() => _PrimaryCtaCardState();
}

class _PrimaryCtaCardState extends State<_PrimaryCtaCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final canHover = isDesktop(context);
    final h = canHover && hover;

    final card = AnimatedContainer(
      duration: const Duration(milliseconds: 180),
      curve: Curves.easeOutCubic,
      transform: Matrix4.identity()..translate(0.0, h ? -6.0 : 0.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        border: Border.all(color: cs.primary.withOpacity(h ? 0.55 : 0.28)),
        boxShadow: [
          BoxShadow(
            blurRadius: h ? 34 : 18,
            offset: const Offset(0, 14),
            color: Colors.black.withOpacity(isDark ? 0.24 : 0.12),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(26),
        child: Material(
          color: Colors.transparent,
          child: Ink(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  cs.primary.withOpacity(isDark ? 0.30 : 0.20),
                  cs.tertiary.withOpacity(isDark ? 0.20 : 0.12),
                  cs.surface.withOpacity(0.88),
                ],
              ),
            ),
            child: InkWell(
              onTap: widget.onTap,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  children: [
                    Container(
                      width: 52,
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: cs.primary.withOpacity(0.16),
                        border: Border.all(color: cs.primary.withOpacity(0.25)),
                      ),
                      child: Icon(Icons.chat_bubble_outline, color: cs.primary),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min, // ✅ يمنع أي تمدد غير مطلوب
                        children: [
                          Text(
                            widget.title,
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w900),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            widget.hint,
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: cs.onSurfaceVariant,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Icon(Icons.arrow_forward, color: cs.onSurface),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );

    if (!canHover) return card;

    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: card,
    );
  }
}

class _ContactCard extends StatefulWidget {
  const _ContactCard({
    required this.icon,
    required this.title,
    required this.value,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String value;
  final VoidCallback onTap;

  @override
  State<_ContactCard> createState() => _ContactCardState();
}

class _ContactCardState extends State<_ContactCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final canHover = isDesktop(context);
    final h = canHover && hover;

    final card = AnimatedContainer(
      duration: const Duration(milliseconds: 170),
      curve: Curves.easeOut,
      transform: Matrix4.identity()..translate(0.0, h ? -6.0 : 0.0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: cs.surface.withOpacity(0.78),
        border: Border.all(color: cs.outlineVariant.withOpacity(h ? 0.55 : 0.28)),
        boxShadow: [
          BoxShadow(
            blurRadius: h ? 30 : 16,
            offset: const Offset(0, 14),
            color: Colors.black.withOpacity(isDark ? 0.22 : 0.10),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: cs.primary.withOpacity(0.12),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: cs.primary.withOpacity(0.25)),
            ),
            child: Icon(widget.icon, color: cs.primary),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min, // ✅ يمنع overflow رأسي
              children: [
                Text(
                  widget.title,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 4),
                Text(
                  widget.value,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: cs.onSurfaceVariant,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Icon(Icons.open_in_new, size: 18, color: cs.onSurfaceVariant),
        ],
      ),
    );

    final tappable = InkWell(
      borderRadius: BorderRadius.circular(22),
      onTap: widget.onTap,
      child: card,
    );

    if (!canHover) return tappable;

    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: tappable,
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();
  @override
  Widget build(BuildContext context) => const SizedBox(height: 200);
}

class _Error extends StatelessWidget {
  const _Error({required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: cs.errorContainer.withOpacity(0.4),
        border: Border.all(color: cs.error.withOpacity(0.35)),
      ),
      child: Text(
        message,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}
