import 'package:flutter/material.dart';

import '../viewmodel/home_viewmodel.dart';

class HomePage extends StatelessWidget {
  final vm = HomeViewModel();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Biblioteca')),
      body: FutureBuilder(
        future: vm.fetchBooks(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return ListView.builder(
              itemCount: vm.books.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(vm.books[index].title),
                  // Adicione mais detalhes e navegação aqui
                );
              },
            );
          }
        },
      ),
    );
  }
}
