import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as p;

import '../stores/config_store.dart';

Future<void> request_download_folder() async {
  final selectedDirectory = await FilePicker.platform.getDirectoryPath();

  if (selectedDirectory == null) {
    //log
  } else {
    // store.downloadPath = selectedDirectory!;
    // log(store.downloadPath);

    // //Make separate utility to prettify
    // log(p.split(store.downloadPath).toString());
  }
}
