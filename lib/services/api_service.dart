import 'package:get/get.dart';

class GetAnimalData extends GetConnect {
  final String url = "https://zoo-animal-api.herokuapp.com/animals/rand/10";
  Future<Response> getAnimals() => get(url);
}
