import 'package:flutter/material.dart';
import 'package:glofaa/profile_screen.dart';
import 'package:glofaa/starter_kit_screen.dart';
import 'package:glofaa/training_center_screen.dart';
import 'package:permission_handler/permission_handler.dart';

class CustomStepper extends StatefulWidget {
  const CustomStepper({Key? key}) : super(key: key);

  @override
  State<CustomStepper> createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  int _currentIndex=0;
  PageController _pageController=PageController();
     int _currentIndex1=0;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.
                translate_rounded),

            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            onPressed: () {
              /* Navigator.push(context, MaterialPageRoute(builder: (context) => LiveTrainingScreen()));*/
            },
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //let's add some padding press alt enter
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  StepperComponent(
                    currentIndex: _currentIndex,
                    index: 0,
                    onTap: () {
                      setState(() {
                        _currentIndex=0;
                      });
                      _pageController.jumpToPage(0);
                    },),
                  StepperComponent(
                    currentIndex: _currentIndex,
                    index: 1,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>StarterKitScreen()));
                      setState(() {
                        _currentIndex=1;
                      });
                      _pageController.jumpToPage(1);
                    },),
                  StepperComponent(
                    currentIndex: _currentIndex,
                    index: 2,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                      
                      setState(() {
                        _currentIndex=2;
                      });
                      _pageController.jumpToPage(2);
                    },),
                  StepperComponent(
                    currentIndex: _currentIndex,
                    index: 3,
                    isLast:true,
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>TrainingCenterScreen()));
                      setState(() {
                        _currentIndex=3;
                      });
                      _pageController.jumpToPage(3);
                    },),
        
        
                ],
              ),
            ),
        
            Expanded(
                child:
                PageView.builder(
                  //only scroll with bubbles
                    physics: NeverScrollableScrollPhysics(),
                    controller: _pageController,
                    itemCount: 4,
                    itemBuilder: (context, index){
        
                      return Center(
                        //child: Text('Page ${index}'),
                      );
                    })),
            Padding(
              padding: const EdgeInsets.only(bottom:230.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding:
                      const EdgeInsets.only(left: 15, right: 5, top: 5, bottom: 15),
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
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: const Text(
                              "Skill session",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Poppins',
                                  fontSize: 18),
                            ),
                            subtitle: const Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "We want to know more about your experience in laptop Repair Service",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            trailing: CircleAvatar(
                              radius: 45,
                              child: Image.asset(
                                "assets/images/session_image.png",
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {
                                _displayLocation$GpsDialogBox();
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              child: const Text(
                                "Book now",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Poppins',
                                    fontSize: 13),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    
                       const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                        child: Text(
                          "About this stage",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              fontSize: 15),
                        ),
                      ),
                    
                    SingleChildScrollView(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.only(
                                left: 5, right: 5, top: 5, bottom: 5),
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
                                Image.asset(
                                  "assets/images/about_img1.png",
                                  height: 120,
                                  width: 150,
                                ),
                                const Text(
                                  "what is skill session?",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.only(
                                left: 5, right: 5, top: 5, bottom: 5),
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
                                Image.asset(
                                  "assets/images/about_img2.png",
                                  height: 120,
                                  width: 150,
                                ),
                                const Text(
                                  "How to book session?",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Poppins',
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              
              ),
            )
          ],
        ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex1,
        selectedFontSize: 13,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_outlined), label: "New"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Profile Progress"),
          BottomNavigationBarItem(
              icon: Icon(Icons.fact_check_outlined), label: "UC Around You"),
        ],
        onTap: (selectedIndex) {
          setState(() {
            _currentIndex1 = selectedIndex;
          });
        },
      ),


    );
  }

  Future _checkPermission(Permission permission, BuildContext context) async {
    var messenger = ScaffoldMessenger.of(context);
    final status = await permission.request();
    if (status.isGranted) {
      messenger.showSnackBar(const SnackBar(
        content: Text(
          "Permission Granted",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
              fontSize: 13),
        ),
      ));
    } else if (status.isDenied || status.isPermanentlyDenied) {
      _displayGoToSettingDialogBox();
    }
  }

  Future _displayLocation$GpsDialogBox() {
    return showAdaptiveDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => Dialog(
          insetPadding: const EdgeInsets.all(15),
          child: Container(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20, top: 20, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Location & GPS access",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Please allow Glofaa app to track your current location. this is important for us to be able to send you jobs in your area. ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 13),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _checkPermission(Permission.location, context);
                    },
                    child: const Text(
                      "AGREE AND GRANT ACCESS",
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Future _displayGoToSettingDialogBox() {
    return showAdaptiveDialog(
        context: context,
        builder: (context) => Dialog(
          insetPadding: const EdgeInsets.all(15),
          child: Container(
            padding: const EdgeInsets.only(
                left: 20.0, right: 20, top: 25, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Allow Glofaa technology partner app to fetch location in background. Please select Allow this time option on next screen.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                      openAppSettings();
                    },
                    child: const Text(
                      "CONTINUE",
                      style: TextStyle(
                          color: Color.fromRGBO(147, 76, 234, 1),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

}

class StepperComponent extends StatelessWidget {
  // index describe the position of our bubble
  int index;
  //currentIndex is index that is gonna change on Tap
  int currentIndex;
  //onTap CallBack
  VoidCallback onTap;

  bool isLast;
  StepperComponent({
    super.key,
    required this.currentIndex,
    required this.index,
    required this.onTap,
    this.isLast=false,
  });
  var List =["Session", 'Starter Kit',"Profile","Training"];

  @override
  Widget build(BuildContext context) {

    //now let's remove the ligne at the end of the row but also we need to remove unnecessary padding thus we need to remove the expanded
    //widget
    return isLast?
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            //this is the bubble
            GestureDetector(
              onTap: onTap,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: index==currentIndex?Colors.blue:Colors.transparent,
                  border: Border.all(color: currentIndex>=index?Colors.blue: Colors.black12),
                ),
              ),
            ),
            //this the ligne
            Container(
              height: 2,
              //why index+1 we want to turn the ligne orange that precede the active bubble
              color: currentIndex>=index+1?Colors.blue:Colors.black12,
            ),
          ],
        ),
        //index+1 we dont wanna show 0 in the screen since our index will start at 0
        Text(List[index]),
      ],
    )
        :Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              //this is the bubble
              GestureDetector(
                onTap: onTap,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: index==currentIndex?Colors.blue:Colors.transparent,
                    border: Border.all(color: currentIndex>=index?Colors.blue: Colors.black12),
                  ),
                ),
              ),
              //this the ligne
              Expanded(
                  child: Container(
                    height: 2,
                    //why index+1 we want to turn the ligne orange that precede the active bubble
                    color: currentIndex>=index+1?Colors.blue:Colors.black12,
                  )),
            ],
          ),
          //index+1 we dont wanna show 0 in the screen since our index will start at 0
          Text(List[index]),
        ],
      ),
    );
  }
}



