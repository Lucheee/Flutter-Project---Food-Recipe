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
      title: 'Flutter Demo',
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
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
          ],
        ),
      )),
      body: const Padding(
        padding: EdgeInsets.all(35.0),
        child: Center(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "How to make french toast",
              
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
            ),
             SizedBox(
              height: 17,
            ),
            ReviewSection(),
            ProfileSection(
              address: "Bali, Indonesia",
              name: "Roberta Anny",
              image: 'assets/images/Location.png',
            )
          ]),
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
      Text(
        '41',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
      ),
      Text(
        " (300 Reviews)",
        style: TextStyle(fontSize: 16.0),
      )
    ]);
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection(
      {super.key,
      required this.address,
      required this.name,
      required this.image});

  final String name;
  final String address;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),

            Row(
              children: [
                Image.network(
                  image,
                  width: 20.0,
                  height: 25.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 5.0,),
                Text(address, style: const TextStyle(fontSize: 18.0),)
              ],
            ),
            // const SizedBox(width: 5,
            // height: 10
            // ),
          ],
        ),
      ],
    );
  }
}
