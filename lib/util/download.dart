import 'package:flutter_download_manager/flutter_download_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../stores/config_store.dart';

Future<void> download(String url) async {
  final sharedPrefs = await SharedPreferences.getInstance();
  final path = ConfigStore.load(sharedPrefs).downloadPath;

  if (path != "") {
    final dlManager = DownloadManager();
    await dlManager.addDownload(url, path);
  } else {
    //TODO: Ask download path
  }
}
