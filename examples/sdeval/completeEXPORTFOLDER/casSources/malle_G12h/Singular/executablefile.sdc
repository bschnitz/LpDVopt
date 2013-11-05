LIB "freegb.lib";
ring r = 0,(x,y,z,h),dp;
int d = 15;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = y(1)*z(2)*x(3)*y(4)-x(1)*y(2)*z(3)*x(4),
z(1)*x(2)*y(3)*z(4)-x(1)*y(2)*z(3)*x(4),
z(1)*x(2)*y(3)*z(4)-y(1)*z(2)*x(3)*y(4),
x(1)*x(2)-(a1+a2)*x(1)*h(2)+a1*a2*h(1)*h(2),
y(1)*y(2)-(a1+a2)*y(1)*h(2)+a1*a2*h(1)*h(2),
z(1)*z(2)-(a1+a2)*z(1)*h(2)+a1*a2*h(1)*h(2),
x(1)*h(2)-h(1)*x(2),
y(1)*h(2)-h(1)*y(2),
z(1)*h(2)-h(1)*z(2);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
print (J, "%s");$