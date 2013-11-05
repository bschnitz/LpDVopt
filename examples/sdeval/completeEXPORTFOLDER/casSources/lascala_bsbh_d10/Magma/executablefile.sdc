F := RationalField();
A<x_1,x_2,x_3,x_4,x_5> := FreeAlgebra(F,5);
B := [x_4*x_5*x_5-x_5*x_5*x_4,
x_3*x_5*x_5-x_5*x_5*x_3,
x_2*x_5*x_5-x_5*x_5*x_2,
x_1*x_5*x_5-x_5*x_5*x_1,
x_5*x_4*x_4-x_4*x_4*x_5,
x_3*x_5*x_4+x_5*x_3*x_4-x_4*x_3*x_5-x_4*x_5*x_3,
x_2*x_5*x_4+x_5*x_2*x_4-x_4*x_2*x_5-x_4*x_5*x_2,
x_1*x_5*x_4+x_5*x_1*x_4-x_4*x_1*x_5-x_4*x_5*x_1,
x_4*x_5*x_3+x_5*x_4*x_3-x_3*x_4*x_5-x_3*x_5*x_4,
x_5*x_3*x_3-x_3*x_3*x_5,
x_2*x_5*x_3+x_5*x_2*x_3-x_3*x_2*x_5-x_3*x_5*x_2,
x_1*x_5*x_3+x_5*x_1*x_3-x_3*x_1*x_5-x_3*x_5*x_1,
x_4*x_5*x_2+x_5*x_4*x_2-x_2*x_4*x_5-x_2*x_5*x_4,
x_3*x_5*x_2+x_5*x_3*x_2-x_2*x_3*x_5-x_2*x_5*x_3,
x_5*x_2*x_2-x_2*x_2*x_5,
x_1*x_5*x_2+x_5*x_1*x_2-x_2*x_1*x_5-x_2*x_5*x_1,
x_4*x_5*x_1+x_5*x_4*x_1-x_1*x_4*x_5-x_1*x_5*x_4,
x_3*x_5*x_1+x_5*x_3*x_1-x_1*x_3*x_5-x_1*x_5*x_3,
x_2*x_5*x_1+x_5*x_2*x_1-x_1*x_2*x_5-x_1*x_5*x_2,
x_5*x_1*x_1-x_1*x_1*x_5,
x_3*x_4*x_4-x_4*x_4*x_3,
x_2*x_4*x_4-x_4*x_4*x_2,
x_1*x_4*x_4-x_4*x_4*x_1,
x_4*x_3*x_3-x_3*x_3*x_4,
x_2*x_4*x_3+x_4*x_2*x_3-x_3*x_2*x_4-x_3*x_4*x_2,
x_1*x_4*x_3+x_4*x_1*x_3-x_3*x_1*x_4-x_3*x_4*x_1,
x_3*x_4*x_2+x_4*x_3*x_2-x_2*x_3*x_4-x_2*x_4*x_3,
x_4*x_2*x_2-x_2*x_2*x_4,
x_1*x_4*x_2+x_4*x_1*x_2-x_2*x_1*x_4-x_2*x_4*x_1,
x_3*x_4*x_1+x_4*x_3*x_1-x_1*x_3*x_4-x_1*x_4*x_3,
x_2*x_4*x_1+x_4*x_2*x_1-x_1*x_2*x_4-x_1*x_4*x_2,
x_4*x_1*x_1-x_1*x_1*x_4,
x_2*x_3*x_3-x_3*x_3*x_2,
x_1*x_3*x_3-x_3*x_3*x_1,
x_3*x_2*x_2-x_2*x_2*x_3,
x_1*x_3*x_2+x_3*x_1*x_2-x_2*x_1*x_3-x_2*x_3*x_1,
x_2*x_3*x_1+x_3*x_2*x_1-x_1*x_2*x_3-x_1*x_3*x_2,
x_3*x_1*x_1-x_1*x_1*x_3,
x_1*x_2*x_2-x_2*x_2*x_1,
x_2*x_1*x_1-x_1*x_1*x_2,
-x_1*x_3*x_2*x_4*x_5+x_2*x_3*x_1*x_4*x_5+x_1*x_2*x_4*x_3*x_5-x_2*x_1*x_4*x_3*x_5-x_1*x_3*x_4*x_2*x_5+x_2*x_3*x_4*x_1*x_5+x_3*x_1*x_4*x_2*x_5-x_3*x_2*x_4*x_1*x_5+x_1*x_3*x_2*x_4*x_5-x_2*x_3*x_1*x_4*x_5-x_1*x_4*x_2*x_3*x_5+x_2*x_4*x_1*x_3*x_5+x_1*x_4*x_3*x_2*x_5-x_2*x_4*x_3*x_1*x_5-x_3*x_4*x_1*x_2*x_5+x_3*x_4*x_2*x_1*x_5];
GroebnerBasis(B,10);
quit;