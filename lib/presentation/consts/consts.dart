import 'dart:io';

String subFile(File file) {
  return _subLongFileName(file.path.substring(file.path.lastIndexOf('/') + 1));
}

String _subLongFileName(String name) {
  if (name.length > 20) {
    final start = name.substring(0, 14);
    final end = name.substring(name.lastIndexOf('.'));
    return '$start....$end';
  } else {
    return name;
  }
}
