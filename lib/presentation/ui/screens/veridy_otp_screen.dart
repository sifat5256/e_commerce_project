import 'dart:async';

import 'package:crafty_bay/presentation/ui/screens/complete_profile_screen.dart';
import 'package:crafty_bay/presentation/ui/utility/colors.dart';
import 'package:crafty_bay/presentation/ui/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  _VerifyOtpScreenState createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  int timerSeconds = 120;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (timerSeconds > 0) {
          timerSeconds--;
        } else {
          // Timer has expired, handle it accordingly
          _timer.cancel(); // Stop the timer
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer to avoid memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            const AppLogo(
              height: 80,
            ),
            const SizedBox(
              height: 15,
            ),
            Text("Enter your OTP code ", style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(
              height: 5,
            ),
            Text("A 4 Digit OTP has been sent to your email", style: Theme.of(context).textTheme.bodyMedium),

            const SizedBox(
              height: 15,
            ),
            PinCodeTextField(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              appContext: context,
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              keyboardType: TextInputType.number,
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.transparent,
                  inactiveFillColor: Colors.transparent,
                  activeColor: AppColors.primaryColor,
                  selectedFillColor: Colors.transparent
              ),
              animationDuration: Duration(milliseconds: 300),
              backgroundColor: Colors.transparent,
              enableActiveFill: true,
              onCompleted: (v) {
                print("Completed");
              },
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(const CompleteProfileScreen());
                },
                child: const Text("Next", style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                        text: "This Code Will Expire in "
                    ),
                    TextSpan(
                      text: "$timerSeconds seconds",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryColor
                      ),
                    ),
                  ]
              ),
            ),
            TextButton(onPressed: (){}, child: Text("Resend Code")),

          ],
        ),
      ),
    );
  }
}
