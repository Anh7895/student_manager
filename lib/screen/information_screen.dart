import 'package:flutter/material.dart';

class InformationScreen extends StatelessWidget {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thông tin sinh viên"),centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Image.asset("assets/images/hong_hanh_1.jpg", fit:BoxFit.cover),
          ),
          SizedBox(height: 20,),
          Text("Tạ thị Hồng Hạnh"),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
