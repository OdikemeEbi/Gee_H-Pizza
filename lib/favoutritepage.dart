import 'package:datingapp/Provider/provider_model.dart';
import 'package:datingapp/screens/product_details.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite"),
        backgroundColor: Color.fromARGB(255, 214, 185, 142),
      ),
      body: GridView.builder(
          itemCount: provider.myFavoriteList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: MediaQuery.of(context).size.height * 0.45,
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
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width * 0.44,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.30,
                      width: MediaQuery.of(context).size.width * 0.44,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 242, 238, 226),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${provider.myFavoriteList[index]['name']}',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.flash_on,
                                color: Colors.orange,
                              ),
                              Text(
                                '${provider.myFavoriteList[index]['description']}',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          // ignore: prefer_interpolation_to_compose_strings
                          Text(
                            '\$${provider.myFavoriteList[index]['price']}',
                            style: const TextStyle(
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
                        height: MediaQuery.of(context).size.width * 0.2,
                        width: MediaQuery.of(context).size.width * 0.2,
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
                          image: AssetImage("assets/images/pic2.png"),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 3,
                      top: 25,
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.07,
                        width: MediaQuery.of(context).size.width * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: Colors.grey.shade400, width: 1),
                          color: const Color.fromARGB(255, 242, 238, 226),
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
                                MaterialPageRoute(builder: (context) {
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
                                  borderRadius: BorderRadius.circular(30)),
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
    );
  }
}
