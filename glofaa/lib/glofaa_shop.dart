import'package:flutter/material.dart';
import 'package:glofaa/utils/resource/color_resource.dart';

class Shpo extends StatefulWidget {
  const Shpo({super.key});

  @override
  State<Shpo> createState() => _ShpoState();
}

class _ShpoState extends State<Shpo> {
  @override

  List list =["Buy  Products", "Order History", "My Delivery Address"];

  List iconlist = [
    Icons.card_giftcard,
    Icons.star_border,
    Icons.place,
  ];


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Glofaa Shop"),

        backgroundColor: ColorResource.offerColor,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 20.0),
                  child: ListTile(
                    onTap: () {
                    //  onTap(index);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    tileColor: const Color.fromRGBO(230, 210, 255, 1),
                    leading: Icon(
                      iconlist[index],
                      color: const Color.fromRGBO(147, 76, 234, 1),
                    ),

                    title: Text(
                      list[index],
                      style: const TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 16),
                    ),
                    trailing:CircleAvatar(
                      radius:20,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: const Icon(

                          Icons.keyboard_arrow_right_outlined,
                          color: Color.fromRGBO(147, 76, 234, 1),

                        ),
                        onPressed: () {
                         // onTap(index);
                        },
                      ),
                    ),
                  ),

                );


              },
            ),
          ),
        ],
      ),
    );
  }
}


