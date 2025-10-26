# ItzXery.lua — As follows

**A curated collection of Lua executor scripts for Roblox by _ItzXery_.**  
These scripts are designed for executors that support `HttpGet` and `loadstring`. This documentation covers the two main active scripts: **ESP-Players** and **AntiLag2025**, including their full features, usage, and professional notes.

---

## 📦 Main Script Summary

| Script            | Brief Description                                                                 |
|------------------|---------------------------------------------------------------------------------|
| **ESP-Players**   | ESP utility to highlight other players in real-time, with customizable colors and automatic updates for new/exiting players. |
| **AntiLag2025**   | Roblox performance and visual optimization package: FPS boost, ultra lighting, anti-shadow, R6/R15 ragdoll, splash screen, jump button resizing, and other quality-of-life features. |

---

## 1. ESP-Players

**Detailed Description:**  
ESP-Players is a utility that highlights other players in the Roblox map, designed to increase awareness in PvP, roleplay, or debugging. It is lightweight, so it does not reduce performance, and is compatible with both Android and PC devices.

**Main Features**
- **Real-Time Player Highlight:** Other players are visible through walls or objects (box, outline, label).  
- **Customizable ESP Colors:** Users can set highlight colors according to their preference.  
- **Self-Exclusion:** The local player is not highlighted.  
- **Auto-Update:** Automatically detects new players entering or leaving the game.  
- **Performance Optimized:** Lightweight to reduce overhead and maintain stable FPS.  
- **Wide Compatibility:** Works across various Roblox maps and games on Android and PC.

**Notes**
- ESP only works on executors that support `HttpGet` and `loadstring`.  
- Can be used alongside other performance optimization scripts like AntiLag2025.  
- Does not interfere with normal player interaction.

---

## 2. AntiLag2025

**Detailed Description:**  
AntiLag2025 is a comprehensive optimization package for Roblox. It focuses on increasing FPS, visual stability, and gameplay comfort without breaking the original game aesthetics. Compatible with Android & PC devices and maps with heavy visual effects.

**Primary Goals**
- Speed up rendering and reduce lag.  
- Reduce visual resource usage without changing essential assets.  
- Add quality-of-life (QoL) features such as splash screen, ragdoll, and jump button adjustment.

**Full Features**

### 🔹 Visual & Performance Optimization
- **FPS Boost:** Disables heavy visual effects and optimizes rendering.  
- **Ultra Lighting:** Reduces dynamic shadows and lighting for stable FPS.  
- **Anti Shadow:** Minimizes or disables shadows of certain parts for maximum performance.  
- **Automatic Material & Transparency:** Sets parts to lightweight materials, except important parts named `DamageBrick`.  
- **Effect Cleanup:** Removes particles, blur, and heavy post-processing.  
- **Transparency Adjustment:** High transparency parts are optimized to reduce visual lag.

### 🔹 GUI & Controls
- **Splash Screen:** Initial screen with *"Tap To Remove Page"* text while CoreGui and controls are locked.  
- **Rainbow Text GUI:** Dynamic color effect on GUI for aesthetic improvement.  
- **Jump Button Resizer:** Jump button can be enlarged and moved according to user preference.  
- **Dynamic Controls:** Splash screen and *Skip Loading* button allow instant GUI and control activation.

### 🔹 Gameplay & Quality-of-Life (QoL)
- **Ragdoll on Death (R6 & R15):** Character falls realistically when dying or resetting.  
- **Fast Respawn:** Respawn process is accelerated for smoother gameplay.  
- **DamageBrick Exception:** Parts named `DamageBrick` are not modified in material, transparency, or shadow.  
- **Map Compatibility:** AntiLag features work on various maps and game scales.  
- **Light Visual Effects:** Maintains game aesthetics without causing lag.

### 🔹 Stability & Compatibility
- **Multi-Platform:** Optimized for Android & PC.  
- **Executor-Friendly:** Only requires an executor that supports `HttpGet` and `loadstring`.  
- **Safe Configuration:** Does not modify essential game assets and preserves normal player interaction.

---

## 3. Usage Recommendations

- Run **AntiLag2025** first to maximize FPS and visual stability.  
- Run **ESP-Players** afterward to highlight other players without reducing performance.  
- Enable FPS Boost & Ultra Lighting when playing on large servers or heavy maps.  
- Use the *Skip Loading* button to instantly activate GUI & controls during the splash screen.  
- Avoid enabling part effects that may conflict with game mechanics.

---

## 4. Best Practices & Ethics

- Use scripts for **development, testing, or personal use**.  
- Avoid usage that harms other players or violates Terms of Service.  
- Scripts are tested on executors supporting `HttpGet` & `loadstring`. Behavior may differ on restricted executors.  
- Always consider device performance before enabling all features at once.

---

## 5. Contact & Contribution

- **Creator / Maintainer:** ItzXery  
- Contributions (pull requests / issues) can be submitted via the main GitHub repository, with clear descriptions of changes and technical reasoning.

---

## 6. License (Optional)

- Recommended: **MIT License** or **Unlicense** so users understand usage and contribution rights.

---

**Final Notes:**  
This documentation is ready to be included in the official `README.md` of the repository. It covers all features, descriptions, and usage tips for **ESP-Players** and **AntiLag2025**, without extra load examples.

---

## 7. Loadstring / How to Run the Scripts

Use the following snippet to run both scripts directly on Roblox executors:

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/z4tt483/ItzXery.lua/main/auto-activate-Antilag%26Esp-Players.lua"))()
