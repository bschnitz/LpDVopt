F := RationalField();
A<x4,x3,x2,x1> := FreeAlgebra(F,4);
B := [x4*x4-5*x4*x2+6x1*x4-9*x1*x2+x1*x1,
x4*x4-4*x4*x3+13*x4*x2-9*x3*x4+11*x3*x1-7*x1*x4,
x3*x3-7*x3*x2+9*x1*x4+x1*x1,
11*x4*x3+7*x4*x2-5*x2*x2-4*x1*x4,
x4*x2-7*x4*x1-x2*x2-13*x2*x1-4*x1*x3+2*x1*x2-x1*x1,
15*x4*x1-9*x3*x4+4*x2*x2+15*x2*x1+x1*x2];
GroebnerBasis(B,7);
quit;