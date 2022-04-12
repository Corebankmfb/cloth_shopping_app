import 'package:cloth_shopping_app/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText({ Key? key,
    required this.color,
    required this.text,
    this.size = 0,
    this.overFlow=TextOverflow.ellipsis 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        fontFamily: "Roboto",
        fontSize: size == 0 ? Dimensions.font20 : size,
      ),
    );
  }
}