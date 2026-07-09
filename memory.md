# Project Catch-up & Memory: Comparative Public Administration Simulation

This document serves as a status checkpoint for the Comparative Public Administration Simulation project. Use this file on another PC to quickly get up to speed with the repository's status, architectural decisions, and current progress.

---

## 📌 Project Overview
The project is a **13-Round Comparative Public Administration Simulation** designed for a group of 10 students. 
* **Round 1 (Steps 0–4)**: Players choose/confirm their legislature, assign legislative offices (roles), diagnose a governance crisis, determine their reform strategy, and constitute a reform committee to produce a permanent **Assembly Charter**.
* **Subsequent Rounds (2–13)**: The choices made in Round 1 drive the rest of the simulation, affecting persistent governance resources (Administrative Capacity, Public Trust, Political Capital, Stakeholder Support, and Reform Momentum).

---

## 🏗️ Technical Architecture & Stack Decisions
Based on the [Technical Stack & Production Pipeline Analysis](file:///c:/Users/kenec/OneDrive/Desktop/SIMULATION/simulation_tech_stack_analysis.md), the chosen stack and pipeline structure is:

1. **Frontend**: **Next.js (React)** with Tailwind CSS.
2. **Backend/Database**: **Supabase** (PostgreSQL + Realtime Sync) to handle WebSocket real-time updates and lobby persistence over a 24-hour asynchronous cycle.
3. **3D Assets & Interaction**: **Spline 3D Scene Viewer** using dynamic material swapping.
4. **Optimization (ID Card System)**: Rather than heavy 3D avatar meshes, students are represented by glassmorphic **Identity Cards** slotted into desks. This saves ~90% in load times and runtime memory.
5. **Rapid Production (< 24-Hour Turnaround)**:
   * **JSON-Config Driven**: Case studies are parsed from a modular JSON schema declaring themes, rules, and text questions.
   * **Modular 3D Environment**: A single 3D chamber shell in Spline dynamically swaps textures, signage, and mace models based on the country chosen.
   * **TTS Audio**: Automatically generated and cached via **ElevenLabs** or **OpenAI TTS** with localized accents (e.g., Nigerian-accented, British RP) on case study upload.

---

## 🇳🇬 Nigeria v1 Chamber Focus
We have decided to first build **Nigeria v1** based on the House of Representatives (the "Green Chamber") at the NASS complex, Abuja.
* **Layout**: Horseshoe/semi-circular seating arrangement, green leather chairs, Speaker's dais, and a public gallery.
* **Hero Asset**: The **Nigerian Mace** (procedurally required for the assembly to be constituted).
* **Wardrobe Layers**: Avatars styled in traditional Nigerian attire (Agbada, Babariga, Kaftan, Senator Suits, Geles/Wrappers).
* **NPC**: The Sergeant-at-Arms handles the mace procession in step 0.

---

## 🚀 Git Repository Status
The local files have been successfully staged, committed, and pushed to the remote repository.

* **Remote Repository**: [COMPARATIVE-PUBLIC-ADMINISTRATION-SIMULATION-MIVA](https://github.com/kenechukwuuzongwa-ai/COMPARATIVE-PUBLIC-ADMINISTRATION-SIMULATION-MIVA)
* **Branch**: `main`
* **Staged/Pushed Files**:
  * [README.md](file:///c:/Users/kenec/OneDrive/Desktop/SIMULATION/README.md) (Standard README)
  * [MPA simulation rounds.txt](file:///c:/Users/kenec/OneDrive/Desktop/SIMULATION/MPA%20simulation%20rounds.txt) (Original design document specifications)
  * [Design Decision to Make First_ Senate or House of Reps.txt](file:///c:/Users/kenec/OneDrive/Desktop/SIMULATION/Design%20Decision%20to%20Make%20First_%20Senate%20or%20House%20of%20Reps.txt) (Nigeria v1 specifications)
  * [simulation_storyboard_prompts.md](file:///c:/Users/kenec/OneDrive/Desktop/SIMULATION/simulation_storyboard_prompts.md) (Step-by-step visual storyboarding and Midjourney/Mint prompts)
  * [simulation_tech_stack_analysis.md](file:///c:/Users/kenec/OneDrive/Desktop/SIMULATION/simulation_tech_stack_analysis.md) (Architecture evaluation report)
  * Staged images: `COMPLEX.png`, `FRONTVIEW.png`, `NASS-1062x598.jpg`, `NASS.jpg`, `images.jpg`

---

## 📅 Next Steps & Open Decisions
When resuming work on another PC, focus on:
1. **Resolving Open Design Questions**:
   * Determine numerical starting values for the dashboard variables based on the chosen crisis.
   * Finalize the specific cost/benefit trade-offs of the chosen reform strategies.
   * Decide if dynamic stakeholder events (e.g. protests, donor terms) should occur mid-simulation.
2. **Interactive Mockups & Prototyping**:
   * Set up a Next.js framework shell or prototype the lobby in a local/mock sandbox.
   * Load the Spline assets and verify dynamic variable binding.
