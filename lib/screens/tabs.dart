import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/screens/categories.dart';
import 'package:meals/screens/filters.dart';
import 'package:meals/screens/meals.dart';
/* import 'package:meals/models/meal.dart'; */
import 'package:meals/widgets/main_drawer.dart';
import 'package:meals/providers/meals_provider.dart';
import 'package:meals/providers/favorites_provider.dart';
import 'package:meals/providers/filters_provider.dart';

const kinitialFilters = {
  Filters.gluteenFree: false,
  Filters.vegetarian: false,
  Filters.vegan: false,
  Filters.lactoseFree: false,
};

class TabsSreen extends ConsumerStatefulWidget {
  const TabsSreen({super.key});
  @override
  ConsumerState<TabsSreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends ConsumerState<TabsSreen> {
  int _selectedPageIndex = 0;

  /*  final List<Meal> _favoritesMeal = []; 
  Map<Filters, bool> _selectedFilters = kinitialFilters;*/

/*   void _showInfoMessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 1),
    ));
  } */

/*   void _toggleMealFavoriteState(Meal meal) {
    final isExsisting = _favoritesMeal.contains(meal);
    if (isExsisting) {
      setState(() {
        _favoritesMeal.remove(meal);
      });
      _showInfoMessage('Meal is no longer a favorite.');
    } else {
      setState(() {
        _favoritesMeal.add(meal);
        _showInfoMessage('Marked as a favorite');
      });
    }
  } */

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == 'filters') {
      await Navigator.of(context).push<Map<Filters, bool>>(
        MaterialPageRoute(
          builder: (ctx) => const FiltersScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final meals = ref.watch(mealsProvider);
    final activrFilters = ref.watch(filteresProvider);
    final availableMeal = meals.where((meal) {
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

    Widget activePage = CategoriesScreen(
      availableMeal: availableMeal,
    );
    var activePageTite = 'Categories';
    final favoritesMeal = ref.watch(favoritesMealsProvider);
    if (_selectedPageIndex == 1) {
      activePage = MealsScreen(
        meals: favoritesMeal,
      );
      activePageTite = 'Your Favorites';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTite),
      ),
      drawer: MainDrawer(onSelectScreen: _setScreen),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        selectedItemColor: Colors.yellow,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorits'),
        ],
      ),
    );
  }
}
