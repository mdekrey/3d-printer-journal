# Print

Model: https://www.thingiverse.com/thing:2676295

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
        - Upper vertical separation layers: 2
        - Lower vertical separation layers: 2
        - Support Infill Angles: 45 and -45
        - Dense support 2 layers
    - Other settings
        - 100% bridge speed (to try to get it to adhere less)

Note: I moved this to the bathroom to try a more stable table.

# Results

This worked really well - it needed to be separated with a blade, but came loose clean and was relatively stable. The supports were incredibly dense (default at 30%), and could be lessened more.
