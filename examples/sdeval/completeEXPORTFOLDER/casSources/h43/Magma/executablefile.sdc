F := RationalField();
A<u,v,U,V> := FreeAlgebra(F,4);
B := [u*U-1,
U*u-1,
v*V-1,
V*v-1,
v*U*v*v*U*v-1,
U*v*U*v*U*v-1,
u*u*u*v*u*v*u*v*v*v*u*u*v*u*v*u*v*v-1];
GroebnerBasis(B,18);
quit;