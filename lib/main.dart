import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/recipe_list_screen.dart';
import 'viewmodel/recipe_view_model.dart';

// ensure tooling sees the entrypoint
@pragma('vm:entry-point')
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const RecipeBookApp());
}

class RecipeBookApp extends StatelessWidget {
  const RecipeBookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RecipeViewModel>(
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
