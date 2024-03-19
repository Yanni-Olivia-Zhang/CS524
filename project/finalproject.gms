set
    col   columns from the full dataset /idx,interest1,interest2,interest3,impressions,im_std,clicks,spent,total_conversion,approved_conversion/
    
    col_1 columns from campaign 1 /idx,campaign_id,impressions,im_std,clicks,spent,total_conversion,approved_conversion,
    interest1_7,interest1_10,interest1_15,interest1_16,interest1_18,interest1_19,interest1_20,interest1_21,interest1_24,interest1_25,interest1_27,interest1_28,interest1_29,interest1_30,interest1_31,interest1_32,interest1_63,interest1_65,
    interest2_8,interest2_12,interest2_13,interest2_16,interest2_17,interest2_18,interest2_19,interest2_20,interest2_21,interest2_22,interest2_24,interest2_25,interest2_26,interest2_29,interest2_30,interest2_31,interest2_32,interest2_33,interest2_34,interest2_37,interest2_64,interest2_67,interest2_70,
    interest3_8,interest3_10,interest3_11,interest3_16,interest3_17,interest3_18,interest3_19,interest3_20,interest3_21,interest3_22,interest3_23,interest3_24,interest3_26,interest3_27,interest3_29,interest3_30,interest3_31,interest3_32,interest3_33,interest3_34,interest3_38,interest3_65,interest3_68/
    
    col_2 columns from campaign 2 /idx,campaign_id,impressions,im_std,clicks,spent,total_conversion,approved_conversion,
    interest1_2,interest1_7,interest1_10,interest1_15,interest1_16,interest1_18,interest1_19,interest1_20,interest1_21,interest1_22,interest1_23,interest1_24,interest1_25,interest1_26,interest1_27,interest1_28,interest1_29,interest1_30,interest1_31,interest1_32,interest1_36,interest1_63,interest1_64,interest1_65,
    interest2_3,interest2_4,interest2_6,interest2_7,interest2_9,interest2_10,interest2_11,interest2_12,interest2_13,interest2_14,interest2_15,interest2_16,interest2_17,interest2_18,interest2_19,interest2_20,interest2_21,interest2_22,interest2_23,interest2_24,interest2_25,interest2_26,interest2_27,interest2_28,interest2_29,interest2_30,interest2_31,interest2_32,interest2_33,interest2_34,interest2_35,interest2_36,interest2_37,interest2_38,interest2_40,interest2_41,interest2_64,interest2_65,interest2_66,interest2_67,interest2_68,interest2_69,interest2_70,interest2_71,
    interest3_3,interest3_6,interest3_7,interest3_8,interest3_9,interest3_10,interest3_11,interest3_12,interest3_13,interest3_14,interest3_15,interest3_16,interest3_17,interest3_18,interest3_19,interest3_20,interest3_21,interest3_22,interest3_23,interest3_24,interest3_25,interest3_26,interest3_27,interest3_28,interest3_29,interest3_30,interest3_31,interest3_32,interest3_33,interest3_34,interest3_35,interest3_36,interest3_37,interest3_38,interest3_40,interest3_41,interest3_64,interest3_65,interest3_66,interest3_67,interest3_68,interest3_69,interest3_70,interest3_71/
   
    col_3 columns from campaign 2 /idx,campaign_id,impressions,im_std,clicks,spent,total_conversion,approved_conversion,
    interest1_2,interest1_7,interest1_10,interest1_15,interest1_16,interest1_18,interest1_19,interest1_20,interest1_21,interest1_22,interest1_23,interest1_24,interest1_25,interest1_26,interest1_27,interest1_28,interest1_29,interest1_30,interest1_31,interest1_32,interest1_36,interest1_63,interest1_64,interest1_65,interest1_66,
    interest2_3,interest2_4,interest2_5,interest2_6,interest2_7,interest2_8,interest2_9,interest2_10,interest2_11,interest2_12,interest2_13,interest2_14,interest2_15,interest2_16,interest2_17,interest2_18,interest2_19,interest2_20,interest2_21,interest2_22,interest2_23,interest2_24,interest2_25,interest2_26,interest2_27,interest2_28,interest2_29,interest2_30,interest2_31,interest2_32,interest2_33,interest2_34,interest2_35,interest2_36,interest2_37,interest2_38,interest2_39,interest2_40,interest2_41,interest2_42,interest2_64,interest2_65,interest2_66,interest2_67,interest2_68,interest2_69,interest2_70,interest2_71,interest2_72,
    interest3_3,interest3_4,interest3_5,interest3_6,interest3_7,interest3_9,interest3_10,interest3_11,interest3_12,interest3_13,interest3_14,interest3_15,interest3_16,interest3_17,interest3_18,interest3_19,interest3_20,interest3_21,interest3_22,interest3_23,interest3_24,interest3_25,interest3_26,interest3_27,interest3_28,interest3_29,interest3_30,interest3_31,interest3_32,interest3_33,interest3_34,interest3_35,interest3_36,interest3_37,interest3_38,interest3_39,interest3_40,interest3_41,interest3_42,interest3_64,interest3_65,interest3_66,interest3_67,interest3_68,interest3_69,interest3_70,interest3_71,interest3_72/
    
    idx            total observations /0*1142/
    cam1 observations from campaign 1 /0*53/
    cam2 observations from campaign 2 /0*463/
    cam3 observations from campaign 3 /0*242/;

table fulldata(idx,col)
$ondelim
$include fulldata.csv
$offdelim
;

table cam1data(cam1,col_1)
$ondelim
$include cam1.csv
$offdelim
;

table cam2data(cam2,col_2)
$ondelim
$include cam2.csv
$offdelim
;

table cam3data(cam3,col_3)
$ondelim
$include cam3.csv
$offdelim
;
    
set
k3all(col_3)           /im_std,clicks,spent/
k31(col_3)          /im_std,clicks,spent,interest1_2,interest1_7,interest1_10,interest1_15,interest1_16,interest1_18,interest1_19,interest1_20,interest1_21,interest1_22,interest1_23,interest1_24,interest1_25,interest1_26,interest1_27,interest1_28,interest1_29,interest1_30,interest1_31,interest1_32,interest1_36,interest1_63,interest1_64,interest1_65,interest1_66/
k32(col_3)          /im_std,clicks,spent,interest2_3,interest2_4,interest2_5,interest2_6,interest2_7,interest2_8,interest2_9,interest2_10,interest2_11,interest2_12,interest2_13,interest2_14,interest2_15,interest2_16,interest2_17,interest2_18,interest2_19,interest2_20,interest2_21,interest2_22,interest2_23,interest2_24,interest2_25,interest2_26,interest2_27,interest2_28,interest2_29,interest2_30,interest2_31,interest2_32,interest2_33,interest2_34,interest2_35,interest2_36,interest2_37,interest2_38,interest2_39,interest2_40,interest2_41,interest2_42,interest2_64,interest2_65,interest2_66,interest2_67,interest2_68,interest2_69,interest2_70,interest2_71,interest2_72/
k33(col_3)          /im_std,clicks,spent,interest3_3,interest3_4,interest3_5,interest3_6,interest3_7,interest3_9,interest3_10,interest3_11,interest3_12,interest3_13,interest3_14,interest3_15,interest3_16,interest3_17,interest3_18,interest3_19,interest3_20,interest3_21,interest3_22,interest3_23,interest3_24,interest3_25,interest3_26,interest3_27,interest3_28,interest3_29,interest3_30,interest3_31,interest3_32,interest3_33,interest3_34,interest3_35,interest3_36,interest3_37,interest3_38,interest3_39,interest3_40,interest3_41,interest3_42,interest3_64,interest3_65,interest3_66,interest3_67,interest3_68,interest3_69,interest3_70,interest3_71,interest3_72/;
parameter       b3(cam3)     RHS values
                a3all(cam3,k3all)   data points;
b3(cam3) = cam3data(cam3,'approved_conversion');
a3all(cam3,k3all)  = cam3data(cam3,k3all);

variables
X3all(k3all)    unknown parameter estimates
r3(cam3)    residuals
obj;
equations objdef3all,rdef3all(cam3);

objdef3all..
    obj =e= sum(cam3, sqr(r3(cam3)));

rdef3all(cam3)..
    r3(cam3) =e= sum(k3all, a3all(cam3,k3all)*X3all(k3all)) - b3(cam3);
    
model camp3all /objdef3all, rdef3all/;
solve camp3all using qcp minimizing obj;

parameter a31(cam3,k31)   data points;
a31(cam3,k31)  = cam3data(cam3,k31);
variables X31(k31)    unknown parameter estimates
equations rdef31(cam3);

rdef31(cam3)..
    r3(cam3) =e= sum(k31, a31(cam3,k31)*X31(k31)) - b3(cam3);
model camp31 /camp3all - rdef3all + rdef31/;
solve camp31 using qcp minimizing obj;

parameter a32(cam3,k32)   data points;
a32(cam3,k32)  = cam3data(cam3,k32);
variables X32(k32)    unknown parameter estimates
equations rdef32(cam3);

rdef32(cam3)..
    r3(cam3) =e= sum(k32, a32(cam3,k32)*X32(k32)) - b3(cam3);
model camp32 /camp3all - rdef3all + rdef32/;
solve camp32 using qcp minimizing obj;

parameter a33(cam3,k33)   data points;
a33(cam3,k33)  = cam3data(cam3,k33);
variables X33(k33)    unknown parameter estimates
equations rdef33(cam3);

rdef33(cam3)..
    r3(cam3) =e= sum(k33, a33(cam3,k33)*X33(k33)) - b3(cam3);
model camp33 /camp3all - rdef3all + rdef33/;
solve camp33 using qcp minimizing obj;