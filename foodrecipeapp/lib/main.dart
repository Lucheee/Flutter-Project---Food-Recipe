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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
        padding: const EdgeInsets.only(top: 20.0),
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
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 25.0,
              ),
              ImageSection(image: 'assets/images/image 13.png', videoImage: 'assets/images/',),
              SizedBox(height: 20),
              ReviewSection(),
              SizedBox(height: 10),
              ProfileSection(
                  address: "Bali, Indonesia",
                  name: "Roberta Anny",
                  image: 'assets/images/Location.png',
                  secondImage: 'assets/images/unsplash_Ij24Uq1sMwM.png'),
              SizedBox(height: 20.0),
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
    return const Row(children: [
      Icon(Icons.star, color: Color.fromARGB(255, 251, 182, 10)),
      SizedBox(
        width: 5,
      ),
      Text(
        '4,5',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
      ),
      Text(
        " (300 Reviews)",
        style: TextStyle(fontSize: 18.0, color: Colors.grey),
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
            Image.asset(secondImage, fit: BoxFit.cover),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 19.0),
                ),
                Row(
                  children: [
                    Image.asset(
                      image,
                      width: 20.0,
                      height: 25.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 7.0,
                    ),
                    Text(
                      address,
                      style:
                          const TextStyle(fontSize: 15.0, color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 50.0,
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15)) // Button background color
                    ),
                child: const Text(
                  'Follow',
                  style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600),
                )),
          ],
        ),
      ],
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image, required this.videoImage});

  final String image;
  final String videoImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(image, width: 400, height: 200, fit: BoxFit.cover),
        
      ),
      Image.asset(videoImage, fit: BoxFit.cover,)
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
              style: TextStyle(color: Colors.grey, fontSize: 18.0),
            )
          ],
        ),
        SizedBox(height: 20.0),
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
          height: 17.0,
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
          height: 17.0,
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
          height: 17.0,
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
          color: const Color.fromARGB(255, 239, 237, 237),
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
              style: const TextStyle(fontSize: 18.0, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
