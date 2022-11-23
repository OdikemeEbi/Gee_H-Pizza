import 'package:datingapp/Provider/provider_model.dart';
import 'package:datingapp/favoutritepage.dart';
import 'package:datingapp/main.dart';
import 'package:datingapp/screens/product_details.dart';
import 'package:datingapp/text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => ProductPageState();
}

class ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Favourite"),
          backgroundColor: Color.fromARGB(255, 214, 185, 142),
        ),
        body: Stack(
          fit: StackFit.passthrough,
          children: [
            Positioned(
                top: 0,
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(children: [
                            Text('Pizza'),
                          ]),
                        ),
                        Container(
                            child: Row(children: [
                          Text('Egypt'),
                        ])),
                        Container(
                            child: Stack(children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const FavouritePage(),
                                    ));
                              },
                              icon: Icon(Icons.favorite_outline)),
                        ]))
                      ]),
                )),
            Positioned(
                top: 40,
                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(27.0),
                        child: Container(
                            height: 210,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(30))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Container(
                          height: 205,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                          height: 200,
                          width: 500,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 242, 238, 226),
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Eat Fresh Pizza',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Fast Delivery',
                                    style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Near for you',
                                    style: TextStyle(
                                        color: Colors.grey.shade500,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 5)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 250, 20, 0),
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width / 1.3,
                              // color: Colors.amber,
                              child: const TextField(
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 206, 190, 167),
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  label: Text("Search"),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width / 10,
                              // color: Colors.amber,
                              child: const TextField(
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(255, 206, 190, 167),
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  prefixIcon: Icon(
                                    Icons.menu_sharp,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          top: 0,
                          right: 25,
                          child: Image(
                              image: AssetImage('assets/images/pic3.png')))
                    ],
                  ),
                )),
            Stack(
              fit: StackFit.loose,
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                        itemCount: provider.myFavoriteList.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent:
                                MediaQuery.of(context).size.height * 0.45,
                            crossAxisCount: 2),
                        itemBuilder: ((context, index) {
                          return Container(
                            margin: index.isEven
                                ? EdgeInsets.only(top: 50)
                                : EdgeInsets.only(bottom: 50),
                            height: MediaQuery.of(context).size.height * 0.40,
                            width: MediaQuery.of(context).size.width * 0.44,
                            child: Align(
                              alignment: Alignment.center,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.40,
                                    width: MediaQuery.of(context).size.width *
                                        0.44,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.30,
                                    width: MediaQuery.of(context).size.width *
                                        0.44,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 242, 238, 226),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '${provider.myFavoriteList[index]['name']}',
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.flash_on,
                                              color: Colors.orange,
                                            ),
                                            Text(
                                              '${provider.myFavoriteList[index]['description']}',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 13),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        // ignore: prefer_interpolation_to_compose_strings
                                        Text(
                                          '\$${provider.myFavoriteList[index]['price']}',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 0,
                                    child: Container(
                                      padding: EdgeInsets.all(7),
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.2,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: RadialGradient(colors: [
                                            Colors.white,
                                            Colors.grey,
                                          ], stops: [
                                            0.85,
                                            1.0
                                          ])),
                                      child: Image(
                                        image: AssetImage(
                                            "assets/images/pic2.png"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 3,
                                    top: 25,
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.07,
                                      width: MediaQuery.of(context).size.width *
                                          0.07,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey.shade400,
                                            width: 1),
                                        color: const Color.fromARGB(
                                            255, 242, 238, 226),
                                      ),
                                      child: const Icon(
                                        Icons.favorite_outline,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 30,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return PizzaDetails(
                                              name:
                                                  '${provider.myFavoriteList[index]['product']}',
                                              description:
                                                  '${provider.myFavoriteList[index]['description']}',
                                              price:
                                                  '${provider.myFavoriteList[index]['product']}',
                                            );
                                          }));
                                        },
                                        style: ElevatedButton.styleFrom(
                                            minimumSize: Size(150, 15),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            padding: const EdgeInsets.all(15),
                                            backgroundColor: Colors.orange),
                                        child: const Text('Order now',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold)),
                                      ))
                                ],
                              ),
                            ),
                          );
                        })),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
