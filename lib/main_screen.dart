import 'package:flutter/material.dart';
import 'package:theme_mode/enums/image_info.dart' as image_info;
import 'package:theme_mode/extensions/extension.dart';
import 'package:theme_mode/widgets/header_widget.dart';
import 'package:theme_mode/widgets/hero_layout_card.dart';

class CategoryModel {
  final String path;
  final String labe;

  CategoryModel({required this.path, required this.labe});
}

List<CategoryModel> categories = [
  CategoryModel(path: "assets/images/hamburger.png", labe: "Hamburger"),
  CategoryModel(path: "assets/images/pizza.png", labe: "Pizza"),
  CategoryModel(path: "assets/images/spaghetti.png", labe: "Spaghetti"),
  CategoryModel(path: "assets/images/iced.png", labe: "Coffee"),
  CategoryModel(path: "assets/images/milkshake.png", labe: "Milkshake"),
];

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final CarouselController controller = CarouselController(initialItem: 1);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(12),
          children: [
            /// HEADER
            HeaderWidget(),

            /// SEARCH INPUT
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: context.typography.inputHint,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: context.appInputTheme.defaultColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: context.appInputTheme.borderDefault,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: context.appInputTheme.focusedOnBrand,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: context.appInputTheme.borderDefault,
                ),
              ),
            ),

            SizedBox(height: 24),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: height * 0.18),
              child: CarouselView.weighted(
                controller: controller,
                itemSnapping: true,
                flexWeights: const <int>[1, 7, 1],
                children:
                    image_info.ImageInfo.values.map((
                      image_info.ImageInfo image,
                    ) {
                      return HeroLayoutCard(imageInfo: image);
                    }).toList(),
              ),
            ),
            SizedBox(height: 14),

            /// CATEGORIES
            Text("Categories", style: context.typography.button2XLarge),
            SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                    categories
                        .map(
                          (CategoryModel category) => Padding(
                            padding: const EdgeInsets.only(right: 18),
                            child: Column(
                              children: [
                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(category.path),
                                    ),
                                  ),
                                ),
                                Text(
                                  category.labe,
                                  style: context.typography.inputHint.copyWith(
                                    color:
                                        context
                                            .appInputTheme
                                            .successTextDefault,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
              ),
            ),
            SizedBox(height: 12),

            /// FAVORITE
            Text("Favorite", style: context.typography.button2XLarge),
            SizedBox(
              height: height * 0.18,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/chicken.png",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4,
                              vertical: 6,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Cheese Burger",
                                  style: context.typography.inputHint.copyWith(
                                    color: context.appInputTheme.textColor,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16,
                                        ),
                                        Text(
                                          "4.7",
                                          style: context.typography.inputHint
                                              .copyWith(
                                                color:
                                                    context
                                                        .appInputTheme
                                                        .textColor,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Rp28K",
                                      style: context.typography.inputHint
                                          .copyWith(
                                            color:
                                                context.appInputTheme.textColor,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 12),
                itemCount: 5,
              ),
            ),

            SizedBox(height: 12),

            /// FAVORITE
            Text("Recommended", style: context.typography.button2XLarge),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(8),
                  child: Card(
                    child: SizedBox(
                      height: height * 0.18,
                      child: Row(
                        children: [
                          Container(
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage("assets/images/ramen.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8),
                                Text(
                                  "Spaghetti with Barbeque Sauce",
                                  style:
                                      context.typography.buttonLarge.copyWith(),
                                ),
                                Text(
                                  "Spaghetting with Barbeque Sauce made by our special chef",
                                  style:
                                      context.typography.inputHint.copyWith(),
                                ),
                                SizedBox(height: 14),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 16,
                                    ),
                                    Text(
                                      "4.7",
                                      style: context.typography.inputHint
                                          .copyWith(
                                            color:
                                                context.appInputTheme.textColor,
                                          ),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    width: 48,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color:
                                          context
                                              .appInputTheme
                                              .successTextDefault,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 12),
              itemCount: 8,
            ),
          ],
        ),
      ),
    );
  }
}
