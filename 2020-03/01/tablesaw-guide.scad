inch = 25.4;
$fn = 360;

guidelock_width = 23.5;
guidelock_height = 4;
main_width = 19;
full_height = 11;

protractorInset = 1*inch;
settingInset = 1*inch;
distanceBetweenSettingAndOrigin = 96.52;
settingBoltDiameter = 5.1;
originBoltDiameter = 0.141 * inch;
originNutHeight = 1/4 * inch;
originNutSideToSide = 3/8 * inch;
originNutDiameter = originNutSideToSide * 2 / sqrt(3);
originNutFn = 6;

pointerBoltDiameter = 3.9;
pointerDistance = 7;
pointerOutset = 19.5;

//slideSample();
//slide(200);
slideWithBoltHoles(200);

module slideSample() {
    difference() {
        translate([inch *0.75, 0, 0])
        slide(inch * 1.5);
        
        translate([inch * 1.5 - 8, 0, 0])
        pointerBolt();
        
        translate([inch * 0.75, 0, 0])
        settingBolt();
        
        translate([8, 0, 0])
        pivotBolt();
        
    }
}

module slideWithBoltHoles(length) {
    difference() {
        slide(length);
        
        translate([length / 2 - protractorInset, 0, 0])
        union() {
            translate([pointerOutset, 0, 0])
            pointerBolt();
            
            translate([-settingInset, 0, 0])
            settingBolt();
            
            translate([-settingInset - distanceBetweenSettingAndOrigin, 0, 0])
            pivotBolt();
        }
    }
}

module slide(length) {

    translate([0,0, (guidelock_height - full_height) / 2])
    cube([length, guidelock_width, guidelock_height], center=true);

    cube([length, main_width, full_height], center=true);
}
 
module settingBolt() {
    cylinder(full_height * 3, r=settingBoltDiameter/2, $fn=$fn, center = true);
}

module pivotBolt() {
    union() {
        translate([0, 0, 0])
        cylinder(full_height * 3, r=originBoltDiameter/2, $fn=$fn, center = true);
        
        translate([0, 0, (originNutHeight - full_height - 1)/2])
        cylinder(originNutHeight + 1, r=originNutDiameter/2, $fn=originNutFn, center = true);
    }
}

module pointerBolt() {
    cylinder(full_height * 3, r=pointerBoltDiameter/2, $fn=$fn, center = true);
}