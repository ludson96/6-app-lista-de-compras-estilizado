# 🛍️ Styled Shopping List App

🇧🇷 Leia isto em [Português](README.md)

> Mobile app built with **Flutter** focused on shopping list management with theme customization support, visual standardization, and refined design.

## 📝 About the Project

This project consists of a challenge to enhance skills in **UI/UX Design**, styling, and architectural standardization in Flutter mobile applications (refactoring of the Phase 2 project).

The main goal is to provide a rich, intuitive, and accessible visual experience for the user, enabling complete management of shopping lists and their items, while supporting dynamic switching between **Light**, **Dark**, and automatic synchronization with the **Operating System** theme.

In Dark mode, the app customizes typography by applying the **Montserrat** font, adding a modern and elegant aesthetic.

## 🖼️ Screen (Preview)

<img src="assets/images/lista-de-compras.gif" alt="App Demonstration" width="300"/>

## ✨ Features

- 🏠 **Adaptive Main Page:**
  - **Empty State View:** Displays a centered image with guidance text encouraging the user to create their first list.
  - **Lists View:** Shows cards for all registered shopping lists in the app.
- ➕ **Shopping List Registration:** Dedicated screen to name and register new lists.
- 🛒 **Product Viewing & Interaction:** Specific page to view the product list, mark items, or interact with them.
- 📌 **Dynamic Bottom Sheet:** Modal bottom sheet for quick and smooth product creation within a shopping list.
- 🎨 **Complete Theme Management:**
  - **Light:** Interface with light tones and high readability.
  - **Dark:** Styled interface with dark palette and custom **Montserrat** typography.
  - **System:** Automatically switches according to the operating system settings.
- ⚙️ **Settings Page:** Allows the user to toggle theme preferences (Light, Dark, or System) at any time.

## 🛠️ Technologies Used

- **[Flutter](https://flutter.dev/):** Multi-platform UI framework for building high-performance native apps.
- **[Dart](https://dart.dev/):** Modern and reactive programming language used by Flutter.
- **Montserrat Font:** Styled typography applied in Dark Theme.
- **Reactive State Management (ValueNotifier / Controller):** For smooth and performant updating of app theme and data without unnecessary complexity.

## 🚀 How to Run the Project

To run this project on your local machine, you will need to have Flutter installed. Then, follow the steps below:

1.  **Clone the repository** (if using git):
    ```bash
    git clone https://github.com/ludson96/6-app-lista-de-compras-estilizado.git

    cd 6-app-lista-de-compras-estilizado
    ```

2.  **Install dependencies** with Flutter:
    ```bash
    flutter pub get
    ```

3.  **Run the application**:
    ```bash
    flutter run
    ```
