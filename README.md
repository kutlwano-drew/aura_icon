
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

![Basic Circle](https://raw.githubusercontent.com/kutlwano-drew/aura_icon/main/assets/example1.gif)


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

![Basic Square](https://raw.githubusercontent.com/kutlwano-drew/aura_icon/main/assets/example2.gif)


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

![floating circles](https://raw.githubusercontent.com/kutlwano-drew/aura_icon/main/assets/example3.gif)


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

![customizing size](https://raw.githubusercontent.com/kutlwano-drew/aura_icon/main/assets/example4.gif)


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

![customizing radius](https://raw.githubusercontent.com/kutlwano-drew/aura_icon/main/assets/example5.gif)


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

![all shapes](https://raw.githubusercontent.com/kutlwano-drew/aura_icon/main/assets/example6.gif)


---

## 🌍 Social & Support

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/K3K41IGAX3)

• <img src="https://upload.wikimedia.org/wikipedia/commons/5/53/X_logo_2023_original.svg" width="14"/>   [X / Twitter](https://x.com/kutlwano_drew)  
• <img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" width="14"/>   [AuraIcon GitHub Repo](https://github.com/kutlwano-drew/aura_icon)  
• <img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" width="14"/>   [My GitHub Profile](https://github.com/kutlwano-drew)  


---

