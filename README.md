# Facebook UI Clone 📱

A beautiful Facebook mobile UI clone built with Flutter that replicates the main feed interface of Facebook's mobile application.
This was made by the sole porpouse of practicing my front-end development skills

## ✨ Features

- **Authentic Facebook UI**: Pixel-perfect recreation of Facebook's mobile interface
- **Stories Section**: Interactive stories with user avatars and status indicators
- **News Feed**: Dynamic publication feed with realistic content
- **Responsive Design**: Optimized for different screen sizes
- **Device Preview**: Built-in device preview for testing across different devices
- **Custom Icons**: Custom icon font for Facebook-specific UI elements
- **Realistic Data**: Uses Faker library to generate realistic user content

## 🎯 Screenshots

The app includes several key Facebook UI components:
- Top navigation bar with Facebook logo and search/messenger icons
- Stories horizontal scroll view
- "What's on your mind?" post composer
- Quick actions (Photo/Video, Tag Friends, etc.)
- News feed with publications, reactions, and interactions

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.8.1 or higher)
- Dart SDK
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone <your-repository-url>
   cd facebook_ui
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

### Device Preview

The app includes Device Preview functionality for testing across different devices. To enable it:

1. Open `lib/main.dart`
2. Change `enabled: false` to `enabled: true` in the DevicePreview configuration
3. Run the app to see device preview options

## 📦 Dependencies

- **flutter_svg**: For SVG asset rendering
- **device_preview**: For testing across different device sizes
- **faker**: For generating realistic fake data
- **timeago**: For displaying relative timestamps
- **cached_network_image**: For optimized image loading and caching
- **cupertino_icons**: For iOS-style icons

## 🏗️ Project Structure

```
lib/
├── main.dart                 # App entry point
├── facebook_ui/
│   ├── facebook_ui.dart     # Main Facebook UI page
│   └── widgets/             # Reusable UI components
│       ├── avatar.dart      # User avatar widget
│       ├── circle_button.dart # Circular button component
│       ├── publication_item.dart # News feed post item
│       ├── quick_actions.dart # Quick action buttons
│       ├── stories.dart     # Stories section
│       ├── story_item.dart  # Individual story item
│       └── whatonyourmind.dart # Post composer
├── icons/
│   └── custom_icons.dart    # Custom icon definitions
└── models/
    ├── publication.dart     # Publication and User models
    └── story.dart          # Story model

assets/
├── emojis/                 # Reaction emoji SVGs
├── fonts/                  # Custom fonts
├── icons/                  # UI icons
├── logos/                  # Facebook logo
├── publications/           # Sample publication images
├── users/                  # Sample user avatars
└── wallpapers/            # Background images
```

## 🎨 Assets

The project includes a comprehensive set of assets:

- **Emojis**: All Facebook reaction emojis (like, love, laugh, sad, angry, wow)
- **Icons**: Custom icon font for Facebook-specific UI elements
- **Sample Images**: User avatars, publication images, and wallpapers
- **Fonts**: Custom typography matching Facebook's design

## 🛠️ Customization

### Adding New Reactions
1. Add new emoji SVG files to `assets/emojis/`
2. Update the `Reaction` enum in `lib/models/publication.dart`
3. Update reaction handling in publication widgets

### Modifying Sample Data
- Edit the data generation logic in `facebook_ui.dart`
- Replace sample images in the `assets/` directories
- Customize the Faker data generation parameters

### Styling
- Font family is set to 'Nunito' in `main.dart`
- Colors and spacing follow Facebook's design system
- Custom icons are defined in `lib/icons/custom_icons.dart`

## 📱 Supported Platforms

- ✅ Android
- ✅ iOS
# Supported but not as pretty
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## 📄 License

This project is for educational purposes only. Facebook and its design are trademarks of Meta Platforms, Inc.

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Facebook/Meta for the design inspiration
- Community contributors and package maintainers

---

**Note**: This is a UI clone for educational purposes and is not affiliated with Meta Platforms, Inc. or Facebook.
