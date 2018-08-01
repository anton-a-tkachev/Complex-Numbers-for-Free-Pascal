unit Cplx;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Math;

type Complex = object
  public
    // variables
    re, im: real;

    // constructor & destructor
    constructor init(x, y: real);
    destructor free;

    // methods
    function mag: real;
    function mag2: real;
    function phs: real;
    function phsd: real;
    function conj: complex;

    procedure print(m, n: integer);
    procedure println(m, n: integer);
end;

implementation

constructor complex.init(x, y: real);
begin
  re:= x;
  im:= y;
end;
destructor complex.free; begin end;

// Returns magnitude of the complex number
// Domain: any   Range: [0; +infty)
function complex.mag: real;
begin
  mag:= sqrt(re*re + im*im);
end;

// Returns magnitude squared
// Domain: any   Range: [0; +infty)
function complex.mag2: real;
begin
  mag2:= re*re + im*im;
end;

// Returns phase of the complex number in radians
// Domain: any   Range: (-pi; pi]
function complex.phs: real;
begin
  phs:= arctan2(im, re);
end;

// Returns phase of the complex number in degrees
// Domain: any   Range: (-180; 180]
function complex.phsd: real;
begin
  phsd:= arctan2(im, re)*180/pi;
end;

// Returns complex conjugate of the complex number
// Domain: any   Range: any
function complex.conj: complex;
begin
  conj.re:= re; conj.im:= -im;
end;

// Printing complex numbers
procedure complex.print(m, n: integer);
begin
  if self.im >= 0 then write(self.re:m:n,' + j ',abs(self.im):m:n)
                  else write(self.re:m:n,' - j ',abs(self.im):m:n);
end;
procedure complex.println(m, n: integer);
begin
  if self.im >= 0 then writeln(self.re:m:n,' + j ',abs(self.im):m:n)
                  else writeln(self.re:m:n,' - j ',abs(self.im):m:n);
end;

end.

