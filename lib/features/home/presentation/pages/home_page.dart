import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_landing_page/core/images/name_images.dart';

import '../../../../core/localization/app_localizations.dart';
import '../../../../core/widgets/max_width_container.dart';
import '../../../settings/settings_cubit.dart';
import '../sections/about_section.dart';
import '../sections/contact_section.dart';
import '../sections/hero_section.dart';
import '../sections/projects_section.dart';
import '../sections/services_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = ScrollController();

  final _heroKey = GlobalKey();
  final _servicesKey = GlobalKey();
  final _projectsKey = GlobalKey();
  final _aboutKey = GlobalKey();
  final _contactKey = GlobalKey();

  bool _navElevated = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final elevated = _controller.offset > 8;
      if (elevated != _navElevated) setState(() => _navElevated = elevated);
    });
  }

  void _scrollTo(GlobalKey key) {
    final ctx = key.currentContext;
    if (ctx == null) return;
    Scrollable.ensureVisible(
      ctx,
      duration: const Duration(milliseconds: 550),
      curve: Curves.easeInOutCubic,
      alignment: 0.02,
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      body: Stack(
        children: [
          // Content
          CustomScrollView(
            controller: _controller,
            slivers: [
              const SliverToBoxAdapter(child: SizedBox(height: 84)),
              SliverToBoxAdapter(key: _heroKey, child: const HeroSection()),
              SliverToBoxAdapter(
                key: _servicesKey,
                child: const ServicesSection(),
              ),
              SliverToBoxAdapter(
                key: _projectsKey,
                child: const ProjectsSection(),
              ),
              SliverToBoxAdapter(
                key: _aboutKey,
                child: const AboutSection(),
              ),
              SliverToBoxAdapter(
                key: _contactKey,
                child: const ContactSection(),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 64)),
            ],
          ),

          // Sticky glass navbar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Padding(
                // ✅ تعديل: إضافة padding أفقي
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: MaxWidthContainer(
                  padding: EdgeInsets.zero,
                  child: _GlassNavBar(
                    elevated: _navElevated,
                    onServices: () => _scrollTo(_servicesKey),
                    onProjects: () => _scrollTo(_projectsKey),
                    onAbout: () => _scrollTo(_aboutKey),
                    onContact: () => _scrollTo(_contactKey),
                    onToggleLang: () => context.read<SettingsCubit>().toggleArEn(),
                    onToggleTheme: () => context.read<SettingsCubit>().toggleLightDark(),
                  )
                      .animate()
                      .fadeIn(duration: 420.ms)
                      .moveY(begin: -8, end: 0, duration: 420.ms),
                ),
              ),
            ),
          ),

          // Floating CTA
          Positioned(
            right: 16,
            bottom: 16,
            child: FloatingActionButton.extended(
              onPressed: () => _scrollTo(_contactKey),
              icon: const Icon(Icons.mail_outline),
              label: Text(t.t('contact')),
              backgroundColor: cs.primary,
              foregroundColor: cs.onPrimary,
            )
                .animate()
                .fadeIn(delay: 500.ms, duration: 450.ms)
                .scale(begin: const Offset(0.96, 0.96), end: const Offset(1, 1)),
          ),
        ],
      ),
    );
  }
}

class _GlassNavBar extends StatelessWidget {
  const _GlassNavBar({
    required this.elevated,
    required this.onServices,
    required this.onProjects,
    required this.onAbout,
    required this.onContact,
    required this.onToggleLang,
    required this.onToggleTheme,
  });

  final bool elevated;

  final VoidCallback onServices;
  final VoidCallback onProjects;
  final VoidCallback onAbout;
  final VoidCallback onContact;
  final VoidCallback onToggleLang;
  final VoidCallback onToggleTheme;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final bg = cs.surface.withOpacity(isDark ? 0.55 : 0.70);
    final border = cs.outlineVariant.withOpacity(elevated ? 0.45 : 0.25);

    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOut,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          decoration: BoxDecoration(
            color: bg,
            border: Border.all(color: border),
            boxShadow: [
              if (elevated)
                BoxShadow(
                  blurRadius: 26,
                  offset: const Offset(0, 14),
                  color: Colors.black.withOpacity(isDark ? 0.26 : 0.12),
                ),
            ],
          ),
          child: Row(
            children: [
              SvgPicture.asset(NameImages.logo,height: 60,width: 60,),
              const Spacer(),
              _NavButton(text: AppLocalizations.of(context).t('services'), onTap: onServices),
              _NavButton(text: AppLocalizations.of(context).t('projects'), onTap: onProjects),
              _NavButton(text: AppLocalizations.of(context).t('about'), onTap: onAbout),
              _NavButton(text: AppLocalizations.of(context).t('contact'), onTap: onContact),
              const SizedBox(width: 6),
              IconButton(onPressed: onToggleLang, icon: const Icon(Icons.language)),
              IconButton(onPressed: onToggleTheme, icon: const Icon(Icons.brightness_6)),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavButton extends StatefulWidget {
  const _NavButton({required this.text, required this.onTap});

  final String text;
  final VoidCallback onTap;

  @override
  State<_NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<_NavButton> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          curve: Curves.easeOut,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            color: hover ? cs.primary.withOpacity(0.10) : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            widget.text,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w700,
              color: hover ? cs.primary : cs.onSurface,
            ),
          ),
        ),
      ),
    );
  }
}
