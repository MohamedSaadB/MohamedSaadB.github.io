import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/localization/localized_text.dart';
import '../../../../core/responsive/breakpoints.dart';
import '../../../../core/responsive/responsive.dart';
import '../../../../core/widgets/max_width_container.dart';
import '../../../../core/widgets/reveal_on_scroll.dart';
import '../../data/models/project_model.dart';
import '../cubit/home_content_cubit.dart';
import '../cubit/home_content_state.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  String _t(BuildContext context, LocalizedText text) {
    final lang = Localizations.localeOf(context).languageCode;
    return (lang == 'ar') ? text.ar : text.en;
  }

  Future<void> _open(String url) async {
    final uri = Uri.parse(url);
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder<HomeContentCubit, HomeContentState>(
      builder: (context, state) {
        return RevealOnScroll(
          child: Stack(
            children: [
              // subtle background
              Positioned.fill(
                child: Opacity(
                  opacity: isDark ? 0.10 : 0.06,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        center: Alignment.topLeft,
                        radius: 1.2,
                        colors: [
                          cs.tertiary.withOpacity(0.16),
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
                  loading: () => const _ProjectsLoading(),
                  error: (msg) => _ProjectsError(message: msg),
                  loaded: (profile, services, projects) {
                    final lang = Localizations.localeOf(context).languageCode;

                    final title = (lang == 'ar') ? 'المشاريع' : 'Projects';
                    final subtitle = (lang == 'ar')
                        ? 'نماذج من أعمالي السابقة — تصميم حديث وتجربة مستخدم قوية.'
                        : 'Selected work — modern UI, clean code, and production-ready details.';

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _SectionHeader(
                          title: title,
                          subtitle: subtitle,
                          action: TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward),
                            label: Text((lang == 'ar') ? 'عرض الكل' : 'View all'),
                          ),
                        ),
                        const SizedBox(height: 18),

                        // ✅ Showcase list (أجمل من grid للمشاريع المهمة)
                        Column(
                          children: [
                            for (int i = 0; i < projects.length; i++) ...[
                              _ProjectShowcaseCard(
                                project: projects[i],
                                title: _t(context, projects[i].title),
                                summary: _t(context, projects[i].summary),
                                role: projects[i].role == null ? null : _t(context, projects[i].role!),
                                onOpenLiveIos: projects[i].liveUrlIos == null ? null : () => _open(projects[i].liveUrlIos!),
                                onOpenRepo: projects[i].repoUrl == null ? null : () => _open(projects[i].repoUrl!),
                                onOpenLivePlay:projects[i].liveUrlPlay == null ? null : () => _open(projects[i].liveUrlPlay!),
                              )
                                  .animate()
                                  .fadeIn(delay: (90 * i).ms, duration: 520.ms)
                                  .moveY(begin: 18, end: 0, duration: 520.ms, curve: Curves.easeOutCubic),
                              if (i != projects.length - 1) const SizedBox(height: 14),
                            ],
                          ],
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

class _ProjectsLoading extends StatelessWidget {
  const _ProjectsLoading();

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

class _ProjectsError extends StatelessWidget {
  const _ProjectsError({required this.message});
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
  const _SectionHeader({required this.title, required this.subtitle, this.action});
  final String title;
  final String subtitle;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(title, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w900)),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: cs.onSurfaceVariant,
                fontWeight: FontWeight.w600,
              ),
            ),
          ]),
        ),
        if (action != null) ...[
          const SizedBox(width: 12),
          action!,
        ],
      ],
    );
  }
}

class _ProjectShowcaseCard extends StatefulWidget {
  const _ProjectShowcaseCard({
    required this.project,
    required this.title,
    required this.summary,
    required this.role,
    required this.onOpenLivePlay,
    required this.onOpenLiveIos,
    required this.onOpenRepo,
  });

  final ProjectModel project;
  final String title;
  final String summary;
  final String? role;
  final VoidCallback? onOpenLivePlay;
  final VoidCallback? onOpenLiveIos;
  final VoidCallback? onOpenRepo;

  @override
  State<_ProjectShowcaseCard> createState() => _ProjectShowcaseCardState();
}

class _ProjectShowcaseCardState extends State<_ProjectShowcaseCard> {
  bool hover = false;

  void _openGallery(BuildContext context) {
    final images = widget.project.gallery.isNotEmpty ? widget.project.gallery : [widget.project.thumbnail];

    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.55),
      builder: (_) => _GalleryDialog(images: images, title: widget.title),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final desktop = isDesktop(context);
    final canHover = desktop;

    final border = cs.outlineVariant.withOpacity(hover ? 0.55 : 0.25);

    Widget imageBlock = _ProjectImage(
      path: widget.project.thumbnail,
      onTap: () => _openGallery(context),
      hover: hover && canHover,
    );

    Widget detailsBlock = _ProjectDetails(
      title: widget.title,
      summary: widget.summary,
      role: widget.role,
      tech: widget.project.tech,
      onOpenLivePlay: widget.onOpenLivePlay,
      onOpenLiveIos: widget.onOpenLiveIos,
      onOpenRepo: widget.onOpenRepo,
      onOpenGallery: () => _openGallery(context),
    );

    final body = desktop
        ? Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 6, child: imageBlock),
        const SizedBox(width: 14),
        Expanded(flex: 5, child: detailsBlock),
      ],
    )
        : Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        imageBlock,
        const SizedBox(height: 12),
        detailsBlock,
      ],
    );

    final card = AnimatedContainer(
      duration: const Duration(milliseconds: 180),
      curve: Curves.easeOut,
      transform: Matrix4.identity()..translate(0.0, (hover && canHover) ? -7.0 : 0.0),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        color: cs.surface.withOpacity(0.78),
        border: Border.all(color: border),
        boxShadow: [
          BoxShadow(
            blurRadius: (hover && canHover) ? 34 : 18,
            offset: const Offset(0, 14),
            color: Colors.black.withOpacity(isDark ? 0.22 : 0.12),
          ),
        ],
      ),
      child: body,
    );

    if (!canHover) return card;

    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child: card,
    );
  }
}

class _ProjectImage extends StatelessWidget {
  const _ProjectImage({
    required this.path,
    required this.onTap,
    required this.hover,
  });

  final String path;
  final VoidCallback onTap;
  final bool hover;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 16 / 10,
            child: AnimatedScale(
              duration: const Duration(milliseconds: 220),
              curve: Curves.easeOutCubic,
              scale: hover ? 1.03 : 1.0,
              child: Image.asset(
                path,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // gradient overlay
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

          // click overlay
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                child: Center(
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 160),
                    opacity: hover ? 1 : 0.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(999),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                          decoration: BoxDecoration(
                            color: cs.surface.withOpacity(0.62),
                            border: Border.all(color: cs.outlineVariant.withOpacity(0.35)),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.photo_library_outlined, color: cs.onSurface),
                              const SizedBox(width: 8),
                              Text(
                                'View Gallery',
                                style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProjectDetails extends StatelessWidget {
  const _ProjectDetails({
    required this.title,
    required this.summary,
    required this.role,
    required this.tech,
    required this.onOpenLivePlay,
    required this.onOpenLiveIos,
    required this.onOpenRepo,
    required this.onOpenGallery,
  });

  final String title;
  final String summary;
  final String? role;
  final List<String> tech;
  final VoidCallback? onOpenLivePlay;
  final VoidCallback? onOpenLiveIos;
  final VoidCallback? onOpenRepo;
  final VoidCallback onOpenGallery;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (role != null) _MiniBadge(text: role!),
            const Spacer(),
            IconButton(
              tooltip: 'Gallery',
              onPressed: onOpenGallery,
              icon: const Icon(Icons.photo_library_outlined),
            ),
            // if (onOpenRepo != null)
            //   IconButton(
            //     tooltip: 'Repository',
            //     onPressed: onOpenRepo,
            //     icon: const Icon(Icons.code),
            //   ),
          ],
        ),
        const SizedBox(height: 6),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w900),
        ),
        const SizedBox(height: 10),
        Text(
          summary,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            height: 1.35,
            color: cs.onSurfaceVariant,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: tech.map((t) => _Chip(text: t)).toList(),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            if (onOpenLiveIos != null)
            FilledButton(
              onPressed: onOpenLiveIos,
              child: const Text('App Store'),
            ),
            if (onOpenLivePlay != null)
            FilledButton(
              onPressed: onOpenLivePlay,
              child: const Text('Google Play'),
            ),

          ],
        ),
      ],
    );
  }
}

class _MiniBadge extends StatelessWidget {
  const _MiniBadge({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: cs.primary.withOpacity(0.12),
        border: Border.all(color: cs.primary.withOpacity(0.25)),
      ),
      child: Text(text, style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w800)),
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: cs.surface.withOpacity(0.85),
        border: Border.all(color: cs.outlineVariant.withOpacity(0.30)),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}

class _GalleryDialog extends StatefulWidget {
  const _GalleryDialog({required this.images, required this.title});
  final List<String> images;
  final String title;

  @override
  State<_GalleryDialog> createState() => _GalleryDialogState();
}

class _GalleryDialogState extends State<_GalleryDialog> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    final size = MediaQuery.sizeOf(context);
    // ✅ حد أقصى منطقي للديالوج
    final maxH = size.height * 0.86;
    final maxW = size.width * 0.92;

    return Dialog(
      insetPadding: const EdgeInsets.all(16),
      backgroundColor: Colors.transparent,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: maxH,
          maxWidth: maxW,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: cs.surface.withOpacity(0.72),
                border: Border.all(color: cs.outlineVariant.withOpacity(0.35)),
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                // ✅ خليها تأخذ المساحة المتاحة بدل min
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.w900),
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // ✅ الصورة هي اللي تتمدد/تنكمش
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: LayoutBuilder(
                        builder: (context, c) {
                          // نحافظ على نسبة قريبة من 16/10 لكن بدون كسر المساحة
                          return FittedBox(
                            fit: BoxFit.cover,
                            clipBehavior: Clip.hardEdge,
                            child: SizedBox(
                              width: c.maxWidth,
                              height: c.maxHeight,
                              child: Image.asset(
                                widget.images[index],
                                fit: BoxFit.contain,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // ✅ شريط التنقل ثابت في الأسفل
                  Row(
                    children: [
                      IconButton(
                        onPressed: index == 0 ? null : () => setState(() => index--),
                        icon: const Icon(Icons.chevron_left),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              widget.images.length,
                                  (i) => Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 4),
                                child: GestureDetector(
                                  onTap: () => setState(() => index = i),
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 160),
                                    width: i == index ? 18 : 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(999),
                                      color: i == index
                                          ? cs.primary
                                          : cs.outlineVariant.withOpacity(0.6),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: index == widget.images.length - 1 ? null : () => setState(() => index++),
                        icon: const Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    )
        .animate()
        .fadeIn(duration: 220.ms)
        .scale(begin: const Offset(0.98, 0.98), end: const Offset(1, 1));
  }
}
