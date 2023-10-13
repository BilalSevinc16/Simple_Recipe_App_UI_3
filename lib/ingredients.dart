import 'package:flutter/material.dart';
import 'package:simple_recipe_app_ui_3/model/recipe_model.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({
    Key? key,
    required this.recipeModel,
  }) : super(key: key);

  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: recipeModel.ingredients.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2.0,
                  ),
                  child: Text(
                    '⚫️ ${recipeModel.ingredients[index]}',
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  color: Colors.black.withOpacity(0.3),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
