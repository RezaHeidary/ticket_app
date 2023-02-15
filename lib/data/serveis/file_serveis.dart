import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:ticket_app/core/value/str_val.dart';

class PicFileController extends GetxController {
  Rx<File> file = File("").obs;
  Rx<String> fileName = MyString.btnAddFile.obs;

  getFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      file.value = File(result.files.single.path!);
      fileName.value = result.files.single.name;
    } else {
      fileName.value = MyString.btnAddFile;
    }
  }
}
