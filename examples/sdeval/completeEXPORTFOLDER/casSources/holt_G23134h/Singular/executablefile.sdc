LIB "freegb.lib";
ring r = 0,(a,b,x,y,h),dp;
int d = 26;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = a(1)*a(2)-h(1)*h(2),
a(1)*x(2)-h(1)*h(2),
x(1)*a(2)-h(1)*h(2),
b(1)*y(2)-h(1)*h(2),
y(1)*b(2)-h(1)*h(2),
b(1)*b(2)*b(3)-h(1)*h(2)*h(3),
a(1)*b(2)*a(3)*b(4)*a(5)*b(6)*a(7)*b(8)*a(9)*b(10)*a(11)*b(12)*a(13)*b(14)*a(15)*b(16)*a(17)*b(18)*a(19)*b(20)*a(21)*b(22)*a(23)*b(24)*a(25)*b(26)-h(1)*h(2)*h(3)*h(4)*h(5)*h(6)*h(7)*h(8)*h(9)*h(10)*h(11)*h(12)*h(13)*h(14)*h(15)*h(16)*h(17)*h(18)*h(19)*h(20)*h(21)*h(22)*h(23)*h(24)*h(25)*h(26),
a(1)*b(2)*b(3)*a(4)*b(5)*a(6)*b(7)*b(8)*a(9)*b(10)*a(11)*b(12)*b(13)*a(14)*b(15)*a(16)*b(17)*b(18)*a(19)*b(20)-h(1)*h(2)*h(3)*h(4)*h(5)*h(6)*h(7)*h(8)*h(9)*h(10)*h(11)*h(12)*h(13)*h(14)*h(15)*h(16)*h(17)*h(18)*h(19)*h(20),
a(1)*h(2)-h(1)*a(2),
b(1)*h(2)-h(1)*b(2),
x(1)*h(2)-h(1)*x(2),
y(1)*h(2)-h(1)*y(2);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
print (J, "%s");$