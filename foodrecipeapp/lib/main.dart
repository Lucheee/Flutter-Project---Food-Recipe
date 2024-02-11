import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Recipe App',
      theme: ThemeData(
          fontFamily: "Poppins"
          ),
      home: const RecipeApp(),
    );
  }
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
          ],
        ),
      )),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "How to make french toast",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600 ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ImageSection(
                image: 'assets/images/image 13.png',
                videoImage: 'assets/images/Play button.png',
              ),
              SizedBox(height: 15),
              ReviewSection(),
              SizedBox(height: 10),
              ProfileSection(
                  address: "Bali, Indonesia",
                  name: "Roberta Anny",
                  image: 'assets/images/Location.png',
                  secondImage: 'assets/images/unsplash_Ij24Uq1sMwM.png'),
              SizedBox(height: 13.0),
              IngredientSection()
            ]),
          ),
        ),
      ),
    );
  }
}

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
      Icon(Icons.star, color: Color.fromARGB(255, 251, 182, 10)),
      SizedBox(
        width: 5.0,
      ),
      Text(
        '4,5',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
      ),
      Text(
        " (300 Reviews)",
        style: TextStyle(fontSize: 17.0, color: Color.fromARGB(255, 166, 165, 165), fontWeight: FontWeight.normal,  fontFamily: "Poppins-Thin"),
      )
    ]);
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection(
      {super.key,
      required this.address,
      required this.name,
      required this.image,
      required this.secondImage});

  final String name;
  final String address;
  final String image;
  final String secondImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            //Profile picture
            Image.asset(secondImage, fit: BoxFit.cover),
            const SizedBox(width: 10.0),

            //User name and address
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontFamily:"Poppins", fontSize: 18.0),
                ),
                Row(
                  children: [
                    //Location image
                    Image.asset(
                      image,
                      width: 20.0,
                      height: 20.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      address,
                      style: const TextStyle(
                          fontSize: 17.0,
                          color: Color.fromARGB(255, 166, 165, 165),
                          fontWeight: FontWeight.normal,
                          fontFamily: "Poppins-Thin"),
                    )
                  ],
                ),
              ],
            ),
            //
          ],
        ),
        //Follow button
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  // Button background color
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                  child: Text(
                    'Follow',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Poppins-Thin",
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal // Text color
                    ),
                  ),
                )),
          ],
        
      
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection(
      {super.key, required this.image, required this.videoImage});

  final String image;
  final String videoImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child:
                Image.asset(image, width: 400, height: 200, fit: BoxFit.cover),
          ),
        ),
        Image.asset(
          videoImage,
          width: 50.0,
          height: 50.0,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}

class IngredientSection extends StatelessWidget {
  const IngredientSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Ingredients",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.0),
            ),
            Text(
              "5 items",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Color.fromARGB(255, 166, 165, 165),
                  fontWeight: FontWeight.normal,
                  fontFamily: "Poppins-Thin"),
            )
          ],
        ),
        SizedBox(height: 12.0),
        Row(
          children: [
            Expanded(
                child: IngredientListSection(
                    foodName: "Bread",
                    gramSize: "200g",
                    image: "assets/images/fooditem1.png")),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            Expanded(
                child: IngredientListSection(
                    foodName: "Eggs",
                    gramSize: "200g",
                    image: "assets/images/fooditem2.png")),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            Expanded(
                child: IngredientListSection(
                    foodName: "Milk",
                    gramSize: "200g",
                    image: "assets/images/fooditem1.png")),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}

class IngredientListSection extends StatelessWidget {
  const IngredientListSection(
      {super.key,
      required this.foodName,
      required this.gramSize,
      required this.image});

  final String foodName;
  final String image;
  final String gramSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:  const Color.fromARGB(255, 234, 233, 233),
          borderRadius: BorderRadius.circular(15.0)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.white),
                  width: 60.0,
                  height: 60.0,
                  child: Center(
                    child: Image.asset(
                      image,
                      width: 35.0,
                      height: 35.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(width: 17.0),
                Text(foodName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20.0))
              ],
            ),
            Text(
              gramSize,
              style: const TextStyle(
                  fontSize: 18.0,
                  color: Color.fromARGB(255, 166, 165, 165),
                  fontWeight: FontWeight.normal,
                  fontFamily: "Poppins-Thin"),
            )
          ],
        ),
      ),
    );
  }
}
