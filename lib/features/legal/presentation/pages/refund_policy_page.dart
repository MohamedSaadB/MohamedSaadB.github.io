import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/localization/localized_text.dart';
import '../../../../core/responsive/breakpoints.dart';
import '../../../../core/responsive/responsive.dart';
import '../../../../core/widgets/max_width_container.dart';
import '../../data/repositories/legal_repository.dart';
import '../cubit/legal_cubit.dart';
import '../cubit/legal_state.dart';

class RefundPolicyPage extends StatelessWidget {
  const RefundPolicyPage({super.key});

  String _t(BuildContext context, LocalizedText t) {
    final lang = Localizations.localeOf(context).languageCode;
    return lang == 'ar' ? t.ar : t.en;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LegalCubit(const LegalRepository())..loadRefund(),
      child: BlocBuilder<LegalCubit, LegalState>(
        builder: (context, state) {
          final cs = Theme.of(context).colorScheme;
          return Scaffold(
            body: MaxWidthContainer(
              padding: EdgeInsets.symmetric(horizontal: pageHorizontalPadding(context), vertical: 40),
              child: state.when(
                initial: () => const SizedBox(height: 220),
                loading: () => const SizedBox(height: 220),
                error: (m) => Text(m),
                loaded: (_, refund, __) {
                  final r = refund!;
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_t(context, r.title),
                            style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w900)),
                        const SizedBox(height: 10),
                        Text(
                          _t(context, r.subtitle),
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            height: 1.5,
                            color: cs.onSurfaceVariant,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 18),

                        ...r.sections.map((s) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 14),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: cs.surface.withOpacity(0.78),
                              border: Border.all(color: cs.outlineVariant.withOpacity(0.28)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(_t(context, s.title),
                                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w900)),
                                const SizedBox(height: 12),
                                ...s.bullets.map((b) => Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.check_circle, size: 18, color: cs.primary),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Text(
                                          _t(context, b),
                                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                            height: 1.45,
                                            fontWeight: FontWeight.w600,
                                            color: cs.onSurfaceVariant,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                              ],
                            ),
                          );
                        }),
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
