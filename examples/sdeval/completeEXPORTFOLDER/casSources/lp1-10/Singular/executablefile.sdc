LIB "freegb.lib";
ring r = 0,(x,y,z),dp;
int d = 10;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = z(1)*z(2)*z(3)*z(4)+y(1)*x(2)*y(3)*x(4)-x(1)*y(2)*y(3)*x(4)-3*z(1)*y(2)*x(3)*z(4),
x(1)*x(2)*x(3)+y(1)*x(2)*y(3)-x(1)*y(2)*x(3),
z(1)*y(2)*x(3)-x(1)*y(2)*z(3)+z(1)*x(2)*z(3);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
print (J, "%s");$