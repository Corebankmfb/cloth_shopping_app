import 'package:cloth_shopping_app/routes/route_helper.dart';
import 'package:cloth_shopping_app/utils/dimensions.dart';
import 'package:cloth_shopping_app/widgets/big_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("current height is " + MediaQuery.of(context).size.height.toString());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/image/image 1.png"
                  )
                )
              ),
            ),
          ), 
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.height45*8,
            child: Container(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Make your purchase here",
                    style: TextStyle(
                      fontSize: Dimensions.font20+20,
                      fontWeight: FontWeight.w900,
                      fontFamily: "Roboto",
                      color: Colors.white
                    ),
                  ),

                  SizedBox(height: 15,),

                  Container(
                    child: Divider(color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 15,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.getCloths("home"));
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                          child: Text(
                            "WOMEN",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.getCloths("home"));
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
                          child: Text(
                            "MEN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            //color: Colors.white
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}