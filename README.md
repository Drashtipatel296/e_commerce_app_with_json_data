# E-commerce App

### Step 1: Add Assets to Your Project
First, ensure that your JSON files are added to your project's `assets` directory. Create this directory if it doesn't exist.

1. Create a directory named `assets` in your project's root.
2. Add your JSON files to this directory. For example, you might have a `recipes.json` file.

### Step 2: Update `pubspec.yaml`
You need to specify the assets in your `pubspec.yaml` file to make them accessible in your app.

```yaml
flutter:
  assets:
    - assets/recipes.json
```

### Step 3: Load JSON Data in Flutter
Use the `rootBundle` to load the JSON file in your Flutter app.

#### Example: Loading Recipes from JSON

1. **Create a model for your recipe data:**

```dart
class Recipe {
  final String name;
  final String ingredients;
  final String instructions;

  Recipe({required this.name, required this.ingredients, required this.instructions});

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      name: json['name'],
      ingredients: json['ingredients'],
      instructions: json['instructions'],
    );
  }
}
```

2. **Load the JSON file and parse it:**

```dart
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

Future<List<Recipe>> loadRecipes() async {
  final String response = await rootBundle.loadString('assets/recipes.json');
  final List<dynamic> data = json.decode(response);
  return data.map((json) => Recipe.fromJson(json)).toList();
}
```

3. **Use the loaded data in your widget:**

```dart
import 'package:flutter/material.dart';

class RecipesApp extends StatefulWidget {
  @override
  _RecipesAppState createState() => _RecipesAppState();
}

class _RecipesAppState extends State<RecipesApp> {
  late Future<List<Recipe>> recipes;

  @override
  void initState() {
    super.initState();
    recipes = loadRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Recipes App'),
        ),
        body: FutureBuilder<List<Recipe>>(
          future: recipes,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              final recipes = snapshot.data!;
              return ListView.builder(
                itemCount: recipes.length,
                itemBuilder: (context, index) {
                  final recipe = recipes[index];
                  return ListTile(
                    title: Text(recipe.name),
                    subtitle: Text('Ingredients: ${recipe.ingredients}'),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}

void main() => runApp(RecipesApp());
```

### Example JSON File (`assets/recipes.json`)
```json
[
  {
    "name": "Spaghetti Carbonara",
    "ingredients": "Spaghetti, Eggs, Parmesan Cheese, Pancetta, Pepper",
    "instructions": "Boil spaghetti. Cook pancetta. Mix eggs and cheese. Combine all with pasta."
  },
  {
    "name": "Chicken Curry",
    "ingredients": "Chicken, Curry Powder, Onion, Garlic, Coconut Milk",
    "instructions": "Cook chicken. Sauté onions and garlic. Add curry powder and coconut milk. Simmer."
  }
]
```

### Summary
1. **Add JSON files to the `assets` directory.**
2. **Update `pubspec.yaml` to include the assets.**
3. **Load the JSON data using `rootBundle.loadString()`.**
4. **Parse the JSON and use it in your widgets.**

By following these steps, you can effectively manage and use JSON assets in your Flutter application, providing a structured and scalable way to handle data like recipes in your app.

### ScreenShorts 

<p align='center'>
  <img src='https://github.com/Drashtipatel296/e_commerce_app_with_json_data/assets/143180636/1207a416-1425-4ebd-8c00-c159950886cd' width='240'>
  <img src='https://github.com/Drashtipatel296/e_commerce_app_with_json_data/assets/143180636/36cc26da-cd32-4a96-81f8-d2526c474e55' width='240'>
  <img src='https://github.com/Drashtipatel296/e_commerce_app_with_json_data/assets/143180636/afcfb456-46e5-4a4c-9209-4f18699c204b' width='240'>
  <img src='https://github.com/Drashtipatel296/e_commerce_app_with_json_data/assets/143180636/f9f1f4f4-958a-4320-8680-b4708a41e366' width='240'>


### video


https://github.com/Drashtipatel296/e_commerce_app_with_json_data/assets/143180636/ceb9db81-d75d-45e8-b0e5-ea4536ea6a6c


