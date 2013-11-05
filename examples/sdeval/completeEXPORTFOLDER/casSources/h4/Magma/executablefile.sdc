F := RationalField();
A<u,v,U,V> := FreeAlgebra(F,4);
B := [u*U-1,
U*u-1,
v*V-1,
V*v-1,
v*U*v*v*U*v-1,
U*v*U*v*U*v-1,
u*u*u*u*u*v*v*v*u*u*u*u*u*v*v*v-1];
GroebnerBasis(B,16);
quit;