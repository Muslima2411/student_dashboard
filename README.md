
# 📚 Student Dashboard – Flutter Learning Schedule App

Student Dashboard is a Flutter-based mobile application designed to help users manage their educational schedules, attendance tracking, and profile information effectively. It provides an intuitive and clean UI to manage courses, mock exams, and educational center preferences.

## ✨ Features

* 📅 **Course Scheduling**
  View and manage your daily and weekly course schedules, including classrooms, instructors, and times.

* 🏫 **Select Educational Centers**
  Choose between various educational centers (e.g., Everest, IELTS Zone, Educational Center) before confirming course participation.

* 📊 **Attendance Monitoring**
  Visual graphs show your attendance percentage across subjects like IELTS and Grammar.

* 👤 **User Profile**
  Access your profile to view current and ongoing courses, contact details, and registered education centers.

* 🔐 **Authentication**
  Secure sign-in flow using email and password.

## 🧭 Navigation Flow

1. **Login Page**
   User enters email & password → navigates to home screen.

2. **Home Page (Schedule View)**

    * Displays schedule per date (IELTS course, Mock exam, etc.)
    * Long-press or tap an event → choose educational center.

3. **Educational Center Selection**

    * Choose a center (e.g., Everest) → Confirm → updates profile and links to Attendance or Profile page.

4. **Attendance Page**

    * View course-specific attendance in chart format.

5. **Profile Page**

    * View user details, ongoing courses, and registered centers.

## 🔑 Getting Started

1. **Clone the repository**:

   ```bash
   git clone https://github.com/yourusername/edutrack_flutter_app.git
   cd edutrack_flutter_app
   ```

2. **Install dependencies**:

   ```bash
   flutter pub get
   ```

3. **Run the app**:

   ```bash
   flutter run
   ```


