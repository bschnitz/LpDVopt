F := RationalField();
A<a,b,c,x,y,z,h> := FreeAlgebra(F,7);
B := [a*x-h*h,
x*a-h*h,
b*y-h*h,
y*b-h*h,
c*z-h*h,
z*c-h*h,
a*a*a-h*h*h,
b*b*b*b*b*b*b*b-h*h*h*h*h*h*h*h,
c*c*c*c*c*c*c*c*c*c*c*c*c-h*h*h*h*h*h*h*h*h*h*h*h*h,
a*b*a*b-h*h*h*h,
b*c*b*c-h*h*h*h,
c*a*c*a-h*h*h*h,
a*b*c*a*b*c-h*h*h*h*h*h,
a*h-h*a,
b*h-h*b,
c*h-h*c,
x*h-h*x,
y*h-h*y,
z*h-h*z];
GroebnerBasis(B,20);
quit;