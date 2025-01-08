import 'package:flutter/foundation.dart';

class JobProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _assignedJobs = [
    {
      'title': 'Engine Repair',
      'description': 'BMW X5 - Engine knocking noise, requires inspection and repair',
      'status': 'Pending',
      'carModel': 'BMW X5',
      'customerName': 'Michael Brown',
      'latitude': 19.0760,
      'longitude': 72.8777,
    },
    {
      'title': 'Battery Replacement',
      'description': 'Mercedes C300 - Battery dead, needs replacement',
      'status': 'In Progress',
      'carModel': 'Mercedes C300',
      'customerName': 'Sarah Wilson',
      'latitude': 19.0821,
      'longitude': 72.8416,
    },
    {
      'title': 'Brake Service',
      'description': 'Audi A4 - Brake pads worn out, requires replacement',
      'status': 'Pending',
      'carModel': 'Audi A4',
      'customerName': 'David Miller',
      'latitude': 19.1071,
      'longitude': 72.8227,
    },
    {
      'title': 'Oil Change',
      'description': 'Toyota Camry - Regular maintenance service',
      'status': 'In Progress',
      'carModel': 'Toyota Camry',
      'customerName': 'Emily Davis',
      'latitude': 19.0596,
      'longitude': 72.8295,
    },
    {
      'title': 'Transmission Service',
      'description': 'Honda Accord - Transmission fluid leak, needs inspection',
      'status': 'Pending',
      'carModel': 'Honda Accord',
      'customerName': 'James Wilson',
      'latitude': 19.0178,
      'longitude': 72.8478,
    },
  ];

  final List<Map<String, dynamic>> _completedJobs = [];

  List<Map<String, dynamic>> get assignedJobs => _assignedJobs;
  List<Map<String, dynamic>> get completedJobs => _completedJobs;

  void markJobAsCompleted(int index) {
    final completedJob = Map<String, dynamic>.from(_assignedJobs[index]);
    completedJob['completedAt'] = DateTime.now().toString().split('.')[0];
    _completedJobs.add(completedJob);
    _assignedJobs.removeAt(index);
    notifyListeners();
  }
}
