import 'package:flutter/material.dart';
import 'package:portfolio/styles/styles.dart';
import 'package:portfolio/widgets/logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onMenuTap, this.onLogoTap});
  final VoidCallback? onMenuTap;
  final VoidCallback? onLogoTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: HeaderDecoration,
      child: Row(
        children: <Widget>[
          Logo(onTap: onLogoTap),
          Spacer(),
          IconButton(onPressed: onMenuTap, icon: Icon(Icons.menu)),
          SizedBox(width: 15),
        ],
      ),
    );
  }
}
