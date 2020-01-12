# Print

Model: https://www.thingiverse.com/thing:2051721
Slicer: Simplify3d
Filament: White PL from Flashforge

I discovered that the model had issues by using the Repair -> Identify Self Intersecting Surfaces, so I wanted to try this again.

Settings:
- Medium resolution
- Mostly default for Flashforge Creator Pro, using PLA, except:
    - Include raft
    - Extruder heat at 205C
    - Bed at 60C
    - Extrusion multiplier at 0.95 (defaults to 0.90)
    - Advanced -> Slicing Behavior: Check "Merge all outlines into a single solid model"

# Results

This turned out really well, except the strings on the harp blended together and looked like one solid piece. Looking more closely at the Print Preview, this is due to the "Merge all outlines into a single solid model" setting. The STL file itself should be fixed before further prints.