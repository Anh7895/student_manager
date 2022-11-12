import 'package:flutter/material.dart';

class HomeScreenHouse extends StatelessWidget {
  const HomeScreenHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        title: Text(" Trang chủ"),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage:
                            AssetImage("assets/images/honghanh.jpg"),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Hồng Hạnh",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "honghanh@gmail.com",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ExpansionTile(
                leading: Icon(Icons.note_alt),
                title: Text(
                  "Danh sách của tôi",
                  style: TextStyle(fontSize: 20),
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 0),
                    child: ListTile(
                      onTap: () {},
                      leading: Icon(Icons.edit_note_outlined),
                      title: Text("Ghi chú "),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 0),
                    child: ListTile(
                      onTap: () {},
                      leading: Icon(Icons.flag),
                      title: Text("Kiểm tra tiến độ "),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 0),
                    child: ListTile(
                      onTap: () {},
                      leading: Icon(Icons.notification_add),
                      title: Text("Thông báo "),
                    ),
                  ),
                ],
              ),
              Divider(),
              ExpansionTile(
                leading: Icon(Icons.message),
                title: Text(
                  "Diễn đàn",
                  style: TextStyle(fontSize: 20),
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 0),
                    child: ListTile(
                      onTap: () {},
                      leading: Icon(Icons.note_alt_rounded),
                      title: Text("Chia sẻ kinh nghiệm "),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 0),
                    child: ListTile(
                      onTap: () {},
                      leading: Icon(Icons.add_card_sharp),
                      title: Text("Những mẹo hữu ích "),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 0),
                    child: ListTile(
                      onTap: () {},
                      leading: Icon(Icons.question_answer),
                      title: Text("Câu hỏi thường gặp"),
                    ),
                  ),
                ],
              ),
              Divider(),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.settings),
                title: Text("Cài đặt"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.pending),
                title: Text("Đánh giá"),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.star),
                title: Text("Những mục đã đánh dấu"),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 200,
                      ),
                      Icon(Icons.check_box),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Đã hoàn thành"),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          child: Container(
                        width: double.infinity,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2),
                        ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      Icon(Icons.check_box),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Quyết định ngày chuyển nhà"),
                                    ],),
                                    IconButton(onPressed: () {
                                      
                                    }, icon: Icon(Icons.menu_open))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      Icon(Icons.check_box),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Nhận báo giá từ chỗ cho thuê nhà"),
                                    ],),
                                    IconButton(onPressed: () {

                                    }, icon: Icon(Icons.menu_open))
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      Icon(Icons.check_box),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Chuẩn bị một khoản phí chuyển nhà"),
                                    ],),
                                    IconButton(onPressed: () {

                                    }, icon: Icon(Icons.menu_open))
                                  ],
                                ),
                              ],
                            ),
                      ),
                      ),
                      Positioned(
                        top: -10,
                        right: 190,
                        child: Container(

                          width: 150,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                            "Quyết định chuyển nhà",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 200,
                      ),
                      Icon(Icons.check_box),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Đã hoàn thành"),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Icon(Icons.check_box),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Sắp xếp các đồ đạc của bạn "),
                                  ],),
                                  IconButton(onPressed: () {

                                  }, icon: Icon(Icons.menu_open))
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Icon(Icons.check_box),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Sắp xếp để đổ rác quá khổ"),
                                  ],),
                                  IconButton(onPressed: () {

                                  }, icon: Icon(Icons.menu_open))
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Icon(Icons.check_box),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Thu dọn bỏ đi những thứ không cần đến "),
                                  ],),
                                  IconButton(onPressed: () {

                                  }, icon: Icon(Icons.menu_open))
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Icon(Icons.check_box),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Săp xếp đóng gòi "),
                                  ],),
                                  IconButton(onPressed: () {

                                  }, icon: Icon(Icons.menu_open))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -10,
                        right: 170,
                        child: Container(
                          width: 170,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                                "Sắp xếp hành lý của bạn",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 200,
                      ),
                      Icon(Icons.check_box),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Đã hoàn thành"),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        child: Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 2),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Icon(Icons.check_box),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Gửi thông báo chuyển đi"),
                                  ],),
                                  IconButton(onPressed: () {

                                  }, icon: Icon(Icons.menu_open))
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Icon(Icons.check_box),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Nhận báo giá từ chỗ cho thuê nhà"),
                                  ],),
                                  IconButton(onPressed: () {

                                  }, icon: Icon(Icons.menu_open))
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(children: [
                                    Icon(Icons.check_box),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Chuẩn bị một khoản phí chuyển nhà"),
                                  ],),
                                  IconButton(onPressed: () {

                                  }, icon: Icon(Icons.menu_open))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -10,
                        right: 190,
                        child: Container(
                          width: 150,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Text(
                                "Thực hiện các thủ tục",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        child: Row(
          children: [
            Expanded(child: Container(
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
                ),
                onPressed: () {

                },
                child: Text("Danh sách của tôi"),
              ),
            )),
            Expanded(child: Container(
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
                ),
                onPressed: () {

                },
                child: Text("Diễn đàn"),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
