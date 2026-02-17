# 🐾 PawTrust – Responsive Mobile UI (Sprint #2)

## 📌 Project Overview

PawTrust is a cross-platform mobile application built using **Flutter & Dart**.

In this Sprint #2 deliverable, the focus is on building a **responsive and adaptive mobile interface** that works seamlessly across different screen sizes and orientations.

This implementation demonstrates how Flutter layouts automatically adjust for:

- 📱 Small mobile devices  
- 💻 Tablets  
- 🔄 Portrait and Landscape orientations  

The goal is to provide a consistent and user-friendly experience across all devices.

---

## 🎯 Objective of This Sprint

To design and implement a responsive Flutter UI using:

- `MediaQuery`
- Adaptive layout logic
- Flexible and scalable widgets
- Orientation-aware design principles

---

## 🚀 Features Implemented

- ✅ Responsive Home Screen
- ✅ Dynamic layout switching (Phone vs Tablet)
- ✅ MediaQuery-based screen size detection
- ✅ Grid layout for larger screens
- ✅ List layout for smaller screens
- ✅ Adaptive padding and text sizing
- ✅ Landscape & Portrait support
- ✅ Clean modular folder structure

---

## 🧠 Responsiveness Logic

The layout dynamically adjusts based on screen width.

```dart
double screenWidth = MediaQuery.of(context).size.width;
bool isTablet = screenWidth > 600;
