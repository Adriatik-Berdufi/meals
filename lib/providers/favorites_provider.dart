import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class FavoritesMealNotifier extends StateNotifier<List<Meal>> {
  FavoritesMealNotifier() : super([]);

  bool toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorites = state.contains(meal);
    if (mealIsFavorites) {
      state = state
          .where((el) => el.id != meal.id)
          .toList(); //remove el.id == meal.id
      return false;
    } else {
      state = [...state, meal]; //add new meal
      return true;
    }
  }
}

final favoritesMealsProvider =
    StateNotifierProvider<FavoritesMealNotifier, List<Meal>>((ref) {
  return FavoritesMealNotifier();
});
