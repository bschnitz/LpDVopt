F := RationalField();
A<f1,f2,f3,f4> := FreeAlgebra(F,4);
B := [f1*f2-f2*f1,
f1*f3*f3-2*f3*f1*f3+f3*f3*f1,
f1*f4-f4*f1,
f2*f3-f3*f2,
f2*f4*f4-2*f4*f2*f4+f4*f4*f2,
f1*f1*f3-2*f1*f3*f1+f3*f1*f1,
f3*f4*f4-2*f4*f3*f4+f4*f4*f3,
f2*f2*f4-2*f2*f4*f2+f4*f2*f2,
f3*f3*f3*f4-3*f3*f3*f4*f3+3*f3*f4*f3*f3-f4*f3*f3*f3];
GroebnerBasis(B,15);
quit;