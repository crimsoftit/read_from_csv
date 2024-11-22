import 'dart:io';

import 'currency_model.dart';

void main() {
  print('enter the file name to read from...');

  String fileName = stdin.readLineSync().toString();

  final lines = File(fileName).readAsLinesSync();
  //lines.removeAt(0);

  final List<CurrencyModel> curDetails = [];

  var kenya;

  for (var line in lines) {
    var values = fileName == "Marks.csv" ? line.split(';') : line.split(',');

    curDetails.add(CurrencyModel(country: values[0], curCode: values[1]));

    // curDetails.add({
    //   'country': values[0],
    //   'code': values[3],
    // });
  }

  var code = curDetails.where((item) => item.country == '"Kenya"');
  //print(code.indexed);

  kenya = code.indexed.toList();

  for (var item in kenya) {
    print(item.toString());
    var tCode = item;
    print('$tCode');
  }

  print('\n');
  //print(kenya[0]);
  print('\n');
}