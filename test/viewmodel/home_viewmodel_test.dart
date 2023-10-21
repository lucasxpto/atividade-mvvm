import 'package:biblioteca/viewmodel/home_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomeViewModel Test', () {
    final vm = HomeViewModel();

    test('fetchBooks fetches list of books', () async {
      await vm.fetchBooks();
      expect(vm.books, isNotEmpty);
    });
  });
}
