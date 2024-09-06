import 'dart:io';

String subFile(File file) {
  return subLongFileName(file.path.substring(file.path.lastIndexOf('/') + 1));
}

String subLongFileName(String name) {
  if (name.length > 17) {
    final start = name.substring(0, 14);
    final end = name.substring(
      name.length - 3,
    );
    return '$start....$end';
  } else {
    return name;
  }
}
