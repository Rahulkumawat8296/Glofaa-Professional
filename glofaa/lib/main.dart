import 'package:flutter/material.dart';
import 'package:glofaa/personal_details_step_screen.dart';
import 'package:glofaa/rating_screen.dart';
import 'package:glofaa/session_screen.dart';
import 'package:glofaa/track_your_performance_screen.dart';
import 'complete_training_and_profile_screen.dart';
import 'current_address_screen.dart';
import 'identity_verification_screen.dart';
import 'loans_screen.dart';
import 'onboarding_documents_screen.dart';
import'package:glofaa/identity_section.dart';

void main()
{
  runApp(MYapp());
}

class MYapp extends StatelessWidget {
  const MYapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home:TrackYourPerformanceScreen(),
    );
  }
}




