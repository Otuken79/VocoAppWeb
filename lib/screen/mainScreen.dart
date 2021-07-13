import 'dart:ui';
import 'package:card_swiper/card_swiper.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vocoappweb/screen/anaSayfa.dart';
import 'package:vocoappweb/screen/iletisim.dart';
import 'package:vocoappweb/screen/indir.dart';
import 'package:vocoappweb/widgets/colorBase.dart';
import 'package:vocoappweb/widgets/constant.dart';
import 'package:vocoappweb/widgets/fontBase.dart';

class MainScreen extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundImage(),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                
                Container(
                 width: Get.size.width * 0.3,
                 height: Get.size.height * 0.9,
                  margin: EdgeInsets.only(right: Get.size.width * .12),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(Assets.iphone12)
                    )
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: fullScreenAppBar()
          ),
        ],
      ),
    );
  }
}

fullScreenAppBar() {
  return Container(
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: Get.size.width*.12),
                    width: 15.w,
                    height: 15.h,
                    child: Image.asset(Assets.vocoLogoYazi)),
                  Container(
                    child: Row(
                      children: [
                      
                        Text(
                          "Ana Sayfa",
                          style: normalFont20(anaTemaRengiBeyaz()),
                        ),
                       SizedBox(width: Get.size.width*.03,),
                        Text(
                          "İndir",
                          style: normalFont20(anaTemaRengiBeyaz()),
                        ),
                            SizedBox(width: Get.size.width*.03,),
                        Text(
                          "İletişim",
                          style: normalFont20(anaTemaRengiBeyaz()),
                        ),  SizedBox(width: Get.size.width*.12,),
                      ],
                    ),
                  )
                ],
              ),
            );
        
}

backgroundImage(){
  final List imageList = [
    Assets.bisiklet,
    Assets.dans,
    Assets.parti,
    Assets.trekking,
    Assets.backgroundImage,
    Assets.yuruyus,
    Assets.parti
  ];
  List <Widget> sayfalar = [
    AnaSayfa(),Indir(),Iletisim()
  ];
  return Swiper(
    loop: false,
    
    autoplay: true,
   // autoplayDisableOnInteraction: false,
    autoplayDelay: 10000,

    scrollDirection: Axis.vertical,
    duration: 1000,
    itemCount: sayfalar.length,
    itemBuilder: (context,index){
       return sayfalar[index];
    },
  );


}

// Container(
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: AssetImage(imageList[index]))),
//               child: new BackdropFilter(
//                     filter: new ImageFilter.blur(sigmaX: 10, sigmaY: 10.0),
//                     child: new Container(
//                       decoration: new BoxDecoration(
//                           color: anaTemaRengiBeyaz().withOpacity(0.0)),
//                     ),),
//           );