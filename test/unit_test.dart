import 'package:flutter_test/flutter_test.dart';

void main() {
  test('ein einfacher Test', () {
    var result = 42;
    expect(result, 42);
  });

  test("ein einfacher Test 2", (){
    String text = "Hallo";
    expect(text, "hallo");
  });
}
