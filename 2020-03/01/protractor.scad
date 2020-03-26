$fn = 120;
$fnHole = 360;
inch = 25.4;

diskHeight = 6.6;
radius = 4.8 * inch;
maxDegrees = 30;
step = 1;
fenceThickness = 10;
fenceHeight = inch*2;
tickHeight = 0.4;
tickWidth = 0.8;
fontSize = 10;
lockDistance = 3*inch;
settingInset = 1 * inch;
settingSize = 5.6;
settingBoltDiameter = 5.1;
settingEdge = 2.4;
settingRaisedHeight = 14-diskHeight;
originBoltHoleDiameter = 0.141*inch;
mountingHoleDiameter = 1/4*inch;

trimWidth = radius * cos(maxDegrees)*2;
distanceToSetting = radius - settingInset;

%translate([0, distanceToSetting, 0])
cylinder(fenceHeight * 5, r=settingBoltDiameter / 2);
echo("distanceToSetting", distanceToSetting);

module base() {
    difference() {
        union() {
            intersection() {
                cylinder(diskHeight, r = radius, $fn = $fn);
                translate([0, radius, diskHeight / 2])
                cube([trimWidth, radius * 2, diskHeight], center = true);
            }
            
            // setting rim, main
            rotate([0,0, (90 - maxDegrees) / 2])
            rotate_extrude(angle = (90 - maxDegrees) * 2, convexity = 10, $fn = $fn)
            translate([radius - settingInset - settingSize / 2 - settingEdge, 0])
            square([settingSize+settingEdge*2, (diskHeight + settingRaisedHeight)]);

            // setting rim, left side
            rotate([0,0, (90 - maxDegrees)])
            translate([0, radius - settingInset, 0])
            translate([-settingSize, -settingSize/2, 0])
            minkowski() {
                
                translate([settingSize/2, settingSize/2, -.1])
                cylinder(1, r = settingSize / 2);
                translate([settingSize/2 - settingEdge / 2, 0, diskHeight])
                cube([settingEdge,settingEdge*2,settingRaisedHeight+diskHeight-1], $fn=$fn, center=true);
            }
            
            // setting rim, right side
            rotate([0,0, (maxDegrees - 90)])
            translate([0, radius - settingInset, 0])
            translate([-settingSize, -settingSize/2, 0])
            minkowski() {
                
                translate([settingSize/2, settingSize/2, -.1])
                cylinder(1, r = settingSize / 2);
                translate([settingSize/2 + settingEdge / 2, 0, diskHeight])
                cube([settingEdge,settingEdge*2,settingRaisedHeight+diskHeight-1], $fn=$fn, center=true);
            }
        }
        
        union() {
            // setting slot
            translate([0,0,-diskHeight/2])
            rotate([0,0, (90 - maxDegrees) / 2])
            rotate_extrude(angle = (90 - maxDegrees) * 2, convexity = 10, $fn = $fnHole)
            translate([radius - settingInset - settingSize / 2, 0])
            square([settingSize, (diskHeight + settingRaisedHeight)*2]);
            
            // setting slot rounded, left side
            rotate([0,0, (90 - maxDegrees)])
            translate([0, radius - settingInset, 0])
            cylinder((diskHeight + settingRaisedHeight) * 3, r = settingSize / 2, center=true, $fn = $fnHole);
            
            // setting slot rounded, right side
            rotate([0,0, (maxDegrees - 90)])
            translate([0, radius - settingInset, 0])
            cylinder((diskHeight + settingRaisedHeight) * 3, r = settingSize / 2, center=true, $fn = $fnHole);
            
        }
    }
}

module fence() {
    difference() {
        translate([-trimWidth / 2, -fenceThickness/2, 0])
        cube([trimWidth, fenceThickness, fenceHeight]);
        
        translate([-trimWidth/3,0, fenceHeight/2])
        rotate([90,0,0])
        cylinder(fenceThickness * 3, r = mountingHoleDiameter, $fn = $fnHole, center=true);
        
        translate([trimWidth/3,0, fenceHeight/2])
        rotate([90,0,0])
        cylinder(fenceThickness * 3, r = mountingHoleDiameter, $fn = $fnHole, center=true);
        
    }
}

module ticks() {
    color("grey")
    union() {    
        for (i = [(maxDegrees - 90):step:(90 - maxDegrees)]) {
            
            tickLength = 
                i % 10 == 0 ? 10 
                : i % 5 == 0 ? 5 
                : i % 1 == 0 ? 3 
                : 1;
            
            rotate([0,0,i])
            translate([0, radius - 1 - tickLength / 2, diskHeight])
            cube([tickWidth, tickLength, tickHeight], center=true);
            
            if (i % 10 == 0) {
                rotate([0,0,i])
                translate([0, radius - 1 - tickLength / 2, diskHeight])
                rotate([0,0,180])
                linear_extrude(height = 0.5) {
                   text(text = str(90 - abs(i)), size = fontSize, valign = "bottom", halign = "center");
                 }
            }
        }
    }
}

module originbolthole() {
    cylinder(fenceHeight*3, r=originBoltHoleDiameter/2, center=true, $fn=$fnHole);
}

difference() {
    union() {
        base();
        fence();
    }
    originbolthole();
}
ticks();