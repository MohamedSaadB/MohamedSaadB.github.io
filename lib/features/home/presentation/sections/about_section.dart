import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/localization/localized_text.dart';
import '../../../../core/responsive/breakpoints.dart';
import '../../../../core/responsive/responsive.dart';
import '../../../../core/widgets/max_width_container.dart';
import '../../../../core/widgets/reveal_on_scroll.dart';
import '../../data/models/about_model.dart';
import '../cubit/home_content_cubit.dart';
import '../cubit/home_content_state.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  String _t(BuildContext context, LocalizedText text) {
    final lang = Localizations.localeOf(context).languageCode;
    return (lang == 'ar') ? text.ar : text.en;
  }

  IconData _iconFromKey(String key) {
    switch (key) {
      case 'verified':
        return Icons.verified;
      case 'auto_awesome':
        return Icons.auto_awesome;
      case 'rocket_launch':
        return Icons.rocket_launch;
      case 'architecture':
        return Icons.architecture;
      case 'speed':
        return Icons.speed;
      case 'design_services':
        return Icons.design_services;
      default:
        return Icons.auto_awesome;
    }
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final desktop = isDesktop(context);

    return BlocBuilder<HomeContentCubit, HomeContentState>(
      builder: (context, state) {
        return RevealOnScroll(
          child: MaxWidthContainer(
            padding: EdgeInsets.symmetric(
              horizontal: pageHorizontalPadding(context),
              vertical: 56,
            ),
            child: state.when(
              initial: () => const SizedBox(height: 220),
              loading: () => const SizedBox(height: 220),
              error: (msg) => _Error(message: msg),
              loaded: (profile, services, projects) {
                final AboutModel about = profile.about;

                final aboutText = _AboutText(
                  cs: cs,
                  title: _t(context, about.title),
                  bio: _t(context, about.bio),
                  skills: about.skills,
                );

                final aboutCards = _AboutCards(
                  cs: cs,
                  cards: about.cards
                      .map((c) => _InfoUi(
                    icon: _iconFromKey(c.icon),
                    title: _t(context, c.title),
                    value: _t(context, c.value),
                    subtitle: _t(context, c.subtitle),
                  ))
                      .toList(),
                );

                return desktop
                    ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: aboutText),
                    const SizedBox(width: 16),
                    Expanded(child: aboutCards),
                  ],
                )
                    : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    aboutText,
                    const SizedBox(height: 14),
                    aboutCards,
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}

class _AboutText extends StatelessWidget {
  const _AboutText({
    required this.cs,
    required this.title,
    required this.bio,
    required this.skills,
  });

  final ColorScheme cs;
  final String title;
  final String bio;
  final List<String> skills;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(title, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w900)),
      const SizedBox(height: 10),
      Text(
        bio,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
          height: 1.5,
          color: cs.onSurfaceVariant,
          fontWeight: FontWeight.w600,
        ),
      ),
      const SizedBox(height: 18),
      Wrap(
        spacing: 10,
        runSpacing: 10,
        children: skills.map((s) => _SkillPill(s)).toList(),
      ),
    ]);
  }
}

class _InfoUi {
  final String title;
  final String value;
  final IconData icon;
  final String subtitle;

  const _InfoUi({
    required this.title,
    required this.value,
    required this.icon,
    required this.subtitle,
  });
}

class _AboutCards extends StatelessWidget {
  const _AboutCards({required this.cs, required this.cards});
  final ColorScheme cs;
  final List<_InfoUi> cards;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < cards.length; i++) ...[
          _InfoCard(
            title: cards[i].title,
            value: cards[i].value,
            icon: cards[i].icon,
            subtitle: cards[i].subtitle,
          )
              .animate()
              .fadeIn(delay: (80 * i).ms, duration: 420.ms)
              .moveY(begin: 10, end: 0, duration: 420.ms, curve: Curves.easeOutCubic),
          if (i != cards.length - 1) const SizedBox(height: 12),
        ],
      ],
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.subtitle,
  });

  final String title;
  final String value;
  final IconData icon;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: cs.surface.withOpacity(0.78),
        border: Border.all(color: cs.outlineVariant.withOpacity(0.28)),
        boxShadow: [
          BoxShadow(
            blurRadius: 18,
            offset: const Offset(0, 12),
            color: Colors.black.withOpacity(0.10),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: cs.primary.withOpacity(0.12),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: cs.primary.withOpacity(0.25)),
            ),
            child: Icon(icon, color: cs.primary),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title, style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w800)),
                const SizedBox(height: 4),
                Text(value, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w900)),
                const SizedBox(height: 6),
                Text(subtitle, style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: cs.onSurfaceVariant)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SkillPill extends StatelessWidget {
  const _SkillPill(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: cs.surface.withOpacity(0.82),
        border: Border.all(color: cs.outlineVariant.withOpacity(0.30)),
      ),
      child: Text(text, style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w800)),
    );
  }
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
      child: Text(message, style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w700)),
    );
  }
}
