import 'package:flutter/material.dart';
import 'package:lagguu/screens/obd_scanner_page.dart'; // OBDScannerPage is used from here
// Optionally import obd_page.dart with a prefix if needed

class ObdReportPage extends StatelessWidget {
  const ObdReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OBD Report'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'OBD Report',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Detailed diagnostics of your vehicle are shown below. Review the error codes, system status, and recommended actions.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Error Codes Section
            _buildReportSection(
              title: 'Error Codes',
              content: [
                'P0010: Camshaft Position Actuator Circuit Bank1',
                'P0301: Cylinder1 Misfire Detected',
                'P0420: Catalyst System Efficiency Below Threshold',
              ],
            ),

            // System Status Section
            _buildReportSection(
              title: 'System Status',
              content: [
                'Engine: Running',
                'Transmission: Normal',
                'Brakes: Service Required',
              ],
            ),

            // Recommended Actions Section
            _buildReportSection(
              title: 'Recommended Actions',
              content: [
                'Check and replace camshaft position sensor.',
                'Inspect and replace spark plugs in cylinder 1.',
                'Evaluate and service the catalytic converter.',
              ],
            ),

            const SizedBox(height: 20), // Space before the button

            // Start OBD Scanning Button
            Center(
              child: ElevatedButton.icon(
                icon: const Icon(Icons.bluetooth_searching),
                label: const Text('Start OBD Scanning'),
                onPressed: () {
                  // Navigate to OBDScannerPage when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OBDScannerPage(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build sections with title and list of contents
  Widget _buildReportSection(
      {required String title, required List<String> content}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.yellow.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          ...content
              .map((item) => Text(item, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}
