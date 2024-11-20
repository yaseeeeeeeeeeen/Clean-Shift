import 'package:clean_shift/helper/auth_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController phoneController =
      TextEditingController(); // Controller for phone input
  final TextEditingController otpController =
      TextEditingController(); // Controller for OTP input
  String verificationId = ''; // Holds the verification ID from Firebase
  bool isOtpSent = false; // Flag to toggle between phone and OTP input

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Phone Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (!isOtpSent) ...[
              // Phone Number Input
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  hintText: 'Enter your 10-digit mobile number',
                  prefixText: '+91 ',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Validate and send OTP
                  final phoneNumber = phoneController.text.trim();
                  if (phoneNumber.isEmpty || phoneNumber.length != 10) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(
                              'Enter a valid 10-digit Indian phone number')),
                    );
                    return;
                  }

                  final formattedPhoneNumber = '+91$phoneNumber';

                  AuthHelper.verifyPhoneNumber(
                    formattedPhoneNumber,
                    (String id) {
                      setState(() {
                        verificationId = id;
                        isOtpSent = true;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(
                                'Verification code sent to $formattedPhoneNumber')),
                      );
                    },
                    (FirebaseAuthException e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Error: ${e.message}')),
                      );
                    },
                  );
                },
                child: Text('Send OTP'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                ),
              ),
            ] else ...[
              // OTP Input
              Text(
                'Enter the OTP sent to your phone',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              TextField(
                controller: otpController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'OTP',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  // Verify OTP
                  final otp = otpController.text.trim();
                  if (otp.isEmpty || otp.length != 6) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Enter a valid 6-digit OTP')),
                    );
                    return;
                  }

                  try {
                    User? user =
                        await AuthHelper.signInWithOTP(verificationId, otp);
                    if (user != null) {
                      Navigator.pushReplacementNamed(context, '/home');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Invalid OTP')),
                      );
                    }
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Error: ${e.toString()}')),
                    );
                  }
                },
                child: Text('Verify OTP'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
