F := RationalField();
A<a,b,x,y,h> := FreeAlgebra(F,5);
B := [a*x-h*h,
x*a-h*h,
b*y-h*h,
y*b-h*h,
a*a*a-h*h*h,
b*b*b*b*b-h*h*h*h*h,
a*b*a*b*a*b*a*b*a*b*a*b-h*h*h*h*h*h*h*h*h*h*h*h,
a*a*b*b*b*b*a*b*a*a*b*b*b*b*a*b-h*h*h*h*h*h*h*h*h*h*h*h*h*h*h*h,
a*h-h*a,
b*h-h*b,
x*h-h*x,
y*h-h*y];
GroebnerBasis(B,20);
quit;