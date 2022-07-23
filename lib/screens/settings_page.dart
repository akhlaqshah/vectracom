import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vectracom/constants/constants.dart';
import 'package:vectracom/controllers/home_controller.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: GetX<HomeController>(builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Dark Theme ",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Switch(
                      value: controller.darkTheme.value,
                      onChanged: (value) {
                        controller.darkTheme.value = value;
                        if (value) {
                          Get.changeTheme(Constants.darkTheme);
                        } else {
                          Get.changeTheme(Constants.lightTheme);
                        }
                      }),
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
