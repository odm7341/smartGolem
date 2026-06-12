# Smart Golem

A Minecraft 26.1.2 datapack that makes copper golems remember what items were in chests and walk directly to those chests, with per-golem isolated memory.

## Features

- **Teach by hand**: Hold an item, stand next to a chest, run `/function smart_golem:teach` — the nearest copper golem learns that chest contains that item
- **Auto-learn**: Golems automatically learn from chests they visit. When a golem opens a chest, the datapack scans its contents and creates memories for each item type
- **Smart guidance**: When a golem knows where items are and has visited chests to search, the datapack clears its visited list so it restarts fresh — heading toward the nearest known chest with matching contents
- **Active chest priority**: Prefers chests that currently contain the item over historic (now-empty) chests
- **Per-golem memory**: Each golem has its own isolated memory — no conflicts between different players' golems
- **Memory cleanup**: Orphaned markers at destroyed chests are automatically cleaned up every 5 minutes
- **Debug mode**: Toggle verbose logging with `/function smart_golem:debug/on`

## How it works

### Memory system
Memories are stored as invisible marker entities (`sg_memory` for item-chest pairs, `sg_chest` for chest locations), each tagged with the owning golem's UUID. This allows entity selectors and NBT queries without per-entity NBT modification.

### Teaching (manual)
1. Hold the item you want to teach
2. Stand next to the chest containing that item
3. Run `/function smart_golem:teach`
4. The nearest copper golem learns: "chest at [position] contains [item]"

### Auto-learning
Every 5 seconds, the datapack scans all copper golems' `Brain.memities."minecraft:visited_block_positions"` to discover chests they've visited. For each visited chest, it scans the contents and creates memories.

### Guidance
When a copper golem has visited chest positions and the datapack knows about matching chests, it clears the golem's `visited_block_positions` list. This causes the golem to restart its search from scratch, naturally heading toward the nearest chest — which is now the known target chest.

## Installation

1. Copy the `smart_golem` folder into your world's `datapacks/` folder
2. Run `/reload` in-game
3. You should see: `[Smart Golem] Loaded! Copper golems learn from chests and remember item locations.`

## Usage

### Teaching
```
/function smart_golem:teach
```
Hold an item, stand next to a chest with a copper golem nearby.

### Debug mode
```
/function smart_golem:debug/on
/function smart_golem:debug/off
```

### Check memory
```
/data get entity @e[type=marker,tag=sg_memory,limit=1]
```

## Requirements

- Minecraft Java Edition **26.1.2** (data pack format 101)
- Cheats enabled

## File structure

```
smart_golem/
├── pack.mcmeta
└── data/
    ├── minecraft/tags/function/
    │   ├── load.json
    │   └── tick.json
    └── smart_golem/
        ├── function/
        │   ├── load.mcfunction          # Scoreboard init
        │   ├── tick.mcfunction          # Timer-driven dispatch
        │   ├── teach.mcfunction         # Player teach command
        │   ├── teach_at.mcfunction      # Macro: summon markers
        │   ├── debug/
        │   │   ├── on.mcfunction
        │   │   └── off.mcfunction
        │   ├── golem/
        │   │   ├── guide.mcfunction     # Find golems with visited chests
        │   │   ├── guide_golem.mcfunction
        │   │   ├── guide_macro.mcfunction  # Find nearest matching marker
        │   │   ├── do_guide.mcfunction     # Clear visited positions
        │   │   ├── set_active_target.mcfunction
        │   │   ├── set_any_target.mcfunction
        │   │   ├── auto_learn.mcfunction
        │   │   ├── prepare_learn.mcfunction
        │   │   ├── prepare_next_chest.mcfunction
        │   │   ├── process_visited.mcfunction
        │   │   ├── learn_chest.mcfunction
        │   │   ├── process_item.mcfunction
        │   │   └── spawn_memory.mcfunction
        │   └── memory/
        │       └── forget.mcfunction    # Cleanup orphaned markers
        └── tags/block/
            └── storage_containers.json
```
