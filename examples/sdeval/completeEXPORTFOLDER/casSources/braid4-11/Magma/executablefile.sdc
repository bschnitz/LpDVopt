F := RationalField();
A<x,y,z> := FreeAlgebra(F,3);
B := [y*x*y-z*y*z,
x*y*z-z*x*y,
x*y*z-z*x*y,
z*x*z-y*z*x,
x*x*x+y*y*y+z*z*z+x*y*z];
GroebnerBasis(B,11);
quit;