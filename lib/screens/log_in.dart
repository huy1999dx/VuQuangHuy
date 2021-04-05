import 'package:flutter/material.dart';
import 'package:du_an_1/screens/drawer.dart';

class log_in extends StatefulWidget {
  @override
  state_log_in createState() => state_log_in();
}

class state_log_in extends State<log_in> {
  @override
  Widget build(BuildContext context) {
    TextEditingController tkController = TextEditingController();
    TextEditingController mkController = TextEditingController();
    void thongbao() => ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Đăng Nhập Thành Công")));
    void thongbao1() => ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Đăng Nhập Thất Bại")));
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/images/nen12.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
          child: Container(
        height: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                controller: tkController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.white)),
                  labelText: 'Tài Khoản: ',
                )),
            TextField(
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                controller: mkController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.white)),
                  labelText: 'Mật Khẩu: ',
                )),
            FlatButton(
                color: Colors.white,
                onPressed: () {
                  if (tkController.text == "huyvq" &&
                      mkController.text == "12345") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NavDrawerExample()),
                    );
                    thongbao();
                  } else {
                    thongbao1();
                  }
                },
                child: Text("Đăng nhập")),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Đăng ký tài khoản",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      )),
    );
  }
}
