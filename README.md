# Public Handwashing Station

Code for Seattle Makers Handwashing Station - for microcontroller and case .scad files

[Online document of details of project](https://docs.google.com/document/d/1-PBiPL9ZbdBNWGurX_gGqHYQGLAaOwbc2duFg0iOV-k/edit?usp=sharing) lives here, with permissions that anyone can comment. [gDrive folder with many files](https://drive.google.com/drive/folders/1-24RShQuXvstHFheTFkZpZMX1k5Q41IC?usp=sharing) is here and viewable by public.

## Case Files

Iteration with handle attached to bottom box part uploaded here, STLs and the 3mf files to save the print settings. Box created from [this parametric Fusion model](https://www.thingiverse.com/thing:3338826).

`handle.scad` and its output `handle.stl` are my hack to make it possible to fit this box in to the opening of the handwashing station while still, you know, actually holding the box... I originally made the box and checked that it fit into the small hole in the head of the handwashing station... but didn't check that you could easily get the box in and out. Alas. Hence the add-on hack of a handle in the .3mf file. Added [the original fusion file to this repo](zx82net_waterproof_box_v2.f3d) in case that page goes away, and here is the [archive.org snapshot of the page](https://web.archive.org/web/20230319231457/https://www.thingiverse.com/thing:4838803).

Print 1 `box-Bottom-lanyard-4.3mf` (which is a combination of `box-Bottom-lanyard-4.stl` and `handle.stl`), 1 of `box-Top4.3mf`, 1 of `box-Seal4-20220811.3mf`, and 1 of `box-connectors.3mf` (which contains 2 of `hinge.stl`, 2 of `latch_arm_latch_arm_v1.stl`, and 2 of `latch_cam_latch_cam_v1.stl`) 

Seal can be tricky to get in to the groove, I used a small flathead screwdriver to sort of lever it into place.

This case is not ideal, and could probably be made a little shorter so that it fits into the station easier.

## Code

Simple on-off, wait, on-off with pump after button press. I did not write this code, just archiving here. Alas, I'm not sure right now if this is the most up to date code, will check next time I am in space.
