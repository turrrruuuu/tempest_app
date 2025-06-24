import 'package:flutter/material.dart';

void main() => runApp(const TempestApp());

class TempestApp extends StatelessWidget {
  const TempestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tempest',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tempest Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AvatarDisplay(),
            const SizedBox(height: 12),
            const RankInfo(),
            const SizedBox(height: 20),
            const TrainingLogButton(),
          ],
        ),
      ),
    );
  }
}

class AvatarDisplay extends StatelessWidget {
  const AvatarDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.deepPurple.withOpacity(0.2),
      ),
      child: const Center(
        child: Icon(Icons.bolt, size: 40, color: Colors.deepPurpleAccent),
      ),
    );
  }
}

class RankInfo extends StatelessWidget {
  const RankInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Current Rank:', style: TextStyle(fontSize: 14)),
        SizedBox(width: 8),
        Text('Spark of the Storm',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent)),
      ],
    );
  }
}

class TrainingLogButton extends StatelessWidget {
  const TrainingLogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LogTrainingPage()),
        );
      },
      icon: const Icon(Icons.fitness_center),
      label: const Text('Log Training Session'),
    );
  }
}

class LogTrainingPage extends StatelessWidget {
  const LogTrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Log Training')),
      body: Center(
        child: Text('Training Log Screen - Coming Soon!',
            style: Theme.of(context).textTheme.headline6),
      ),
    );
  }
}
