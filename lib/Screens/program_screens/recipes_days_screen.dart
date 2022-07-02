import 'package:flutter/material.dart';
import 'package:gut_wellness_app/Screens/program_screens/recipes_plans_screen%20.dart';
import 'package:gut_wellness_app/json%20files/recipes_days_json.dart';
import 'package:gut_wellness_app/widgets/constants.dart';
import 'package:gut_wellness_app/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class RecipesDaysScreen extends StatefulWidget {
  const RecipesDaysScreen({Key? key}) : super(key: key);

  @override
  State<RecipesDaysScreen> createState() => _RecipesDaysScreenState();
}

class _RecipesDaysScreenState extends State<RecipesDaysScreen> {
  List<Widget> itemsData = [];

  @override
  void initState() {
    super.initState();
    getPostsData();
  }

  void getPostsData() {
    List<dynamic> responseList = RECIPEDAYS;
    List<Widget> listItems = [];
    for (var post in responseList) {
      listItems.add(
        GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (ct) => const RecipesPlansScreen()));
          },
          child: GridTile(
            child: Image(
              image: AssetImage(post["image"]),
            ),
            footer: Container(
              margin: EdgeInsets.only(top: 1.h),
              child: Center(
                child: Text(post["title"]),
              ),
            ),
          ),
        ),
      );
    }
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kSecondaryColor,
        body: Padding(
          padding:
              EdgeInsets.only(left: 4.w, right: 4.w, top: 3.h, bottom: 5.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildAppBar(() {
                    Navigator.pop(context);
                  }),
                  Text(
                    "Program",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "PoppinsSemiBold",
                        color: kTextColor,
                        fontSize: 12.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Day 1 Recipes",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "PoppinsSemiBold",
                    color: kTextColor,
                    fontSize: 12.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              buildrecipes(),
            ],
          ),
        ),
      ),
    );
  }

  buildrecipes() {
    return Expanded(
      child: SingleChildScrollView(
        child: GridView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: itemsData.length,
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            childAspectRatio: 1,
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            return itemsData[index];
          },
        ),
      ),
    );
  }
}
