import 'package:flutter/material.dart';
import 'package:glofaa/live_training_screen.dart';
import 'package:glofaa/profile_screen.dart';
import 'package:glofaa/session_screen.dart';
import 'package:glofaa/starter_kit_screen.dart';

class BottomNewScreen extends StatefulWidget {
  const BottomNewScreen({super.key});

  @override
  State<BottomNewScreen> createState() => _BottomNewScreenState();
}

List stepperScreens = [
  const CustomStepper(),
  const StarterKitScreen(),
  const ProfileScreen(),
  const LiveTrainingScreen()
];

class _BottomNewScreenState extends State<BottomNewScreen> {
  int _currentIndex = 0;
  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            children: [
              StepperComponent(
                index: 0,
                currentIndex: _currentIndex,
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                  _pageController.jumpToPage(0);
                },
              ),
              StepperComponent(
                index: 1,
                currentIndex: _currentIndex,
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                  _pageController.jumpToPage(1);
                },
              ),
              StepperComponent(
                index: 2,
                currentIndex: _currentIndex,
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                  _pageController.jumpToPage(2);
                },
              ),
              StepperComponent(
                index: 3,
                currentIndex: _currentIndex,
                isLast: true,
                onTap: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                  _pageController.jumpToPage(3);
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemCount: 4,
              itemBuilder: (_, index) => stepperScreens[index]),
        )
      ],
    ));
  }
}

class StepperComponent extends StatelessWidget {
  final int index; // current index of bubble
  final int currentIndex;
  final VoidCallback onTap;
  final bool isLast;

  const StepperComponent({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.onTap,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return (!isLast)
        ? Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: onTap,
                        child: Container(
                          width: (index == currentIndex) ? 25 : 20,
                          height: (index == currentIndex) ? 25 : 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: (index <= currentIndex)
                                  ? Colors.blue.shade800
                                  : Colors.black12,
                              border: Border.all(
                                  color: (index == currentIndex)
                                      ? Colors.blue.shade800
                                      : Colors.transparent)),
                          child: (index == currentIndex)
                              ? const Icon(Icons.circle,
                                  size: 15, color: Colors.white)
                              : const SizedBox(),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        height: 2,
                        color: (index < currentIndex)
                            ? Colors.blue.shade800
                            : Colors.black12,
                      ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  (index == 0)
                      ? 'Session'
                      : (index == 1)
                          ? 'Starter Kit'
                          : 'Profile',
                  style: TextStyle(
                      color: (index <= currentIndex)
                          ? Colors.blue.shade800
                          : Colors.black38,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      fontSize: 12),
                ),
              ],
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                        width: (index == currentIndex) ? 25 : 20,
                        height: (index == currentIndex) ? 25 : 20,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: (index <= currentIndex)
                                ? Colors.blue.shade800
                                : Colors.black12,
                            border: Border.all(
                                color: (index == currentIndex)
                                    ? Colors.blue.shade800
                                    : Colors.transparent)),
                        child: (index == currentIndex)
                            ? const Icon(Icons.circle,
                                size: 15, color: Colors.white)
                            : const SizedBox(),
                      ),
                    ),
                    Container(
                      height: 2,
                      color: (index < currentIndex)
                          ? Colors.blue.shade800
                          : Colors.black12,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Training',
                style: TextStyle(
                    color: (index <= currentIndex)
                        ? Colors.blue.shade800
                        : Colors.black38,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 12),
              ),
            ],
          );
  }
}
