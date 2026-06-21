#!/bin/bash
set -e
# Assemble pokemon-catcher.sb3 from project.json and base64 asset placeholders.
WORKDIR=$(pwd)
TMPDIR=$(mktemp -d)
echo "Building in $TMPDIR"
# create assets dir
mkdir -p "$TMPDIR/assets"
# decode base64 placeholders
base64 --decode "$WORKDIR/assets/player.png.b64" > "$TMPDIR/assets/player-costume.png"
base64 --decode "$WORKDIR/assets/target.png.b64" > "$TMPDIR/assets/target-costume.png"
base64 --decode "$WORKDIR/assets/pop.wav.b64" > "$TMPDIR/assets/pop.wav"
# prepare zip structure
cp "$WORKDIR/project.json" "$TMPDIR/project.json"
# write asset manifest (md5ext filenames) — using the filenames already referenced in project.json
cd "$TMPDIR"
zip -r "$WORKDIR/pokemon-catcher.sb3" project.json assets >/dev/null
echo "Created $WORKDIR/pokemon-catcher.sb3"
rm -rf "$TMPDIR"
