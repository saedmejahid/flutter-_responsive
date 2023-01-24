import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveIndicator extends StatelessWidget
{
  String os;
  AdaptiveIndicator({
    super.key,
    required this.os,
  });
  @override
  Widget build(BuildContext context)
  {
    if(os == 'android')return const Center(child: CircularProgressIndicator());
    return  const Center(child: CupertinoActivityIndicator());
  }
}
