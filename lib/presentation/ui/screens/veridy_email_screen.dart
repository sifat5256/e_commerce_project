

import 'package:crafty_bay/presentation/ui/screens/veridy_otp_screen.dart';
import 'package:crafty_bay/presentation/ui/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

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
             Text("Welcome Back",style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(
              height: 5,
            ),
             Text("Please Enter Your Email Address",style: Theme.of(context).textTheme.bodyMedium),

            const SizedBox(
              height: 5,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Email"
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,

                child: ElevatedButton(onPressed: (){
                  Get.to(const VerifyOtpScreen());
                }, child: const Text("Next",style: TextStyle(
                  color: Colors.white
                ),))),

          ],
        ),
      ),
    );
  }
}
