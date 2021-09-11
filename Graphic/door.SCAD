al_sideL=2; //鋁擠邊長
side_rollerR=1; //軌道輪直徑
scanner_upper=190;
scanner_lowper=10;

module al(x,y,z,length){
    translate([x,y,z])
    color("Silver")    
    cube([al_sideL,al_sideL,length]);
}
//支架
al(0,0,0,200);//Front L
al(102,0,0,200);//Front R
al(102,102,0,200);//Rear R
al(0,102,0,200);//Rear L
    //Front L triangle
translate([-50,0,al_sideL]) rotate([0,90,0]) color("Silver")  cube([al_sideL,al_sideL,50]);
translate([-50,0,0]) rotate([0,45,0]) color("Silver")  cube([al_sideL,al_sideL,70.7]);
    //Front R triangle
translate([152,0,0]) rotate([0,-90,0]) color("Silver")  cube([al_sideL,al_sideL,50]);
translate([152,0,0]) rotate([0,-45,0]) color("Silver")  cube([al_sideL,al_sideL,70.7]);
    //Rear R triangle
translate([152,102,0]) rotate([0,-90,0]) color("Silver")  cube([al_sideL,al_sideL,50]);
translate([152,102,0]) rotate([0,-45,0]) color("Silver")  cube([al_sideL,al_sideL,70.7]);
    //Rear L triangle
translate([-50,102,al_sideL]) rotate([0,90,0]) color("Silver")  cube([al_sideL,al_sideL,50]);
translate([-50,102,0]) rotate([0,45,0]) color("Silver")  cube([al_sideL,al_sideL,70.7]);

//

//Scanner
translate([al_sideL + side_rollerR,0,scanner_upper]) //Front scan
    rotate([0,90,0]) cube([2,2,100-2*side_rollerR]);
translate([al_sideL + side_rollerR,102,scanner_upper]) //Rear scan
    rotate([0,90,0]) cube([2,2,100-2*side_rollerR]);
translate([0,al_sideL + side_rollerR,scanner_lowper]) //L scan
    rotate([-90,0,0]) cube([2,2,100-2*side_rollerR]);
translate([102,al_sideL + side_rollerR,scanner_lowper]) //R scan
    rotate([-90,0,0]) cube([2,2,100-2*side_rollerR]);
