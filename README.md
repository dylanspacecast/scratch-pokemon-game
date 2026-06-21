# Pokemon Candy Catcher (minimal)

This repository contains a minimal Scratch project template for a simple game: a Player moves left/right and catches falling Targets to increase score. You provide the sprites. This repo contains project.json and base64 placeholders so you can assemble a .sb3 locally.

Files included:
- project.json — Scratch project JSON (minimal) referencing two sprites: Player and Target, and a Stage variable `score`.
- assets/player.png.b64 — base64 placeholder PNG for player
- assets/target.png.b64 — base64 placeholder PNG for target
- assets/pop.wav.b64 — base64 placeholder WAV sound
- make_sb3.sh — script to assemble a .sb3 from project.json and the decoded assets

How to assemble into pokemon-catcher.sb3 locally (on macOS/Linux):

1. Clone this repo
2. Run `chmod +x make_sb3.sh`
3. Run `./make_sb3.sh`
4. This will produce `pokemon-catcher.sb3` in the repo root. Open it in the Scratch editor (File → Load from your computer).

Notes:
- The project.json is a minimal template. If you want the scripts (blocks) embedded to avoid manual block dragging, reply and I will add them into project.json programmatically.
- Replace the placeholder base64 asset files with your sprite images and sounds, keeping the same filenames, before running the script to include your custom costumes.
