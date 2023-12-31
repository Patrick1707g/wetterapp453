/*import 'dart:convert';
import 'dart:io';

void main() async {
  final name = await promptName();
  final file = File('registration.json'); // Neuer Dateipfad für die neue Datei
  Map<String, dynamic> jsonMap = {};
  if (file.existsSync()) {
    final jsonString = await file.readAsString();
    jsonMap = json.decode(jsonString);
  }
  jsonMap['name'].add(name);
  await file.writeAsString(json.encode(jsonMap));
}

Future<String?> promptName() async {
  print('Bitte geben Sie Ihren Namen ein:');
  return stdin.readLineSync();
}*/
import 'dart:convert';
import 'dart:io';

void main() async  {
  String name = readName();

  if (name.length > 0) {
    Map<String, dynamic> jsonMap = {};
    File file = File("registration.json");
    if (!file.existsSync()) {
      file = await file.create(exclusive: true);
    }
    String content = await file.readAsString();
    if (content.length > 0) {
      jsonMap = json.decode(content);
    }
    if (jsonMap["name"] != null) {
      List<String> names = jsonMap["name"].toList().cast<String>();
      names.add(name);
      jsonMap["name"] = names;
    } else {
      List<String> names = [name];
      jsonMap["name"] = names;
    }
    file.writeAsStringSync(json.encode(jsonMap));
  }
}

String readName() {
  print("Bitte einen Namen eingeben:");
  return stdin.readLineSync() ?? "";
}
