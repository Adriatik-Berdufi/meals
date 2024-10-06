import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/providers/meals_provider.dart';

enum Filters {
  gluteenFree,
  lactoseFree,
  vegan,
  vegetarian,
}

class FilterNotifier extends StateNotifier<Map<Filters, bool>> {
  FilterNotifier()
      : super({
          Filters.gluteenFree: false,
          Filters.lactoseFree: false,
          Filters.vegan: false,
          Filters.vegetarian: false,
        });

  void setFilter(Filters filter, bool isActive) {
    state = {
      ...state,
      filter: isActive,
    };
  }

  void setFilters(Map<Filters, bool> chosenFilters) {
    state = chosenFilters;
  }
}

final filteresProvider =
    StateNotifierProvider<FilterNotifier, Map<Filters, bool>>(
  (ref) => FilterNotifier(),
);

final filteredMealsProvider = Provider(
  (ref) {
    final meals = ref.watch(mealsProvider);
    final activrFilters = ref.watch(filteresProvider);
    return meals.where((meal) {
      if (activrFilters[Filters.gluteenFree]! && !meal.isGlutenFree) {
        return false;
      }
      if (activrFilters[Filters.lactoseFree]! && !meal.isLactoseFree) {
        return false;
      }
      if (activrFilters[Filters.vegan]! && !meal.isVegan) {
        return false;
      }
      if (activrFilters[Filters.vegetarian]! && !meal.isVegetarian) {
        return false;
      }
      return true;
    }).toList();
  },
);
