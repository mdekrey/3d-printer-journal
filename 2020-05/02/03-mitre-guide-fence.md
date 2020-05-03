# Print

Model: Custom mitre guide fence - see [the SCAD file](./protractor.scad)
    - Widened the setting gap, shortened the setting wall, and fixed some calculations

Slicer: Simplify3d

Filament: Hatchbox Blue ABS

Settings:
- 0.2mm resolution
- Mostly default for Flashforge Creator Pro, using ABS, except:
    - 1.00 extrusion
    - Extruder heat at 230C
    - Bed heat at 100C
    - 150% for first layer, 3 top/bottom layers, 2 perimeter shells
    - 15% infill
    - Optimize perimeter start points
    - No skirt, no raft, no supports

Run time: 4:00pm - ?? (cancelled early)

# Results

Had to cancel this build. The number of vertical layers was too low (default of 3), which caused pillowing, but this wasn't the problem... the glass bed shifted during the print, causing the fence to be slightly separate. I'll definitely need actual clips for larger prints instead of using binder clips, since they took too much space on the print bed and I tried improvising.

It also appeared to have very minor elephant's foot... reduing bed temperature further might help but is concerning.