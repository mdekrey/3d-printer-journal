# Print

Model: Custom - floor caddy for openforge, for testing fit and hold.

    $fn=50;
    inch = 25.4;
    size_inches = 2;
    wallwidth = 8.1;
    thickness = 1.2;
    magnet_size_mm = 5;
    max_height = 6;
    magnet_padding = 1.5;

Slicer: Simplify3d

Filament: Black PLA from Hatchbox (right extruder)

Settings:
- 0.1mm resolution
- Mostly default for Flashforge Creator Pro, using PLA, except:
    - Extruder heat at 200C
    - 0.1mm layer height, 200% for first layer, 8 top/bottom layers, 3 perimeter shells (As seen on [Fat Dragon Games' mini tutorial](https://www.youtube.com/watch?time_continue=716&v=AqEWl51s9Rw&feature=emb_logo))
    - Random perimeter start points

# Results

This print turned out well, but it also fits probably too snugly.
