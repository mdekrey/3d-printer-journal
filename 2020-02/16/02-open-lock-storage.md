# Print

Model:

- New custom side angle bracket, going diagonally up the side of a few 2x2 wall pieces
- New custom side bracket, using the following SCAD so the OpenLocks are horizontal:

        inch = 25.4;

        // measurement in between two corner pieces
        extra_space = 24;
        brace_thickness = 3;

        //import("refs/Clip-OpenLOCK4.0.stubby.stl");

        difference() {
        translate([0,0,-1.9])
        //translate([0,0,brace_thickness])
        //rotate([90, 0, 0])
        union() {
        translate([inch *0.5, 0, 0])
        halfclip();

        translate([inch *2.5 + extra_space, 0, 0])
        halfclip();

        translate([0, -brace_thickness, 0])
        cube([inch * 4, brace_thickness, 7]);
        }
        translate([0, 0, -inch])
        cube([inch*10, inch*2, inch*2], center=true);
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

The side bracket is a little loose, but I'd rather that than too tight.

The angle bracket was definitely too tight...