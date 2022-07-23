import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vectracom/controllers/home_controller.dart';
import 'package:vectracom/screens/home_page.dart';
import 'package:vectracom/screens/login_page.dart';
import 'package:vectracom/screens/settings_page.dart';
import 'package:vectracom/screens/signup_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pageController = PageController();
  final homeController = Get.put(HomeController());

  @override
  void initState() {
    homeController.getDataFromApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetX<HomeController>(builder: (controller) {
          return PageView(
            controller: pageController,
            onPageChanged: (value) => homeController.currentIndex.value = value,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const HomePage(),
              const SettingPage(),
              controller.signup.value ? const SignupPage() : const LoginPage(),
            ],
          );
        }),
        bottomNavigationBar: GetX<HomeController>(builder: (controller) {
          return BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: (value) {
              controller.currentIndex.value = value;
              pageController.animateToPage(value,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Login",
              ),
            ],
          );
        }),
      ),
    );
  }
}
