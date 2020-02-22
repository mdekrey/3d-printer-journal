I spent most of the prints working on the Open Lock storage solution.

The results ended up a little more loose than I'd like in some places, but for ease of print and interchangeable placement, the final product works quite well.

The side locks needed to allow for enough space for the 4x4 inside plus the size of the angle locks. I landed on a push-through clip that grips on the outside but prints flat for strength. The angle locks have a very tight fit so that the push-through clips do not get lost.

The current angle locks:

    inch = 25.4;

    clip_z_center = 3.5;
    clip_thickness = 3.5;
    clip_width = 13.1;
    clip_lip_size = 2;

    // measurement in between two corner pieces
    brace_thickness = 2;

    count = 5;
    run_mm = -11;
    rise_mm = 12.2;
    brace_width = 17;

    module brace(run_mm, rise_mm, count, brace_width, brace_thickness)
    {
        width = run_mm * count;
        height = rise_mm * count;

        rotate([180, 0, 0])
        rotate([0,0,atan2(height, width)])
        translate([0,0,brace_thickness])
        rotate([90, 0, 0])
        difference() {
            intersection() {
                translate([-width/2, -brace_thickness, - height/2])
                rotate([0,-atan2(height, width),0])
                translate([0, 0, -brace_width / 2])
                cube([sqrt(width * width + height * height), brace_thickness, brace_width]);

                translate([0, -brace_thickness / 2, 0])
                cube([abs(width) + 9, brace_thickness, height - 3], center=true);
            }

            translate([-width/2,-clip_lip_size/2, - height/2])
            clips(count, run_mm, rise_mm);
        }
    }

    module halfclip(extra_dist = 0, lip = 0) {
        union() {
            translate([0, extra_dist, 0])
            intersection() {
                translate([-inch / 2,0,-3.5])
                import("refs/OpenLOCK_Clip_v5.4.stl");

                translate([-10, -extra_dist, -clip_z_center])
                cube([50, 10 + extra_dist, clip_z_center*2]);
            };
            translate([0, -lip/2, 0])
            cube([clip_width + clip_lip_size, lip, clip_thickness], center=true);
        }
    }

    module clips(count, run_mm, rise_mm) {
        for (idx = [0:1:count-1]) {
            translate([run_mm * (idx+0.5), 0, rise_mm * (idx+0.5)])
            halfclip(brace_thickness / 2, brace_thickness / 2);
        }
    }


    brace(run_mm = run_mm, rise_mm = rise_mm, count = count, brace_width = brace_width, brace_thickness = brace_thickness);

    translate([0, brace_width + 3, 0])
    brace(run_mm = -run_mm, rise_mm = rise_mm, count = count, brace_width = brace_width, brace_thickness = brace_thickness);

    translate([0, (brace_width + 3) * 2, 0])
    halfclip(brace_thickness / 2, brace_thickness / 2);

The current side locks:

    inch = 25.4;

    // measurement in between two corner pieces
    extra_space = 27;
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

    translate([inch * 0.24, -brace_thickness, 0])
    cube([inch * 2.52 + extra_space, brace_thickness, 7]);
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
