import 'package:flutter/material.dart';
import 'package:glofaa/rating_screen.dart';
import 'package:semicircle_indicator/semicircle_indicator.dart';

class TrackYourPerformanceScreen extends StatefulWidget {
  const TrackYourPerformanceScreen({super.key});

  @override
  State<TrackYourPerformanceScreen> createState() =>
      _TrackYourPerformanceScreenState();
}

class _TrackYourPerformanceScreenState
    extends State<TrackYourPerformanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 30,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.flag_circle,
                  color: Colors.black54,
                ),
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    backgroundColor: Colors.grey.shade300,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                label: const Text('GOALS',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 15,
                    )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Track Your Performance',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 15,
                  )),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                  Text(
                    'Your MG payment is at risk!',
                    style: TextStyle(
                        color: Colors.redAccent.shade200,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '1 jobs sent',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '50 day’s left in this job Pack',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 10),
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {
                        /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const ChooseJobPackageScreen()));*/
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                          const Color.fromRGBO(147, 76, 234, 1),
                          padding: const EdgeInsets.symmetric(horizontal: 10)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'See Details',
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

                ],
              ),
            ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 120.0),
                child: SemicircularIndicator(
                  color:Colors.orange,
                  bottomPadding: 0,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left:40.0),
                          child: Text("4.72",style:TextStyle(fontSize:20,color:Colors.black),),
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
              ),
            ],
          ) ,

            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 10),
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RatingScreen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(147, 76, 234, 1),
                    padding: const EdgeInsets.symmetric(horizontal: 10)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    const Text(
                      'Rating',
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
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 160,
                    height: 100,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    margin: const EdgeInsets.only(left: 10, right: 5, top: 10),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          child: const Text('MAX : 10%',
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 12,
                              )),
                        ),
                        const Text('10%',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 17,
                            )),
                        const Text('Revisits',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                            )),
                      ],
                    )),
                Container(
                    width: 160,
                    height: 100,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    margin: const EdgeInsets.only(left: 5, right: 10, top: 10),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          child: const Text('MIN : 70',
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 12,
                              )),
                        ),
                        const Text('0',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 17,
                            )),
                        const Text('Jobs delivered',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                            )),
                      ],
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 160,
                    height: 100,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    margin: const EdgeInsets.only(left: 10, right: 5, top: 10),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          child: const Icon(
                            Icons.info_rounded,
                            color: Colors.black54,
                          ),
                        ),
                        const Text('0',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 17,
                            )),
                        const Text('Dishonest Repair',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                            )),
                      ],
                    )),
                Container(
                    width: 160,
                    height: 100,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    margin: const EdgeInsets.only(left: 5, right: 10, top: 10),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          child: const Text('MIN : 90%',
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 12,
                              )),
                        ),
                        const Text('80.65%',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 17,
                            )),
                        const Text('Response rate',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                            )),
                      ],
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 160,
                    height: 100,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    margin: const EdgeInsets.only(left: 10, right: 5, top: 10),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          child: const Icon(
                            Icons.cancel,
                            color: Colors.redAccent,
                          ),
                        ),
                        const Text('0',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 17,
                            )),
                        const Text('Cancellations',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                            )),
                      ],
                    )),
                Container(
                  width: 160,
                  height: 100,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  margin: const EdgeInsets.only(left: 10, right: 5, top: 10),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Text('Job packs',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 15,
                  )),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              margin: const EdgeInsets.only(left: 10, right: 10),
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
                    'CURRENT PLAN EXPIRING AFTER 17 JOBS',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '23 of 40 jobs sent',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 10, left: 40, right: 40),
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const ChooseJobPackageScreen()));*/
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                              const Color.fromRGBO(147, 76, 234, 1),
                              padding:
                              const EdgeInsets.symmetric(horizontal: 10)),
                          child: const Text(
                            'Buy Again',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 13),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _displaySeeDetailsBottomSheet();
                            /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const ChooseJobPackageScreen()));*/
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                              const Color.fromRGBO(147, 76, 234, 1),
                              padding:
                              const EdgeInsets.symmetric(horizontal: 10)),
                          child: const Text(
                            'See Details',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'AC 2024 Retention cash plan',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'starts on 1st Mar 2024',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 12),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                margin: const EdgeInsets.only(
                    left: 10, right: 10, top: 15, bottom: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 2,
                      ),
                    ]),
                child: const Text(
                  'View previous jobs packs',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _displaySeeDetailsBottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20)),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'SMALL FSP PLAN 2023',
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                    Text(
                      'VALID TILL 17 AUG,2023',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  '23 of 40 jobs sent',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 30,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _displayViewJobsBottomSheet();
                      /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const ChooseJobPackageScreen()));*/
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                        const Color.fromRGBO(147, 76, 234, 1),
                        padding:
                        const EdgeInsets.symmetric(horizontal: 10)),
                    child: const Text(
                      'View Jobs',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                ),
                const Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                  child: Text(
                    'Maintain below criteria till 17 Aug to claim min guarantee refund',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 14),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15, vertical: 15),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 1,
                        ),
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 90,
                            child: Text(
                              'Metric',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            width: 90,
                            child: const Text(
                              'Target',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            width: 90,
                            child: const Text(
                              'You',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 90,
                            child: Text(
                              'Leave hours',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            width: 90,
                            child: const Text(
                              '45hrs',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            width: 90,
                            child: const Text(
                              '2hrs',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        '27 May - 17 Aug',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 11),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text.rich(TextSpan(
                          text: '₹112 per job refund',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                          children: [
                            TextSpan(
                              text:
                              ', if you maintained min criteria & we sent less than 40 jobs',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  fontSize: 13),
                            ),
                          ]))
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                      vertical: 15, horizontal: 40),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                        const Color.fromRGBO(147, 76, 234, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      'Buy Again',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Future _displayViewJobsBottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  '23/40 jobs sent',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'From 27 may - till date',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    margin: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 1,
                          ),
                        ]),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '30 Jul',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Umar Farooq',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 15),
                              ),
                              Row(children: [
                                Text(
                                  'EXCLUSIVE',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 12),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.symmetric(horizontal: 3.0),
                                  child: Icon(
                                    Icons.circle,
                                    size: 8,
                                  ),
                                ),
                                Text(
                                  'ACCEPTED',
                                  style: TextStyle(
                                      color: Colors.lightGreen,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      fontSize: 12),
                                ),
                              ])
                            ]),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Block D, sector 61, Noida, Uttar Pradesh 201301, India',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}