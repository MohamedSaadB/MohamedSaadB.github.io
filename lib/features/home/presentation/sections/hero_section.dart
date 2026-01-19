import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/localization/localized_text.dart';
import '../../../../core/responsive/breakpoints.dart';
import '../../../../core/responsive/responsive.dart';
import '../../../../core/widgets/max_width_container.dart';
import '../../../../core/widgets/reveal_on_scroll.dart';

import '../../data/models/hero_profile_model.dart';
import '../cubit/home_content_cubit.dart';
import '../cubit/home_content_state.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key, this.onContactTap});

  final VoidCallback? onContactTap;

  String _t(BuildContext context, LocalizedText text) {
    final lang = Localizations.localeOf(context).languageCode;
    return (lang == 'ar') ? text.ar : text.en;
  }

  IconData _iconFromKey(String key) {
    switch (key) {
      case 'speed':
        return Icons.speed;
      case 'architecture':
        return Icons.architecture;
      case 'design':
        return Icons.design_services;
      default:
        return Icons.auto_awesome;
    }
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final mobile = isMobile(context);

    return BlocBuilder<HomeContentCubit, HomeContentState>(
      builder: (context, state) {
        return Stack(
          children: [
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      cs.primary.withOpacity(isDark ? 0.26 : 0.14),
                      cs.tertiary.withOpacity(isDark ? 0.20 : 0.10),
                      cs.surface,
                    ],
                  ),
                ),
              ),
            ),
            MaxWidthContainer(
              padding: EdgeInsets.symmetric(
                horizontal: pageHorizontalPadding(context),
                vertical: mobile ? 42 : 56,
              ),
              child: RevealOnScroll(
                child: state.when(
                  initial: () => const SizedBox(height: 280),
                  loading: () => const _HeroLoading(),
                  error: (msg) => _HeroError(message: msg),
                  loaded: (profile, services, projects) {
                    return LayoutBuilder(
                      builder: (context, c) {
                        final desktop = c.maxWidth >= 980;

                        if (!desktop) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _Left(
                                cs,
                                name: profile.name,
                                badge: _t(context, profile.badge),
                                role: _t(context, profile.title),
                                summary: _t(context, profile.summary),
                                ctaContact: _t(context, profile.ctaContact),
                                ctaCv: _t(context, profile.ctaCv),
                                onContactTap: onContactTap,
                                cvUrl: "google.com",
                              ),
                              const SizedBox(height: 16),
                              _Right(
                                cs,
                                enableHover: false,
                                title: _t(context, profile.highlightsTitle),
                                items: profile.highlights,
                                iconFromKey: _iconFromKey,
                                localize: (lt) => _t(context, lt),
                              ),
                            ],
                          );
                        }

                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 6,
                              child: _Left(
                                cs,
                                name: profile.name,
                                badge: _t(context, profile.badge),
                                role: _t(context, profile.title),
                                summary: _t(context, profile.summary),
                                ctaContact: _t(context, profile.ctaContact),
                                ctaCv: _t(context, profile.ctaCv),
                                onContactTap: onContactTap,
                                cvUrl: "google.com",
                              ),
                            ),
                            const SizedBox(width: 18),
                            Expanded(
                              flex: 4,
                              child: _Right(
                                cs,
                                enableHover: true,
                                title: _t(context, profile.highlightsTitle),
                                items: profile.highlights,
                                iconFromKey: _iconFromKey,
                                localize: (lt) => _t(context, lt),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _HeroLoading extends StatelessWidget {
  const _HeroLoading();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      alignment: Alignment.centerLeft,
      child: const SizedBox(
        width: 26,
        height: 26,
        child: CircularProgressIndicator(strokeWidth: 2),
      ),
    );
  }
}

class _HeroError extends StatelessWidget {
  const _HeroError({required this.message});
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
        style: Theme.of(
          context,
        ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}

class _Left extends StatelessWidget {
  const _Left(
    this.cs, {
    required this.name,
    required this.badge,
    required this.role,
    required this.summary,
    required this.ctaContact,
    required this.ctaCv,
    required this.onContactTap,
    required this.cvUrl,
  });

  final ColorScheme cs;
  final String name;
  final String badge;
  final String role;
  final String summary;
  final String ctaContact;
  final String ctaCv;
  final VoidCallback? onContactTap;
  final String? cvUrl;

  @override
  Widget build(BuildContext context) {
    final titleSize = heroTitleSize(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Badge(text: badge),
        const SizedBox(height: 18),
        Text(
              name,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontSize: titleSize,
                fontWeight: FontWeight.w900,
                letterSpacing: -1.0,
                height: 1.05,
              ),
            )
            .animate()
            .fadeIn(duration: 380.ms)
            .moveY(begin: 10, end: 0, duration: 380.ms),
        const SizedBox(height: 10),
        Text(
              role,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: cs.primary,
                fontWeight: FontWeight.w800,
              ),
            )
            .animate()
            .fadeIn(delay: 90.ms, duration: 420.ms)
            .moveY(begin: 10, end: 0, duration: 420.ms),
        const SizedBox(height: 16),
        ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 720),
              child: Text(
                summary,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  height: 1.4,
                  color: cs.onSurfaceVariant,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
            .animate()
            .fadeIn(delay: 170.ms, duration: 450.ms)
            .moveY(begin: 12, end: 0, duration: 450.ms),
        const SizedBox(height: 22),

        _TrustedPlatformCard(
              title: ctaContact, // مثلاً: "التواصل عبر منصة موثوقة"
              subtitle:
                  Localizations.localeOf(context).languageCode == 'ar'
                      ? 'أنا بائع نشط على منصة خمسات. يمكنك التواصل معي بأمان عبر المنصة.'
                      : 'I’m an active seller on Khamsat. You can safely contact me through the platform.',
              platformName: 'Khamsat',
              onTap: () {
                _open('https://khamsat.com/user/mohamed669');
              },
            )
            .animate()
            .fadeIn(delay: 240.ms, duration: 450.ms)
            .moveY(begin: 10, end: 0, duration: 450.ms),
      ],
    );
  }
}

Future<void> _open(String url) async {
  final uri = Uri.parse(url);
  await launchUrl(uri, mode: LaunchMode.externalApplication);
}

class _Right extends StatelessWidget {
  const _Right(
    this.cs, {
    required this.enableHover,
    required this.title,
    required this.items,
    required this.iconFromKey,
    required this.localize,
  });

  final ColorScheme cs;
  final bool enableHover;
  final String title;
  final List<HeroHighlight> items;
  final IconData Function(String) iconFromKey;
  final String Function(LocalizedText) localize;

  @override
  Widget build(BuildContext context) {
    return _Glass(
          enableHover: enableHover,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 14),
              for (int i = 0; i < items.length; i++) ...[
                _Row(
                  icon: iconFromKey(items[i].icon),
                  title: localize(items[i].title),
                  sub: localize(items[i].desc),
                ),
                if (i != items.length - 1) const SizedBox(height: 10),
              ],
            ],
          ),
        )
        .animate()
        .fadeIn(delay: 150.ms, duration: 500.ms)
        .moveX(begin: 18, end: 0, duration: 500.ms);
  }
}

class _Badge extends StatelessWidget {
  const _Badge({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: cs.surface.withOpacity(0.65),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: cs.outlineVariant.withOpacity(0.35)),
      ),
      child: Text(
        text,
        style: Theme.of(
          context,
        ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}

class _Glass extends StatefulWidget {
  const _Glass({required this.child, required this.enableHover});
  final Widget child;
  final bool enableHover;

  @override
  State<_Glass> createState() => _GlassState();
}

class _GlassState extends State<_Glass> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final effectiveHover = widget.enableHover && hover;

    Widget content = AnimatedContainer(
      duration: const Duration(milliseconds: 180),
      curve: Curves.easeOut,
      transform:
          Matrix4.identity()..translate(0.0, effectiveHover ? -6.0 : 0.0),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: cs.surface.withOpacity(0.65),
        border: Border.all(
          color: cs.outlineVariant.withOpacity(effectiveHover ? 0.55 : 0.25),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: effectiveHover ? 30 : 18,
            offset: const Offset(0, 14),
            color: Colors.black.withOpacity(0.14),
          ),
        ],
      ),
      child: widget.child,
    );

    if (!widget.enableHover) return content;

    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: content,
    );
  }
}

class _Row extends StatelessWidget {
  const _Row({required this.icon, required this.title, required this.sub});
  final IconData icon;
  final String title;
  final String sub;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Row(
      children: [
        Container(
          width: 42,
          height: 42,
          decoration: BoxDecoration(
            color: cs.primary.withOpacity(0.12),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: cs.primary.withOpacity(0.25)),
          ),
          child: Icon(icon, color: cs.primary),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 2),
              Text(
                sub,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: cs.onSurfaceVariant),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TrustedPlatformCard extends StatelessWidget {
  const _TrustedPlatformCard({
    required this.title,
    required this.subtitle,
    required this.platformName,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final String platformName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: cs.surface.withOpacity(0.75),
        border: Border.all(color: cs.outlineVariant.withOpacity(0.30)),
      ),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: cs.primary.withOpacity(0.12),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: cs.primary.withOpacity(0.25)),
            ),
            child: Icon(Icons.verified, color: cs.primary),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: cs.onSurfaceVariant),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          FilledButton(onPressed: onTap, child: Text(platformName)),
        ],
      ),
    );
  }
}
