# Print

Model:

- New custom side angle bracket, going diagonally up the side of a few 2x2 wall pieces, with the following SCAD:
        inch = 25.4;

        // measurement in between two corner pieces
        extra_space = 20;
        brace_thickness = 2;

        count = 5;
        additionalWalls = 1;
        run_mm = 11;
        rise_mm = 12.2;
        brace_width = 14;

        //import("refs/Clip-OpenLOCK4.0.stubby.stl");

        width = run_mm * count;
        height = rise_mm * count;

        rotate([0,0,atan2(height, width)])
        translate([0,0,brace_thickness])
        rotate([90, 0, 0])
        union() {
            clips();

            intersection() {
                translate([0, -brace_thickness, -2.5])
                rotate([0,-atan2(height, width),0])
                translate([0, 0, -brace_width / 2])
                cube([sqrt(width * width + height * height), brace_thickness, brace_width]);
                translate([-5, -brace_thickness, 0])
                cube([width + 10, brace_thickness, height - 5]);
            }
        }

        module halfclip() {
            intersection() {
                translate([-inch / 2,0,0])

                import("refs/OpenLOCK_Clip_v5.4.stl");

                translate([-10, 0, 0])
                cube([50, 10, 7]);
            }
        }

        module clips() {
            for (idx = [0:1:count-1]) {
                translate([run_mm * idx + 4, 0, rise_mm * idx])
                halfclip();

            }
        }

- [Same side bracket as earlier with the horizontal clips.](../16/02-open-lock-storage.md)


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

The run is definitely correct, but the rise might be high by maybe 0.2mm... not enough to care. These work well, but I need to refine how the clips get added.