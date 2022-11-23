import 'package:flutter/material.dart';

class PizzaDetails extends StatefulWidget {
  final String name;
  final String description;
  final String price;
  const PizzaDetails(
      {super.key,
      required this.name,
      required this.description,
      required this.price});

  @override
  State<PizzaDetails> createState() => _PizzaDetailsState();
}

class _PizzaDetailsState extends State<PizzaDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
//This container contains the product details and other text
      Container(
        // ignore: sort_child_properties_last
        child: Padding(
          padding: const EdgeInsets.all(17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.fireplace,
                    size: 15,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Text(
                    '5/5',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.electric_bolt,
                    size: 15,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    widget.description,
                    // 'Pepperoni pizza, Margarita\nPizza Margherita Italian\nCuisine Tomato',
                    style: TextStyle(
                      letterSpacing: 0.3,
                      fontSize: 18,
                      color: Colors.black38,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 65,
                  ),
                  Text(
                    '100%',
                    style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 0.3,
                      color: Colors.black38,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.star_half,
                    color: Colors.orange,
                    size: 22,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Ingredients',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '(Customable)',
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 17,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/emoji1.png'),
                            fit: BoxFit.contain),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(3)),
                        shape: BoxShape.rectangle,
                        color: Colors.grey[500]),
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/emoji2.png'),
                            fit: BoxFit.contain),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(3)),
                        shape: BoxShape.rectangle,
                        color: Colors.grey[500]),
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/emoji3.png'),
                            fit: BoxFit.contain),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(3)),
                        shape: BoxShape.rectangle,
                        color: Colors.grey[500]),
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/emoji4.png'),
                            fit: BoxFit.contain),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(3)),
                        shape: BoxShape.rectangle,
                        color: Colors.grey[500]),
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/emoji5.png'),
                            fit: BoxFit.contain),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(3)),
                        shape: BoxShape.rectangle,
                        color: Colors.grey[500]),
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/emoji6.png'),
                            fit: BoxFit.contain),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(3)),
                        shape: BoxShape.rectangle,
                        color: Colors.grey[500]),
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/emoji7.png'),
                            fit: BoxFit.contain),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(3)),
                        shape: BoxShape.rectangle,
                        color: Colors.grey[500]),
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/emoji8.png'),
                            fit: BoxFit.contain),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(3)),
                        shape: BoxShape.rectangle,
                        color: Colors.grey[500]),
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    height: 50,
                    width: 50,
                    child: const IconButton(
                      onPressed: null,
                      icon: Icon(Icons.edit),
                      iconSize: 25,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(children: [
                Icon(
                  Icons.media_bluetooth_on_sharp,
                  color: Colors.orange,
                ),
                SizedBox(
                  width: 1,
                ),
                Text(
                  'count',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 220,
                ),
                Text(
                  '\$$widget.price',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ]),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 190,
                  ),
                  const Text(
                    '\$',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const Text(
                    '30',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(350, 60),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  onPressed: (() {}),
                  child: const Text(
                    'Order Now',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
      Positioned(
          top: 20,
          bottom: MediaQuery.of(context).size.height * 0.5,

//This container contains the pizza at the top center
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 235, 231, 225),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(
                        MediaQuery.of(context).size.width * 0.49, 100),
                    bottomRight: Radius.elliptical(
                        MediaQuery.of(context).size.width * 0.49, 100))),
            height: MediaQuery.of(context).size.height * 0.60,
            width: MediaQuery.of(context).size.width,
            child: Align(
              alignment: Alignment.center,
              child: Stack(alignment: Alignment.center, children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black12),
                      shape: BoxShape.circle),
                ),
                Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black12),
                      shape: BoxShape.circle),
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black12),
                      shape: BoxShape.circle),
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.black12),
                      shape: BoxShape.circle),
                ),
//Put the pizza in this white container
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/pic2.png'),
                          fit: BoxFit.cover),
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.black12),
                      shape: BoxShape.circle),
                ),
              ]),
            ),
          )),
      Positioned(
          width: MediaQuery.of(context).size.width,
          top: 60,
          right: 20,
          child: const Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.favorite_border_outlined,
              color: Colors.grey,
            ),
          )),
      Positioned(
          width: MediaQuery.of(context).size.width,
          top: 50,
          left: 10,
          child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.grey,
                iconSize: 20,
              ))),
    ]));
  }
}
