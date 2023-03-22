//Handwashing station box handle add on
//2023-03-22 JKL
//MIT license
//this started off with parameters and then got real magick-numbery. alas it is done.

mink_round_rad = 4;
handle_main_z = 60 - mink_round_rad*2;
handle_main_y = 15 - mink_round_rad*2;
handle_main_x = 20 - mink_round_rad*2;
handle_connector_z = 15 - mink_round_rad*2;
handle_connector_y = 15 - mink_round_rad*2;
handle_connector_x = 35 - mink_round_rad*2;

handle_connector_z_adjustment = -5; //this move the connnecter down so there is room for fingers between connector and the lanyard loop on the box
//handle_connector_x_slice_off = 5;

difference(){
    minkowski(){
        union(){
            cube([handle_main_x, handle_main_y, handle_main_z]); //make main body of handle
            
            translate([handle_main_x,handle_main_y/2 - handle_connector_y/2,handle_main_z/2 - mink_round_rad + handle_connector_z_adjustment]){
                cube([handle_connector_x,handle_connector_y,handle_connector_z]); //make connector for handlle to box
                translate([18,0,0]){
                rotate([0,45,0]){
                        cube([handle_connector_x-10,handle_connector_y,handle_connector_z]); //make connector for handlle to box 
                    }
                }
            }
        } //end union
        
        sphere(mink_round_rad); //round over all edges
    } //end minkowski
    
    translate([handle_main_x + handle_connector_x,-mink_round_rad,-mink_round_rad]){
        cube([40, handle_connector_y + mink_round_rad*2, handle_main_z]); //square off face and edges that intersect with box, so they don't extend into inner box void //ugh this is a mess but i just want to be done.
    }
} //end diff

    