import 'package:destini/constants/consts.dart';
import 'package:destini/controller/story_brain.dart';
import 'package:destini/widgets/TextWidget.dart';
import 'package:destini/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryPage extends StatelessWidget {
  StoryBrain storyBrain = Get.find<StoryBrain>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Obx(
                () => Expanded(
                  flex: 12,
                  child: Center(
                    child: TextWidget(storyBrain
                        .storyData[storyBrain.storyNumber.value].storyTitle),
                  ),
                ),
              ),
              CustomButton(buttonNo: '1'),
              kH20sizedBox,
              Obx(
                () => storyBrain.isButtonVisible.value
                    ? CustomButton(buttonNo: '2')
                    : kH20sizedBox,
              )
            ],
          ),
        ),
      ),
    );
  }
}
