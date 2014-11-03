//parameters include the height of the knob, the knob's diameter, diameter of the shaft, whether or not the knob has a notched top as an indicator

module potentiometerKnob (knobHeight, knobDiameter, shaftDiameter, notchedTop) {

difference(){
cylinder(knobHeight, knobDiameter,(knobDiameter)*0.8, true);
translate([0,0,-(knobHeight*0.9)])
cylinder(knobHeight, shaftDiameter, true);

if(notchedTop==true){
translate([0,knobDiameter*0.6,0])
rotate([0,0,210])
cylinder(knobHeight, 5, true, $fn=3);
}//end of if notchedTop
}//end of difference

}//end of potentiometerKnob module

potentiometerKnob(30, 20, 12.5, true);