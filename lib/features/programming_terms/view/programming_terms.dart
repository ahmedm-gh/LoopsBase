import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuts/features/programming_terms/controller/cubit/terms_cubit.dart';
import 'package:tuts/features/programming_terms/view/widgets/term_card.dart';
import 'package:tuts/shared/app_widgets.dart';

import '../../../core/enums/term_enums.dart';
import '../../../core/extensions/extensions.dart';
import '../../../core/models/term.dart';
import '../../../shared/design_layouts.dart';

class ProgrammingTermsScreen extends StatelessWidget {
  const ProgrammingTermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colorScheme;
    final cubit = context.read<TermsCubit>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: Text(l10n.programmingTerms),
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const .only(right: 16, left: 16, bottom: 16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: cubit.searchController,
                    decoration: InputDecoration(
                      hintText: l10n.search,
                      suffixIcon: const Icon(Icons.search_rounded),
                    ),
                    onChanged: (query) => cubit.filterTerms(query: () => query),
                  ),
                ),
                const SizedBox(width: 10),
                BlocSelector<TermsCubit, TermsState, bool>(
                  selector: (state) => state.onlyBookmarked,
                  builder: (context, onlyBookmarked) {
                    return BookmarkIconButton(
                      tooltip: l10n.onlyBookmarked,
                      onPressed: cubit.toggleOnlyBookmarked,
                      isActive: onlyBookmarked,
                      animated: true,
                    );
                  },
                ),
              ],
            ),
          ),

          // Filter chips
          Padding(
            padding: const .only(bottom: 16),
            child: SizedBox(
              width: .infinity,
              child: SingleChildScrollView(
                scrollDirection: .horizontal,
                padding: const .symmetric(horizontal: 16),
                clipBehavior: .none,
                child: BlocSelector<TermsCubit, TermsState, TermCategory?>(
                  selector: (state) => state.category,
                  builder: (context, selectedCategory) {
                    return Row(
                      spacing: 10,
                      children: [
                        AppFilterChip(
                          label: l10n.all,
                          selected: selectedCategory == null,
                          onSelected: () {
                            cubit.filterTerms(category: () => null);
                          },
                          animated: true,
                          color: colors.primary,
                        ),
                        ...TermCategory.values.map(
                          (category) => AppFilterChip(
                            label: category.label(l10n),
                            selected: selectedCategory == category,
                            onSelected: () {
                              cubit.filterTerms(category: () => category);
                            },
                            animated: true,
                            color: colors.primary,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),

          const LiteDivider(),

          // Terms list
          Expanded(
            child: BlocSelector<TermsCubit, TermsState, bool>(
              selector: (state) => state.terms.isEmpty,
              builder: (context, isEmpty) {
                if (isEmpty) {
                  return Center(child: Text(l10n.noResults));
                }

                return CardTheme(
                  elevation: 0,
                  color: colors.surfaceContainerLow,
                  shape: RoundedRectangleBorder(
                    borderRadius: DL.inListCardBorderRadius,
                    side: BorderSide(
                      color: colors.outlineVariant.withValues(alpha: 0.35),
                    ),
                  ),
                  child:
                      BlocSelector<
                        TermsCubit,
                        TermsState,
                        List<ProgrammingTerm>
                      >(
                        selector: (state) => state.terms,
                        builder: (context, terms) {
                          return ListView.separated(
                            padding: DL.listPadding,
                            itemBuilder: (context, index) {
                              final term = terms[index];
                              return TermCard(term: term);
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                height: DL.listSeparatorHeight,
                              );
                            },
                            itemCount: terms.length,
                          );
                        },
                      ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
