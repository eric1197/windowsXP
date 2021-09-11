/*
al      =   aluminum    鋁(鋁擠)
sideL   =   side length 邊長
scanner =   上下移動之消毒桿
*/
al_sideL=2; //鋁擠邊長
side_rollerR=1; //軌道輪直徑
scanner_upper=190; //scanner移動上限
scanner_lowper=10; //scanner移動下限
space_sideL=100;//中央空間邊長
l=al_sideL+space_sideL; //四根主軸定位點

module al(x,y,z,length){
    translate([x,y,z])
    color("Silver")    
    cube([al_sideL,al_sideL,length]);
}
//支架
al(0,0,0,200);//Front L
al(l,0,0,200);//Front R
al(l,l,0,200);//Rear R
al(0,l,0,200);//Rear L

    //Front R triangle
translate([al_sideL+space_sideL,0,0])
    color("Silver")
    rotate([90,0,0])
    cube([al_sideL,al_sideL,50]);//50
translate([al_sideL+space_sideL,-50,al_sideL])
    rotate([-45,0,0])
    color("Silver")
    cube([al_sideL,al_sideL,70.7]); //70.7
//其他三角形還沒寫!!

    //Front UP
translate([2,0,200]) color("Silver")
    rotate([0,90,0]) cube([al_sideL,al_sideL,space_sideL]) ;
    //Back UP
translate([2,102,200]) color("Silver")
    rotate([0,90,0]) cube([al_sideL,al_sideL,space_sideL]) ;
    //Laft down
translate([0,al_sideL,2]) color("Silver")
    rotate([-90,0,0]) cube([al_sideL,al_sideL,space_sideL]);
    //Right down
translate([102,al_sideL,2]) color("Silver")
    rotate([-90,0,0]) cube([al_sideL,al_sideL,space_sideL]);
    //Laft UP
translate([0,al_sideL,200]) color("Silver")
    rotate([-90,0,0]) cube([al_sideL,al_sideL,space_sideL]);
    //Right UP
translate([102,al_sideL,200]) color("Silver")
    rotate([-90,0,0]) cube([al_sideL,al_sideL,space_sideL]);

//Scanner
translate([al_sideL + side_rollerR,0,scanner_upper]) //Front scan
    rotate([0,90,0]) cube([al_sideL,al_sideL,space_sideL-2*side_rollerR]);
translate([al_sideL + side_rollerR,l,scanner_upper]) //Rear scan
    rotate([0,90,0]) cube([al_sideL,al_sideL,space_sideL-2*side_rollerR]);
translate([0,al_sideL + side_rollerR,scanner_lowper]) //L scan
    rotate([-90,0,0]) cube([al_sideL,al_sideL,space_sideL-2*side_rollerR]);
translate([102,al_sideL + side_rollerR,scanner_lowper]) //R scan
    rotate([-90,0,0]) cube([al_sideL,al_sideL,space_sideL-2*side_rollerR]);
