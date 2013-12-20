//some examples for singular
//use
option(teach);
//for some debugging output
//zipgate
option(notBuckets);
//this option is our friend

//example for new letterplace variant
LIB "freegb.lib";
ring r = 0,x,dp;
def R = makeLetterplaceRing(10);
setring R;
ideal I = x(1)*x(2)*x(3)*x(4);
ideal J = system("freegbdvc",I,10,1);

//normal commutative example
ring r = 0,x,dp;
ideal I = x^5;
ideal J = std(I);

ring r = 0,(x,y),dp;
ideal I = x^5*y + y, x^2 + y;
ideal J = std(I);

ring r = 0,(x,y,z,w,u),dp;
ring r = 0,(x,y,z,w),dp;
ring r = 0,(x,y,z),dp;
system("r", r);

//example with two variables
LIB "freegb.lib";
ring r = 0,(x,y),dp;
def R = makeLetterplaceRing(10);
setring R;
ideal I = x(1)*x(2)*x(3),y(1)*y(2)*y(3);
//ideal J = system("freegbdvc",I,10,2);
//with viktors letterplace code
//ideal J = system("freegb",I,10,2);
option(redTail);
option(redSB);
option(notBuckets);
ideal J = system("freegbdvc",I,10,2);
//letplaceGBasis(I);

//example
LIB "freegb.lib";
ring r = 0,(x),dp;
def R = makeLetterplaceRing(10);
setring R;
ideal I = 1;
option(notBuckets);
ideal J = system("freegbdvc",I,10,1);

//example with self overlap
LIB "freegb.lib";
ring r = 0,(x,y),dp;
def R = makeLetterplaceRing(10);
setring R;
ideal I = x(1)*x(2);
ideal J = system("freegbdvc",I,10,2);

//example with overlap
LIB "freegb.lib";
ring r = 0,(x,y),dp;
def R = makeLetterplaceRing(10);
setring R;
ideal I = x(1)*x(2),y(1)*x(2);
ideal J = system("freegbdvc",I,10,2);

//example with reduction to 0
LIB "freegb.lib";
ring r = 0,(x,y),dp;
def R = makeLetterplaceRing(10);
setring R;
ideal I = x(1)*y(2),x(1);
ideal J = system("freegbdvc",I,10,2);


//example 2 with reduction to 0
//doesn't work properly yet
LIB "freegb.lib";
ring r = 0,(x,y),dp;
def R = makeLetterplaceRing(10);
setring R;
ideal I = y(1)*x(2)*y(3), y(1)*x(2);
ideal J = system("freegbdvc",I,10,2);

//normal commutative example with reduction to 0
ring r = 0,(x,y,z),dp;
ideal I = x*y*z, x*y;
ideal J = std(I);


//first (maybe) reasonable example
//1 xx + xy
//2 yx
//3 y*(xx + xy) - yxx -> 0
//4 (xx + xy)*x - x(xx + xy) = xyx - xxy 2-> xxy 1-> xyy
//5 (xx + xy)*yy - x*xyy = xyyy 4-> 0
LIB "freegb.lib";
ring r = 0,(x,y),dp;
def R = makeLetterplaceRing(10);
setring R;
ideal I = x(1)*x(2) + x(1)*y(2),y(1)*x(2);
ideal J = system("freegbdvc",I,10,2);

//inhomogenous example (derived from the one above)
//y*(xx + x) - yx*x = yx == 0
//x*(xx + x) - (xx + x)*x == 0
LIB "freegb.lib";
option(notBuckets); //this option is our friend!!!
ring r = 0,(x,y),dp;
def R = makeLetterplaceRing(10);
setring R;
ideal I = x(1)*x(2) + x(1),y(1)*x(2);
ideal J = system("freegbdvc",I,10,2);
ideal J = system("freegb",I,10,2);

//inhomogenous example 2
//y*(xx + y) - yx*x = yy
//y*yx - yy*x == 0
//x*(xx + y) - (xx + y)*x = xy - yx == xy
//(xx + y)*y - x*xy = yy == 0
//... == 0
LIB "freegb.lib";
option(notBuckets); //this option is our friend!!!
ring r = 0,(x,y),dp;
def R = makeLetterplaceRing(10);
setring R;
ideal I = x(1)*x(2) + y(1),y(1)*x(2);
ideal J = system("freegbdvc",I,10,2);
ideal J = system("freegb",I,10,2);

//the above commutative
option(notBuckets); //this option is our friend!!!
ring r = 0,(x,y),dp;
ideal I = x^2 + y, yx;
ideal J = std(I);


LIB "freegb.lib";
ring r = 0,(x,y),dp;
def R = makeLetterplaceRing(10);
setring R;
list L = 5*x(1)*x(2) + x(1)*y(2),3*y(1)*x(2);
list K;
K[1] = L;
//list OUT = system("lpMultTest",K,10,2,1,1);
list OUT = system("lpMultTest",K,10,2,10000,1000000);
//This would use a slightly different algorithm.
//I think the above would be better.
//system("lpMultTest",K,10,2, 800000);
list L = y(1)*y(2)*y(3)*y(4)*x(5)*x(6), x(1);
list K;
K[1] = L;
system("lpMultTest",K,10,2,10000,1000000);
OUT[4][1][2] == OUT[5][1][2];
OUT[3][1][2] == OUT[5][1][2];
OUT[2][1][2] == OUT[5][1][2];
OUT[6][1][2] == OUT[5][1][2];
system("p", OUT[6][1][2]);
system("p", OUT[5][1][2]);
system("r", R);

OUT[3][1][2] == OUT[2][1][2];
OUT[4][1][2] == OUT[2][1][2];
OUT[5][1][2] == OUT[2][1][2];
OUT[6][1][2] == OUT[2][1][2];
OUT[7][1][2] == OUT[2][1][2];
OUT[8][1][2] == OUT[2][1][2];



LIB "freegb.lib";
ring r = 0,(x,y),dp;
def R = makeLetterplaceRing(50);
setring(R);
list K;
K[1] = list(y(1)*x(2)*y(3)*y(4)*y(5)*y(6)*x(7)*x(8)*y(9)*x(10)*y(11)+x(1)*x(2)*x(3)*y(4)*y(5)+x(1)*y(2)*y(3)+y(1)+1,x(1)*y(2)*x(3)*y(4)*y(5)*x(6)*x(7)*x(8)*x(9)*x(10)*y(11)*x(12)*x(13)*y(14)*x(15)*y(16)*y(17)*x(18)*x(19)*x(20)*y(21)*y(22));
//K[1] = list(y(1)*x(2)*y(3)*y(4)*y(5)*y(6)*x(7)*x(8)*y(9)*x(10)*y(11),x(1)*y(2)*x(3)*y(4)*y(5)*x(6)*x(7)*x(8)*x(9)*x(10)*y(11)*x(12)*x(13)*y(14)*x(15)*y(16)*y(17)*x(18)*x(19)*x(20)*y(21)*y(22));
//K[1] = list(x(1)*x(2)*x(3)*y(4)*y(5),x(1)*y(2)*x(3)*y(4)*y(5)*x(6)*x(7)*x(8)*x(9)*x(10)*y(11)*x(12)*x(13)*y(14)*x(15)*y(16)*y(17)*x(18)*x(19)*x(20)*y(21)*y(22));
list OUT = system("lpMultTest",K,50,2,10000,1000000);
int i;
for(i = 1; i <= size(OUT); i++){lead(OUT[i][1][2]);}
//ordOut(K,OUT);



//other examples for testing (by Viktor and others)


//x^2 - y^2
//-x(x^2 - y^2) + (x^2 - y^2)x =  xy^2 - y^2 * x
//   (x^2 - y^2)*y^2 - x*(xy^2 - y^2 * x) 
// = xy^2 * x -y^4 
//-> y^2 * x^2 - y^4
//-> 0
//Also: J = x^2 - y^2, xy^2 - y^2 * x
//Stimmt mit Ergebnis aus Test ueberein
option(notBuckets); //this option is our friend!!! - segfault otherwise
LIB "freegb.lib";
ring r = 0,(x,y),dp;
def R = makeLetterplaceRing(10);
setring R;
ideal I = x(1)*x(2) - y(1)*y(2);
ideal J = system("freegbdvc",I,10,2);
ideal J = system("freegb",I,10,2);

//x^3 - y^3
LIB "freegb.lib";
ring r = 0,(x,y),dp;
def R = makeLetterplaceRing(10);
setring R;
ideal I = x(1)*x(2)*x(3) - y(1)*y(2)*y(3);
ideal J = system("freegbdvc",I,10,2);

//homogenisiertes C2kranzC2 - segfault
LIB "freegb.lib";
ring r = 0,(a,b,h),dp;
def R = makeLetterplaceRing(12);
setring R;
option(notBuckets); //this option is our friend!!!
ideal I = a(1)*a(2),b(1)*b(2),a(1)*b(2)*a(3)*b(4) + a(1)*b(2)*a(3)*h(4) + b(1)*a(2)*b(3)*h(4) + b(1)*a(2)*h(3)*h(4) + a(1)*b(2)*h(3)*h(4);
ideal J = system("freegbdvc",I,12,3);

//some sort of easy braid relations
LIB "freegb.lib";
ring r = 0,(a,b,c),dp;
def R = makeLetterplaceRing(6);
setring R;
option(notBuckets); //this option is our friend!!!
ideal I = a(1)*b(2)*a(3)-b(1)*a(2)*b(3), b(1)*a(2)*b(3)-c(1)*b(2)*c(3);
ideal J = system("freegbdvc",I,6,3);

//example from Viktors paper:
//"Letterplace Ideals And Non Commutative Groebner Bases"
//(4. A concrete example)
//Truncated GB up to degree 5
//Wrong GB calculated
//input:
//x^3 - y^3
//xyx - yxy
//Should be
//x^3 - y^3, xyx - yxy, xyyxy - yxyyx, xy^3 - y^3 * x
int d = 3; // degree
LIB "freegb.lib";
ring r = 0,(x,y),dp;
def R = makeLetterplaceRing(d);
setring R;
option(notBuckets); //this option is our friend!!!
ideal I = x(1)*x(2)*x(3)-y(1)*y(2)*y(3),
      x(1)*y(2)*x(3)-y(1)*x(2)*y(3);
ideal J = system("freegbdvc",I,d,2);
//Output fuer d = 6
//J[1]=x(1)*y(2)*x(3)-y(1)*x(2)*y(3)
//J[2]=x(1)*x(2)*x(3)-y(1)*y(2)*y(3)
//J[3]=x(1)*y(2)*y(3)*y(4)-y(1)*y(2)*y(3)*x(4)
//J[4]=x(1)*y(2)*y(3)*x(4)*y(5)-y(1)*x(2)*y(3)*y(4)*x(5)
//
//Output fuer d = 10
//J[1]=x(1)*y(2)*x(3)-y(1)*x(2)*y(3)
//J[2]=x(1)*x(2)*x(3)-y(1)*y(2)*y(3)
//J[3]=x(1)*y(2)*y(3)*y(4)-y(1)*y(2)*y(3)*x(4)
//J[4]=x(1)*y(2)*y(3)*x(4)*y(5)-y(1)*x(2)*y(3)*y(4)*x(5)
//J[5]=y(1)*x(2)*y(3)*y(4)*x(5)*x(6)-y(1)*y(2)*y(3)*x(4)*x(5)*y(6)
//J[6]=y(1)*y(2)*y(3)*x(4)*x(5)*y(6)*y(7)*x(8)-y(1)*y(2)*y(3)*y(4)*x(5)*x(6)*y(7)*y(8)

//braid3-11_gb
option(notBuckets); //this option is our friend!!!
LIB "freegb.lib";
ring r = 0,(x,y,z),dp;
int d = 6; // degree
def R = makeLetterplaceRing(d);
setring R;
ideal I = 
y(1)*x(2)*y(3) - z(1)*y(2)*z(3), 
x(1)*y(2)*x(3) - z(1)*x(2)*y(3),
z(1)*x(2)*z(3) - y(1)*z(2)*x(3),
x(1)*x(2)*x(3) + y(1)*y(2)*y(3) + z(1)*z(2)*z(3) + x(1)*y(2)*z(3);
//option(prot); option(redSB);option(redTail);option(mem);

ideal J = system("freegbdvc",I,d,3);
write(":w tests/our_noTail_braid311", size(J));
for(int j=1; j <= ncols(J); j=j+1)
{
  write(":a tests/our_noTail_braid311", J[j]);
}
ideal J = system("freegb",I,d,3);
write(":w tests/viktor_noTail_braid311", size(J));
for(int j=1; j <= ncols(J); j=j+1)
{
  write(":a tests/viktor_noTail_braid311", J[j]);
}

option(redTail);

ideal J = system("freegbdvc",I,d,3);
write(":w tests/our_withTail_braid311", size(J));
for(int j=1; j <= ncols(J); j=j+1)
{
  write(":a tests/our_withTail_braid311", J[j]);
}
ideal J = system("freegb",I,d,3);
write(":w tests/viktor_withTail_braid311", size(J));
for(int j=1; j <= ncols(J); j=j+1)
{
  write(":a tests/viktor_withTail_braid311", J[j]);
}

//segfault example
option(notBuckets);
LIB "freegb.lib";
option(notBuckets); //this option is our friend!!!
ring r = 0,(x,y,z),dp;
int d = 6; // degree
def R = makeLetterplaceRing(d);
setring R;
ideal I = 
y(1)*x(2)*y(3) - z(1)*y(2)*z(3), 
x(1)*y(2)*x(3) - z(1)*x(2)*y(3),
z(1)*x(2)*z(3) - y(1)*z(2)*x(3); 
//ideal J = system("freegbdvc",I,d,3);
//system("pMultM",x(1)*y(2)+y(1)+z(1)*y(2)*x(3),x(1)*z(2),10,3);
system("pMultM",x(1)+y(1)+z(1)*x(2),x(1)*y(2),10,3);



//examples for testing the chain criterions

//chain crit 3:
//x^5 - y^5
int d = 10; // degree
LIB "freegb.lib";
ring r = 0,(x,y),dp;
def R = makeLetterplaceRing(d);
setring R;
ideal I = x(1)*x(2)*x(3)*x(4)*x(5)-y(1)*y(2)*y(3)*y(4)*y(5);
ideal J = system("freegbdvc",I,d,2);
