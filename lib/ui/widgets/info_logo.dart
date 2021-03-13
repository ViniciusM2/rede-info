import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset(
        'assets/svg/logoh.svg',
      ),
    );
  }
}
