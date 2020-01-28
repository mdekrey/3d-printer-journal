# Print

Model: https://www.thingiverse.com/thing:1798035

    $fn = 64;

    diameter = 22.8;
    height = 8.2;
    hole_diameter = 6.1;
    wall = 0.96;

    reinforcement_height = 1.5 * wall;

Slicer: Simplify3d

Filament: Blue PLA from Flashforge

Settings:
- 0.1mm resolution
- Mostly default for Flashforge Creator Pro, using PLA, except:
    - Extruder heat at 200C
    - 200% for first layer, 8 top/bottom layers, 3 perimeter shells (As seen on [Fat Dragon Games' mini tutorial](https://www.youtube.com/watch?time_continue=716&v=AqEWl51s9Rw&feature=emb_logo))
    - Random perimeter start points

# Results

This print turned out well; hopefully it works as expected!

The bobbin was too thick for the caddy - the original actually had curved edges. I'll have to see if I can make it better, which will be tough given I was using the flat side as the base. Maybe just changing the height down will do it.