import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {

  final purpleColor = const Color(0xFF6688FF);
  final darkTextColor = const Color(0xFF1F1A3D);
  final lightTextColor = const Color(0xFF999999);
  final textFieldColor = const Color(0xFFF5F6FA);
  final borderColor = const Color(0xFFD9D9D9);

  const MyHomePage({super.key});

  Widget textfield({required String hint}){
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        fillColor: textFieldColor,
        filled: true,
        hintText: hint,
        hintStyle: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 52.h,),
              Text("Sign Up to Masterminds",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700, color: darkTextColor),
              ),
              SizedBox(height: 4.h,),
              Wrap(
                children: [
                  Text("Already have an account? ",
                    style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: lightTextColor),
                  ),
                  Text("login",
                    style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: purpleColor),
                  ),
                ],
              ),
              SizedBox(height: 24.h,),
              textfield(hint: 'First Name'),
              SizedBox(height: 16.h,),
              textfield(hint: 'Email'),
              SizedBox(height: 16.h,),
              textfield(hint: 'Password'),
              SizedBox(height: 16.h,),
              textfield(hint: 'Confirm Password'),
              SizedBox(height: 16.h,),
              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: () {}, style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(purpleColor),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                  padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 14.h)),
                  textStyle: WidgetStateProperty.all(TextStyle(fontWeight: FontWeight.w700, fontSize: 14.sp)),

                ), child: const Text('Create Account',),),
              ),
              SizedBox(height: 16.h,),
              Row(
                children: [
                  Expanded(child: Divider()),
                  SizedBox(width: 16.w,),
                  Text('Sign up via', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: lightTextColor),),
                  SizedBox(width: 16.w,),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 16.h,),
              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: () {}, style: ButtonStyle(
                  side: WidgetStateProperty.all(BorderSide(color: borderColor)),
                  foregroundColor: WidgetStateProperty.all(darkTextColor),
                  padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 14.h)),
                  textStyle: WidgetStateProperty.all(TextStyle(fontWeight: FontWeight.w700, fontSize: 14.sp)),

                ), child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        height: 12,
                        width: 12,
                        child: Image.asset('assets/images/google.png')),
                    SizedBox(width: 10.w,),
                    const Text("Google"),
                  ],
                ),),
              ),
              SizedBox(height: 16.h,),
              Wrap(
                children: [
                  Text("By Signing into Masterminds you agree to our ",
                    style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: lightTextColor),
                  ),
                  Text("terms and conditions",
                    style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: purpleColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}