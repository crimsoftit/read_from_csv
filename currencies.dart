import 'dart:io';

import 'currency_model.dart';

void main() {
  print('enter the file name to read from...');

  String fileName = stdin.readLineSync().toString();

  final lines = File(fileName).readAsLinesSync();
  lines.removeAt(0);

  var curDetails = [];

  for (var line in lines) {
    var values = fileName == "Marks.csv" ? line.split(';') : line.split(',');

    curDetails.add({
      'country': values[0],
      'code': values[3],
    });

    var code = curDetails.where((item) => item["country"] == '"Kenya"');
    print(code.indexed);
  }

  print('\n\n');
  //print(curDetails[0]);
}
