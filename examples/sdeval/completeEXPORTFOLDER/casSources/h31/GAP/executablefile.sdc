LoadPackage("GBNP","0",false);
SetInfoLevel(InfoGBNP,1);
SetInfoLevel(InfoGBNPTime,1);
F := Rationals;
A := FreeAssociativeAlgebraWithOne(F,"V","U","v","u");
g :=GeneratorsOfAlgebraWithOne(A);
V := g[1];
U := g[2];
v := g[3];
u := g[4];;
weights := [1,1,1,1];
KI_gp := [u*U-1,U*u-1,v*V-1,V*v-1,v*U*v*v*U*v-1,U*v*U*v*U*v-1,u*u*u*u*v*u*v*v*v*v*u*u*u*v*u*v*v*v-1];
KI_np :=GP2NPList(KI_gp);
GB :=SGrobnerTrunc(KI_np,18,weights);
GBNP.ConfigPrint("V","U","v","u");
PrintNPList(GB);
Length(GB);
quit;