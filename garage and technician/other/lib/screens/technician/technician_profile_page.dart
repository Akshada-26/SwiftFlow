import 'package:flutter/material.dart';

class TechnicianProfilePage extends StatelessWidget {
  const TechnicianProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          // Profile Picture
          const CircleAvatar(
            radius: 60,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.person,
              size: 60,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          // Name
          Text(
            'John Doe',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          // Role
          Text(
            'Senior Technician',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.grey,
                ),
          ),
          const SizedBox(height: 24),
          // Stats
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildStatCard(
                context,
                '156',
                'Jobs Completed',
                Icons.check_circle,
                Colors.green,
              ),
              _buildStatCard(
                context,
                '4.8',
                'Rating',
                Icons.star,
                Colors.amber,
              ),
              _buildStatCard(
                context,
                '3 yrs',
                'Experience',
                Icons.work,
                Colors.blue,
              ),
            ],
          ),
          const SizedBox(height: 24),
          // Contact Information
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact Information',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  _buildContactRow(Icons.email, 'john.doe@example.com'),
                  const SizedBox(height: 12),
                  _buildContactRow(Icons.phone, '+1 234 567 890'),
                  const SizedBox(height: 12),
                  _buildContactRow(Icons.location_on, 'Mumbai, India'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          // Expertise
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Areas of Expertise',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _buildExpertiseChip('Engine Repair'),
                      _buildExpertiseChip('Brake Systems'),
                      _buildExpertiseChip('Electrical Systems'),
                      _buildExpertiseChip('Diagnostics'),
                      _buildExpertiseChip('Transmission'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(BuildContext context, String value, String label,
      IconData icon, Color color) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Icon(icon, color: color, size: 30),
            const SizedBox(height: 8),
            Text(
              value,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              label,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey, size: 20),
        const SizedBox(width: 12),
        Text(text),
      ],
    );
  }

  Widget _buildExpertiseChip(String label) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.blue.withOpacity(0.1),
      side: BorderSide.none,
    );
  }
}
