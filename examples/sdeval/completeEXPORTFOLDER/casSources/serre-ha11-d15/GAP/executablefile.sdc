LoadPackage("GBNP","0",false);
SetInfoLevel(InfoGBNP,1);
SetInfoLevel(InfoGBNPTime,1);
F := Rationals;
A := FreeAssociativeAlgebraWithOne(F,"f3","f2","f1");
g :=GeneratorsOfAlgebraWithOne(A);
f3 := g[1];
f2 := g[2];
f1 := g[3];;
weights := [1,1,1];
KI_gp := [f1*f2*f2-2*f2*f1*f2+f2*f2*f1,f1*f3-f3*f1,f1*f1*f2-2*f1*f2*f1+f2*f1*f1,f2*f3*f3*f3-3*f3*f2*f3*f3+3*f3*f3*f2*f3-f3*f3*f3*f2,f2*f2*f2*f3-3*f2*f2*f3*f2+3*f2*f3*f2*f2-f3*f2*f2*f2];
KI_np :=GP2NPList(KI_gp);
GB :=SGrobnerTrunc(KI_np,15,weights);
GBNP.ConfigPrint("f3","f2","f1");
PrintNPList(GB);
Length(GB);
quit;