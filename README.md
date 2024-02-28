# Lua Suite for Debug Output in Dave Mirra Freestyle BMX 2

This Lua suite enhances Dave Mirra Freestyle BMX 2 gameplay by providing debug output and additional features.

## Layout

- **Core/DM2_Core.lua**: Contains all the necessary structures and functions.
- **dm2_stats.lua**: Provides a text overlay with stats.

## Todos

- Incorporate more detailed stats.
- Implement TAS (Tool-Assisted Speedruns) recordings.
- Enhance memory manipulation for additional functionalities.


## Current Debug Features

- Speed: Shows players speed value
- X, Y, Z Position: Shows location of player in the map. (Calculations not finalized)
- Session Timer: Timer that starts at the beginning of any session. Will also reflect in replays
## How to Install

1. Ensure you have Lua Core Dolphin installed. If not, download it from [Lua Core Dolphin GitHub page](https://github.com/TASLabz/dolphin-lua-core).
2. Place the Lua scripts in the following directory: `[Dolphin Emulator Directory]/Scripts/Sys/`.
3. **Tip**: To automatically run a script on start, append its filename with an underscore (e.g., `_dm2_stats.lua`).

## Usage

1. Launch Dave Mirra Freestyle BMX 2 in Dolphin Emulator.
2. (If you didn't underscore your file) Load the Lua scripts through the Dolphin Emulator interface. (View -> Execute Script)
3. Enjoy enhanced debug output and additional features during gameplay!
