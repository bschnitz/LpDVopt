LIB "freegb.lib";
ring r = 0,(x4,x3,x2,x1),dp;
int d = 7;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = x4(1)*x4(2)-5*x4(1)*x2(2)+6x1*x4(1)-9*x1(1)*x2(2)+x1(1)*x1(2),
x4(1)*x4(2)-4*x4(1)*x3(2)+13*x4(1)*x2(2)-9*x3(1)*x4(2)+11*x3(1)*x1(2)-7*x1(1)*x4(2),
x3(1)*x3(2)-7*x3(1)*x2(2)+9*x1(1)*x4(2)+x1(1)*x1(2),
11*x4(1)*x3(2)+7*x4(1)*x2(2)-5*x2(1)*x2(2)-4*x1(1)*x4(2),
x4(1)*x2(2)-7*x4(1)*x1(2)-x2(1)*x2(2)-13*x2(1)*x1(2)-4*x1(1)*x3(2)+2*x1(1)*x2(2)-x1(1)*x1(2),
15*x4(1)*x1(2)-9*x3(1)*x4(2)+4*x2(1)*x2(2)+15*x2(1)*x1(2)+x1(1)*x2(2);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
print (J, "%s");$