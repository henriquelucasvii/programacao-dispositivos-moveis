void main() => showItems();

void showItems() {
  List<Map<String, dynamic>> items = [
    {"item": "Tinta emborrachada", "valor": 800},
    {"item": "Conector Perfurante", "valor": 45},
  ];

  for (var item in items) {
    if (item['valor'] > 500) {
      print(item);
    }
  }
}
