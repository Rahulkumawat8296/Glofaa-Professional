import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
      ),
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(147, 76, 234, 1),
                borderRadius: BorderRadius.circular(10)),
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      AssetImage("assets/images/tell_about_yourself.png"),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Mrs. Beta",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 18),
                    ),
                    Row(
                      children: [
                        Text(
                          "SPD-7892",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 12),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.circle,
                          color: Color.fromRGBO(20, 242, 69, 1),
                          size: 14,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.history_outlined,
                            color: Color.fromRGBO(147, 76, 234, 1),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Job History",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 14),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        onPressed: () {
                          /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CompleteTrainingAndProfileScreen()));*/
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.black26,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.group,
                            color: Color.fromRGBO(147, 76, 234, 1),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "My Hub",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 14),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color.fromRGBO(147, 76, 234, 1),
                                ),
                                borderRadius: BorderRadius.circular(3)),
                            child: const Text(
                              " new ",
                              style: TextStyle(
                                  color: Color.fromRGBO(147, 76, 234, 1),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 11),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.keyboard_arrow_right,
                              color: Color.fromRGBO(147, 76, 234, 1),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.black26,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.credit_card_outlined,
                            color: Color.fromRGBO(147, 76, 234, 1),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Credits",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 14),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.black26,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.help_center_outlined,
                            color: Color.fromRGBO(147, 76, 234, 1),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Help Center",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 14),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.black26,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.group_add_outlined,
                            color: Color.fromRGBO(147, 76, 234, 1),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Invite a friend to Glofaa",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 14),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.black26,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Color.fromRGBO(147, 76, 234, 1),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Add Helpers",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 14),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.black26,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 30, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.add_shopping_cart,
                            color: Color.fromRGBO(147, 76, 234, 1),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Glofaa Shop",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 14),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_right,
                          color: Color.fromRGBO(147, 76, 234, 1),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.currency_rupee_rounded,
                            color: Color.fromRGBO(147, 76, 234, 1),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Financial Details",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "GST, PAN and Bank information",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 11),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.black26,
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.whatsapp,
                            color: Color.fromRGBO(147, 76, 234, 1),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Send WhatsApp Details",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "On",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 11),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.black26,
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.translate_rounded,
                            color: Color.fromRGBO(147, 76, 234, 1),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Change Language",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "English",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Poppins',
                                    fontSize: 11),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(147, 76, 234, 1),
                borderRadius: BorderRadius.circular(10)),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Contacts Us",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Terms of use",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Privacy policy",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Welfare policy",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Rate us on the play store",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Rate us on the play store",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Download UC Customer App",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Logout",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "v6.9.45 192",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
