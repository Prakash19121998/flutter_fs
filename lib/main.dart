import 'package:flutter/material.dart';
import 'package:fs_pos/exceptions.dart';
import 'package:fs_pos/services/bill_service.dart';
import 'package:fs_pos/services/customer_service.dart';
import 'package:fs_pos/services/login_service.dart';
import 'package:fs_pos/services/signup_service.dart';
import 'package:fs_pos/services/store_services.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: () async {
          print("onpress");
          await test();
        },
        color: Colors.blueAccent,
        child: Text("Enter"),
      ),
    );
  }
}

Future test() async {
  try {
    // print(await LoginService.login(
    //     username: "prakashguna1qqq0@gmail.com", password: "12345"));

    // print(await SignUpService.signup(
    //     email: "prakashguna1qqq0@gmail.com",
    //     password: "12345",
    //     firstName: "11111",
    //     lastName: "00000",
    //     image: "pppp"));

    // print(await LoginService.forgotPassword(email: "prakashguna10@gmail.com"));

    // print(await LoginService.changePassword(
    //     email: "prakashguna10@gmail.com", otp: "8630", newPassword: "12345"));

    // print(await BillService.billListByUser());

    // print(await BillService.billListByDate(
    //     fromDate: '2020-04-10', toDate: '2021-04-10'));

    // print(await BillService.billListByStore());

    // print(await StoreService.getStore());

    // print(await CustomerService.getCustomer());

    // print(await BillService.getSingleBill());

    // print(await CustomerService.editCustomer(
    //     firstName: "Prakash", lastName: "Gunasekaran", image: "mypic.jpg"));

    // print(await CustomerService.deleteCustomer());

    // print(await BillService.latestBillList(transid: '200'));
  } on NotAuthorizedException catch (e) {
    print(e);
    print("NotAuthorizedException");
  } on NotFoundException catch (e) {
    print(e);
    print("NotFoundException");
  } on DataConflictException {
    print("DataConflictException");
  } catch (e) {
    print(e);
    print("Exception");
  }
}
