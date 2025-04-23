import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/style.dart';

AppBar buildAppBar({ final String? title}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    title: Text(title??'', style: Styles.style25),
    centerTitle: true,
    leading: Center(child: SvgPicture.asset('assets/icons/arrow.svg')),
  );
}
