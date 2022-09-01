import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:onboarding_with_packages/controller/on_boarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                controller: controller.pageController,
                onPageChanged: controller.selectedIndex,
                itemCount: controller.allPagesData.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(controller.allPagesData[index].imageasset),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(controller.allPagesData[index].title,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(controller.allPagesData[index].subtitle,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 18)),
                    ],
                  );
                }),
            Positioned(
              bottom: 30,
              left: 140,
              child: Row(
                children: List.generate(
                  controller.allPagesData.length,
                  (index) => Obx(() {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                        color: controller.selectedIndex.value == index
                            ? Colors.red
                            : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 20,
              child: controller.isFirstPage
                  ? FloatingActionButton(
                      elevation: 0,
                      onPressed: controller.previous,
                      child: Obx(() {
                        return const Text('Prev');
                      }),
                    )
                  : const SizedBox(
                      height: 0,
                      width: 0,
                    ),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: FloatingActionButton(
                elevation: 0,
                onPressed: controller.next,
                child: Obx(() {
                  return Text(controller.isLastPage ? 'Start' : 'Next');
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
