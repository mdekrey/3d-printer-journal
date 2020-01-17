# Print

Model: https://www.myminifactory.com/object/3d-print-openforge-pillar-62308
Slicer: Simplify3d
Filament: Blue PLA from Flashforge

Settings:
- 0.1mm resolution
- Mostly default for Flashforge Creator Pro, using PLA, except:
    - Extruder heat at 200C
    - 0.1mm layer height, 200% for first layer, 8 top/bottom layers, 3 perimeter shells (As seen on [Fat Dragon Games' mini tutorial](https://www.youtube.com/watch?time_continue=716&v=AqEWl51s9Rw&feature=emb_logo))
    - Random perimeter start points

# Results

This print had "pillowing" on the top. Thin pillows are due to too few top layers. Since this was increased and it didn't appear thin, this isn't the cause. The other cause for pillowing is lack of part cooling.

Examining my printer, I see that the factory cooling fan comes in from the left extruder, where my white PLA is loaded. The right extruder (blue PLA) probably gets significantly less cooling as a result. I'll have to switch sides of the filament later to see if this is what's causing all my problems with blue prints.
