import 'package:flutter/material.dart';
import 'package:flutter_responsive/desktop.dart';
import 'package:flutter_responsive/mobile.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner:
        false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Builder(
          builder: (context)
          {
            MediaQuery.of(context).size.width;
            if(MediaQuery.of(context).size.width.toInt() <= 560)
            {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaleFactor: 0.6,

                ),
                  child: const MobileScreen());
            }

            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1.25
              ),
                child: const DesktopScreen());
          }
      )
    );
  }
}

//login is okay
