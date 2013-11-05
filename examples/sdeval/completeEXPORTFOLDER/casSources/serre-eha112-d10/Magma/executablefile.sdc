F := RationalField();
A<f1,f2,f3> := FreeAlgebra(F,3);
B := [f1*f2*f2*f2-3*f2*f1*f2*f2+3*f2*f2*f1*f2-f2*f2*f2*f1,
f1*f3*f3*f3*f3-4*f3*f1*f3*f3*f3+6*f3*f3*f1*f3*f3-4*f3*f3*f3*f1*f3+f3*f3*f3*f3*f1,
f1*f1*f1*f2-3*f1*f1*f2*f1+3*f1*f2*f1*f1-f2*f1*f1*f1,
f2*f3*f3-2*f3*f2*f3+f3*f3*f2,
f1*f1*f1*f3-3*f1*f1*f3*f1+3*f1*f3*f1*f1-f3*f1*f1*f1,
f2*f2*f2*f2*f2*f2*f3-6*f2*f2*f2*f2*f2*f3*f2+15*f2*f2*f2*f2*f3*f2*f2-20*f2*f2*f2*f3*f2*f2*f2+15*f2*f2*f3*f2*f2*f2*f2-6*f2*f3*f2*f2*f2*f2*f2+f3*f2*f2*f2*f2*f2*f2];
GroebnerBasis(B,10);
quit;