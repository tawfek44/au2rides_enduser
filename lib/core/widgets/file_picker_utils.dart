import 'package:file_picker/file_picker.dart';

class FilePickerUtils {
  const FilePickerUtils._();

  FilePickerUtils.pickFile(Function(PlatformFile? file) onSuccess,
      List<FileExtension> allowedFileExtensions) {
    List<String> allowedExtensions =
    allowedFileExtensions.map((e) => e.toString().split('.').last).toList();
    FilePicker.platform
        .pickFiles(
            allowMultiple: false,
            allowedExtensions: allowedExtensions,
            type: FileType.custom)
        .then((value) {
      var file = value?.files[0];
      onSuccess(file);
    });
  }
}

enum FileExtension { pdf, cvs, jpg, jpeg, doc, docx, txt, png}
