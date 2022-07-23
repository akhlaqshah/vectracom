import 'package:get/get.dart';
import 'dart:developer' as dev;
import 'package:vectracom/models/animal_model.dart';
import 'package:vectracom/services/api_service.dart';

class HomeController extends GetxController {
  var loading = true.obs;
  var darkTheme = false.obs;
  var currentIndex = 0.obs;
  var animalsList = <Animal>[].obs;
  GetAnimalData getdata = GetAnimalData();

  var signup = false.obs;
  void getDataFromApi() async {
    dev.log("getDataFromApi called");
    var value = await getdata.getAnimals();

    loading.value = false;
    if (value.statusCode == 200) {
      animalsList.value = animalFromJson("${value.bodyString}");
    }

    dev.log("data from API ${animalsList.length}");

    // animalsList.value = animalFromJson();
  }
}
