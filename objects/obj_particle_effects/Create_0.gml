///Create.

#region DEPTHS.

global.ptcl_depth_100 = part_system_create()
part_system_depth(global.ptcl_depth_100,100)

global.ptcl_depth_0 = part_system_create()
part_system_depth(global.ptcl_depth_0,0)

global.ptcl_depth_neg_100 = part_system_create()
part_system_depth(global.ptcl_depth_neg_100,-100)

global.ptcl_depth_neg_1000 = part_system_create()
part_system_depth(global.ptcl_depth_neg_1000,-1000)

global.ptcl_depth_neg_8000 = part_system_create()
part_system_depth(global.ptcl_depth_neg_8000,-8000)

#endregion
#region CHOP EFFECTS.

//Wood Chip.
global.wood_chip = part_type_create();
part_type_shape(global.wood_chip,pt_shape_square);
part_type_size(global.wood_chip,0.02,0.028,0,0);
part_type_scale(global.wood_chip,0.5,1.5);
part_type_color1(global.wood_chip,3556956);
part_type_alpha3(global.wood_chip,1,1,0.75);
part_type_speed(global.wood_chip,1.1,1.3,-0.027,0.02);
part_type_direction(global.wood_chip,45,135,0,0);
part_type_gravity(global.wood_chip,0.06,270);
part_type_orientation(global.wood_chip,0,0,10.5,0.1,0);
part_type_blend(global.wood_chip,0);
part_type_life(global.wood_chip,36,39);

//Rock Spark.
global.rock_spark = part_type_create();
part_type_shape(global.rock_spark,pt_shape_spark);
part_type_size(global.rock_spark,0.03,0.035,-0.0015,0.004);
part_type_scale(global.rock_spark,1,1);
part_type_color3(global.rock_spark,c_orange,c_orange,c_yellow);
part_type_alpha3(global.rock_spark,1,1,0.85);
part_type_speed(global.rock_spark,2,2.35,-0.01,0.10); 
part_type_direction(global.rock_spark,60,120,0,0);
part_type_gravity(global.rock_spark,0.15,270);
part_type_orientation(global.rock_spark,0,359,1,0.25,0);
part_type_blend(global.rock_spark,0);
part_type_life(global.rock_spark,51,55);

//Rock Cloud.
global.rock_cloud = part_type_create();
part_type_shape(global.rock_cloud,pt_shape_explosion);
part_type_size(global.rock_cloud,0.15,0.2,0.005,0.001);
part_type_scale(global.rock_cloud,1,1);
part_type_color3(global.rock_cloud,c_ltgrey,c_ltgrey,c_white);
part_type_alpha3(global.rock_cloud,0.1,0.05,0);
part_type_speed(global.rock_cloud,0.1,0.2,-0.04,0.005); 
part_type_direction(global.rock_cloud,0,359,0,0);
part_type_gravity(global.rock_cloud,0.06,90);
part_type_orientation(global.rock_cloud,0,359,1,0.25,0);
part_type_blend(global.rock_cloud,0);
part_type_life(global.rock_cloud,30,35);

//Bush Leaf.
global.bush_leaf = part_type_create();
part_type_shape(global.bush_leaf,pt_shape_square);
part_type_size(global.bush_leaf,0.02,0.028,0,0);
part_type_scale(global.bush_leaf,0.5,1);
part_type_color1(global.bush_leaf,make_color_hsv(48,180,210));
part_type_alpha3(global.bush_leaf,1,1,0.50);
part_type_speed(global.bush_leaf,0.55,0.65,0.001,0.003);
part_type_direction(global.bush_leaf,65,95,0.4,6);
part_type_gravity(global.bush_leaf,0.053,270);
part_type_orientation(global.bush_leaf,0,359,10.5,0.1,0);
part_type_blend(global.bush_leaf,0);
part_type_life(global.bush_leaf,32,35);

#endregion
#region WEATHER.

//Snow.
global.snow = part_type_create();
part_type_shape(global.snow,pt_shape_snow);
part_type_size(global.snow,0.01,0.03,0,0);
part_type_scale(global.snow,1,1);
part_type_color2(global.snow,c_white,c_white);
part_type_alpha3(global.snow,0.85,0.6,0.20);
part_type_speed(global.snow,0.6,0.68,0.001,0.01);
part_type_direction(global.snow,260,280,-0.17,1);
part_type_gravity(global.snow,0.001,270);
part_type_orientation(global.snow,0,359,0,0.80,0);
part_type_blend(global.snow,0);
part_type_life(global.snow,450,500);

//Snow Blurry.
global.snow_blurry = part_type_create();
part_type_shape(global.snow_blurry,pt_shape_sphere);
part_type_size(global.snow_blurry,0.08,0.14,0,0);
part_type_scale(global.snow_blurry,1,1);
part_type_color2(global.snow_blurry,c_white,16776434);
part_type_alpha3(global.snow_blurry,0.45,0.42,0.41);
part_type_speed(global.snow_blurry,0.45,0.53,0.001,0);
part_type_direction(global.snow_blurry,260,280,-0.12,0.1);
part_type_gravity(global.snow_blurry,0.002,270);
part_type_orientation(global.snow_blurry,0,359,0,0,0);
part_type_blend(global.snow_blurry,0);
part_type_life(global.snow_blurry,450,500);

//Snow Tuft.
global.snow_tuft = part_type_create();
part_type_shape(global.snow_tuft,pt_shape_smoke);
part_type_size(global.snow_tuft,0.1,0.16,0.007,0.001);
part_type_scale(global.snow_tuft,1,1);
part_type_color3(global.snow_tuft,make_color_hsv(140,4,253),make_color_hsv(145,8,251),make_color_hsv(160,13,246));
part_type_alpha3(global.snow_tuft,0.08,0.035,0);
part_type_speed(global.snow_tuft,0.14,0.31,-0.01,0.005); 
part_type_direction(global.snow_tuft,0,359,0,0.02);
part_type_gravity(global.snow_tuft,0.01,90);
part_type_orientation(global.snow_tuft,0,359,1,0.05,0);
part_type_blend(global.snow_tuft,0);
part_type_life(global.snow_tuft,48,54);

//Fog.
global.fog = part_type_create();
part_type_shape(global.fog,pt_shape_smoke);
part_type_size(global.fog,2,2,0,0);
part_type_scale(global.fog,1,1);
part_type_color3(global.fog,make_color_hsv(0,5,240),make_color_hsv(0,3,245),make_color_hsv(0,1,250));
part_type_alpha3(global.fog,0.,0.2,0);
part_type_speed(global.fog,0.024,0.033,0.00031,0);
part_type_direction(global.fog,170,190,-0.01,0);
part_type_gravity(global.fog,0.0002,0);
part_type_orientation(global.fog,0,359,0.2,0,0);
part_type_blend(global.fog,0);
part_type_life(global.fog,570,610);


//Snow Blown.
global.snow_blown = part_type_create();
part_type_shape(global.snow_blown,pt_shape_snow);
part_type_size(global.snow_blown,0.01,0.03,0,0);
part_type_scale(global.snow_blown,1,1);
part_type_color2(global.snow_blown,make_color_hsv(0,0,220),c_white);
part_type_alpha3(global.snow_blown,0.9,08,0.7);
part_type_speed(global.snow_blown,1,1.8,0.005,0.01);
part_type_direction(global.snow_blown,170,190,-0.01,0.1);
part_type_gravity(global.snow_blown,0.001,270);
part_type_orientation(global.snow_blown,0,359,0,0.80,0);
part_type_blend(global.snow_blown,0);
part_type_life(global.snow_blown,450,500);

//Fog Blown.
global.fog_blown = part_type_create();
part_type_shape(global.fog_blown,pt_shape_smoke);
part_type_size(global.fog_blown,1,2,0,0);
part_type_scale(global.fog_blown,1,1);
part_type_color3(global.fog_blown,make_color_hsv(180,6,220),make_color_hsv(190,5,228),make_color_hsv(200,4,237));
part_type_alpha3(global.fog_blown,0.2,0.75,0.2);
part_type_speed(global.fog_blown,2.6,3.5,0.06,0.01);
part_type_direction(global.fog_blown,175,185,-0.001,0);
part_type_gravity(global.fog_blown,0,0);
part_type_orientation(global.fog_blown,0,359,0,0,0);
part_type_blend(global.fog_blown,0);
part_type_life(global.fog_blown,300,400);


//Breath.
global.breath = part_type_create();
part_type_shape(global.breath,pt_shape_smoke);
part_type_size(global.breath,0.07,0.08,0.0052,0.0007);
part_type_scale(global.breath,1,1);
part_type_color3(global.breath,c_white,c_white,c_white);
part_type_alpha3(global.breath,0.18,0.11,0.01);
part_type_speed(global.breath,0.45,0.5,-0.003,0.0006);
part_type_direction(global.breath,0,0,0,0);
part_type_gravity(global.breath,0.023,90);
part_type_orientation(global.breath,0,359,0.45,0,0);
part_type_blend(global.breath,0);
part_type_life(global.breath,40,43);


//Breath.
global.bloat_boom = part_type_create();
part_type_shape(global.bloat_boom,pt_shape_smoke);
part_type_size(global.bloat_boom,0.2,0.3,0.005,0.01);
part_type_scale(global.bloat_boom,1,1);
part_type_color3(global.bloat_boom,c_green,c_lime,c_yellow);
part_type_alpha3(global.bloat_boom,0.35,0.15,0.02);
part_type_speed(global.bloat_boom,0.1,0.2,0.002,0);
part_type_direction(global.bloat_boom,0,359,0,0);
part_type_gravity(global.bloat_boom,0,0);
part_type_orientation(global.bloat_boom,0,359,0.45,0,0);
part_type_blend(global.bloat_boom,0);
part_type_life(global.bloat_boom,50,58);

//Breath.
global.fire = part_type_create();
part_type_shape(global.fire,pt_shape_explosion);
part_type_size(global.fire,0.15,0.25,-0.005,0.01);
part_type_scale(global.fire,1,1);
part_type_color3(global.fire,c_orange,c_red,c_yellow);
part_type_alpha3(global.fire,0.2,0.1,0.01);
part_type_speed(global.fire,0.1,0.2,0.001,0);
part_type_direction(global.fire,80,100,0,0.01);
part_type_gravity(global.fire,0.03,90);
part_type_orientation(global.fire,0,359,0.45,0,0);
part_type_blend(global.fire,1);
part_type_life(global.fire,40,45);

#endregion
#region SHOOTING.

//Rifle Smoke.
global.rifle_smoke = part_type_create();
part_type_shape(global.rifle_smoke,pt_shape_smoke);
part_type_size(global.rifle_smoke,0.02,0.04,0.0029,0.0005);
part_type_scale(global.rifle_smoke,1,1);
part_type_color3(global.rifle_smoke,make_color_hsv(120,0,160),make_color_hsv(150,9,180),make_color_hsv(180,18,200));
part_type_alpha3(global.rifle_smoke,0.043,0.015,0);
part_type_speed(global.rifle_smoke,0.16,0.21,-0.012,0.004); 
part_type_direction(global.rifle_smoke,0,359,0,0.02);
part_type_gravity(global.rifle_smoke,0.01,90);
part_type_orientation(global.rifle_smoke,0,359,1,0.05,0);
part_type_blend(global.rifle_smoke,0);
part_type_life(global.rifle_smoke,60,66);

//Blood Splat.
global.blood_splat = part_type_create();
part_type_shape(global.blood_splat,pt_shape_pixel);
part_type_size(global.blood_splat,0.5,1,-0.006,0);
part_type_scale(global.blood_splat,1,1);
part_type_color3(global.blood_splat,c_red,c_red,c_white);
part_type_alpha3(global.blood_splat,1,1,0.85);
part_type_speed(global.blood_splat,1.2,1.8,-0.05,0); 
part_type_direction(global.blood_splat,0,359,0,0);
part_type_gravity(global.blood_splat,0.13,270);
part_type_orientation(global.blood_splat,0,359,1,0.25,0);
part_type_blend(global.blood_splat,0);
part_type_life(global.blood_splat,55,65);

//Blood Blue.
global.blood_blue = part_type_create();
part_type_shape(global.blood_blue,pt_shape_pixel);
part_type_size(global.blood_blue,0.5,1,-0.006,0);
part_type_scale(global.blood_blue,1,1);
part_type_color3(global.blood_blue,c_navy,c_aqua,c_blue);
part_type_alpha3(global.blood_blue,1,1,0.85);
part_type_speed(global.blood_blue,1.2,1.8,-0.05,0); 
part_type_direction(global.blood_blue,0,359,0,0);
part_type_gravity(global.blood_blue,0.12,270);
part_type_orientation(global.blood_blue,0,359,1,0.25,0);
part_type_blend(global.blood_blue,0);
part_type_life(global.blood_blue,55,65);

#endregion