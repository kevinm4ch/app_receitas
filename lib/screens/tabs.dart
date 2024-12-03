import 'package:app_receitas/models/meal.dart';
import 'package:app_receitas/screens/categories.dart';
import 'package:app_receitas/models/page.dart';
import 'package:app_receitas/screens/meals.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<AppPage> myPages = [];
  AppPage _selectedPage = const AppPage(title: 'null', route: Placeholder());
  final List<Meal> _favoriteMeals = [];

  _toogleMealFavoriteStatus(Meal meal) {
    final isExisting = _favoriteMeals.contains(meal);

    if (isExisting) {
      setState(() {
        _favoriteMeals.remove(meal);
      });
    } else {
      setState(() {
        _favoriteMeals.add(meal);
      });
    }
  }

  void selectPage(index) {
    setState(() {
      _selectedPage = myPages[index];
    });
  }

  @override
  void initState() {
    super.initState();
    myPages = [
      AppPage(
        title: 'Categorias',
        route: CategoriesScreen(
          onToogleFavorite: _toogleMealFavoriteStatus,
        ),
      ),
      AppPage(
        title: 'Favoritos',
        route: MealScreen(
            meals: _favoriteMeals, onToogleFavorite: _toogleMealFavoriteStatus),
      ),
    ];

    _selectedPage = myPages[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_selectedPage.title),
      ),
      body: _selectedPage.route,
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: 'Categorias'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favoritos'),
        ],
      ),
    );
  }
}
