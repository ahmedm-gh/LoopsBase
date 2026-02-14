import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loopsbase/features/terms/controller/cubit/terms_cubit.dart';
import 'package:loopsbase/features/terms/view/widgets/term_card.dart';
import 'package:loopsbase/features/terms/view/widgets/term_cards_wrapper.dart';
import 'package:loopsbase/shared/app_widgets.dart';

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
            child: Column(
              mainAxisSize: .min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: cubit.searchController,
                        decoration: InputDecoration(
                          hintText: l10n.search,
                          suffixIcon: const Icon(Icons.search_rounded),
                        ),
                        onChanged: (query) =>
                            cubit.filterTerms(query: () => query),
                      ),
                    ),
                    const SizedBox(width: DL.compactListSeparatorHeight),
                    BlocSelector<TermsCubit, TermsState, bool>(
                      selector: (state) => state.onlyBookmarked,
                      builder: (context, onlyBookmarked) {
                        return BookmarkIconButton.bookmarks(
                          tooltip: l10n.onlyBookmarked,
                          onPressed: cubit.toggleOnlyBookmarked,
                          isActive: onlyBookmarked,
                          animated: true,
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: DL.compactListSeparatorHeight),
                // Filter chips
                SizedBox(
                  width: .infinity,
                  child: SingleChildScrollView(
                    scrollDirection: .horizontal,
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
              ],
            ),
          ),
          const LiteDivider(),

          const Expanded(child: _TermsList()),
        ],
      ),
    );
  }
}

class _TermsList extends StatelessWidget {
  const _TermsList();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final lang = l10n.language;
    final mediaQuery = context.mediaQuery;
    final crossAxisCount = (mediaQuery.size.width / 280).floor();

    return BlocSelector<TermsCubit, TermsState, bool>(
      selector: (state) => state.terms.isEmpty,
      builder: (context, isEmpty) {
        if (isEmpty) {
          return Center(child: Text(l10n.noResults));
        }

        return TermCardsWrapper(
          child:
              BlocSelector<
                TermsCubit,
                TermsState,
                Map<String, ProgrammingTerm>
              >(
                selector: (state) => state.terms,
                builder: (context, terms) {
                  return FlexGrid(
                    itemBuilder: (context, index) {
                      final term = terms.entries.elementAt(index);
                      return TermCard(term: term.value);
                    },
                    itemCount: terms.length,
                    padding: DL.listPadding,
                    spacing: DL.listSeparatorHeight,
                    runSpacing: DL.listSeparatorHeight,
                    crossAxisCount: crossAxisCount,
                  );
                  return ListView.separated(
                    padding: DL.listPadding,
                    itemBuilder: (context, index) {
                      final term = terms.entries.elementAt(index);
                      return TermCard(term: term.value);
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: DL.listSeparatorHeight);
                    },
                    itemCount: terms.length,
                  );
                },
              ),
        );
      },
    );
  }
}

class FlexGrid extends StatelessWidget {
  const FlexGrid({
    required this.itemBuilder,
    required this.itemCount,
    this.spacing = 0,
    this.runSpacing = 0,
    this.crossAxisCount = 1,
    super.key,
    this.padding,
  });

  final Widget Function(BuildContext context, int index) itemBuilder;
  final int itemCount;
  final EdgeInsetsGeometry? padding;
  final double spacing, runSpacing;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Row(
          crossAxisAlignment: .start,
          spacing: spacing,
          children: _itemsPerRow(context, index),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: DL.listSeparatorHeight);
      },
      itemCount: (itemCount / crossAxisCount).ceil(),
      padding: padding,
    );
  }

  List<Widget> _itemsPerRow(BuildContext context, int rowIndex) {
    final items = <Widget>[];
    for (var i = 0; i < crossAxisCount; i++) {
      final index = rowIndex * crossAxisCount + i;
      if (index < itemCount) {
        items.add(Expanded(child: itemBuilder(context, index)));
      }
    }
    return items;
  }
}
