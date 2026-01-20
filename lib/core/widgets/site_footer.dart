import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../localization/app_localizations.dart';
import '../responsive/breakpoints.dart';
import '../responsive/responsive.dart';
import 'max_width_container.dart';

class SiteFooter extends StatelessWidget {
  const SiteFooter({
    super.key,
    this.onServices,
    this.onProjects,
    this.onAbout,
    this.onContact,
  });

  final VoidCallback? onServices;
  final VoidCallback? onProjects;
  final VoidCallback? onAbout;
  final VoidCallback? onContact;

  Future<void> _open(String url) async {
    final uri = Uri.parse(url);
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final year = DateTime.now().year;
    final copy = t.t('copyright').replaceAll('{year}', '$year');

    final email = 'mohamedsaad202121ok@gmail.com';
    final github = 'https://github.com/MohamedSaadB';
    final linkedin = 'https://www.linkedin.com/in/mohamed-saad-a72bb9220/';
    final khamsat = 'https://khamsat.com/user/mohamed669';
    final whatsapp =
        'https://wa.me/201064190020?text=${Uri.encodeComponent("Hi Mohamed, I saw your portfolio and want to discuss a project.")}';

    final mobile = isMobile(context);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            cs.primary.withOpacity(isDark ? 0.10 : 0.06),
            cs.surface,
          ],
        ),
      ),
      child: MaxWidthContainer(
        padding: EdgeInsets.symmetric(
          horizontal: pageHorizontalPadding(context),
          vertical: 30,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(28),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
            child: Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: cs.surface.withOpacity(isDark ? 0.72 : 0.85),
                borderRadius: BorderRadius.circular(28),
                border: Border.all(color: cs.outlineVariant.withOpacity(0.28)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 28,
                    offset: const Offset(0, 18),
                    color: Colors.black.withOpacity(isDark ? 0.22 : 0.10),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _TopBrandRow(
                    name: 'Mohamed Saad',
                    subtitle: (Localizations.localeOf(context).languageCode == 'ar')
                        ? 'Flutter Developer — تطبيقات حديثة + UI قوي + معمارية نظيفة.'
                        : 'Flutter Developer — modern apps, strong UI, clean architecture.',
                    onWhatsapp: () => _open(whatsapp),
                    onKhamsat: () => _open(khamsat),
                  ),

                  const SizedBox(height: 16),

                  LayoutBuilder(
                    builder: (context, c) {
                      final w = c.maxWidth;
                      final cols = w >= 980 ? 3 : (w >= 680 ? 2 : 1);
                      final gap = 12.0;
                      final totalGap = gap * (cols - 1);
                      final itemWidth = (w - totalGap) / cols;

                      final cards = <Widget>[
                        _FooterCard(
                          title: t.t('quick_links'),
                          child: Column(
                            children: [
                              _FooterItem(
                                text: t.t('services'),
                                enabled: onServices != null,
                                onTap: onServices,
                              ),
                              _FooterItem(
                                text: t.t('projects'),
                                enabled: onProjects != null,
                                onTap: onProjects,
                              ),
                              _FooterItem(
                                text: t.t('about'),
                                enabled: onAbout != null,
                                onTap: onAbout,
                              ),
                              _FooterItem(
                                text: t.t('contact'),
                                enabled: onContact != null,
                                onTap: onContact,
                              ),
                            ],
                          ),
                        ),
                        _FooterCard(
                          title: t.t('legal'),
                          child: Column(
                            children: [
                              _FooterItem(
                                text: t.t('pricing'),
                                onTap: () => context.go('/pricing'),
                              ),
                              _FooterItem(
                                text: t.t('refund_policy'),
                                onTap: () => context.go('/refund-policy'),
                              ),
                              _FooterItem(
                                text: t.t('checkout'),
                                onTap: () => context.go('/checkout'),
                              ),
                            ],
                          ),
                        ),
                        _FooterCard(
                          title: t.t('social'),
                          child: Column(
                            children: [
                              _FooterItem(
                                text: 'WhatsApp',
                                onTap: () => _open(whatsapp),
                              ),
                              _FooterItem(
                                text: 'Email',
                                onTap: () => _open('mailto:$email'),
                              ),
                              _FooterItem(
                                text: 'Khamsat',
                                onTap: () => _open(khamsat),
                              ),
                              _FooterItem(
                                text: 'GitHub',
                                onTap: () => _open(github),
                              ),
                              _FooterItem(
                                text: 'LinkedIn',
                                onTap: () => _open(linkedin),
                              ),
                            ],
                          ),
                        ),
                      ];

                      return Wrap(
                        spacing: gap,
                        runSpacing: gap,
                        children: [
                          for (int i = 0; i < cards.length; i++)
                            SizedBox(
                              width: cols == 1 ? double.infinity : itemWidth,
                              child: cards[i]
                                  .animate()
                                  .fadeIn(delay: (80 * i).ms, duration: 420.ms)
                                  .moveY(begin: 10, end: 0, duration: 420.ms, curve: Curves.easeOutCubic),
                            ),
                        ],
                      );
                    },
                  ),

                  const SizedBox(height: 14),

                  // ✅ Bottom bar (modern)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: cs.surface.withOpacity(isDark ? 0.55 : 0.62),
                      border: Border.all(color: cs.outlineVariant.withOpacity(0.22)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 34,
                          height: 34,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: cs.primary.withOpacity(0.12),
                            border: Border.all(color: cs.primary.withOpacity(0.22)),
                          ),
                          child: Icon(Icons.shield_outlined, size: 18, color: cs.primary),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            copy,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: cs.onSurfaceVariant,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        if (!mobile) ...[
                          const SizedBox(width: 10),
                          _MiniSocial(
                            tooltip: 'WhatsApp',
                            icon: Icons.chat_bubble_outline,
                            onTap: () => _open(whatsapp),
                          ),
                          _MiniSocial(
                            tooltip: 'GitHub',
                            icon: Icons.code,
                            onTap: () => _open(github),
                          ),
                          _MiniSocial(
                            tooltip: 'LinkedIn',
                            icon: Icons.work_outline,
                            onTap: () => _open(linkedin),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TopBrandRow extends StatelessWidget {
  const _TopBrandRow({
    required this.name,
    required this.subtitle,
    required this.onWhatsapp,
    required this.onKhamsat,
  });

  final String name;
  final String subtitle;
  final VoidCallback onWhatsapp;
  final VoidCallback onKhamsat;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final desktop = isDesktop(context);

    final brand = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 52,
          height: 52,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: cs.primary.withOpacity(0.12),
            border: Border.all(color: cs.primary.withOpacity(0.22)),
          ),
          child: Icon(Icons.auto_awesome, color: cs.primary),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: cs.onSurfaceVariant,
                  fontWeight: FontWeight.w600,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );

    final ctas = Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        FilledButton.icon(
          onPressed: onWhatsapp,
          icon: const Icon(Icons.chat_bubble_outline),
          label: Text((Localizations.localeOf(context).languageCode == 'ar') ? 'واتساب' : 'WhatsApp'),
        ),
        OutlinedButton.icon(
          onPressed: onKhamsat,
          icon: const Icon(Icons.verified),
          label: Text((Localizations.localeOf(context).languageCode == 'ar') ? 'خمسات' : 'Khamsat'),
        ),
      ],
    );

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: cs.outlineVariant.withOpacity(0.26)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            cs.primary.withOpacity(isDark ? 0.18 : 0.12),
            cs.tertiary.withOpacity(isDark ? 0.12 : 0.07),
            cs.surface.withOpacity(isDark ? 0.72 : 0.82),
          ],
        ),
      ),
      child: desktop
          ? Row(
        children: [
          Expanded(child: brand),
          const SizedBox(width: 14),
          ctas,
        ],
      )
          : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          brand,
          const SizedBox(height: 12),
          ctas,
        ],
      ),
    );
  }
}

class _FooterCard extends StatefulWidget {
  const _FooterCard({
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  State<_FooterCard> createState() => _FooterCardState();
}

class _FooterCardState extends State<_FooterCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final canHover = isDesktop(context);

    final h = canHover && hover;

    // ✅ ألوان “أحدّ” (contrast أعلى)
    final border = (h ? cs.primary : cs.outlineVariant).withOpacity(h ? 0.55 : 0.35);
    final glow = cs.primary.withOpacity(isDark ? 0.22 : 0.14);

    final card = AnimatedContainer(
      duration: const Duration(milliseconds: 180),
      curve: Curves.easeOutCubic,
      transform: Matrix4.identity()..translate(0.0, h ? -6.0 : 0.0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        border: Border.all(color: border, width: 1.2),
        boxShadow: [
          BoxShadow(
            blurRadius: h ? 34 : 18,
            offset: const Offset(0, 18),
            color: Colors.black.withOpacity(isDark ? 0.22 : 0.10),
          ),
          if (h)
            BoxShadow(
              blurRadius: 42,
              spreadRadius: 1,
              offset: const Offset(0, 0),
              color: glow,
            ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            cs.primary.withOpacity(isDark ? 0.26 : 0.18),
            cs.tertiary.withOpacity(isDark ? 0.18 : 0.10),
            cs.surface.withOpacity(isDark ? 0.78 : 0.90),
          ],
          stops: const [0.0, 0.55, 1.0],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ✅ عنوان قوي بدون أيقونة
          Text(
            widget.title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w900,
              letterSpacing: -0.2,
            ),
          ),
          const SizedBox(height: 12),

          // محتوى الكارد (links list)
          widget.child,
        ],
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

class _FooterItem extends StatefulWidget {
  const _FooterItem({
    required this.text,
    required this.onTap,
    this.enabled = true,
  });

  final String text;
  final VoidCallback? onTap;
  final bool enabled;

  @override
  State<_FooterItem> createState() => _FooterItemState();
}

class _FooterItemState extends State<_FooterItem> {
  bool hover = false;
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final canHover = isDesktop(context);

    final h = canHover && hover;
    final p = pressed;

    final bg = h ? cs.primary.withOpacity(0.12) : cs.surface.withOpacity(0.35);
    final border = (h ? cs.primary : cs.outlineVariant).withOpacity(h ? 0.55 : 0.28);

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: MouseRegion(
        onEnter: (_) {
          if (canHover) setState(() => hover = true);
        },
        onExit: (_) {
          if (canHover) setState(() => hover = false);
        },
        child: GestureDetector(
          onTapDown: (_) => setState(() => pressed = true),
          onTapCancel: () => setState(() => pressed = false),
          onTapUp: (_) => setState(() => pressed = false),
          onTap: widget.enabled ? widget.onTap : null,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            curve: Curves.easeOutCubic,
            transform: Matrix4.identity()..scale(p ? 0.985 : 1.0),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: bg,
              border: Border.all(color: border, width: 1.1),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.text,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w900,
                      letterSpacing: -0.1,
                      color: widget.enabled ? cs.onSurface : cs.onSurfaceVariant.withOpacity(0.55),
                    ),
                  ),
                ),
                AnimatedRotation(
                  turns: h ? 0.0 : -0.02,
                  duration: const Duration(milliseconds: 150),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 18,
                    color: h ? cs.primary : cs.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class _MiniSocial extends StatelessWidget {
  const _MiniSocial({
    required this.tooltip,
    required this.icon,
    required this.onTap,
  });

  final String tooltip;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Tooltip(
      message: tooltip,
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(icon, size: 20, color: cs.onSurfaceVariant),
        ),
      ),
    );
  }
}
