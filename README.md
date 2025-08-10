# AuraIcon

AuraIcon is a visual interface layer for emotion-aware, voice-driven, and next-gen apps. Inspired by AI interfaces, it provides dynamic animated containers for icons or widgets that signal interaction, state, and presence — with no external dependencies.

---
# ✨ AuraIcon

**AuraIcon** is a visual interface layer for **emotion-aware**, **voice-driven**, and **next-gen apps**.  
Inspired by AI interfaces, it provides dynamic, animated containers for icons or widgets that signal **interaction**, **state**, and **presence** — with **no external dependencies**.

---

# 📌 Features

• Pure Flutter — zero dependencies  
• Glowing, animated "lava lamp" style blobs  
• Works as a container for icons or widgets  
• Smooth, performance-friendly animations  
• Fully customizable size and radius  
• Ready for future enhancements (colors, shapes, and more)  

---

## 🚀 Installation

```bash
flutter pub add aura_icon
````

---

## 🎯 Basic Usage

```dart
import 'package:flutter/material.dart';
import 'package:aura_icon/aura_icon.dart';

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AuraIcon(
        size: 120,
        radius: 40,
        child: Icon(Icons.mic, color: Colors.white, size: 40),
      ),
    );
  }
}
```

*(GIF Placeholder — Basic AuraIcon example)*

---

## ⚙️ Customizing Size

```dart
AuraIcon(
  size: 200, // Larger visual presence
  radius: 60,
  child: Icon(Icons.waves, color: Colors.white, size: 50),
);
```

*(GIF Placeholder — Large AuraIcon)*

---

## ⚙️ Customizing Radius

```dart
AuraIcon(
  size: 150,
  radius: 20, // Tighter blob movement
  child: Icon(Icons.music_note, color: Colors.white, size: 40),
);
```

*(GIF Placeholder — Small radius AuraIcon)*

---

## 🎨 Combining with Other Widgets

```dart
AuraIcon(
  size: 140,
  radius: 45,
  child: CircleAvatar(
    backgroundImage: NetworkImage('https://via.placeholder.com/150'),
    radius: 35,
  ),
);
```

*(GIF Placeholder — AuraIcon with profile picture)*

---

## 🛠 Example: Multiple AuraIcons in a Row

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    AuraIcon(size: 100, radius: 30, child: Icon(Icons.home, color: Colors.white)),
    SizedBox(width: 20),
    AuraIcon(size: 100, radius: 40, child: Icon(Icons.favorite, color: Colors.white)),
    SizedBox(width: 20),
    AuraIcon(size: 100, radius: 50, child: Icon(Icons.settings, color: Colors.white)),
  ],
);
```

*(GIF Placeholder — Multiple AuraIcons side by side)*

---

## 🌍 Social & Support

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/K3K41IGAX3)

• <img src="https://upload.wikimedia.org/wikipedia/commons/5/53/X_logo_2023_original.svg" width="14"/>   [X / Twitter](https://x.com/kutlwano_drew)  
• <img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" width="14"/>   [AuraIcon GitHub Repo](https://github.com/kutlwano-drew/aura_icon)  
• <img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" width="14"/>   [My GitHub Profile](https://github.com/kutlwano-drew)  

---



