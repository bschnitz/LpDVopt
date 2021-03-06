LoadPackage("GBNP","0",false);
SetInfoLevel(InfoGBNP,1);
SetInfoLevel(InfoGBNPTime,1);
F := Rationals;
A := FreeAssociativeAlgebraWithOne(F,"z_6","y_6","x_6","z_5","y_5","x_5","z_4","y_4","x_4","z_3","y_3","x_3","z_2","y_2","x_2","z_1","y_1","x_1");
g :=GeneratorsOfAlgebraWithOne(A);
z_6 := g[1];
y_6 := g[2];
x_6 := g[3];
z_5 := g[4];
y_5 := g[5];
x_5 := g[6];
z_4 := g[7];
y_4 := g[8];
x_4 := g[9];
z_3 := g[10];
y_3 := g[11];
x_3 := g[12];
z_2 := g[13];
y_2 := g[14];
x_2 := g[15];
z_1 := g[16];
y_1 := g[17];
x_1 := g[18];;
weights := [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1];
KI_gp := [y_1*x_2*y_3-z_1*y_2*z_3,x_1*y_2*x_3-z_1*x_2*y_3,-y_1*z_2*x_3+z_1*x_2*z_3,x_1*x_2*x_3+x_1*y_2*z_3+y_1*y_2*y_3+z_1*z_2*z_3,y_2*x_3*y_4-z_2*y_3*z_4,y_3*x_4*y_5-z_3*y_4*z_5,y_4*x_5*y_6-z_4*y_5*z_6,x_2*y_3*x_4-z_2*x_3*y_4,x_3*y_4*x_5-z_3*x_4*y_5,x_4*y_5*x_6-z_4*x_5*y_6,-y_2*z_3*x_4+z_2*x_3*z_4,-y_3*z_4*x_5+z_3*x_4*z_5,-y_4*z_5*x_6+z_4*x_5*z_6,x_2*x_3*x_4+x_2*y_3*z_4+y_2*y_3*y_4+z_2*z_3*z_4,x_3*x_4*x_5+x_3*y_4*z_5+y_3*y_4*y_5+z_3*z_4*z_5,x_4*x_5*x_6+x_4*y_5*z_6+y_4*y_5*y_6+z_4*z_5*z_6];
KI_np :=GP2NPList(KI_gp);
GB :=SGrobnerTrunc(KI_np,6,weights);
GBNP.ConfigPrint("z_6","y_6","x_6","z_5","y_5","x_5","z_4","y_4","x_4","z_3","y_3","x_3","z_2","y_2","x_2","z_1","y_1","x_1");
PrintNPList(GB);
Length(GB);
quit;