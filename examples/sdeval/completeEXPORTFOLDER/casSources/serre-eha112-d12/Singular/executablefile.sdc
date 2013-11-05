LIB "freegb.lib";
ring r = 0,(f1,f2,f3),dp;
int d = 12;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = f1(1)*f2(2)*f2(3)*f2(4)-3*f2(1)*f1(2)*f2(3)*f2(4)+3*f2(1)*f2(2)*f1(3)*f2(4)-f2(1)*f2(2)*f2(3)*f1(4),
f1(1)*f3(2)*f3(3)*f3(4)*f3(5)-4*f3(1)*f1(2)*f3(3)*f3(4)*f3(5)+6*f3(1)*f3(2)*f1(3)*f3(4)*f3(5)-4*f3(1)*f3(2)*f3(3)*f1(4)*f3(5)+f3(1)*f3(2)*f3(3)*f3(4)*f1(5),
f1(1)*f1(2)*f1(3)*f2(4)-3*f1(1)*f1(2)*f2(3)*f1(4)+3*f1(1)*f2(2)*f1(3)*f1(4)-f2(1)*f1(2)*f1(3)*f1(4),
f2(1)*f3(2)*f3(3)-2*f3(1)*f2(2)*f3(3)+f3(1)*f3(2)*f2(3),
f1(1)*f1(2)*f1(3)*f3(4)-3*f1(1)*f1(2)*f3(3)*f1(4)+3*f1(1)*f3(2)*f1(3)*f1(4)-f3(1)*f1(2)*f1(3)*f1(4),
f2(1)*f2(2)*f2(3)*f2(4)*f2(5)*f2(6)*f3(7)-6*f2(1)*f2(2)*f2(3)*f2(4)*f2(5)*f3(6)*f2(7)+15*f2(1)*f2(2)*f2(3)*f2(4)*f3(5)*f2(6)*f2(7)-20*f2(1)*f2(2)*f2(3)*f3(4)*f2(5)*f2(6)*f2(7)+15*f2(1)*f2(2)*f3(3)*f2(4)*f2(5)*f2(6)*f2(7)-6*f2(1)*f3(2)*f2(3)*f2(4)*f2(5)*f2(6)*f2(7)+f3(1)*f2(2)*f2(3)*f2(4)*f2(5)*f2(6)*f2(7);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
print (J, "%s");$