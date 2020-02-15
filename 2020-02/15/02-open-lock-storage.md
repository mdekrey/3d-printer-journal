# Print

Model: Custom side bracket, using the following scad:

    inch = 25.4;

    // measurement in between two corner pieces
    extra_space = 20;
    brace_thickness = 3;

    //import("refs/Clip-OpenLOCK4.0.stubby.stl");

    translate([0,0,brace_thickness])
    rotate([90, 0, 0])
    union() {
    translate([inch *0.5, 0, 0])
    halfclip();

    translate([inch *2.5 + extra_space, 0, 0])
    halfclip();

    translate([0, -brace_thickness, 0])
    cube([inch * 4, brace_thickness, 7]);
    }

    module halfclip() {
        intersection() {
            translate([-inch / 2,0,0])

            import("refs/OpenLOCK_Clip_v5.4.stl");

            translate([-10, 0, 0])
            cube([50, 50, 7]);
        }
    }


Slicer: Simplify3d

Filament: Black PLA from Hatchbox

Settings:
- 0.1mm resolution
- Mostly default for Flashforge Creator Pro, using PLA, except:
    - Extruder heat at 200C
    - Bed heat at 50C
    - 200% for first layer, 8 top/bottom layers, 3 perimeter shells
    - 20% infill
    - Random perimeter start points
    - No skirt, raft, no supports

# Results

This fits a set of dungeon corners with a 4x4 base inside perfectly, locking everything in place for transport. This design - perhaps a stubby version of it - could be used for covers on the side-locking walls where the floors would otherwise go for a more immersive look.