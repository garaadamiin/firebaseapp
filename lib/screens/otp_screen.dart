import 'package:flutter/material.dart';

import '../widgets/customized_button.dart';
import '../widgets/cutomized_auth_textfield.dart';
import 'login_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenScreenState();
}

class _OtpScreenScreenState extends State<OtpScreen> {
  final TextEditingController _otpNumberController1 = TextEditingController();
  final TextEditingController _otpNumberController2 = TextEditingController();
  final TextEditingController _otpNumberController3 = TextEditingController();
  final TextEditingController _otpNumberController4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_sharp),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("OTP Verification?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    "Enter the verification code we just sent on your email address.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    )),
              ),
              Row(
                children: [
                  CustomizedAuthTextfield(
                    myController: _otpNumberController1,
                  ),
                  CustomizedAuthTextfield(
                    myController: _otpNumberController2,
                  ),
                  CustomizedAuthTextfield(
                    myController: _otpNumberController3,
                  ),
                  CustomizedAuthTextfield(
                    myController: _otpNumberController4,
                  ),
                ],
              ),
              CustomizedButton(
                buttonText: "Verify",
                buttonColor: const Color(0xFF093631),
                textColor: Colors.white,
                onPressed: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Remember Password?",
                    style: TextStyle(color: Color(0xff1E232C), fontSize: 15),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const LoginScreen()));
                    },
                    child: const Text(
                      " LogIn",
                      style: TextStyle(color: Color(0xffffb000), fontSize: 15),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
