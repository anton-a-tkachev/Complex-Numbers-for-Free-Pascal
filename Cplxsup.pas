unit Cplxsup;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Cplx, Math;

function j: complex;

operator + (x, y: complex) z: complex;
operator + (x: real; y: complex) z: complex;
operator + (x: complex; y: real) z: complex;
operator - (x, y: complex) z: complex;
operator - (x: real; y: complex) z: complex;
operator - (x: complex; y: real) z: complex;
operator * (x, y: complex) z: complex;
operator * (x: real; y: complex) z: complex;
operator * (x: complex; y: real) z: complex;
operator / (x, y: complex) z: complex;
operator / (x: real; y: complex) z: complex;
operator / (x: complex; y: real) z: complex;

function eulr(z: complex): complex;
function powr(z: complex; p: real): complex;
function root(z: complex; n, k: integer): complex;
function root(z: real; n, k: integer): complex;

implementation
// Define imaginary unit j
function j: complex;
begin
  j.re:= 0;
  j.im:= 1;
end;

// Overload + operator
operator + (x, y: complex) z: complex;
begin
  z.re:= x.re + y.re;
  z.im:= x.im + y.im;
end;
operator + (x: real; y: complex) z: complex;
begin
  z.re:= x + y.re;
  z.im:= y.im;
end;
operator + (x: complex; y: real) z: complex;
begin
  z.re:= x.re + y;
  z.im:= x.im;
end;

// Overload - operator
operator - (x, y: complex) z: complex;
begin
  z.re:= x.re - y.re;
  z.im:= x.im - y.im;
end;
operator - (x: real; y: complex) z: complex;
begin
  z.re:= x - y.re;
  z.im:= -y.im;
end;
operator - (x: complex; y: real) z: complex;
begin
  z.re:= x.re - y;
  z.im:= x.im;
end;

// Overload * operator
operator * (x, y: complex) z: complex;
begin
  z.re:= x.re*y.re - x.im*y.im;
  z.im:= x.re*y.im + x.im*y.re;
end;
operator * (x: real; y: complex) z: complex;
begin
  z.re:= x*y.re;
  z.im:= x*y.im;
end;
operator * (x: complex; y: real) z: complex;
begin
  z.re:= x.re*y;
  z.im:= x.im*y;
end;

// Overload / operator
operator / (x, y: complex) z: complex;
  var m: real;
begin
  m:= sqrt(y.re*y.re + y.im*y.im);
  z.re:= ( x.re*y.re + x.im*y.im)/m;
  z.im:= (-x.re*y.im + x.im*y.re)/m;
end;
operator / (x: real; y: complex) z: complex;
  var m: real;
begin
  m:= sqrt(y.re*y.re + y.im*y.im);
  z.re:=  x*y.re/m;
  z.im:= -x*y.im/m;
end;
operator / (x: complex; y: real) z: complex;
begin
  z.re:= x.re/y;
  z.im:= x.im/y;
end;

// Define Euler's formula as a function
function eulr(z: complex): complex;
begin
  if z.re = 0 then begin
    eulr.re:= cos(z.im);
    eulr.im:= sin(z.im);
  end else begin
    eulr.re:= exp(z.re)*cos(z.im);
    eulr.im:= exp(z.re)*sin(z.im);
  end;
end;

// Define power function
function powr(z: complex; p: real): complex;
begin
  powr:= power(z.mag, p)*eulr(j*z.phs*p);
end;
function powr(z: complex; p: complex): complex;
begin
  powr:= eulr(p.re*ln(z.mag) - p.im*z.phs + j*(p.im*ln(z.mag) + p.re*z.phs));
end;

// Define root function
// n - order of the root
// k - solution phase index, typically from 0 to n-1
// k can go beyond the limits
// in this case the phase of the answer will keep revolving
function root(z: complex; n, k: integer): complex;
begin
  root:= power(z.mag, 1.0/n)*eulr(j*(z.phs + 2*pi*k)/n);
end;
function root(z: real; n, k: integer): complex;
begin
  root:= power(z, 1.0/n)*eulr(j*2*pi*k/n);
end;

end.

