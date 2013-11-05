F := RationalField();
A<x,y,z,h> := FreeAlgebra(F,4);
B := [y*z*x*y-x*y*z*x,
z*x*y*z-x*y*z*x,
z*x*y*z-y*z*x*y,
x*x-(a1+a2)*x*h+a1*a2*h*h,
y*y-(a1+a2)*y*h+a1*a2*h*h,
z*z-(a1+a2)*z*h+a1*a2*h*h,
x*h-h*x,
y*h-h*y,
z*h-h*z];
GroebnerBasis(B,15);
quit;