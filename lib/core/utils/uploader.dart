import 'dart:io';

import 'package:azblob/azblob.dart';
import 'package:path/path.dart' as p;
import 'package:flutter/foundation.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart';

import '../constants/constants.dart';

Future uploadImageToAzure(String path,String id) async {
  try {
    var file = File(path);
    String fileName = id+p.extension(path);
    // read file as Uint8List
    Uint8List content = await file.readAsBytes();
    var storage = AzureStorage.parse(userProfileConnectionString);
    String container = "staging-mobile-uploads";
    // get the mine type of the file
    String? contentType = lookupMimeType(fileName);
     await storage.putBlob('/$container/$fileName',
        bodyBytes: content,
        contentType: contentType,
       type: BlobType.blockBlob);
     return fileName;

  } on AzureStorageException catch (ex) {
    print(ex.message);
  } catch (err) {
    print(err);
  }
}
