#############################################################################
##
#W  float.tst                 GAP4 Package `RCWA'                 Stefan Kohl
##
#H  @(#)$Id$
##

gap> START_TEST("$Id$");
gap> Int(Float(2/3));
0
gap> Int(Float(237/3));
79
gap> Int(Float(239/3));
79
gap> Rat(Float(355/113));
355/113
gap> Rat(Float(0));
0
gap> Rat(Float(-1/2));
-1/2
gap> Int(Float(-1/2));
-1
gap> Int(Float(-1/3));
-1
gap> Int(Float(-4/3));
-2
gap> 2-Float(-2/3)*3/2+1;
4
gap> IsFloat(last);
true
gap> IsInt(Int(Float(-1/3)));
true
gap> Rat(Float(Rat("2.7182818")));
2721/1001
gap> Float(last);
2.71828
gap> AbsoluteValue(Float(1/2));
0.5
gap> AbsoluteValue(Float(-1/2));
0.5
gap> AbsoluteValue(-Float(1/2));
0.5
gap> AbsoluteValue(-Float(0));
0
gap> Float(-1/2) < 1/4;
true
gap> Float(-1/2) > -2/3;
true
gap> Float([[1/2,0],[-1,5/7]]);
[ [ 0.5, 0 ], [ -1, 0.714286 ] ]
gap> STOP_TEST( "float.tst", 1000000 );

#############################################################################
##
#E  float.tst . . . . . . . . . . . . . . . . . . . . . . . . . . . ends here

