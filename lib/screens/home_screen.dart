import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import '../components/popular_recipe_list.dart';
import '../components/pageview_recipes_list.dart';
import '../components/my_bottom_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7EEFB),
      body: SafeArea(
        child: ListView(
          primary: true,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 32.5,
                vertical: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recipes",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0E0E2D),
                    ),
                  ),
                  SizedBox(
                    height: 36,
                    child: SvgPicture.asset('assets/svg/icon-nav.svg'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.53),
            const PageViewRecipesList(),
            const SizedBox(height: 42.52),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                children: [
                  SvgPicture.asset('assets/svg/icon-popular.svg'),
                  const SizedBox(height: 4.26),
                  const Text(
                    "Popular",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFF9AE89),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const PopularRecipeList(),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
