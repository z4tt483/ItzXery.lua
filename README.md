# ItzXery.lua

A curated collection of Lua executor scripts for Roblox by **ItzXery**.  
This repository contains a variety of scripts: performance optimizers, ESP utilities, UI modules, gameplay helpers, tools, and random experimental scripts.  
All scripts are intended for use with Lua executors that support `HttpGet` and `loadstring`.

---

## 📦 What this repo contains
- **AntiLag2025** — Performance and visual optimizations, splash screen, lighting tweaks, ragdoll on death (R6/R15), jump button resizing, and other quality-of-life fixes.
- **ESP-Players** — Player ESP utilities.
- **UI Modules** — Reyfield/Kavo style GUIs adapted for Android and PC, including full-feature GUIs and settings.
- **Movement & Helpers** — Wallhop/Wallflick aids (non-flying), smooth camera swipe, infinite jump toggles, speed and jump adjustments.
- **Tools & Utilities** — Slap tool, teleport tools, auto-respawn, anti-shadow, and more.
- **Random & Experimental** — Small experiments, proof-of-concept scripts, and one-off utilities labeled as `random/` for testing and development.
- **Examples** — Usage snippets for each script showing how to load them with executors.

---

## ⚙️ How to use
Load scripts using any executor that supports HTTP requests:
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/ItzXery/ItzXery.lua/main/Esp-Players.lua"))()
