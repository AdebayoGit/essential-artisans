import 'package:get/get.dart';

import '../controller/auth.dart';


class InitialBinding extends Bindings {

  @override
  Future<void> dependencies() async {

    await Get.putAsync(() async => AuthController());

  }
}