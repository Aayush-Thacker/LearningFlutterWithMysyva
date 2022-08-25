import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_structure_and_packages/data/models/user_model.dart';
import 'package:project_structure_and_packages/helper/route_helper.dart';
import 'package:project_structure_and_packages/util/dimensions.dart';
import 'package:project_structure_and_packages/util/styles.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.EXTRA_MARGIN),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: Dimensions.EXTRA_LARGE_SIZEDBOX_HEIGHT,
                child: Image.asset("assets/logo.png", fit: BoxFit.contain),
              ),
              const Text(
                "Welcome",
                style: Styles.TITLE_FONTSTYLE,
              ),
              const SizedBox(
                height: Dimensions.SMALL_SIZEDBOX_HEIGHT,
              ),
              Text("${loggedInUser.fullName}", style: Styles.NORMAL_FONT_STYLE),
              Text("${loggedInUser.email}", style: Styles.NORMAL_FONT_STYLE),
              const SizedBox(
                height: Dimensions.SMALL_SIZEDBOX_HEIGHT,
              ),
              ActionChip(
                  label: const Text("Logout"),
                  onPressed: () {
                    logout(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }

  // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Get.offAndToNamed(RouteHelper.getLoginRoute());
  }
}
