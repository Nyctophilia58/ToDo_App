# ![](/assets/icon/icon_min.png "Icon") ToDo App

A simple and intuitive ToDo app built with Flutter. Manage your tasks efficiently with a user-friendly interface.

<br/>

## Features

- **Add Tasks**: Quickly add new tasks to your list.
- **Delete Tasks**: Remove completed or unwanted tasks.
- **User-Friendly Interface**: Easy-to-navigate design for better user experience.

<br/>

## Screenshots
![](/assets/app_images/icon.jpg "App Icon")    ![](/assets/app_images/flash_screen.jpg "Flash Screen")  ![](/assets/app_images/home_page.jpg "Home Page")  ![](/assets/app_images/add_new_task.jpg "Add New Task")  ![](/assets/app_images/delete_task.jpg "Delete Task")  

<br/>

## Getting Started
### Prerequisites
- [Flutter](https://flutter.dev/) (>= 3.0.0)
- [Dart](https://dart.dev/)
- A code editor like [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)

<br/>

### Installation
1. Clone the repository:
   
    ```
    git clone https://github.com/Nyctophilia58/ToDo_App.git
    cd ToDo_App
    ```
2. Install dependencies:
    
    ```
    flutter pub get
    ```
3. Run the app:
       
    ```
    flutter run
    ```
<br/>

### Project Structure
<pre>
├── android                  # Android-specific files
├── assets                   # App assets (images, icons)
│   └── icon                 # App icons
│   └── app_images           # App screenshots
├── ios                      # iOS-specific files
├── lib                      # Main Flutter code
│   ├── main.dart            # Entry point of the app
│   ├── Pages                # Different pages related to the project
│   └── data                 # For the database
├── linux                    # Linux-specific files
├── macos                    # MacOS-specific files
├── test                     # Unit and widget tests
├── web                      # Web-specific files
├── windows                  # Windows-specific files
├── .gitignore               # Specifies files and directories that Git should ignore
├── .metadata                # Contains metadata about the Flutter project (IDE specific)
├── README.md                # This README file
├── analysis_options.yaml    # Configuration for Dart analysis options
├── pubspec.lock             # Lock file that records the exact versions of dependencies
└── pubspec.yaml             # Flutter configuration file that lists project dependencies and settings
</pre>

<br/>

### Assets

Make sure to add your assets to the **assets** folder and reference them in `pubspec.yaml`.

    flutter:
      assets:
        - assets/icon/todo-icon.png

<br/>

### App Icon
To change the app icon, replace the image at `assets/icon/icon_min.png` and follow the instructions in the [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons) package documentation.

<br/>

### Dependencies
This app uses the following dependencies:
- hive: ^2.2.3
- hive_flutter: ^1.1.0
- flutter_slidable: ^1.2.0

This app uses the following dev-dependencies:
- hive_generator: ^1.1.3
- build_runner: ^2.1.11
- flutter_launcher_icons: ^0.10.0

<br/>

### Contributing
Contributions are welcome! Please open an issue or submit a pull request.

<br/>

### Contact
For any queries or feedback, please reach out at `nowshingdr@protonmail.com`. **Thank you.**
