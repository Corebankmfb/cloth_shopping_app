import 'package:cloth_shopping_app/controllers/cloth_controller.dart';
import 'package:cloth_shopping_app/routes/route_helper.dart';
import 'package:cloth_shopping_app/utils/dimensions.dart';
import 'package:cloth_shopping_app/widgets/qpp_icon.dart';
import '../../models/cloth_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClothPage extends StatelessWidget {
  //final String page;
  const ClothPage({ Key? key,/* required this.page*/ }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
        
        Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.getInitial());
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
                      "Cart",
                      style: TextStyle(
                        fontSize: Dimensions.font20,
                        fontFamily: "Roboto",
                        color: Colors.black
                      ),
                    ),
                  ],
                )
              ),
            ),
            SizedBox(height: 8,),
            Container(
              padding: EdgeInsets.only(right: 15),
              child: Divider(color: Colors.black38),
            ),
            GetBuilder<ClothController>(builder: (cloth){
              print(cloth.clothList.length);
              return cloth.isLoaded? ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: cloth.clothList.length,
                itemBuilder: (context, index){
                  return Container(
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
                              image: AssetImage("assets/image/image 3.png")
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
                                  cloth.clothList[index].name!,
                                  style: TextStyle(
                                    fontSize: Dimensions.font20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Roboto",
                                    color: Colors.black
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  cloth.clothList[index].refNo!,
                                  style: TextStyle(
                                    fontSize: Dimensions.font20-6,
                                    fontFamily: "Roboto",
                                    color: Colors.black38
                                  ),
                                ),
                                SizedBox(height: 25,),
                                Text(
                                  cloth.clothList[index].size!,
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
                                      cloth.clothList[index].price!.toString(),
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
                  );
                }
              ):
              CircularProgressIndicator(
                color: Colors.black,
              );
            }),
            
            Container(
              padding: EdgeInsets.only(right: 15),
              child: Divider(color: Colors.black38),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
                  child: RichText(
                    text: TextSpan(
                      text: "Do you have a promotional code?",
                      style: TextStyle(
                        fontSize: Dimensions.font20-5,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto",
                        color: Colors.black
                      )
                    )
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(right: 15, top: 5),
              child: Divider(color: Colors.black38),
            ),
            Container(
              padding: EdgeInsets.only(right: 15, left: 15, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery",
                    style: TextStyle(
                      fontSize: Dimensions.font20-5,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto",
                      color: Colors.black
                    ),
                  ),
                  Text(
                    "Standard-Free",
                    style: TextStyle(
                      fontSize: Dimensions.font20-5,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto",
                      color: Colors.black
                    ),
                  ),
                ],
              )
            ),
            SizedBox(height: 80,),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.goToOrder());
              },
              child: Container(
                width: Dimensions.screenWidth/1.2,
                height: Dimensions.screenHeight/11.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: Center(
                  child: Text(
                  "BUY FOR \$126",
                  style: TextStyle(
                    fontSize: Dimensions.font20+5,
                    color: Colors.white,
                  ),
                  ),
                )
              )
            ), 
            SizedBox(height: 40,)
          ]
        )
      );
    
  }
}