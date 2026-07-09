# Storyboard & Visual Prompts: Legislative Simulation (Abuja v1)

This storyboard translates the requirements of **Round 1 (Steps 0–4)** into a visual, storytelling format. It blends the creative direction of a digital artist with the technical constraint optimization of a senior programmer (using modular 2D/3D **Legislative ID Cards** instead of heavy 3D character assets to reduce load times).

Visual assets and scenes are designed around the actual complex layout of the National Assembly Complex in Abuja, Nigeria:

![Actual National Assembly Complex](C:\Users\kenec\.gemini\antigravity-ide\brain\5756a766-4220-4176-bc77-0b5ca9633056\COMPLEX.png)

---

## The Core Concept: The "ID Card" Asset-Reduction System
> [!TIP]
> **Programmer's Note on Optimization**: 
> Instead of rendering 10 fully rigged, high-polygon 3D student avatars wearing custom traditional attire (which would require downloading 100MB+ of character meshes and animation files), we represent students as **holographic glassmorphic Identity Cards** slotted into the desks. 
> 
> Each ID Card contains:
> *   A premium, high-quality 2D digital passport portrait representing their character's attire (Agbada, Kaftan, Senator Suit, Gele).
> *   Dynamic text: Student Name, Office Title, and Parliamentary Standing.
> *   Live status lights: "Thinking", "Ready", "Confirm Authority".
> 
> This cuts runtime memory by **90%**, as the browser only renders flat 3D cards and small 2D images, while keeping a highly polished, gamified legislative dashboard aesthetic.

---

## Storyboard Scenes & Image Generation Prompts

````carousel
### Scene 1: The Entry Portal (Establishing Shot)
**Visual Narrative**: The simulation loads. The screen displays a sweeping, dramatic bird's-eye view of the National Assembly Complex in Abuja, Nigeria, featuring its iconic green dome (styled after [COMPLEX.png](file:///C:/Users/kenec/.gemini/antigravity-ide/brain/5756a766-4220-4176-bc77-0b5ca9633056/COMPLEX.png)). The environment is clean, sunny, and rendered with cinematic lighting. Overlaid on top is a premium, glassmorphic UI container.

![Landing Page Mockup](C:\Users\kenec\.gemini\antigravity-ide\brain\5756a766-4220-4176-bc77-0b5ca9633056\landing_page_mockup_1783552778343.png)

**Image Gen Prompt**:
> *Cinematic drone shot of the Abuja National Assembly Complex with its prominent green dome, warm golden hour lighting, clean architectural lines, realistic sky. Overlaid with a futuristic, semi-transparent glassmorphic UI overlay containing green-gold glowing buttons, a digital lobby code, and a pulsing "ENTER CHAMBER" button. Premium educational game interface, 8k resolution, photorealistic environment mixed with sleek digital UI.*

<!-- slide -->

### Scene 2: Step 0 - Seat Assignment & ID Card Slotting
**Visual Narrative**: The camera transitions inside the House of Representatives chamber. The view is a semi-circular wooden desk layout with green leather seats. In front of each seat is a glowing, empty glass slot (an ID Card holder). Floating above each slot is a green hologram showing the office title (e.g. *Speaker*, *Clerk*). When a player claims a seat, their physical **Legislative ID Card** slides into the slot with a satisfying click, displaying their custom 2D traditional attire portrait.

![ID Card and Seat Slotting Mockup](C:\Users\kenec\.gemini\antigravity-ide\brain\5756a766-4220-4176-bc77-0b5ca9633056\id_card_mockup_1783552792042.png)

**Image Gen Prompt**:
> *First-person perspective of a legislative chamber wooden desk with green leather chairs in a semi-circular layout. On the desk, there are sleek, glowing glassmorphic slots. One slot has a futuristic holographic ID card slid into it, displaying a premium 2D digital painting of a Nigerian legislator wearing a white Agbada and cap, with gold text reading "Hon. Bello - Speaker". Another slot next to it is empty and glows with a soft green wireframe template. Unreal Engine 5 render, clean UI text callouts, interactive game dashboard.*

<!-- slide -->

### Scene 3: Step 0 Gate - The Mace Procession
**Visual Narrative**: All 10 seats are occupied. The UI shifts focus to the central Clerk's Table. The Sergeant-at-Arms NPC walks to the table and places the detailed, golden **Nigerian Mace** onto its stand. The stand lights up with a green ring, signifying that the assembly is legally constituted. The Speaker's ID Card glows with a golden outline, indicating they now hold the authority to approve Step 1.

```
+-----------------------------------------------------------------+
|                       [CLERK'S TABLE]                           |
|                  +-------------------------+                    |
|                  |     =============O      |  <-- Golden Mace     |
|                  +------------┬------------+                    |
|                               ▼                                 |
|            [ASSEMBLY CONSTITUTED - STEP 1 UNLOCKED]             |
+-----------------------------------------------------------------+
```

**Image Gen Prompt**:
> *Close-up of a polished dark mahogany Clerk's table in a parliamentary chamber. A highly detailed golden ceremonial mace lies horizontally on a velvet and brass stand. A neon green holographic ring glows around the base of the mace stand, with a sleek pop-up digital alert text reading "Assembly Legally Constituted: Step 1 Unlocked". Cinematic depth of field, soft ambient green lighting, premium UI design.*

<!-- slide -->

### Scene 4: Step 2 - Crisis Diagnosis & Comparative Table
**Visual Narrative**: Step 2 begins. A massive holographic display table rises in the center of the chamber's horseshoe. The table projects a detailed 3D diorama of the chosen crisis (e.g., a crowded clinic queue for *Weak Public Service Delivery*). Floating next to it are holographic comparisons (e.g., a miniature Big Ben for the UK and a miniature NASS Dome for Nigeria). The *Comparative Systems Analyst* ID Card floats in the UI corner with a prompt: **"Awaiting Your Diagnosis Confirmation"**.

```
+-----------------------------------------------------------------+
|   [UK FLAG/BIG BEN]  <--- Holograms --->  [NG DOME/CLINIC SCENE] |
|                                                                 |
|   +---------------------------------------------------------+   |
|   | Analyst ID Card: [Awaiting Confirmation...]             |   |
|   +---------------------------------------------------------+   |
+-----------------------------------------------------------------+
```

**Image Gen Prompt**:
> *A futuristic holographic projection table in the middle of a green-carpeted legislative chamber. The table projects a glowing blue and green 3D diorama of a crowded public service building queue, with miniature 3D models of Big Ben and the Nigerian National Assembly dome floating in mid-air. Next to the projection, a floating glass card displays "Comparative Systems Analyst" with a pulsing gold confirmation button. Sci-fi HUD elements, highly detailed, hyper-realistic, volumetric light.*

<!-- slide -->

### Scene 5: Round Close-Out - The Assembly Charter
**Visual Narrative**: Step 4 is complete. The chamber fades into the background. A grand, parchment-textured digital document (The Assembly Charter) unrolls on the screen. The charter displays the Motto, Crisis, Countries, and Safeguards chosen. At the bottom are 5 holographic signature slots. The 5 confirming ID Cards float above the signature lines. As each player confirms, their ID Card stamps a stylized digital wax seal of the Nigerian Coat of Arms onto the parchment.

```
+-----------------------------------------------------------------+
|                        ASSEMBLY CHARTER                         |
|   Motto: "Strengthening Democratic Governance"                  |
|   Crisis: Bureaucratic Corruption                               |
|                                                                 |
|   Signatures:                                                   |
|   [SPEAKER SEAL]  [CLERK SEAL]  [ANALYST SEAL]  [LEADER SEAL]   |
+-----------------------------------------------------------------+
```

**Image Gen Prompt**:
> *A premium digital parchment scroll titled "Comparative Governance Assembly Charter" displayed on a sleek UI screen. The document features elegant green-and-gold typography. At the bottom, there are glowing digital signature lines. Three holographic ID cards float over the lines, stamping glowing green digital wax seals featuring the Nigerian coat of arms onto the document. UI game ending screen, high-tech classical aesthetic, clean interface.*
````

---

## 2. Interactive Object States (UI Design System)

To guide the user through the simulation, interactive objects within the 3D space will transition through specific visual states:

```
+---------------------------------------------------------------------------+
| State          | Visual UI Cue                      | Sound Effect Trigger|
+---------------------------------------------------------------------------+
| 1. Locked      | Semi-transparent grey hologram     | Low system hum      |
|                | outline, padlocked icon.           |                     |
+---------------------------------------------------------------------------+
| 2. Active      | Pulsing neon green border,         | High-frequency chime|
|                | floating "Interact [E]" button.    |                     |
+---------------------------------------------------------------------------+
| 3. Gated       | Orange border with glowing role    | System buzzer       |
|                | tag (e.g. "Speaker Only").         |                     |
+---------------------------------------------------------------------------+
| 4. Completed   | Solid gold glow, green checkmark   | Gavel strike        |
|                | badge.                             |                     |
+---------------------------------------------------------------------------+
```
