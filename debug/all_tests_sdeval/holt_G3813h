LIB "freegb.lib";
ring r = 0,(a,b,c,x,y,z,h),dp;
int d = 20;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = a(1)*x(2)-h(1)*h(2),
x(1)*a(2)-h(1)*h(2),
b(1)*y(2)-h(1)*h(2),
y(1)*b(2)-h(1)*h(2),
c(1)*z(2)-h(1)*h(2),
z(1)*c(2)-h(1)*h(2),
a(1)*a(2)*a(3)-h(1)*h(2)*h(3),
b(1)*b(2)*b(3)*b(4)*b(5)*b(6)*b(7)*b(8)-h(1)*h(2)*h(3)*h(4)*h(5)*h(6)*h(7)*h(8),
c(1)*c(2)*c(3)*c(4)*c(5)*c(6)*c(7)*c(8)*c(9)*c(10)*c(11)*c(12)*c(13)-h(1)*h(2)*h(3)*h(4)*h(5)*h(6)*h(7)*h(8)*h(9)*h(10)*h(11)*h(12)*h(13),
a(1)*b(2)*a(3)*b(4)-h(1)*h(2)*h(3)*h(4),
b(1)*c(2)*b(3)*c(4)-h(1)*h(2)*h(3)*h(4),
c(1)*a(2)*c(3)*a(4)-h(1)*h(2)*h(3)*h(4),
a(1)*b(2)*c(3)*a(4)*b(5)*c(6)-h(1)*h(2)*h(3)*h(4)*h(5)*h(6),
a(1)*h(2)-h(1)*a(2),
b(1)*h(2)-h(1)*b(2),
c(1)*h(2)-h(1)*c(2),
x(1)*h(2)-h(1)*x(2),
y(1)*h(2)-h(1)*y(2),
z(1)*h(2)-h(1)*z(2);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
print (J, "%s");$