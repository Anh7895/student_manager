import 'package:flutter/material.dart';
import 'package:student_manager/screen/home_screen_house.dart';
import 'package:student_manager/screen/student_list_screen_ulis.dart';

import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Đăng Nhập"), centerTitle: true
        ,),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: Image.asset("assets/images/logo_ulis.png"),
              ),
              SizedBox(height: 20,),
              TextField(
                style: TextStyle(fontSize: 15, color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Tên người dùng",
                  prefixIcon: Container(
                    width: 50,
                    child: Icon(Icons.account_circle_outlined),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                style: TextStyle(fontSize: 15, color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Mật khẩu",
                  prefixIcon: Container(
                    width: 50,
                    child: Icon(Icons.lock_outline),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: 200,
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context, MaterialPageRoute(builder: (context) => HomeScreenHouse()),
                          (Route<dynamic> route) => false,
                    );
                  },
                  child: Text(
                    'Đăng nhập',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
