#############################################################################
##
#W  rcwaaux.g                 GAP4 Package `RCWA'                 Stefan Kohl
##
#H  @(#)$Id$
##
##  This file contains auxiliary functions for the RCWA package.
##
Revision.rcwaaux_g :=
  "@(#)$Id$";

#############################################################################
##
#F  RCWABuildManual( ) . . . . . . . . . . . . . . . . . . . build the manual
##
##  This function builds the manual of the RCWA package in the file formats
##  &LaTeX;, DVI, Postscript, PDF and HTML.
##
##  This is done using the GAPDoc package by Frank L\"ubeck and
##  Max Neunh\"offer.
##
BindGlobal( "RCWABuildManual", 

  function ( )

    local  Manual, RCWADir;

    RCWADir := GAPInfo.PackagesInfo.("rcwa")[1].InstallationPath;
    MakeGAPDocDoc( Concatenation( RCWADir, "/doc/" ), "rcwa.xml",
                   [ "../gap/rcwaaux.g",
                     "../gap/rcwamap.gd", "../gap/rcwamap.gi",
                     "../gap/rcwagrp.gd", "../gap/rcwagrp.gi" ],
                     "RCWA", "../../../" );
  end );

#############################################################################
##
#F  RCWATest( [ <test1> [, <test2> [, ... ]]] ) . . . . . . . read test files
##
##  Performs tests of the RCWA package.
##
##  The function makes use of an adaptation of the test file `tst/testall.g'
##  of the {\GAP} Library to this package. 
##
BindGlobal( "RCWATest",

  function ( )

    local  RCWADir, dir;

    RCWADir := GAPInfo.PackagesInfo.("rcwa")[1].InstallationPath;
    dir := Concatenation( RCWADir, "/tst/" );
    Read( Concatenation( dir, "testall.g" ) );
  end );

#############################################################################
##
#F  RCWAReadExamples( ) . . . . . . . . . . . . . . . . .  read examples file
##
BindGlobal( "RCWAReadExamples",

  function ( )

    local  RCWADir;

    RCWADir := GAPInfo.PackagesInfo.("rcwa")[1].InstallationPath;
    Read( Concatenation( RCWADir, "/examples/examples.g" ) );
  end );

ResidueClassUnionViewingFormat( "short" );

#############################################################################
##
#E  rcwaaux.g . . . . . . . . . . . . . . . . . . . . . . . . . . . ends here