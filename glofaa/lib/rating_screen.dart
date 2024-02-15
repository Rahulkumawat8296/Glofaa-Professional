import 'package:flutter/material.dart';
import 'package:glofaa/all_rating_screen.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:semicircle_indicator/semicircle_indicator.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  @override
  CountDownController _controller = CountDownController();
  bool _isPause = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rating',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
               SemicircularIndicator(
                 color:Colors.orange,
                 bottomPadding: 0,
                 child:Column(
                   children: [
                     Container(
                       child: Padding(
                         padding: const EdgeInsets.only(left:40.0),
                         child: Text("4.78",style:TextStyle(fontSize:20,color:Colors.black),),
                       ),
                     ),
                     Container(
                       child: Padding(
                         padding: const EdgeInsets.only(left:40.0),
                         child: Text("Last 20 rating"),
                       ),
                     ),
                     Container(
                       child: Padding(
                           padding: const EdgeInsets.only(left:40.0),
                           child: Icon(Icons.star)
                       ),
                     ),
                     Container(
                       child: Padding(
                         padding: const EdgeInsets.only(left:40.0),
                         child: Text("Moin:4.5"),
                       ),
                     ),



                   ],
                                        
        

        
                 ),
        
        
               ),
              SizedBox(height: 30,),
              const Text('Low Rating',
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 13),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Keep rating above 3.5 to avoid block',
              style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                  fontSize: 13),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AllRatingScreen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                    padding: const EdgeInsets.symmetric(horizontal: 10)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'View all rating',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                            ),
                          ]),
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        size: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Text(
                'Last 10 rating',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.stacked_bar_chart,
                    size: 15,
                    color: Colors.redAccent.shade200,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '4.88 To 4.78',
                    style: TextStyle(
                        color: Colors.redAccent.shade200,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                    children: List.generate(
                        10,
                        (index) => Container(
                              margin: const EdgeInsets.all(8),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color(0x3F000000),
                                      blurRadius: 2,
                                    ),
                                  ]),
                              child: const Text(
                                '5',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 16),
                              ),
                            ))),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0 Rating coming soon',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                  Icon(Icons.info_outline_rounded)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              margin: const EdgeInsets.only(left: 10, right: 10, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 2,
                    ),
                  ]),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      'Bad rating reasons',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                    trailing: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                            ),
                          ]),
                      child: const Icon(
                        Icons.keyboard_arrow_down,
                        size: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 22,
                        height: 22,
                        decoration: const BoxDecoration(
                          color: Colors.redAccent,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.thumb_down,
                          size: 14,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        'Repair',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 15),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 27,
                      ),
                      Text(
                        '1 complaints',
                        style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 10),
              margin: const EdgeInsets.only(left: 10, right: 10, top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 2,
                    ),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'More information',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 16),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      'When does the customer’s rating start showing in the profile?',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                    trailing: Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                            ),
                          ]),
                      child: const Icon(
                        Icons.keyboard_arrow_right,
                        size: 20,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

