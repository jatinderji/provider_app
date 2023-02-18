import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/providers/home_provider.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Likes ${provider.likes} ',
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
