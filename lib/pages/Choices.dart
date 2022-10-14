import 'package:flutter/material.dart';import 'package:get/get.dart';import 'package:get/get_core/src/get_main.dart';import 'package:get/get_rx/src/rx_types/rx_types.dart';import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';import 'package:google_fonts/google_fonts.dart';import 'package:loading_animations/loading_animations.dart';import 'package:nakhla_project/pages/Order_page.dart';import 'package:nakhla_project/pages/post_page.dart';class Choices extends StatefulWidget {  const Choices({Key? key}) : super(key: key);  @override  State<Choices> createState() => _ChoicesState();}RxBool flag = false.obs;class _ChoicesState extends State<Choices> {  @override  Widget build(BuildContext context) {    return Scaffold(      backgroundColor: Colors.white,      body: SafeArea(        child: Padding(          padding: EdgeInsets.symmetric(horizontal: 25),          child: SingleChildScrollView(              child: Column(            children: [              Image.asset(                "photo/nakhla.jpg",                width: 300,                height: 300,              ),              Container(                  margin: EdgeInsets.only(top: 100, left: 20, right: 20),                  width: 350,                  height: 60,                  child: RawMaterialButton(                    onPressed: () {                      flag.value = true;                      Future.delayed(Duration(seconds: 1), () {                        flag.value = false;                        Get.to(Post_page(),                            transition: Transition.noTransition);                      });                    },                    fillColor: const Color.fromRGBO(144, 195, 70, 0.9),                    shape: RoundedRectangleBorder(                        borderRadius: BorderRadius.circular(18)),                    child: Padding(                      padding: const EdgeInsets.only(top: 5),                      child: Text(                        "كتابة منشور",                        style: GoogleFonts.tajawal(                            fontSize: 25,                            fontWeight: FontWeight.w700,                            color: Colors.white),                      ),                    ),                  )),              SizedBox(                height: 20,              ),              Container(                  margin: EdgeInsets.only(top: 50, left: 20, right: 20),                  width: 350,                  height: 60,                  child: RawMaterialButton(                    onPressed: () {                      flag.value = true;                      Future.delayed(Duration(seconds:1), () {                        flag.value = false;                        Get.to(Ordert_page(),                            transition: Transition.noTransition);                      });                    },                    fillColor: Color.fromRGBO(144, 195, 70, 0.9),                    shape: RoundedRectangleBorder(                        borderRadius: BorderRadius.circular(18)),                    child: Padding(                      padding: const EdgeInsets.only(top: 5),                      child: Text(                        "كتابة طلب",                        style: GoogleFonts.tajawal(                            fontSize: 25,                            fontWeight: FontWeight.w700,                            color: Colors.white),                      ),                    ),                  )),              Padding(                padding: const EdgeInsets.only(top: 50),                child: Obx(() {                  return flag.value == true                      ? LoadingFadingLine.circle(                          size: 80,                          backgroundColor: Color.fromRGBO(103, 74, 47, 0.9))                      : Container();                }                ),              ),            ],          )          ),        ),      ),    );  }}