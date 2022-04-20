import 'package:cloth_shopping_app/routes/route_helper.dart';
import 'package:cloth_shopping_app/utils/dimensions.dart';
import 'package:cloth_shopping_app/widgets/qpp_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Checkout extends StatelessWidget {
  const Checkout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(Routes.getCloths());
            },
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 50, right: 30),
              // height: 100,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                    icon: Icons.arrow_back_ios,
                    //backgroundColor: Colors., 
                    iconColor: Colors.black,
                    iconSize: 24,
                  ),
                  Text(
                    "Checkout",
                    style: TextStyle(
                      fontSize: Dimensions.font20,
                      fontFamily: "Roboto",
                      color: Colors.black
                    ),
                  ),
                ],
              )
            )
          ),
          SizedBox(height: 8,),
          Container(
            padding: EdgeInsets.only(right: 15),
            child: Divider(color: Colors.black38),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Adetola G. Iwaloye",
                        style: TextStyle(
                          fontSize: Dimensions.font20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Roboto",
                          color: Colors.black
                        ),
                      ),
                      Text(
                        "2b, Mobolaji Bank Anthony Way,",
                        style: TextStyle(
                          fontSize: Dimensions.font20-6,
                          fontFamily: "Roboto",
                          color: Colors.black38
                        ),
                      ),
                      Text(
                        "Lagos",
                        style: TextStyle(
                          fontSize: Dimensions.font20-6,
                          fontFamily: "Roboto",
                          color: Colors.black38
                        ),
                      ),
                      Text(
                        "Nigeria",
                        style: TextStyle(
                          fontSize: Dimensions.font20-6,
                          fontFamily: "Roboto",
                          color: Colors.black38
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: AppIcon(
                    icon: Icons.arrow_forward_ios,
                    //backgroundColor: Colors., 
                    iconColor: Colors.black26,
                    iconSize: 24,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 8,),
          Container(
            padding: EdgeInsets.only(right: 15),
            child: Divider(color: Colors.black38),
          ),
          Container(
            padding: EdgeInsets.only(right: 15, left: 15, top: 12, bottom: 15),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/image 2.png")
                    )
                  )
                ),
                SizedBox(width: 30,),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Sweat Shirt",
                          style: TextStyle(
                            fontSize: Dimensions.font20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto",
                            color: Colors.black
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "Ref no 04559812",
                          style: TextStyle(
                            fontSize: Dimensions.font20-6,
                            fontFamily: "Roboto",
                            color: Colors.black38
                          ),
                        ),
                        SizedBox(height: 25,),
                        Text(
                          "S",
                          style: TextStyle(
                            fontSize: Dimensions.font20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Roboto",
                            color: Colors.black
                          ),
                        ),
                        SizedBox(height: 25,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$40",
                              style: TextStyle(
                                fontSize: Dimensions.font20,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Roboto",
                                color: Colors.black
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black26
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.transparent,
                                  ),
                                  child: AppIcon(
                                    icon: Icons.remove, 
                                    iconColor: Colors.black
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  "2",
                                  style: TextStyle(
                                    fontSize: Dimensions.font20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Roboto",
                                    color: Colors.black
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black26
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.transparent,
                                  ),
                                  child: AppIcon(
                                    icon: Icons.add, 
                                    iconColor: Colors.black
                                  ),
                                ),
                                SizedBox(width: 10,), 
                              ],
                            ) 
                          ],
                        )
                      ],
                    ),
                  )
                )
              ],
            )
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Divider(color: Colors.black38),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
            child: Row(
              children: [ 
                AppIcon(
                  icon: Icons.add,
                  
                  iconColor: Colors.black,
                  iconSize: 24,
                ),
                Text(
                  "Add promo code?",
                  style: TextStyle(
                    fontSize: Dimensions.font20-5,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                    color: Colors.black
                  )
                ) 
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Divider(color: Colors.black38),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 15),
            child: Row(
              children: [
                Text(
                  "Total \$126",
                  style: TextStyle(
                    fontSize: Dimensions.font20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                    color: Colors.black
                  )
                ),
              ]
            )
          ),
          SizedBox(height: 80,),
          Container(
            width: Dimensions.screenWidth/1.2,
            height: Dimensions.screenHeight/11.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
            child: Center(
              child: Text(
                "PLACE ORDER",
                style: TextStyle(
                fontSize: Dimensions.font20+5,
                color: Colors.white,
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}