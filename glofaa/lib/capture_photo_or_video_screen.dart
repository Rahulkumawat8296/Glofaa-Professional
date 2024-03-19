import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:glofaa/add_proof_screen.dart';
import 'package:glofaa/new_job_status_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

import 'delivery_summary_screen.dart';

class CapturePhotoOrVideoScreen extends StatefulWidget {
  final bool captureImage2ndTime, clickingPicAfterCleaningAC;
  File? capturedVideoFile;

  CapturePhotoOrVideoScreen({
    super.key,
    this.captureImage2ndTime = false,
    this.capturedVideoFile,
    this.clickingPicAfterCleaningAC = false,
  });

  @override
  State<CapturePhotoOrVideoScreen> createState() =>
      _CapturePhotoOrVideoScreenState();
}

class _CapturePhotoOrVideoScreenState extends State<CapturePhotoOrVideoScreen> {
  File? _reCapturedVideoFile;
  File? _capturedImage;
  late bool isLoading;
  late Timer _timer;
  late int startingSec;

  late VideoPlayerController _controller;
  bool isCompleted = false;

  @override
  void initState() {
    super.initState();
    if (widget.capturedVideoFile != null) {
      // initialize the video
      _controller = VideoPlayerController.file(widget.capturedVideoFile!)
        ..initialize().then((_) {
          setState(() {});
        });
      _controller.addListener(() {
        setState(() {
          if (_controller.value.duration == _controller.value.position) {
            isCompleted = true;
          } else {
            isCompleted = false;
          }
        });
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (widget.clickingPicAfterCleaningAC)
          ? AppBar(
        title: const Text(
          'Capture Photo',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              fontSize: 18),
        ),
      )
          : null,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          (_capturedImage != null)
              ? Expanded(
            child: Container(
                margin: EdgeInsets.only(
                    top: (widget.clickingPicAfterCleaningAC) ? 10 : 50),
                child: (_capturedImage != null)
                    ? ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.file(
                    _capturedImage!,
                  ),
                )
                    : const SizedBox()),
          )
              : const SizedBox(),
          (widget.capturedVideoFile) != null
              ? Expanded(
            child: Container(
                child: _controller.value.isInitialized
                    ? Stack(children: [
                  Container(
                    alignment: Alignment.center,
                    margin:
                    const EdgeInsets.symmetric(horizontal: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                    ),
                  ),
                  Center(
                    child: InkWell(
                      onTap: () => setState(() {
                        _controller.value.isPlaying
                            ? _controller.pause()
                            : _controller.play();
                      }),
                      child: CircleAvatar(
                        radius: 33,
                        backgroundColor: Colors.black38,
                        child: Icon(
                          _controller.value.isPlaying
                              ? (isCompleted)
                              ? Icons.play_arrow
                              : Icons.pause
                              : Icons.play_arrow,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                  )
                ])
                    : Container()),
          )
              : const SizedBox(),
          (widget.capturedVideoFile == null && _capturedImage == null)
              ? (widget.clickingPicAfterCleaningAC == true)
              ? SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Take photo of AC and work area after cleaning',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'To increase customer confidence, we will share this photo with customer',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'How to click photo?',
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                        fontSize: 13),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Image.asset(
                      'assets/images/clear_ac_img.png',
                    ),
                    title: const Text(
                      'Clean AC and material borrowed from Customer',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Image.asset(
                      'assets/images/clean_work_area_img.png',
                    ),
                    title: const Text(
                      'Clean work area',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Image.asset(
                      'assets/images/clear_ac_img.png',
                    ),
                    title: const Text(
                      'Upload photo of clean AC and area around it',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          fontSize: 13),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 50, right: 50.0, top: 50),
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        _pickImageFromCamera();
                        // Navigator.pop(context);
                        // _displayInstructionBottomSheet3();
                        /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ServicesStatusScreen()));
               */
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      label: const Text(
                        "Click Photo",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            fontSize: 14),
                      ),
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ))
              : Container(
            width: double.infinity,
            margin: const EdgeInsets.all(30.0),
            child: ElevatedButton.icon(
              onPressed: () {
                _pickImageFromCamera();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue),
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: 18,
              ),
              label: const Text(
                "Click Photo",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: 14),
              ),
            ),
          )
              : Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 140,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      (_capturedImage != null)
                          ? _pickImageFromCamera()
                          : _captureVideoFromCamera();
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.blue,
                      side: const BorderSide(color: Colors.blue),
                    ),
                    icon: const Icon(
                      Icons.camera_alt_outlined,
                      size: 16,
                    ),
                    label: const Text(
                      "Retake",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  width: 140,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      isLoading = true;
                      startingSec = 2;
                      _displayProgressBottomSheet();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue),
                    icon: const Icon(
                      Icons.task_alt_outlined,
                      color: Colors.white,
                      size: 18,
                    ),
                    label: const Text(
                      "Approve",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future _pickImageFromCamera() async {
    final returnedImage =
    await ImagePicker().pickImage(source: ImageSource.camera);

    if (returnedImage == null) return;
    setState(() {
      _capturedImage = File(returnedImage.path);
    });
  }

  Future _captureVideoFromCamera() async {
    final capturedVideo =
    await ImagePicker().pickVideo(source: ImageSource.camera);

    if (capturedVideo == null) return;
    setState(() {
      _reCapturedVideoFile = File(capturedVideo.path);
      widget.capturedVideoFile = _reCapturedVideoFile;
      _controller = VideoPlayerController.file(widget.capturedVideoFile!)
        ..initialize().then((_) {
          setState(() {});
        });
      _controller.addListener(() {
        setState(() {
          if (_controller.value.duration == _controller.value.position) {
            isCompleted = true;
          } else {
            isCompleted = false;
          }
        });
      });
    });
  }

  Future _displayProgressBottomSheet() {
    return showModalBottomSheet(
      isDismissible: false,
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (BuildContext context, StateSetter setSheetState) {
          Timer(const Duration(seconds: 2), () {
            setSheetState(() {
              isLoading = false;
            });

            startTimer(setSheetState);
          });

          return Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                (isLoading)
                    ? const Center(
                    child: CircularProgressIndicator(color: Colors.blue))
                    : const Icon(
                  Icons.task_alt_outlined,
                  size: 60,
                  color: Colors.green,
                ),
                Text(
                  (isLoading)
                      ? "Please wait while we’re verifying your photo..."
                      : (widget.capturedVideoFile != null)
                      ? 'Upload initiated successfully'
                      : (widget.clickingPicAfterCleaningAC == true)
                      ? 'Successfully captured the image'
                      : "Photo check Successful",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: (!isLoading)
                        ? Colors.green
                        : const Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    fontSize: isLoading ? 14 : 18,
                  ),
                ),
                (!isLoading)
                    ? Text(
                  (!widget.captureImage2ndTime)
                      ? (widget.capturedVideoFile == null)
                      ? (widget.clickingPicAfterCleaningAC == true)
                      ? 'Redirecting in $startingSec second'
                      : "Starting job in $startingSec second"
                      : 'Redirecting in $startingSec second'
                      : 'Redirecting in $startingSec second',
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 14),
                )
                    : const SizedBox(),
              ],
            ),
          );
        },
      ),
    );
  }

  void startTimer(StateSetter setSheetState,
      {bool showHelperSheet = false, bool isJobStarted = false}) {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (startingSec == 0) {
        setSheetState(() {
          timer.cancel();
          _timer.cancel();
        });
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => (widget.capturedVideoFile == null)
                    ? (widget.clickingPicAfterCleaningAC == false)
                    ? DeliverySummaryScreen(
                  showHelperSheet: !widget.captureImage2ndTime,
                  isJobStarted: widget.captureImage2ndTime,
                )
                    : const NewJobStatusScreen(isProofAdded: true)
                    : const AddProofScreen()));
      } else {
        setSheetState(() {
          startingSec--;
        });
      }
    });
  }
}