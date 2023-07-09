import 'package:destini/constants/style.dart';
import 'package:destini/controller/story_brain.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  var buttonNo;

  CustomButton({super.key, required this.buttonNo});

  StoryBrain storyBrain = Get.find<StoryBrain>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: buttonNo == '1' ? Colors.green : Colors.redAccent,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
        ),
        onPressed: () {
          buttonNo == '1' ? storyBrain.nextStory(1) : storyBrain.nextStory(2);
          storyBrain.buttonShouldBeVisible();
        },
        child: Obx(() => Text(
            buttonNo == '1' ? storyBrain.getChoice1() : storyBrain.getChoice2(),
            textAlign: TextAlign.center,
            style: buttonTextStyle(Colors.white))),
      ),
    );
  }
}
