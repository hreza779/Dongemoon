import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Image(
               image: AssetImage("assets/images/logo.png"),
               width: 100,
               height: 100,
             ),
              const SizedBox(height: 10,),
              const Center(
                child: Text('پلتفرم محاسبه هزینه',
                    style: TextStyle(
                        fontFamily: 'yekan' ,
                        color: Color(0xFF0B1C58),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),),
              ),
              const Center(
                child: Text('دنــگـمون',
                  style: TextStyle(
                      fontFamily: 'yekan' ,
                      color: Color(0xFF0B1C58),
                      fontSize: 18,
                      fontWeight: FontWeight.w900),),
              ),
              const SizedBox(height: 15,),
              const Center(
                child: Text('شماره خود را وارد کنید',
                  style: TextStyle(fontFamily: 'yekan',color: Color(0XFF989DAF)),),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10 , sigmaY: 10),
                  child: TextField(
                    style: TextStyle(fontFamily: 'yekan'),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15)),borderSide: BorderSide(color: Color(0XFFC6D2FF))),
                      fillColor: Colors.grey.shade200.withOpacity(0.5),
                      filled: true,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: FilledButton.icon(
                    onPressed: (){},
                    icon: const  Icon(Icons.login, size: 30),
                    label: const Text('ورود / ثبت نام', style: TextStyle(fontFamily: 'yekan')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
