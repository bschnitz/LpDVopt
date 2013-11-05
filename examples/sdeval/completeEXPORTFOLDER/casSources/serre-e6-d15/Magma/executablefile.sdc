F := RationalField();
A<f1,f2,f3,f4,f5,f6> := FreeAlgebra(F,6);
B := [f1*f2-f2*f1,
f1*f3*f3-2*f3*f1*f3+f3*f3*f1,
f1*f4-f4*f1,
f1*f5-f5*f1,
f1*f6-f6*f1,
f2*f3-f3*f2,
f2*f4*f4-2*f4*f2*f4+f4*f4*f2,
f2*f5-f5*f2,
f2*f6-f6*f2,
f1*f1*f3-2*f1*f3*f1+f3*f1*f1,
f3*f4*f4-2*f4*f3*f4+f4*f4*f3,
f3*f5-f5*f3,
f3*f6-f6*f3,
f2*f2*f4-2*f2*f4*f2+f4*f2*f2,
f3*f3*f4-2*f3*f4*f3+f4*f3*f3,
f4*f5*f5-2*f5*f4*f5+f5*f5*f4,
f4*f6-f6*f4,
f4*f4*f5-2*f4*f5*f4+f5*f4*f4,
f5*f6*f6-2*f6*f5*f6+f6*f6*f5,
f5*f5*f6-2*f5*f6*f5+f6*f5*f5];
GroebnerBasis(B,15);
quit;