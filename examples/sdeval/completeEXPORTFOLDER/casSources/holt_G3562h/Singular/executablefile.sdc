LIB "freegb.lib";
ring r = 0,(a,b,x,y,h),dp;
int d = 20;
def R = makeLetterplaceRing(d);
 setring(R);
ideal I = a(1)*x(2)-h(1)*h(2),
x(1)*a(2)-h(1)*h(2),
b(1)*y(2)-h(1)*h(2),
y(1)*b(2)-h(1)*h(2),
a(1)*a(2)*a(3)-h(1)*h(2)*h(3),
b(1)*b(2)*b(3)*b(4)*b(5)-h(1)*h(2)*h(3)*h(4)*h(5),
a(1)*b(2)*a(3)*b(4)*a(5)*b(6)*a(7)*b(8)*a(9)*b(10)*a(11)*b(12)-h(1)*h(2)*h(3)*h(4)*h(5)*h(6)*h(7)*h(8)*h(9)*h(10)*h(11)*h(12),
a(1)*a(2)*b(3)*b(4)*b(5)*b(6)*a(7)*b(8)*a(9)*a(10)*b(11)*b(12)*b(13)*b(14)*a(15)*b(16)-h(1)*h(2)*h(3)*h(4)*h(5)*h(6)*h(7)*h(8)*h(9)*h(10)*h(11)*h(12)*h(13)*h(14)*h(15)*h(16),
a(1)*h(2)-h(1)*a(2),
b(1)*h(2)-h(1)*b(2),
x(1)*h(2)-h(1)*x(2),
y(1)*h(2)-h(1)*y(2);
option(prot);
option(redTail);
option(redSB);
ideal J = letplaceGBasis(I);
print (J, "%s");$