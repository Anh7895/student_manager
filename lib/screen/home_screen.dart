import 'package:flutter/material.dart';
import 'package:student_manager/screen/student_list_screen_ulis.dart';

import 'information_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Hệ thống thông tin trường đại học",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          centerTitle: true),
      drawer: Drawer(
        child: Column(children: [
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage("assets/images/honghanh.jpg"),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Hồng Hạnh",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Ulis",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InformationScreen()));
            },
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text("Thông tin cá nhân"),
          ),

          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.inbox,
              color: Colors.black,
            ),
            title: Text("Đăng ký học "),
          ),

          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => StudentListScreen()));
            },
            leading: Icon(
              Icons.assessment,
              color: Colors.black,
            ),
            title: Text("Tra cứu điểm"),
          ),

          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: Text("Cài đặt"),
          ),
        ]),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Đăng ký thi",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Chương trình học",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Tra cứu điểm rèn luyện và xử lý học vụ",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Tra cứu thông tin học phí",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Đăng ký nguyện vọng chuyên ngành ",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Đăng ký địa chỉ email",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Đổi mật khẩu ",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Sinh viên xem và tự đổi 1 số thông tin cá nhân",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  Expanded(flex: 15, child: SizedBox()),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.blue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Đại học chính quy",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "xem thêm",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
