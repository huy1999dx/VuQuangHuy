import 'package:flutter/material.dart';

Widget build(BuildContext context) {
  void thongbao() => ScaffoldMessenger.of(context)
      .showSnackBar(const SnackBar(content: Text("Đăng Nhập Thành Công")));
  void thongbao1() => ScaffoldMessenger.of(context)
      .showSnackBar(const SnackBar(content: Text("Đăng Nhập Thất Bại")));
}
