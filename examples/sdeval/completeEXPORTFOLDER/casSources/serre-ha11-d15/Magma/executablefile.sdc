F := RationalField();
A<f1,f2,f3> := FreeAlgebra(F,3);
B := [f1*f2*f2-2*f2*f1*f2+f2*f2*f1,
f1*f3-f3*f1,
f1*f1*f2-2*f1*f2*f1+f2*f1*f1,
f2*f3*f3*f3-3*f3*f2*f3*f3+3*f3*f3*f2*f3-f3*f3*f3*f2,
f2*f2*f2*f3-3*f2*f2*f3*f2+3*f2*f3*f2*f2-f3*f2*f2*f2];
GroebnerBasis(B,15);
quit;