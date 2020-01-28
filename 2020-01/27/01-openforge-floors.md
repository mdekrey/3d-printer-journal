# Print

Model: OpenForge 2.0 stone, 8 1.5x1.5 floors for corners (https://github.com/devonjones/openforge-tutorials/blob/master/sets/basic.md)

Slicer: Simplify3d

Filament: Concrete Grey PLA from Hatchbox

Settings:
- 0.1mm resolution
- Mostly default for Flashforge Creator Pro, using PLA, except:
    - Extruder heat at 205C
    - 0.1mm layer height, 200% for first layer, 8 top/bottom layers, 3 perimeter shells (As seen on [Fat Dragon Games' mini tutorial](https://www.youtube.com/watch?time_continue=716&v=AqEWl51s9Rw&feature=emb_logo))
    - 30% infill
    - Random perimeter start points
    - No supports needed
    - Raft

# Results

I cancelled this print in the middle of layer 5. The raft wasn't adhering to itself correctly, creating lumpiness and tearing across the build.

I believe that this is either due to underextrusion, or the new fan duct is actually cooling _too much_ despite the holes. Since the placement changed, this could be the cause of it, as I think the new duct outlet is closer to the nozzle.
