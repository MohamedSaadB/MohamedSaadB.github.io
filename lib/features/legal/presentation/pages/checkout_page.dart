import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/localization/localized_text.dart';
import '../../../../core/responsive/breakpoints.dart';
import '../../../../core/responsive/responsive.dart';
import '../../../../core/widgets/max_width_container.dart';
import '../../data/models/checkout_models.dart';
import '../../data/repositories/legal_repository.dart';
import '../cubit/legal_cubit.dart';
import '../cubit/legal_state.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  int step = 0;
  final Map<String, int> selected = {};

  String _t(BuildContext context, LocalizedText t) {
    final lang = Localizations.localeOf(context).languageCode;
    return lang == 'ar' ? t.ar : t.en;
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

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return BlocProvider(
      create: (_) => LegalCubit(const LegalRepository())..loadCheckout(),
      child: BlocBuilder<LegalCubit, LegalState>(
        builder: (context, state) {
          return Scaffold(
            body: MaxWidthContainer(
              padding: EdgeInsets.symmetric(horizontal: pageHorizontalPadding(context), vertical: 40),
              child: state.when(
                initial: () => const SizedBox(height: 220),
                loading: () => const SizedBox(height: 220),
                error: (m) => Text(m),
                loaded: (_, __, checkout) {
                  final c = checkout!;
                  final title = _t(context, c.title);
                  final subtitle = _t(context, c.subtitle);

                  final briefTitle = _t(context, c.steps.briefTitle);
                  final summaryTitle = _t(context, c.steps.summaryTitle);

                  String summaryText() {
                    final lines = <String>[];
                    for (final f in c.fields) {
                      final idx = selected[f.key];
                      if (idx == null) continue;
                      lines.add('${_t(context, f.label)}: ${_t(context, f.options[idx])}');
                    }
                    return lines.join('\n');
                  }

                  final proceedLabel = _t(context, c.cta.proceedText);
                  final continueLabel = _t(context, c.cta.continueText);
                  final note = _t(context, c.cta.note);

                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w900)),
                        const SizedBox(height: 10),
                        Text(
                          subtitle,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            height: 1.5,
                            color: cs.onSurfaceVariant,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 18),

                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: cs.surface.withOpacity(0.78),
                            border: Border.all(color: cs.outlineVariant.withOpacity(0.28)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _StepHeader(
                                left: briefTitle,
                                right: summaryTitle,
                                step: step,
                              ),
                              const SizedBox(height: 12),

                              if (step == 0) ...[
                                ...c.fields.map((f) {
                                  final sel = selected[f.key] ?? 0;
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 14),
                                    child: _FieldCard(
                                      label: _t(context, f.label),
                                      options: f.options.map((o) => _t(context, o)).toList(),
                                      value: sel,
                                      onChanged: (v) => setState(() => selected[f.key] = v),
                                    ),
                                  );
                                }),
                                SizedBox(
                                  width: double.infinity,
                                  child: FilledButton(
                                    onPressed: () => setState(() => step = 1),
                                    child: Text(continueLabel),
                                  ),
                                ),
                              ] else ...[
                                _SummaryBox(text: summaryText()),
                                const SizedBox(height: 12),
                                Text(
                                  note,
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: cs.onSurfaceVariant,
                                    fontWeight: FontWeight.w600,
                                    height: 1.4,
                                  ),
                                ),
                                const SizedBox(height: 14),
                                Wrap(
                                  spacing: 10,
                                  runSpacing: 10,
                                  children: [
                                    FilledButton.icon(
                                      onPressed: () {
                                        final msgTemplate = _t(context, c.contactTargets.whatsappPrefill);
                                        final msg = msgTemplate.replaceAll('{summary}', summaryText());
                                        _open(_whatsUrl(c.contactTargets.whatsappPhone, msg));
                                      },
                                      icon: const Icon(Icons.chat_bubble_outline),
                                      label: Text(proceedLabel),
                                    ),
                                    OutlinedButton.icon(
                                      onPressed: () => _open(c.contactTargets.khamsatUrl),
                                      icon: const Icon(Icons.verified),
                                      label: Text((Localizations.localeOf(context).languageCode == 'ar')
                                          ? 'التواصل عبر خمسات'
                                          : 'Contact via Khamsat'),
                                    ),
                                    TextButton(
                                      onPressed: () => setState(() => step = 0),
                                      child: Text((Localizations.localeOf(context).languageCode == 'ar') ? 'تعديل' : 'Edit'),
                                    ),
                                  ],
                                ),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class _StepHeader extends StatelessWidget {
  const _StepHeader({required this.left, required this.right, required this.step});
  final String left;
  final String right;
  final int step;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    Widget pill(String text, bool active) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(999),
          color: active ? cs.primary.withOpacity(0.14) : cs.surface.withOpacity(0.65),
          border: Border.all(color: (active ? cs.primary : cs.outlineVariant).withOpacity(active ? 0.28 : 0.30)),
        ),
        child: Text(text, style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w900, color: active ? cs.primary : null)),
      );
    }

    return Row(
      children: [
        pill(left, step == 0),
        const SizedBox(width: 10),
        Icon(Icons.arrow_forward, size: 18, color: cs.onSurfaceVariant),
        const SizedBox(width: 10),
        pill(right, step == 1),
      ],
    );
  }
}

class _FieldCard extends StatelessWidget {
  const _FieldCard({
    required this.label,
    required this.options,
    required this.value,
    required this.onChanged,
  });

  final String label;
  final List<String> options;
  final int value;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: cs.surface.withOpacity(0.72),
        border: Border.all(color: cs.outlineVariant.withOpacity(0.28)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900)),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: List.generate(options.length, (i) {
              final active = i == value;
              return ChoiceChip(
                selected: active,
                label: Text(options[i]),
                onSelected: (_) => onChanged(i),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class _SummaryBox extends StatelessWidget {
  const _SummaryBox({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: cs.surface.withOpacity(0.72),
        border: Border.all(color: cs.outlineVariant.withOpacity(0.28)),
      ),
      child: Text(
        text.isEmpty ? '-' : text,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w700, height: 1.4),
      ),
    );
  }
}
