# Print

Model: Custom mitre guide sample - a reduced size version of the original [tablesaw-guide.scad](../../2020-03/01/tablesaw-guide.scad)

Slicer: Simplify3d

Filament: Hatchbox Blue ABS

Settings:
- 0.2mm resolution
- Mostly default for Flashforge Creator Pro, using ABS, except:
    - 1.00 extrusion
    - Extruder heat at 230C
    - Bed heat at 100C
    - 150% for first layer, 5 top/bottom layers, 3 perimeter shells
    - 15% infill
    - Optimize perimeter start points
    - No skirt, no raft, no supports

# Results

98C for the bed was too cool - much of the first layer wasn't adhering. Resetting and turning the temperature up to 100C fixed it.

There sill seems to be a bit of elephant's foot happening, but I'm thinking it's not from the print temperature anymore (though it definitely was at higher temperatures), but maybe due to first layer settings. There's also a bit of sharpness along the top corners similar to [my original blue PLA pillowing with the pillar](../../2020-01/16/01-openforge-pillar.md), but no pillowing occurred on this print.

This ultimately turned out well, but I want to test it out in the actual saw before printing the full version.
