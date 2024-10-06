import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/providers/filters_provider.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filteresProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
        children: [
          SwitchListTile(
            value: activeFilters[Filters.gluteenFree]!,
            onChanged: (isChecked) {
              ref
                  .read(filteresProvider.notifier)
                  .setFilter(Filters.gluteenFree, isChecked);
            },
            title: const Text('Gluten-free'),
            subtitle: const Text('Only include Gluten-free meals!'),
            activeColor: const Color.fromARGB(255, 107, 255, 1),
            contentPadding: const EdgeInsets.only(left: 34, right: 32),
          ),
          SwitchListTile(
            value: activeFilters[Filters.lactoseFree]!,
            onChanged: (isChecked) {
              ref
                  .read(filteresProvider.notifier)
                  .setFilter(Filters.lactoseFree, isChecked);
            },
            title: const Text('Lactose-free'),
            subtitle: const Text('Only include Lactose-free meals!'),
            activeColor: const Color.fromARGB(255, 107, 255, 1),
            contentPadding: const EdgeInsets.only(left: 34, right: 32),
          ),
          SwitchListTile(
            value: activeFilters[Filters.vegan]!,
            onChanged: (isChecked) {
              ref
                  .read(filteresProvider.notifier)
                  .setFilter(Filters.vegan, isChecked);
            },
            title: const Text('Vegan'),
            subtitle: const Text('Only include Vegan meals!'),
            activeColor: const Color.fromARGB(255, 107, 255, 1),
            contentPadding: const EdgeInsets.only(left: 34, right: 32),
          ),
          SwitchListTile(
            value: activeFilters[Filters.vegetarian]!,
            onChanged: (isChecked) {
              ref
                  .read(filteresProvider.notifier)
                  .setFilter(Filters.vegetarian, isChecked);
            },
            title: const Text('Vegetarin'),
            subtitle: const Text('Only include Vegetarian and Vegan meals!'),
            activeColor: const Color.fromARGB(255, 107, 255, 1),
            contentPadding: const EdgeInsets.only(left: 34, right: 32),
          ),
        ],
      ),
    );
  }
}
