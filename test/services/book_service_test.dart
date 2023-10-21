import 'package:biblioteca/services/book_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final service = BookService();

  test('getBooks returns a list of books', () async {
    var result = await service.getBooks();
    expect(result, isNotEmpty);
  });
}
