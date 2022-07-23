import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vectracom/controllers/home_controller.dart';
import 'package:vectracom/widgets/animal_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Home"),
          ),
          body: GetX<HomeController>(builder: (controller) {
            return controller.loading.value
                ? const Center(
                    child: CircularProgressIndicator(color: Colors.blue))
                : ListView.builder(
                    itemCount: controller.animalsList.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: constraints.maxHeight * 0.4,
                        child: Card(
                            child: AnimalWidget(
                                model: controller.animalsList[index])),
                      );
                    });
          }),
        ),
      );
    });
  }
}
