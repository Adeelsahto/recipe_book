import '../models/recipe_model.dart';
import '../models/recipe_repo.dart';
import 'package:flutter/foundation.dart';



class RecipeViewModel extends ChangeNotifier {
  List<Recipe> _recipes = [];
  String _selectedCategory = 'All';
  String _searchQuery = '';

  List<Recipe> get recipes => _recipes;
  String get selectedCategory => _selectedCategory;
  List<Recipe> get favoriteRecipes => _recipes.where((r) => r.isFavorite).toList();

  List<String> get categories {
    Set<String> cats = {'All'};
    for (var recipe in _recipes) {
      cats.add(recipe.category);
    }
    return cats.toList();
  }

  RecipeViewModel() {
    _loadRecipes();
  }

  void _loadRecipes() {
    _recipes = RecipeRepository.getRecipes();
    notifyListeners();
  }

  List<Recipe> get filteredRecipes {
    var filtered = _recipes;

    // Filter by category
    if (_selectedCategory != 'All') {
      filtered = filtered.where((r) => r.category == _selectedCategory).toList();
    }

    // Filter by search query
    if (_searchQuery.isNotEmpty) {
      filtered = filtered.where((r) =>
      r.name.toLowerCase().contains(_searchQuery.toLowerCase()) ||
          r.description.toLowerCase().contains(_searchQuery.toLowerCase())
      ).toList();
    }

    return filtered;
  }

  void setCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  void toggleFavorite(String recipeId) {
    final recipe = _recipes.firstWhere((r) => r.id == recipeId);
    recipe.isFavorite = !recipe.isFavorite;
    notifyListeners();
  }

  Recipe getRecipeById(String id) {
    return _recipes.firstWhere((r) => r.id == id);
  }
}