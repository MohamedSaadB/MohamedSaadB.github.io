import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/localization/localized_text.dart';
import '../../../../core/responsive/breakpoints.dart';
import '../../../../core/responsive/responsive.dart';
import '../../../../core/widgets/max_width_container.dart';
import '../../../../core/widgets/reveal_on_scroll.dart';
import '../cubit/home_content_cubit.dart';
import '../cubit/home_content_state.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  String _t(BuildContext context, LocalizedText text) {
    final lang = Localizations.localeOf(context).languageCode;
    return (lang == 'ar') ? text.ar : text.en;
  }

  IconData _iconFromKey(String key) {
    switch (key) {
      case 'auto_awesome':
        return Icons.auto_awesome;
      case 'cloud_done':
        return Icons.cloud_done;
      case 'speed':
        return Icons.speed;
      case 'design_services':
        return Icons.design_services;
      case 'architecture':
        return Icons.architecture;
      case 'rocket_launch':
        return Icons.rocket_launch;
      default:
        return Icons.auto_awesome;
    }
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final cols = columnsForGrid(context, max: 3);

    return BlocBuilder<HomeContentCubit, HomeContentState>(
      builder: (context, state) {
        return RevealOnScroll(
          child: Stack(
            children: [
              Positioned.fill(
                child: Opacity(
                  opacity: isDark ? 0.10 : 0.06,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        center: Alignment.topRight,
                        radius: 1.1,
                        colors: [
                          cs.primary.withOpacity(0.18),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              MaxWidthContainer(
                padding: EdgeInsets.symmetric(
                  horizontal: pageHorizontalPadding(context),
                  vertical: 56,
                ),
                child: state.when(
                  initial: () => const SizedBox(height: 240),
                  loading: () => const _ServicesLoading(),
                  error: (msg) => _ServicesError(message: msg),
                  loaded: (profile, services, projects) {
                    final items = services;

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _SectionHeader(
                          title: (Localizations.localeOf(context).languageCode == 'ar') ? 'الخدمات' : 'Services',
                          subtitle: (Localizations.localeOf(context).languageCode == 'ar')
                              ? 'حلول Flutter حديثة بجودة عالية وبنية قابلة للتوسع.'
                              : 'Modern Flutter solutions — crafted with quality, motion, and scalability.',
                          pill: (Localizations.localeOf(context).languageCode == 'ar') ? 'ماذا أقدم' : 'What I do',
                        ),
                        const SizedBox(height: 18),

                        LayoutBuilder(
                          builder: (context, c) {
                            final gap = 14.0;
                            final totalGap = gap * (cols - 1);
                            final itemWidth = (c.maxWidth - totalGap) / cols;

                            return Wrap(
                              spacing: gap,
                              runSpacing: gap,
                              children: [
                                for (int i = 0; i < items.length; i++)
                                  SizedBox(
                                    width: itemWidth,
                                    child: _ServiceCard(
                                      icon: _iconFromKey(items[i].icon),
                                      title: _t(context, items[i].title),
                                      desc: _t(context, items[i].desc),
                                      bullets: items[i].bullets.map((b) => _t(context, b)).toList(),
                                    )
                                        .animate()
                                        .fadeIn(delay: (65 * i).ms, duration: 420.ms)
                                        .moveY(begin: 14, end: 0, duration: 420.ms, curve: Curves.easeOutCubic),
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
            ],
          ),
        );
      },
    );
  }
}

class _ServicesLoading extends StatelessWidget {
  const _ServicesLoading();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      alignment: Alignment.centerLeft,
      child: const SizedBox(
        width: 26,
        height: 26,
        child: CircularProgressIndicator(strokeWidth: 2),
      ),
    );
  }
}

class _ServicesError extends StatelessWidget {
  const _ServicesError({required this.message});
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

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({
    required this.title,
    required this.subtitle,
    required this.pill,
  });

  final String title;
  final String subtitle;
  final String pill;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Pill(text: pill),
        const SizedBox(height: 12),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w900,
            letterSpacing: -0.3,
          ),
        ),
        const SizedBox(height: 10),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 780),
          child: Text(
            subtitle,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              height: 1.4,
              color: cs.onSurfaceVariant,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class _Pill extends StatelessWidget {
  const _Pill({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: cs.primary.withOpacity(0.12),
        border: Border.all(color: cs.primary.withOpacity(0.25)),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.w800,
          color: cs.primary,
        ),
      ),
    );
  }
}

class _ServiceCard extends StatefulWidget {
  const _ServiceCard({
    required this.icon,
    required this.title,
    required this.desc,
    required this.bullets,
  });

  final IconData icon;
  final String title;
  final String desc;
  final List<String> bullets;

  @override
  State<_ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<_ServiceCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final canHover = isDesktop(context);
    final effectiveHover = canHover && hover;

    final bg = cs.surface.withOpacity(0.78);
    final border = cs.outlineVariant.withOpacity(effectiveHover ? 0.55 : 0.25);

    final card = AnimatedContainer(
      duration: const Duration(milliseconds: 170),
      curve: Curves.easeOut,
      transform: Matrix4.identity()
        ..translate(0.0, effectiveHover ? -8.0 : 0.0)
        ..rotateZ(effectiveHover ? -0.002 : 0.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: border),
        boxShadow: [
          BoxShadow(
            blurRadius: effectiveHover ? 34 : 18,
            offset: const Offset(0, 14),
            color: Colors.black.withOpacity(isDark ? 0.22 : 0.12),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: Stack(
          children: [
            Container(color: bg),

            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      cs.primary.withOpacity(isDark ? 0.14 : 0.10),
                      cs.tertiary.withOpacity(isDark ? 0.10 : 0.06),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _IconBadge(icon: widget.icon),
                  const SizedBox(height: 14),

                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w900,
                      letterSpacing: -0.2,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Text(
                    widget.desc,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      height: 1.35,
                      fontWeight: FontWeight.w600,
                      color: cs.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 14),

                  Column(
                    children: widget.bullets
                        .map((b) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: _Bullet(text: b),
                    ))
                        .toList(),
                  ),
                ],
              ),
            ),

            if (effectiveHover)
              Positioned.fill(
                child: IgnorePointer(
                  child: Opacity(
                    opacity: 0.10,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(color: cs.primary.withOpacity(0.08)),
                    ),
                  ),
                ),
              ),
          ],
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

class _IconBadge extends StatelessWidget {
  const _IconBadge({required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: cs.primary.withOpacity(0.12),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: cs.primary.withOpacity(0.25)),
      ),
      child: Icon(icon, color: cs.primary),
    );
  }
}

class _Bullet extends StatelessWidget {
  const _Bullet({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: cs.primary,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w700,
              color: cs.onSurfaceVariant,
            ),
          ),
        ),
      ],
    );
  }
}
