import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/providers/home_provider.dart';
import 'package:provider_app/screens/next_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('build executed');
    }
    final provider = Provider.of<HomeProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 122,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  'https://images.generated.photos/NCseroYKcZhGhQrtSK3h7pJ2E5ZdNFvrUB3vO5YT1Ek/rs:fit:256:256/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/MDA1NzcwLmpwZw.jpg'),
            ),
            const SizedBox(height: 10),
            Consumer<HomeProvider>(
              builder: (context, value, child) => Text(
                'Likes: ${value.likes}',
                style:
                    const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  //
                  provider.incrementLike();
                  //
                },
                icon: const Icon(Icons.thumb_up),
                label: const Text('Like')),
            ElevatedButton(
                onPressed: () {
                  //
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NextPage()));
                  //
                },
                child: const Text('Next Page'))
          ],
        ),
      ),
    );
  }
}
