import 'dart:async';
import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class ProsesApplyController extends GetxController {
  var activeStep = 0.obs;
  var pickedFile = Rx<File?>(null);
  var pickedFileProject = Rx<File?>(null);
  late VideoPlayerController videoPlayerController;
  var isVideoInitialized = false.obs;

  @override
  void onInit() {
    super.onInit();
    initializeVideoPlayer();
  }

  void setActiveStep(int step) {
    activeStep.value = step;
  }

  void setPickedFile(File? file) {
    pickedFile.value = file;
  }

  void setPickedFileProject(File? file) {
    pickedFileProject.value = file;
  }

  // Future<void> initializeVideoPlayer() async {
  //   videoPlayerController =
  //       VideoPlayerController.asset('assets/video/mentor.mp4');
  //   try {
  //     await videoPlayerController.initialize();
  //     isVideoInitialized.value = true;
  //     update(); // Ensure the widget updates after initialization
  //   } catch (e) {
  //     print('Error initializing video player: $e');
  //     isVideoInitialized.value = false;
  //     update(); // Update the widget even if initialization fails
  //   }
  // }

  @override
  void onClose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.onClose();
  }

  ChewieController? chewieController;

  Future<void> initializeVideoPlayer() async {
    videoPlayerController =
        VideoPlayerController.asset('assets/video/mentor.mp4');
    await videoPlayerController.initialize();
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      allowFullScreen: true,
      showControls: true,
      allowMuting: true,
      showOptions: true,
      draggableProgressBar: true,
      aspectRatio: videoPlayerController.value.aspectRatio,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
    update();
  }
}
