# SwiftFlow | Flutter Application

## Overview

SwiftFlow is a Flutter-based middleware application designed to seamlessly connect garages, car washing centers, and end users. It provides a comprehensive solution for remote steam car washing and On-Board Diagnostics (OBD) analysis to enhance vehicle diagnostics. Additionally, it integrates doorstep car servicing features, allowing users to track their service status in real-time for a seamless experience.

## Features

- **Remote Steam Car Washing**: Offers steam car washing services from the comfort of the user's home or desired location.
- **OBD Analysis**: Provides advanced diagnostics through OBD-II, enabling detailed vehicle health checks.
- **Doorstep Car Servicing**: Enables users to request various car services like servicing, repairs, and inspections at their location.
- **Real-time Service Tracking**: Users can monitor the status of their service in real-time, ensuring transparency and convenience.
- **User-friendly Interface**: Designed with a clean, intuitive, and interactive UI/UX for seamless navigation and usability.

## Tech Stack

- **Flutter**: For building cross-platform mobile applications.
- **Dart**: The programming language for Flutter development.
- **Firebase**: Used for real-time database management and authentication.
- **Cloud Functions**: For serverless backend logic.
- **RESTful APIs**: To facilitate communication between mobile clients and server-side components.

## Installation

To run the SwiftFlow application locally, follow these steps:

### Prerequisites

- Ensure you have Flutter installed on your machine. If not, refer to the [official Flutter installation guide](https://flutter.dev/docs/get-started/install).
- Set up a Flutter development environment by following [Flutter’s official documentation](https://flutter.dev/docs/get-started/editor).

### Steps

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/swiftflow.git
   cd swiftflow
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the application:
   ```bash
   flutter run
   ```

## Features Walkthrough

### 1. Home Screen
- Displays quick options for car washing, diagnostics, and service requests.
- Provides real-time updates and progress indicators.

### 2. Steam Car Washing
- Users can select the service, preferred location, and schedule the service.

### 3. OBD Analysis
- Connects to the vehicle via OBD-II and fetches vehicle health data for analysis.

### 4. Doorstep Servicing
- Allows users to select services like engine diagnostics, repair, and servicing.
- Tracks the progress through notifications and status updates.

### 5. Profile & Settings
- Users can manage personal information, view service history, and modify preferences.

## Backend Integration

SwiftFlow communicates with a backend server through RESTful APIs hosted on Firebase. The backend handles real-time data syncing, user authentication, and service processing.

![WhatsApp Image 2025-01-08 at 8 30 32 PM](https://github.com/user-attachments/assets/3e77745c-b065-4d8b-849a-da08a879cc71)
![WhatsApp Image 2025-01-08 at 8 30 31 PM](https://github.com/user-attachments/assets/d2b81ebf-362a-4911-9c63-29dce34a92c2)
![WhatsApp Image 2025-01-08 at 8 30 31 PM (1)](https://github.com/user-attachments/assets/2d9a8475-dae5-40f9-abdc-aa112b75f7a6)
![WhatsApp Image 2025-01-08 at 8 30 30 PM](https://github.com/user-attachments/assets/1d4a75b2-7695-4424-9e40-f52f564cbee1)
![WhatsApp Image 2025-01-08 at 8 30 30 PM (2)](https://github.com/user-attachments/assets/33471b43-f34b-4f38-9b97-2adc66ae0c5f)
![WhatsApp Image 2025-01-08 at 8 30 30 PM (1)](https://github.com/user-attachments/assets/b1f03b58-b03b-4f46-9ceb-5fc45ca223a6)
![WhatsApp Image 2025-01-08 at 8 30 29 PM](https://github.com/user-attachments/assets/92e213d6-e3e9-491e-b817-2ed553165fb4)
![WhatsApp Image 2025-01-08 at 8 30 29 PM (1)](https://github.com/user-attachments/assets/17e93414-0536-48dc-8f68-2dabda2136ba)
![WhatsApp Image 2025-01-08 at 8 30 28 PM](https://github.com/user-attachments/assets/c15b0037-6b4e-4a6f-9805-92c2db77b9d5)
![WhatsApp Image 2025-01-08 at 8 30 28 PM (2)](https://github.com/user-attachments/assets/36e88066-75ff-4c11-aafd-e04dc14b89a5)
![WhatsApp Image 2025-01-08 at 8 30 28 PM (1)](https://github.com/user-attachments/assets/3d35955b-bb61-4597-9393-f2c3bdbc1175)
![WhatsApp Image 2025-01-08 at 8 30 27 PM](https://github.com/user-attachments/assets/960ea383-4e4a-4017-bb0a-055c0df50510)
![WhatsApp Image 2025-01-08 at 8 30 27 PM (2)](https://github.com/user-attachments/assets/23e92303-45cd-4533-8381-1cd4dd462bed)
![WhatsApp Image 2025-01-08 at 8 30 27 PM (1)](https://github.com/user-attachments/assets/5c734a5a-bae8-4d73-b7bb-fe2a2cb882e1)
![WhatsApp Image 2025-01-08 at 8 30 26 PM](https://github.com/user-attachments/assets/91043ceb-1139-43bb-b3cb-e872d07c8ef3)
![WhatsApp Image 2025-01-08 at 8 30 26 PM (1)](https://github.com/user-attachments/assets/cbc5cdff-59d7-47e6-ad92-92402a604386)
![WhatsApp Image 2025-01-08 at 8 30 25 PM](https://github.com/user-attachments/assets/eb76bb3b-526c-4e20-86f7-4da3c32f3965)
![WhatsApp Image 2025-01-08 at 8 30 25 PM (2)](https://github.com/user-attachments/assets/c45bd0eb-1603-4834-9ab8-aab1f577ef30)
![WhatsApp Image 2025-01-08 at 8 30 25 PM (1)](https://github.com/user-attachments/assets/9ed33662-7b20-49e7-b9f0-9f548893e8c1)
![WhatsApp Image 2025-01-08 at 8 30 24 PM](https://github.com/user-attachments/assets/bad97132-1b1f-426e-a626-1274b44bebc9)
![WhatsApp Image 2025-01-08 at 8 30 24 PM (1)](https://github.com/user-attachments/assets/af915390-597e-4e77-95bb-7e280b27ce05)
![WhatsApp Image 2025-01-08 at 8 30 23 PM](https://github.com/user-attachments/assets/e596fadb-89de-4f24-ae93-660d0ada6bd6)


