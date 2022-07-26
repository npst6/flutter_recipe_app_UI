import 'recipe_card.dart';
import '../models/recipe.dart';
import 'package:flutter/material.dart';

class PageViewRecipesList extends StatefulWidget {
  const PageViewRecipesList({Key? key}) : super(key: key);

  @override
  State<PageViewRecipesList> createState() => _PageViewRecipesListState();
}

class _PageViewRecipesListState extends State<PageViewRecipesList> {
  final PageController pageController = PageController(viewportFraction: 0.75);

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 401,
      child: PageView.builder(
        padEnds: false,
        physics: const BouncingScrollPhysics(),
        itemCount: recipes.length,
        controller: pageController,
        itemBuilder: (context, index) {
          bool active = index == currentPage;
          return Opacity(
            opacity: currentPage == index ? 1.0 : 0.5,
            child: RecipeCard(
              active: active,
              index: index,
              recipe: recipes[index],
            ),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      int position = pageController.page!.round();
      if (currentPage != position) {
        setState(() {
          currentPage = position;
        });
      }
    });
  }
}
