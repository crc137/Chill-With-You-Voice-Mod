#!/usr/bin/env bash

set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUNDLE="voice_assets_all_32450596a5b4118c119776add9782a1f.bundle"

find_game() {
  local candidates=(
    "${GAME:-}"
    "$HOME/.steam/steam/steamapps/common/Chill with You Lo-Fi Story"
    "$HOME/.local/share/Steam/steamapps/common/Chill with You Lo-Fi Story"
    "$HOME/.var/app/com.valvesoftware.Steam/.local/share/Steam/steamapps/common/Chill with You Lo-Fi Story"
    "/c/Program Files (x86)/Steam/steamapps/common/Chill with You Lo-Fi Story"
    "/c/Program Files/Steam/steamapps/common/Chill with You Lo-Fi Story"
  )
  local d
  for d in "${candidates[@]}"; do
    [[ -n "$d" && -d "$d/Chill With You_Data/StreamingAssets/aa" ]] && { echo "$d"; return 0; }
  done
  return 1
}

GAME_DIR="$(find_game || true)"
if [[ -z "$GAME_DIR" ]]; then
  echo "could not find the game folder" >&2
  echo "run with:  GAME='/path/to/Chill with You Lo-Fi Story' ./uninstall.sh" >&2
  exit 1
fi
AA="$GAME_DIR/Chill With You_Data/StreamingAssets/aa"

if [[ -f "$AA/catalog.json.modbak" ]]; then
  cp "$AA/catalog.json.modbak" "$AA/catalog.json" && echo "catalog.json restored"
else
  echo "no catalog.json.modbak, leaving it" >&2
fi

if [[ -f "$AA/StandaloneWindows64/$BUNDLE.modbak" ]]; then
  cp "$AA/StandaloneWindows64/$BUNDLE.modbak" "$AA/StandaloneWindows64/$BUNDLE" && echo "original bundle restored"
else
  echo "no bundle backup, use Steam -> Verify integrity to restore it" >&2
fi