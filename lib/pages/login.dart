import 'package:fallgram/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginPages extends StatelessWidget {
  final LoginController loginC = Get.put(LoginController());
  final boxStorage = GetStorage();

  LoginPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (boxStorage.read('simpanDataLogin') != null) {
      loginC.isSimpanDataLogin.value = true;
      loginC.emailC.text = boxStorage.read('simpanDataLogin')['email'];
      loginC.passC.text = boxStorage.read('simpanDataLogin')['password'];
    }
    return Scaffold(
        drawerScrimColor: Colors.blue,
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/fallgram.png',
                width: MediaQuery.of(context).size.width / 2),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    controller: loginC.emailC,
                    textInputAction: TextInputAction.next,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      label: Text('Email'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => TextField(
                      controller: loginC.passC,
                      textInputAction: TextInputAction.next,
                      autocorrect: false,
                      obscureText: loginC.isHiddenTextPassword.value,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () => loginC.isHiddenTextPassword.toggle(),
                          icon: const Icon(
                            Icons.remove_red_eye,
                          ),
                          color: Colors.black,
                        ),
                        label: const Text('Password'),
                        border: const OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Obx(
                    () => CheckboxListTile(
                      contentPadding: const EdgeInsets.all(0),
                      value: loginC.isSimpanDataLogin.value,
                      title: const Text('Simpan data login'),
                      onChanged: (value) {
                        loginC.isSimpanDataLogin.toggle();
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: 1000.00,
                      child: ElevatedButton(
                          onPressed: () {
                            loginC.validateLogin();
                          },
                          child: const Text('Submit'))),
                ],
              ),
            ),
          ],
        ));
  }
}
