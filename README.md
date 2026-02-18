# 🐾 PawTrust – Responsive Mobile UI & Firebase Integration (Sprint #2)

## 📌 Project Overview

PawTrust is a cross-platform mobile application built using Flutter & Dart.

In this Sprint #2 deliverable, the focus is on responsive UI and Firebase integration. Users can now sign up, log in, and interact with cloud data seamlessly.

This implementation demonstrates:

- 📱 Responsive layouts for mobile and tablet devices
- 🔄 Portrait and landscape support
- 🔐 Firebase Authentication for email/password login
- ☁️ Cloud Firestore for real-time data storage and retrieval

The goal is to provide a consistent, user-friendly, and cloud-connected experience across all devices.

---

## 🎯 Objective of This Sprint

To design and implement a responsive Flutter UI and integrate Firebase services:

- Build responsive layouts for different screen sizes
- Enable Firebase Authentication for signup, login, and logout
- Enable Cloud Firestore CRUD operations for user-specific data
- Display Firestore data dynamically in the app

---

## 🚀 Features Implemented

### UI & Responsiveness
- ✅ Responsive Home Screen
- ✅ Dynamic layout switching (Phone vs Tablet)
- ✅ Adaptive padding and text sizing
- ✅ Grid layout for larger screens
- ✅ List layout for smaller screens
- ✅ Landscape & Portrait support
- ✅ Clean modular folder structure

### Firebase Integration
- ✅ Email & password signup
- ✅ Login for existing users
- ✅ Logout functionality
- ✅ CRUD operations in Cloud Firestore
- ✅ Real-time updates in app and Firebase Console
- ✅ Error handling for authentication

---

## 🧠 Responsiveness Logic

The layout adjusts automatically based on the device’s screen size. For example:

- Single-column layout for phones
- Two-column or grid layout for tablets
- Padding, spacing, and text size scale dynamically
- Portrait and landscape modes are fully supported

---

## 🔑 Firebase Integration Logic

- Signup allows new users to create accounts with email and password  
- Login authenticates existing users  
- Logout ends the user session securely  
- Firestore stores user-specific data and updates in real time  
- Dynamic data is displayed in the app and synced with the Firebase Console instantly

---

## 📝 Reflection

- Firebase simplifies backend management by providing authentication, database, and real-time sync out of the box  
- Learned how to connect Flutter with cloud services, manage user sessions, and perform CRUD operations  
- Prepared the app foundation for future features like analytics, notifications, and cloud storage
