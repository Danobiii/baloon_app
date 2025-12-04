// import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';

class UploadController {
  File? imageFile;
  String? imageName;

  File? videoFile;
  String? videoName;

  File? fileUpload;
  String? fileName;
  String? mediaName;

  List<XFile> selectedFiles = [];

  Future<void> openCamera() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
      imageName = pickedFile.path.split('/').last;
    }
  }

  Future<void> openCameraForVideo() async {
    final savedFile = await ImagePicker().pickVideo(source: ImageSource.camera);
    if (savedFile != null) {
      videoFile = File(savedFile.path);
      videoName = savedFile.path.split('/').last;
    }
  }

  Future<void> pickDocument() async {
    final document = await FilePicker.platform.pickFiles(type: FileType.any);
    if (document != null) {
      final file = File(document.files.single.path!);
      fileName = document.files.single.name;
    }
  }

  Future<void> pickFromGallery() async {
    final fromGalleryStorage = await ImagePicker().pickMultiImage();
    if (fromGalleryStorage.isNotEmpty) {
      selectedFiles = fromGalleryStorage;
    }
  }

  Future<void> pickFromCamera() async {
    final fromCameraStorage = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    if (fromCameraStorage != null) {
      selectedFiles = [fromCameraStorage];
    }
  }
}
