# GitHub Copilot UI Generation Guide

This document is intended for GitHub Copilot (or any LLM) to generate the UI for the Mypcot dashboard screen, as shown in the provided screenshot. Copilot should use the color palette from `lib/helpers/colors.dart` and reference assets from the `assets/` directory. If any asset is missing, use a suitable dummy placeholder.

## Special Instructions for Copilot

- Use the color constants from the `AppColors` class in `lib/helpers/colors.dart`.
- Reference all images and icons from the `assets/` directory. If an asset is missing, use a dummy or placeholder asset.
- Use the Roboto font and the specified font color.
- Recreate the UI layout and style as closely as possible to the screenshot.
- If any UI element or asset is unclear, use a reasonable placeholder and add a comment in the code.

---

## 1. Reference Screenshot

![Dashboard Screenshot](../Screen_1.png,../Screen_2.png,../Screen_3.png)

---

## 2. Color Palette

Use the following color constants from `AppColors` in `lib/helpers/colors.dart`:

- Blue: `AppColors.blue` (#33A1CC)
- Yellow: `AppColors.yellow` (#DCB223)
- Green: `AppColors.green` (#31CE95)
- Teal: `AppColors.teal` (#0F8181)
- Navy: `AppColors.navy` (#2C3D63)
- Orange: `AppColors.orange` (#343434)
- Royal Blue: `AppColors.royalBlue` (#234DDC)
- Pink: `AppColors.pink` (#CE316A)
- Coral: `AppColors.coral` (#FE804E)

---

## 3. Fonts

- Font Family: `Roboto`
- Font Color: `AppColors.navy` (#2C3D63)

---

## 4. Assets

All icons and images should be referenced from the `assets/` directory:

- `assets/icons/` for icons
- `assets/images/` for images

If a required asset is missing, use a dummy asset or a placeholder image/icon.

---

## 5. UI Construction Instructions

- Recreate the dashboard UI as shown in the screenshot.
- Use the color palette and font as specified above.
- Use the provided assets where possible; otherwise, use dummy placeholders.
- Ensure all UI elements (buttons, cards, avatars, etc.) match the style and layout in the screenshot.
- For avatars and user images, use dummy images if not available.
- For icons, use Material icons or dummy SVGs if not available in `assets/icons/`.

---

## 6. Example Widget Usage

```dart
Container(
  color: AppColors.blue, // Use color constants
  child: Text(
    'Welcome, Mypcot !!',
    style: TextStyle(
      fontFamily: 'Roboto',
      color: AppColors.navy,
      fontWeight: FontWeight.bold,
      fontSize: 22,
    ),
  ),
)
```

---

## 7. Notes for LLMs

- Always prefer the color constants from `AppColors`.
- Use asset paths relative to the `assets/` directory.
- If a UI element is unclear, use a reasonable placeholder.
- Maintain the overall layout, spacing, and style as per the screenshot.

---

## 8. Checklist

- [ ] Use all color codes from `AppColors`
- [ ] Use Roboto font
- [ ] Reference assets from `assets/`
- [ ] Match layout and style from screenshot
- [ ] Use placeholders where assets are missing

---

This guide ensures that GitHub Copilot (or any LLM) can generate a consistent and accurate UI for the Mypcot dashboard screen.
