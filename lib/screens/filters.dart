import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/providers/filters_provider.dart';

/* import 'package:meals/screens/tabs.dart';
import 'package:meals/widgets/main_drawer.dart'; */

/* enum Filters {
  gluteenFree,
  lactoseFree,
  vegan,
  vegetarian,
} */

class FiltersScreen extends ConsumerStatefulWidget {
  const FiltersScreen({
    super.key,
    /* required this.currentFilters */
  });

/*   final Map<Filters, bool> currentFilters; */
  @override
  ConsumerState<FiltersScreen> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends ConsumerState<FiltersScreen> {
  var _gluttenFreeFilterSet = false;
  var _lactoseFreeFilterSet = false;
  var _veganFilterSet = false;
  var _vegetarianFilterSet = false;

  @override
  void initState() {
    super.initState();
    final activeFilters = ref.read(filteresProvider);
    _gluttenFreeFilterSet = activeFilters[Filters.gluteenFree]!;
    _lactoseFreeFilterSet = activeFilters[Filters.lactoseFree]!;
    _veganFilterSet = activeFilters[Filters.vegan]!;
    _vegetarianFilterSet = activeFilters[Filters.vegetarian]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      //humburger menu at filterSreen
/*       drawer: MainDrawer(onSelectScreen: (identifier) {
        Navigator.of(context).pop();
        if (identifier == 'meals') {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => const TabsSreen(),
          ));
        }
      }), */
      body: WillPopScope(
        onWillPop: () async {
          ref.read(filteresProvider.notifier).setFilters({
            Filters.gluteenFree: _gluttenFreeFilterSet,
            Filters.lactoseFree: _lactoseFreeFilterSet,
            Filters.vegan: _veganFilterSet,
            Filters.vegetarian: _vegetarianFilterSet,
          });
          // Navigator.of(context).pop();
          return true;
        },
        child: Column(
          children: [
            SwitchListTile(
              value: _gluttenFreeFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _gluttenFreeFilterSet = isChecked;
                });
              },
              title: const Text('Gluten-free'),
              subtitle: const Text('Only include Gluten-free meals!'),
              activeColor: const Color.fromARGB(255, 107, 255, 1),
              contentPadding: const EdgeInsets.only(left: 34, right: 32),
            ),
            SwitchListTile(
              value: _lactoseFreeFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _lactoseFreeFilterSet = isChecked;
                });
              },
              title: const Text('Lactose-free'),
              subtitle: const Text('Only include Lactose-free meals!'),
              activeColor: const Color.fromARGB(255, 107, 255, 1),
              contentPadding: const EdgeInsets.only(left: 34, right: 32),
            ),
            SwitchListTile(
              value: _veganFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _veganFilterSet = isChecked;
                });
              },
              title: const Text('Vegan'),
              subtitle: const Text('Only include Vegan meals!'),
              activeColor: const Color.fromARGB(255, 107, 255, 1),
              contentPadding: const EdgeInsets.only(left: 34, right: 32),
            ),
            SwitchListTile(
              value: _vegetarianFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _vegetarianFilterSet = isChecked;
                });
              },
              title: const Text('Vegetarin'),
              subtitle: const Text('Only include Vegetarian and Vegan meals!'),
              activeColor: const Color.fromARGB(255, 107, 255, 1),
              contentPadding: const EdgeInsets.only(left: 34, right: 32),
            ),
          ],
        ),
      ),
    );
  }
}
