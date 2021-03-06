LoadPackage("GBNP","0",false);
SetInfoLevel(InfoGBNP,1);
SetInfoLevel(InfoGBNPTime,1);
F := Rationals;
A := FreeAssociativeAlgebraWithOne(F,"h2","h1","e2","e1","f2","f1");
g :=GeneratorsOfAlgebraWithOne(A);
h2 := g[1];
h1 := g[2];
e2 := g[3];
e1 := g[4];
f2 := g[5];
f1 := g[6];;
weights := [1,1,1,1,1,1];
KI_gp := [f1*f2*f2-2*f2*f1*f2+f2*f2*f1,e1*e2*e2-2*e2*e1*e2+e2*e2*e1,f1*f1*f1*f1*f2-4*f1*f1*f1*f2*f1+6*f1*f1*f2*f1*f1-4*f1*f2*f1*f1*f1+f2*f1*f1*f1*f1,e1*e1*e1*e1*e2-4*e1*e1*e1*e2*e1+6*e1*e1*e2*e1*e1-4*e1*e2*e1*e1*e1+e2*e1*e1*e1*e1,f2*e1-e1*f2,f1*e2-e2*f1,f1*e1-e1*f1+h1,f2*e2-e2*f2+h2,h1*h2-h2*h1,h1*e1-e1*h1-2*e1,f1*h1-h1*f1-2*f1,h1*e2-e2*h1+e2,f2*h1-h1*f2+f2,h2*e1-e1*h2+3*e1,f1*h2-h2*f1+3*f1,h2*e2-e2*h2-2*e2,f2*h2-h2*f2-2*f2];
KI_np :=GP2NPList(KI_gp);
GB :=SGrobnerTrunc(KI_np,8,weights);
GBNP.ConfigPrint("h2","h1","e2","e1","f2","f1");
PrintNPList(GB);
Length(GB);
quit;