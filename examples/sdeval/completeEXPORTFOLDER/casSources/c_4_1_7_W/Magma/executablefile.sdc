F := RationalField();
A<x4,x3,x2,x1> := FreeAlgebra(F,4);
B := [x4*x4-25*x4*x2-x1*x4-6*x1*x3-9*x1*x2+x1*x1,
x4*x3+13*x4*x2+12*x4*x1-9*x3*x4+4*x3*x2+41*x3*x1-7*x1*x4-x1*x2,
x3*x3-9*x3*x2+2*x1*x4+x1*x1,
17*x4*x2-5*x2*x2-41*x1*x4,
x2*x2-13*x2*x1-4*x1*x3+2*x1*x2-x1*x1,
x2*x1+4*x1*x2-3*x1*x1];
GroebnerBasis(B,7);
quit;