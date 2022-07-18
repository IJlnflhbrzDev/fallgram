import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  var isHiddenTextPassword = true.obs;
  var isSimpanDataLogin = false.obs;
  final boxStorage = GetStorage();

  // logic validate login user
  void validateLogin() {
    cekLocalStorage();
    if (emailC.text == 'admin@gmail.com' && passC.text == 'admin') {
      cekSimpanDataLogin();
      Get.offAllNamed('/home');
    } else {
      Get.defaultDialog(
          title: 'Upss.. Terjadi Kesalahan Saat Login',
          middleText: 'Email dan Password tidak Sesuai!');
    }
  }

  // cek localstorage ada data ini atau ngga
  void cekLocalStorage() {
    if (boxStorage.read('simpanDataLogin') != null) {
      boxStorage.remove('simpanDataLogin');
    }
  }

  // validate chekbox di ceklis apa ngga
  void cekSimpanDataLogin() {
    // ignore: unrelated_type_equality_checks
    if (isSimpanDataLogin == true) {
      boxStorage.write('simpanDataLogin', {
        'email': emailC.text,
        'password': passC.text,
      });
    }
  }
}
