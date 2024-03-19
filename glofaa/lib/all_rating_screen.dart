import 'package:flutter/material.dart';

class AllRatingScreen extends StatefulWidget {
  const AllRatingScreen({super.key});

  @override
  State<AllRatingScreen> createState() => _AllRatingScreenState();
}

class _AllRatingScreenState extends State<AllRatingScreen> {  bool isSelectedChip1 = false;
bool isSelectedChip2 = false;
bool isSelectedChip3 = false;
bool isSelectedChip4 = false;
bool isSelectedChip5 = false;
bool isSelectedChip6 = false;
bool isSelectedChip7 = false;
bool isSelectedChip8 = false;
bool isSelectedChip9 = false;
bool isSelectedChip10 = false;

 var List = ['Saurav Kumar','Sonal','Ritik','Prince','Mr Alpha','Mr Alpha','Mr Alpha','Mr Alpha','Mr Alpha','Mr Alpha'];
 var list= ['sep,2023','Yes the boy were extremely patient & genuine in their job','Aug,2023','Aug,2023','Aug,2023','Aug,2023','Aug,2023','Aug,2023','Aug,2023','Aug,2023'];

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 20,
              ),
              ChoiceChip(
                labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                showCheckmark: false,
                label: Text(
                  "All ratings",
                  style: TextStyle(
                      color: (isSelectedChip1 == true)
                          ? Colors.white
                          : const Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
                backgroundColor: Colors.white,
                selected: isSelectedChip1,
                selectedColor: const Color.fromRGBO(65, 195, 63, 1),
                onSelected: (newState) {
                  setState(() {
                    isSelectedChip1 = newState;
                    isSelectedChip2 = false;
                    isSelectedChip3 = false;
                    isSelectedChip4 = false;
                    isSelectedChip5 = false;
                    isSelectedChip6 = false;
                    isSelectedChip7 = false;
                    isSelectedChip8 = false;
                    isSelectedChip9 = false;
                    isSelectedChip10 = false;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              ChoiceChip(
                labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                avatar: const CircleAvatar(
                    child: Icon(
                      Icons.star,
                      color: Color.fromRGBO(74, 128, 249, 1),
                      size: 15,
                    )),
                showCheckmark: false,
                label: Text(
                  "1(0)",
                  style: TextStyle(
                      color: (isSelectedChip2 == true)
                          ? Colors.white
                          : const Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
                backgroundColor: Colors.white,
                selected: isSelectedChip2,
                selectedColor: const Color.fromRGBO(74, 128, 249, 1),
                onSelected: (newState) {
                  setState(() {
                    isSelectedChip1 = false;
                    isSelectedChip2 = newState;
                    isSelectedChip3 = false;
                    isSelectedChip4 = false;
                    isSelectedChip5 = false;
                    isSelectedChip6 = false;
                    isSelectedChip7 = false;
                    isSelectedChip8 = false;
                    isSelectedChip9 = false;
                    isSelectedChip10 = false;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              ChoiceChip(
                labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                avatar: const CircleAvatar(
                    child: Icon(
                      Icons.star,
                      color: Color.fromRGBO(242, 20, 20, 1),
                      size: 15,
                    )),
                showCheckmark: false,
                label: Text(
                  "1.5(0)",
                  style: TextStyle(
                      color: (isSelectedChip3 == true)
                          ? Colors.white
                          : const Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
                backgroundColor: Colors.white,
                selected: isSelectedChip3,
                selectedColor: const Color.fromRGBO(242, 20, 20, 1),
                onSelected: (newState) {
                  setState(() {
                    isSelectedChip1 = false;
                    isSelectedChip2 = false;
                    isSelectedChip3 = newState;
                    isSelectedChip4 = false;
                    isSelectedChip5 = false;
                    isSelectedChip6 = false;
                    isSelectedChip7 = false;
                    isSelectedChip8 = false;
                    isSelectedChip9 = false;
                    isSelectedChip10 = false;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              ChoiceChip(
                labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                avatar: const CircleAvatar(
                    child: Icon(
                      Icons.star,
                      color: Color.fromRGBO(65, 195, 63, 1),
                      size: 15,
                    )),
                showCheckmark: false,
                label: Text(
                  "2(0)",
                  style: TextStyle(
                      color: (isSelectedChip4 == true)
                          ? Colors.white
                          : const Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
                backgroundColor: Colors.white,
                selected: isSelectedChip4,
                selectedColor: const Color.fromRGBO(65, 195, 63, 1),
                onSelected: (newState) {
                  setState(() {
                    isSelectedChip1 = false;
                    isSelectedChip2 = false;
                    isSelectedChip3 = false;
                    isSelectedChip4 = newState;
                    isSelectedChip5 = false;
                    isSelectedChip6 = false;
                    isSelectedChip7 = false;
                    isSelectedChip8 = false;
                    isSelectedChip9 = false;
                    isSelectedChip10 = false;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              ChoiceChip(
                labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                avatar: const CircleAvatar(
                    child: Icon(
                      Icons.star,
                      color: Color.fromRGBO(74, 128, 249, 1),
                      size: 15,
                    )),
                showCheckmark: false,
                label: Text(
                  "2.5(0)",
                  style: TextStyle(
                      color: (isSelectedChip5 == true)
                          ? Colors.white
                          : const Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
                backgroundColor: Colors.white,
                selected: isSelectedChip5,
                selectedColor: const Color.fromRGBO(74, 128, 249, 1),
                onSelected: (newState) {
                  setState(() {
                    isSelectedChip1 = false;
                    isSelectedChip2 = false;
                    isSelectedChip3 = false;
                    isSelectedChip4 = false;
                    isSelectedChip5 = newState;
                    isSelectedChip6 = false;
                    isSelectedChip7 = false;
                    isSelectedChip8 = false;
                    isSelectedChip9 = false;
                    isSelectedChip10 = false;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              ChoiceChip(
                labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                avatar: const CircleAvatar(
                    child: Icon(
                      Icons.star,
                      color: Color.fromRGBO(242, 20, 20, 1),
                      size: 15,
                    )),
                showCheckmark: false,
                label: Text(
                  "3(0)",
                  style: TextStyle(
                      color: (isSelectedChip6 == true)
                          ? Colors.white
                          : const Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
                backgroundColor: Colors.white,
                selected: isSelectedChip6,
                selectedColor: const Color.fromRGBO(242, 20, 20, 1),
                onSelected: (newState) {
                  setState(() {
                    isSelectedChip1 = false;
                    isSelectedChip2 = false;
                    isSelectedChip3 = false;
                    isSelectedChip4 = false;
                    isSelectedChip5 = false;
                    isSelectedChip6 = newState;
                    isSelectedChip7 = false;
                    isSelectedChip8 = false;
                    isSelectedChip9 = false;
                    isSelectedChip10 = false;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              ChoiceChip(
                labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                avatar: const CircleAvatar(
                    child: Icon(
                      Icons.star,
                      color: Color.fromRGBO(65, 195, 63, 1),
                      size: 15,
                    )),
                showCheckmark: false,
                label: Text(
                  "3.5(0)",
                  style: TextStyle(
                      color: (isSelectedChip7 == true)
                          ? Colors.white
                          : const Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
                backgroundColor: Colors.white,
                selected: isSelectedChip7,
                selectedColor: const Color.fromRGBO(65, 195, 63, 1),
                onSelected: (newState) {
                  setState(() {
                    isSelectedChip1 = false;
                    isSelectedChip2 = false;
                    isSelectedChip3 = false;
                    isSelectedChip4 = false;
                    isSelectedChip5 = false;
                    isSelectedChip6 = false;
                    isSelectedChip7 = newState;
                    isSelectedChip8 = false;
                    isSelectedChip9 = false;
                    isSelectedChip10 = false;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              ChoiceChip(
                labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                avatar: const CircleAvatar(
                    child: Icon(
                      Icons.star,
                      color: Color.fromRGBO(74, 128, 249, 1),
                      size: 15,
                    )),
                showCheckmark: false,
                label: Text(
                  "4(0)",
                  style: TextStyle(
                      color: (isSelectedChip8 == true)
                          ? Colors.white
                          : const Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
                backgroundColor: Colors.white,
                selected: isSelectedChip8,
                selectedColor: const Color.fromRGBO(74, 128, 249, 1),
                onSelected: (newState) {
                  setState(() {
                    isSelectedChip1 = false;
                    isSelectedChip2 = false;
                    isSelectedChip3 = false;
                    isSelectedChip4 = false;
                    isSelectedChip5 = false;
                    isSelectedChip6 = false;
                    isSelectedChip7 = false;
                    isSelectedChip8 = newState;
                    isSelectedChip9 = false;
                    isSelectedChip10 = false;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              ChoiceChip(
                labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                avatar: const CircleAvatar(
                    child: Icon(
                      Icons.star,
                      color: Color.fromRGBO(242, 20, 20, 1),
                      size: 15,
                    )),
                showCheckmark: false,
                label: Text(
                  "4.5(0)",
                  style: TextStyle(
                      color: (isSelectedChip9 == true)
                          ? Colors.white
                          : const Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
                backgroundColor: Colors.white,
                selected: isSelectedChip9,
                selectedColor: const Color.fromRGBO(242, 20, 20, 1),
                onSelected: (newState) {
                  setState(() {
                    isSelectedChip1 = false;
                    isSelectedChip2 = false;
                    isSelectedChip3 = false;
                    isSelectedChip4 = false;
                    isSelectedChip5 = false;
                    isSelectedChip6 = false;
                    isSelectedChip7 = false;
                    isSelectedChip8 = false;
                    isSelectedChip9 = newState;
                    isSelectedChip10 = false;
                  });
                },
              ),
              const SizedBox(
                width: 10,
              ),
              ChoiceChip(
                labelPadding: const EdgeInsets.symmetric(horizontal: 4),
                avatar: const CircleAvatar(
                    child: Icon(
                      Icons.star,
                      color: Color.fromRGBO(65, 195, 63, 1),
                      size: 15,
                    )),
                showCheckmark: false,
                label: Text(
                  "5(0)",
                  style: TextStyle(
                      color: (isSelectedChip10 == true)
                          ? Colors.white
                          : const Color.fromRGBO(147, 76, 234, 1),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
                backgroundColor: Colors.white,
                selected: isSelectedChip10,
                selectedColor: const Color.fromRGBO(65, 195, 63, 1),
                onSelected: (newState) {
                  setState(() {
                    isSelectedChip1 = false;
                    isSelectedChip2 = false;
                    isSelectedChip3 = false;
                    isSelectedChip4 = false;
                    isSelectedChip5 = false;
                    isSelectedChip6 = false;
                    isSelectedChip7 = false;
                    isSelectedChip8 = false;
                    isSelectedChip9 = false;
                    isSelectedChip10 = newState;
                  });
                },
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "All rating (20)",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 15),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Flexible(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    list[index],
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 25,
                    child: Image.asset(
                      "assets/images/tell_about_yourself.png",
                    ),
                  ),
                  title:  Text(List[index],
                    // List[index],
                    style: TextStyle(
                        color: Colors.black,
                         fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  subtitle: const Text(
                    "Verified customer",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                  trailing: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.green,
                        size: 15,
                      ),
                      Text(
                        "5",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

}
