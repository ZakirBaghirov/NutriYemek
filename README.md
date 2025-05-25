# Nutri Yemek - Smart Diet Filtering Mobile App

## 📱 Overview

**Nutri Yemek** is a mobile application developed using Flutter and Dart, designed to help users find meals tailored to their specific health conditions such as kidney disease, celiac, obesity, or dietary constraints on sugar, salt, and fat. The platform also allows admins to manage meals and restaurant data, ensuring an organized and scalable diet-centric food service.

This app combines personalized filtering with admin-driven content management to create a simple but powerful nutrition-aware ordering system.

---

## ✅ Features

- **User & Admin Login System**: Secure login screens for regular users and administrators.
- **Profile Filtering**: Users can select filters like kidney disease, celiac, obesity, sugar, salt, and fat preferences from their profile.
- **Home, Cart, and Profile Pages**: Standardized navigation and UX patterns.
- **Admin Management Panel**:
  - Add new meals with nutritional values.
  - Add restaurants.
- **Optional Restaurant Owner Role**: Restaurant owners can manage only their own meals.
- **Limited Dataset**: Comes with 5 restaurants and 10–15 sample meals.
- **Order Process (Optional)**: Users can place sample orders from within the app.

---

## 📁 Project Structure

```
Nutri_Yemek/
│
├── .flutter-plugins                  # Auto-generated Flutter plugin references
├── .flutter-plugins-dependencies    # Plugin dependencies
├── .gitignore                       # Git ignored files
├── .metadata                        # Flutter project metadata
├── analysis_options.yaml            # Static code analysis options
├── nutri_yemek.iml                  # IntelliJ module file
├── pubspec.yaml                     # Project dependencies
├── pubspec.lock                     # Locked versions of dependencies
├── README.md                        # Project documentation
│
├── lib/                             # Main source code
│   ├── main.dart                    # Application entry point
│   ├── models/                      # Data models (User, Food, Order, Restaurant, etc.)
│   ├── providers/                   # State management providers
│   ├── screens/                     # All UI screens (Home, Profile, Cart, Admin, etc.)
│   ├── widgets/                     # Custom reusable widgets
│
├── android/                         # Android-specific code
├── ios/                             # iOS-specific code
├── build/                           # Auto-generated build files
```

---

## 🛠 Technologies Used

- **Flutter** – UI framework
- **Dart** – Programming language
- **Firebase** – Authentication, Firestore, Realtime DB
- **Android Studio** – Development IDE

---

## 🚀 Getting Started

### Prerequisites

Make sure the following tools are installed on your machine:

- Flutter SDK
- Dart SDK
- Android Studio (or VS Code with Flutter plugin)
- Firebase project with Authentication and Firestore enabled

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/NutriYemek.git
   cd NutriYemek
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

### Firebase Setup

1. Create a new Firebase project.
2. Add `google-services.json` to the `android/app/` folder.
3. Add `GoogleService-Info.plist` to the `ios/Runner/` folder.
4. Enable **Authentication** and **Cloud Firestore** from the Firebase Console.

---

## 📸 Screenshots (Optional)

You can add screenshots of:
- Login page
- Filter selection
- Admin panel
- Food list
- Cart & Profile screens

---

## 🤝 Contribution

Contributions are welcome! To contribute:

```bash
git checkout -b feature-name
git commit -m "Added new feature"
git push origin feature-name
```

Then, create a **Pull Request** on GitHub.

---

## 📄 License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

---

## 📬 Contact

- **Email**: bagirovz2005@gmail.com  
- **LinkedIn**: [Zakir Baghirov](https://www.linkedin.com/in/zakir-baghirov-ab4873233/)

---

> 🥗 **Build your personalized diet journey with Nutri Yemek today!**
