F := RationalField();
A<x,y,z> := FreeAlgebra(F,3);
B := [x*y+y*z,
x*x+x*y-y*x-y*y];
GroebnerBasis(B,10);
quit;