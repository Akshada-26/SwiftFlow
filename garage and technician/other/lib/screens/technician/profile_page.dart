import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class TechnicianProfilePage extends StatelessWidget {
  const TechnicianProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 500),
            child: Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?q=80&w=1974&auto=format&fit=crop',
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'John Smith',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Senior Technician',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          FadeInLeft(
            duration: const Duration(milliseconds: 500),
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.email),
                    title: const Text('Email'),
                    subtitle: const Text('john.smith@example.com'),
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.phone),
                    title: const Text('Phone'),
                    subtitle: const Text('+1 234 567 8900'),
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.work_history),
                    title: const Text('Experience'),
                    subtitle: const Text('8 Years'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          FadeInRight(
            duration: const Duration(milliseconds: 500),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Certifications',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.verified),
                    title: const Text('ASE Master Technician'),
                    subtitle: Text(
                      'Expires: Dec 2025',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(Icons.verified),
                    title: Text('BMW Factory Trained'),
                    subtitle: Text('Certified 2020'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          FadeInUp(
            duration: const Duration(milliseconds: 500),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Skills',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Wrap(
                      spacing: 8.0,
                      runSpacing: 8.0,
                      children: [
                        Chip(
                          label: const Text('Engine Repair'),
                          backgroundColor:
                              Theme.of(context).colorScheme.primaryContainer,
                        ),
                        Chip(
                          label: const Text('Diagnostics'),
                          backgroundColor:
                              Theme.of(context).colorScheme.primaryContainer,
                        ),
                        Chip(
                          label: const Text('Electrical Systems'),
                          backgroundColor:
                              Theme.of(context).colorScheme.primaryContainer,
                        ),
                        Chip(
                          label: const Text('Transmission'),
                          backgroundColor:
                              Theme.of(context).colorScheme.primaryContainer,
                        ),
                        Chip(
                          label: const Text('Brake Systems'),
                          backgroundColor:
                              Theme.of(context).colorScheme.primaryContainer,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
