import 'package:datingapp/Provider/provider_model.dart';
import 'package:datingapp/homepage.dart';
import 'package:datingapp/screens/product_details.dart';
import 'package:datingapp/screens/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'favoutritepage.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(), child: const Dating()));
}

class Dating extends StatelessWidget {
  const Dating({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
            bottom: 0,
            child: Container(
              color: const Color.fromARGB(255, 213, 217, 221),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage("assets/images/pic2.png")),
                  const SizedBox(height: 10),
                  const Text(
                    'Pizza for you',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.electric_bolt,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        Text(
                          'Everyday new pizza\n eat fresh pizza',
                          style: TextStyle(
                            color: Colors.black26,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[400],
                      minimumSize: const Size(350, 60),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    onPressed: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Shop();
                      }));
                    }),
                    child: const Text(
                      'Add To Products',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[200],
                      minimumSize: const Size(350, 60),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    onPressed: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ProductPage();
                      }));
                    }),
                    child: const Text(
                      'Sign up with Email',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            )),
        Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: MediaQuery.of(context).size.height * 0.418,
            child: const Align(
                alignment: Alignment.bottomCenter,
                child: Image(image: AssetImage("assets/images/pic1.png")))),
        Positioned(
            width: MediaQuery.of(context).size.width,
            top: 50,
            right: 15,
            child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const FavouritePage();
                    }));
                  },
                  icon: const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.grey,
                  ),
                ))),
      ]),
    );
  }
}
