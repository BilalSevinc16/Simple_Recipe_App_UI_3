import 'package:flutter/material.dart';
import 'package:simple_recipe_app_ui_3/Screens/recipe_details.dart';
import 'package:simple_recipe_app_ui_3/model/recipe_model.dart';
import 'package:simple_recipe_app_ui_3/recipe_card.dart';

class NewRecipe extends StatelessWidget {
  const NewRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: RecipeModel.demoRecipe.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeDetails(
                            recipeModel: RecipeModel.demoRecipe[index],
                          ),
                        )),
                    child: RecipeCard(
                      recipeModel: RecipeModel.demoRecipe[index],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
