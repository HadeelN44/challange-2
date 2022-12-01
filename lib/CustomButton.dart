import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class customButton extends StatelessWidget {
  const customButton({super.key, this.title, this.onPressed});
  final String? title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.03,
          child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17.0),
                  ),
                  elevation: 0,
                  primary: Color(0xff006BB6),
                  shadowColor: Colors.transparent),
              child: Text(
                title.toString(),
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffffffff)),
              )),
        ),
      ],
    );
  }
}
