<div align="center">

![Header](https://capsule-render.vercel.app/api?type=waving&color=00A19B&height=250&section=header&text=F1%20Pro%20Dashboard&fontSize=70&fontColor=ffffff&animation=twinkling&desc=Swift%20Powered%20Hybrid%20Desktop%20Engine&descAlignY=75)

**A high-performance, cross-platform hybrid desktop application powered by the Swift Engine.**

[![Swift](https://img.shields.io/badge/Swift-F05138?style=for-the-badge&logo=swift&logoColor=white)](https://swift.org/)
[![Windows SDK](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)](https://www.microsoft.com/)
[![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)]()
[![ChartJS](https://img.shields.io/badge/Chart.js-FF6384?style=for-the-badge&logo=chartdotjs&logoColor=white)]()

---
</div>

## 🏎️ Overview
**F1 Pro Dashboard** is an experimental project that proves the capability of the **Swift Programming Language** running locally on a **Windows System**. It demonstrates how to combine the raw computational speed of Swift as a backend "engine" with the visual richness of HTML/CSS/JS to create a stunning, native-feeling Desktop Application.

The entire backend logic is centralized in a monolithic `main.swift` file.

<br>

## ✨ Premium Features
*   **🧠 Monolithic Swift Engine:** The entire backend data structure, JSON serialization, and Process execution logic runs from a single, highly optimized `main.swift` file.
*   **🏎️ Dynamic Multi-Driver Database:** Includes comprehensive data for *Lewis Hamilton*, *Max Verstappen*, and *Charles Leclerc*.
*   **🎨 Reactive Theming:** The dashboard UI dynamically changes its glowing accent colors based on the selected driver's team (e.g., Petronas Teal, Red Bull Blue, Ferrari Red).
*   **📊 Interactive Data Visualization:** Utilizes `Chart.js` for rendering a fluid, animated career performance line chart.
*   **🖥️ Hybrid App Mode:** Completely bypasses standard browser UI by launching Microsoft Edge in `--app` mode, delivering a true Desktop App experience.

<br>

## ⚙️ Architecture Workflow
```mermaid
graph TD;
    A[main.swift] -->|Compiles Array Data| B(JSON Serialization);
    B -->|Writes| C[f1-website/data.js];
    A -->|Spawns Foundation.Process| D{Edge App Wrapper};
    D -->|Reads| E[f1-website/index.html];
    C -->|Injects Data| E;
```

<br>

## 🚀 How to Run (Windows)

Ensure you have the [Swift Toolchain for Windows](https://www.swift.org/download/#windows) installed.

1. **Clone or Open the Repository** in your IDE (e.g., IntelliJ, VS Code).
2. **Open the Terminal** within the root directory (`LatihanSwift/`).
3. **Execute the Swift Compiler:**
```bash
swift run
```
4. **Enjoy the App!** A standalone F1 Dashboard application will instantly launch on your desktop.

<br>

## 📂 Project Structure
```text
LatihanSwift/
├── Package.swift               # Swift Package Configuration
├── Sources/
│   └── LatihanSwift/
│       └── main.swift          # 🧠 THE MONOLITHIC CORE
└── f1-website/                 # 🎨 UI / Rendering Layer
    ├── index.html              # Layout
    ├── styles.css              # Premium Animations & Colors
    ├── script.js               # Logic & DOM manipulation
    └── assets/                 # Generated High-Res Images
```

<br>

---
<div align="center">
<i>Built with adrenaline and Swift. 🏁</i>
</div>
