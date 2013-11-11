LIB "freegb.lib";
ring r = 0,(x,y,z),dp;
int d = 10;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = x(1)*y(2)+y(1)*z(2),
x(1)*x(2)+x(1)*y(2)-y(1)*x(2)-y(1)*y(2);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
print (J, "%s");$