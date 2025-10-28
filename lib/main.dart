import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_book/view/recipe_list_screen.dart';
import 'package:recipe_book/viewmodel/recipe_view_model.dart';

void main() {
  runApp(const RecipeBookApp());
}

class RecipeBookApp extends StatelessWidget {
  const RecipeBookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RecipeViewModel(),
      child: MaterialApp(
        title: 'Recipe Book',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.orange,
          scaffoldBackgroundColor: Colors.orange.shade50,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.orange.shade600,
            elevation: 0,
          ),
        ),
        home: const RecipeListScreen(),
      ),
    );
  }
}
