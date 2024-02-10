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
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
            
          ],
        ),
        
      )
      
      
      ),
      
      body: const SingleChildScrollView( child :Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
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
            ImageSection(image: 'assets/images/image 13.png'),
            SizedBox(height: 20),
            ReviewSection(),
            SizedBox(height: 10),
            ProfileSection(
                address: "Bali, Indonesia",
                name: "Roberta Anny",
                image: 'assets/images/Location.png',
                secondImage: 'assets/images/unsplash_Ij24Uq1sMwM.png')
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
                        style: const TextStyle(fontSize: 15.0, color: Colors.grey),
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
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(image, width: 400, height: 200, fit: BoxFit.cover),
      ),
    );
  }
}
