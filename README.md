# 🐾 PawTrust – Stateless vs Stateful Widgets Demo (Sprint #2)

## 📌 Project Overview

This Sprint #2 assignment explores the two fundamental building blocks of Flutter applications:

- Stateless Widgets  
- Stateful Widgets  

In this demo, we implemented both widget types inside the PawTrust app to clearly demonstrate how they behave differently and how they work together to build dynamic user interfaces.

The app visually shows how static UI components remain unchanged while interactive components rebuild when state changes.

---

## 🎯 Demo Concept

The demo screen contains:

- A **Stateless Widget** used as a static header/banner.
- A **Stateful Widget** used for an interactive section with:
  - Counter functionality
  - Theme toggle (Light/Dark Mode)

This layout clearly separates static UI from dynamic UI logic.

---

## 🧾 Understanding Stateless Widgets

A Stateless Widget:

- Does not maintain internal state.
- Displays static content.
- Rebuilds only if its parent widget rebuilds.
- Is predictable and lightweight.

### 🔹 In This Project

The header section of the app is implemented using a Stateless Widget.  
It displays a static title such as:

> "Interactive Demo App – PawTrust"

This content does not change during runtime.

### ✅ When to Prefer Stateless Widgets

- For headers and titles  
- For labels and icons  
- For static layouts  
- When UI does not depend on changing data  

Stateless widgets improve performance and keep the UI predictable.

---

## 🔄 Understanding Stateful Widgets

A Stateful Widget:

- Maintains internal state.
- Updates dynamically during runtime.
- Uses `setState()` to rebuild UI when data changes.
- Is required for interactive components.

### 🔹 In This Project

The interactive section is implemented using a Stateful Widget.  
It includes:

- A counter that increments when a button is pressed.
- A theme switch that toggles between Light and Dark mode.
- Text that updates based on the current state.

---

## 🔄 How UI Updates Work

Two state variables were used:

- `count` → stores the counter value  
- `isDarkMode` → controls theme switching  

### 🟢 When the Button is Pressed

- The counter value increases.
- `setState()` is triggered.
- Flutter rebuilds only the widgets displaying the counter.

### 🌙 When the Theme Switch is Toggled

- The theme mode changes.
- `setState()` triggers a rebuild.
- The app switches between Light and Dark mode.

Flutter does not manually refresh the whole UI.  
It efficiently rebuilds only the widgets affected by the state change.

---

## ⚡ How Flutter’s Reactive Model Works

Flutter follows a reactive programming model:

1. The UI is built from widgets.
2. When state changes, `setState()` notifies Flutter.
3. Flutter rebuilds the widget tree.
4. Only affected widgets update.

This approach makes development:

- Cleaner  
- Faster  
- Less error-prone  
- More scalable  

---

## 📸 Screenshots

### Initial State
- Counter = 0  
- Light Mode enabled  

(Insert Screenshot Here)

---

### After Interaction
- Counter incremented  
- Dark Mode enabled  

(Insert Screenshot Here)

---

## 🧠 Reflection

### When Should You Prefer Stateless Widgets?

Stateless widgets should be used when UI does not depend on changing data.  
They are simple, efficient, and make the app structure clean and predictable.

### When Are Stateful Widgets Necessary?

Stateful widgets are necessary when:

- The UI changes during runtime.
- User interaction modifies the interface.
- Data needs to be updated dynamically.

### How Do Stateful Widgets Make the UI Dynamic?

Stateful widgets store internal data and use `setState()` to trigger UI rebuilds whenever that data changes. This allows the app to respond instantly to user interactions.

### Why Is Understanding Widget Types Important?

Understanding the difference between Stateless and Stateful widgets helps:

- Improve performance
- Avoid unnecessary rebuilds
- Write cleaner code
- Build scalable applications
- Separate static and dynamic UI logic properly

---

## 📎 Submission Details

**Commit Message:**  
feat: implemented stateless and stateful widgets demo app  

**Pull Request Title:**  
[Sprint-2] Stateless vs Stateful Widgets – TeamName  

**PR Includes:**
- Implementation summary  
- Screenshots (before and after state change)  
- Reflection  
- Video explanation link  

---

🐾 PawTrust – Building strong Flutter foundations with Stateless and Stateful widgets.