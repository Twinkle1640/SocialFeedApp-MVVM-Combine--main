# 📱 SocialFeedApp (iOS MVVM + Combine)

This project is part of an iOS assignment (Challenge 3: Social Media Feed) where the goal is to implement a scalable, reactive, and testable social media feed application using **MVVM architecture** and **Combine framework**, without any third-party libraries.

---

## 🔧 Features

- ✅ **MVVM Architecture**: Clean separation between Model, ViewModel, and View layers.
- ✅ **Combine Framework**: Reactive data flow between ViewModel and View using `@Published` and `sink`.
- ✅ **Mock Feed Service**: Simulated API calls using Combine's `Just` and `delay`.
- ✅ **Dynamic Post Rendering**: Supports multiple post types (text, image, video).
- ✅ **Simple UI**: Table view to display feed items in a reactive way.

---

## 📁 Folder Structure

SocialFeedApp/
├── Models/
│ ├── Post.swift
│ └── User.swift
├── ViewModels/
│ └── FeedViewModel.swift
├── Views/
│ └── FeedViewController.swift
├── Services/
│ └── FeedService.swift
├── Utilities/
│ └── MockData.swift


---

## 🧪 Tech Stack

- **Swift**
- **UIKit**
- **Combine**
- **MVVM Architecture**

---

## 🚧 Limitations

- No actual network calls — feed data is mocked.
- Requires Xcode and macOS to build and run.
- UI is kept simple (no image/video rendering) for assignment focus.

---

## 📂 How to Use

> This project is not executable on Windows. It is meant to be opened using **Xcode on macOS**.

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/SocialFeedApp.git
