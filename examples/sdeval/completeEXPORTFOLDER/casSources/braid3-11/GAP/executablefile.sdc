LoadPackage("GBNP","0",false);
SetInfoLevel(InfoGBNP,1);
SetInfoLevel(InfoGBNPTime,1);
F := Rationals;
A := FreeAssociativeAlgebraWithOne(F,"z","y","x");
g :=GeneratorsOfAlgebraWithOne(A);
z := g[1];
y := g[2];
x := g[3];;
weights := [1,1,1];
KI_gp := [y*x*y-z*y*z,x*y*x-z*x*y,z*x*z-y*z*x,x*x*x+y*y*y+z*z*z+x*y*z];
KI_np :=GP2NPList(KI_gp);
GB :=SGrobnerTrunc(KI_np,11,weights);
GBNP.ConfigPrint("z","y","x");
PrintNPList(GB);
Length(GB);
quit;