LIB "freegb.lib";
ring r = 0,(f1,f2,f3),dp;
int d = 10;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = f1(1)*f2(2)*f2(3)-2*f2(1)*f1(2)*f2(3)+f2(1)*f2(2)*f1(3),
f1(1)*f3(2)-f3(1)*f1(2),
f1(1)*f1(2)*f2(3)-2*f1(1)*f2(2)*f1(3)+f2(1)*f1(2)*f1(3),
f2(1)*f3(2)*f3(3)*f3(4)-3*f3(1)*f2(2)*f3(3)*f3(4)+3*f3(1)*f3(2)*f2(3)*f3(4)-f3(1)*f3(2)*f3(3)*f2(4),
f2(1)*f2(2)*f2(3)*f3(4)-3*f2(1)*f2(2)*f3(3)*f2(4)+3*f2(1)*f3(2)*f2(3)*f2(4)-f3(1)*f2(2)*f2(3)*f2(4);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
print (J, "%s");$