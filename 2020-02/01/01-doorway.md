# Print

Model: OpenForge 2.0 stone, 2 inch standard door wall (https://github.com/devonjones/openforge-tutorials/blob/master/sets/basic.md)
    - Manual supports, used auto-generated but removed the ones along the edge of the archway.

Slicer: Simplify3d

Filament: Grey concrete PLA from Hatchbox

Settings:
- 0.1mm resolution
- Mostly default for Flashforge Creator Pro, using PLA, except:
    - Extruder heat at 205C
    - 200% for first layer, 4 top/bottom layers, 2 perimeter shells (As seen on [Fat Dragon Games' mini tutorial](https://www.youtube.com/watch?time_continue=716&v=AqEWl51s9Rw&feature=emb_logo))
    - 20% infill
    - Random perimeter start points
    - Raft (because the grey concrete won't adhere properly otherwise, with tearing, etc.)
    - Support settings
        - Upper vertical separation layers: 3
        - Lower vertical separation layers: 3
        - Support Infill Angles: 45 and -45
        - Dense support 3 layers, 80%
        - Support infill: 15%
        - Extra Inflation Distance: 0.1mm
    - Other settings
        - 100% bridge speed (to try to get it to adhere less)

Note: I moved this to the bathroom to try a more stable table.

# Results

This doorway turned out incredibly well. There was stringiness between the support and the side walls, which I'd hoped would be cleaned up by removing the extra supports. It still cleaned up easily, though, using a box cutter to remove the support.