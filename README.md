
# ✨ AuraIcon

AuraIcon is a visual interface layer for emotion-aware, voice-driven, and next-gen apps. Inspired by AI interfaces, it provides dynamic animated containers for icons or widgets that signal interaction, state, and presence — with no external dependencies.

---
# 📌 Features

• Pure Flutter — zero dependencies  
• Glowing, animated "lava lamp" style blobs  
• Circle, square, and floating circles shapes  
• Smooth, performance-friendly animations  
• Fully customizable size, radius, and colors  
• Ready for future enhancements (colors, shapes, and more)  

---

## 🚀 Installation

```bash
flutter pub add aura_icon
````

---

## 🎯 Basic Usage (Circle Shape)

```dart
AuraIcon(
  shape: AuraShape.circle,
  size: 120,
  radius: 40,
  colors: [
    Colors.blue,
    Colors.purple,
    Colors.pink,
  ],
);
```

_(GIF Placeholder — Circle AuraIcon with multi-color glow)_

---

## ◼️ Square Shape Example

```dart
AuraIcon(
  shape: AuraShape.square,
  size: 120,
  radius: 30,
  colors: [
    Colors.red,
    Colors.orange,
    Colors.deepOrange,
  ],
);
```

_(GIF Placeholder — Square AuraIcon with multi-color glow)_

---

## ⚪ Floating Circles Shape Example

```dart
AuraIcon(
  shape: AuraShape.floatingCircles,
  size: 120,
  radius: 50,
  colors: [
    Colors.green,
    Colors.lightGreen,
    Colors.teal,
  ],
);
```

_(GIF Placeholder — Floating Circles AuraIcon with multi-color glow)_

---

## 🎨 Customizing Size

```dart
AuraIcon(
  shape: AuraShape.circle,
  size: 200, // Larger visual presence
  radius: 60,
  colors: [
    Colors.purple,
    Colors.indigo,
  ],
);
```

_(GIF Placeholder — Large AuraIcon with multi-color glow)_

---

## 🎨 Customizing Radius

```dart
AuraIcon(
  shape: AuraShape.circle,
  size: 150,
  radius: 20, // Tighter blob movement
  colors: [
    Colors.orange,
    Colors.deepOrange,
  ],
);
```

_(GIF Placeholder — Small radius AuraIcon with multi-color glow)_

---

## 🛠 Example: All Shapes with Multi-Color Support in a Row

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    AuraIcon(
      shape: AuraShape.circle,
      size: 100,
      radius: 30,
      colors: [Colors.blue, Colors.cyan, Colors.indigo],
    ),
    SizedBox(width: 20),
    AuraIcon(
      shape: AuraShape.square,
      size: 100,
      radius: 40,
      colors: [Colors.red, Colors.orange, Colors.deepOrange],
    ),
    SizedBox(width: 20),
    AuraIcon(
      shape: AuraShape.floatingCircles,
      size: 100,
      radius: 50,
      colors: [Colors.green, Colors.lightGreen, Colors.teal],
    ),
  ],
);
```

_(GIF Placeholder — All AuraIcon shapes with multi-color glow side by side)_

---

## 🌍 Social & Support

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/K3K41IGAX3)

• [X / Twitter](https://x.com/kutlwano_drew)  
• [AuraIcon GitHub Repo](https://github.com/kutlwano-drew/aura_icon)  
• [My GitHub Profile](https://github.com/kutlwano-drew)

---

```

This is your full, exact README.md file for your AuraIcon package — no fluff, no unrelated icons, fully consistent with your implemented API and design.  

If you want me to help with anything else (like formatting or publishing tips), just say the word.
```