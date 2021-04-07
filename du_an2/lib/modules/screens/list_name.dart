import 'package:du_an2/Constants/app_constants.dart.dart';
import 'package:flutter/material.dart';

class List_name extends StatefulWidget {
  @override
  state_List_name createState() => state_List_name();
}

class state_List_name extends State<List_name> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Name"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
            child: Padding(
                padding: EdgeInsets.all(20.0),
                //
                //  child: Expanded(
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(color: Colors.black),
                      cursorColor: Colors.white,
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.black)),
                        labelText: 'Nhập Tên:  ',
                      ),
                    ),
                    FlatButton(
                        onPressed: () {
                          if (nameController.text == "") {
                            print("Chưa nhập");
                          } else {
                            setState(() {
                              danhSach.add(nameController.text);
                            });
                          }
                        },
                        child: Text("Thêm")),
                    Container(
                      child: Expanded(
                          child: ListView.builder(
                              itemCount: danhSach.length,
                              itemBuilder: (BuildContext, int i) {
                                return FlatButton(
                                  onPressed: () {
                                    print(danhSach[i]);
                                    danhSach[i] = nameController.text;
                                  },
                                  child: Container(
                                      height: 60,
                                      // width: 50,
                                      margin: EdgeInsets.all(10),
                                      padding: EdgeInsets.all(10),
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          color: Colors.pinkAccent,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '${danhSach[i]}',
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              FlatButton(
                                                  onPressed: () {
                                                    //  danhSach[i] = nameController.text;
                                                    setState(() {
                                                      if (nameController.text ==
                                                          "") {
                                                        print("chua nhap");
                                                      } else {
                                                        danhSach[i] =
                                                            nameController.text;
                                                      }
                                                    });
                                                  },
                                                  child: Text("Sửa")),
                                              FlatButton(
                                                  onPressed: () {
                                                    //  print(danhSach[i]);
                                                    //  danhSach.remove(danhSach[i]);
                                                    setState(() {
                                                      danhSach
                                                          .remove(danhSach[i]);
                                                    });
                                                  },
                                                  child: Text(
                                                    "Xoá",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  )),
                                            ],
                                          )
                                        ],
                                      )),
                                );
                              })),
                    )
                  ],
                ))
            //),
            ),
      ),
    );
  }
}
