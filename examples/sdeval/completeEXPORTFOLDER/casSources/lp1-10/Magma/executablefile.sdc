F := RationalField();
A<x,y,z> := FreeAlgebra(F,3);
B := [z*z*z*z+y*x*y*x-x*y*y*x-3*z*y*x*z,
x*x*x+y*x*y-x*y*x,
z*y*x-x*y*z+z*x*z];
GroebnerBasis(B,10);
quit;