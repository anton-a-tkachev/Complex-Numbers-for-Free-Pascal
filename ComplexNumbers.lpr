program ComplexNumbers;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, Cplx, Cplxsup, Math, Crt;

var
  z: complex;
  u,v: complex;

begin
  writeln('Complex Numbers Module for Free Pascal');
  writeln('--------------------------------------');
  writeln('Copyright (c) Anton Tkachev 2018');
  writeln;
  writeln('This code is the demonstration of the module');
  writeln;
  writeln('Press any key to continue...');
  readln;
  clrscr;

  writeln('Complex algebraic expressions');
  writeln('-----------------------------');
  writeln('The following complex algebraic expressions are evaluated here');
  writeln;
  writeln('z:= (10 + 13*j) * (15 - 75*j) / (20 + 33*j);');
  writeln('u:= -50 * eulr(pi/3*j) + root(3 + 4*j, 9, 2);');
  writeln('v:= powr(5 - 3*j, 3.5).conj;');
  writeln('z:= (z + u) / v;');
  writeln;

  z:= (10 + 13*j)*(15 - 75*j)/(20 + 33*j);
  write('z = '); z.println(8,3);
  u:= -50*eulr(pi/3*j) + root(3 + 4*j, 9, 2);
  v:= powr(5 - 3*j, 3.5).conj;
  z:= (z + u)/v;

  write('u = '); u.println(8,3);
  write('v = '); v.println(8,3);
  write('z = '); z.println(8,3);
  writeln;
  writeln('Press any key to continue...');
  readln;
  clrscr;

  writeln('This will test unitary complex number operations applied to z');
  writeln('-------------------------------------------------------------');
  write('z = ':7); z.println(0,3);
  write('mag = ':7, z.mag:8:3); writeln(' units');
  write('mag2 = ':7, z.mag2:8:3); writeln(' square units');
  write('phs = ':7, z.phs:8:3); writeln(' radians');
  write('phsd = ':7, z.phsd:8:3); writeln(' degrees');
  writeln;
  writeln('Press any key to continue...');
  readln;
  clrscr;

  writeln('This will test the evaluation of natural roots of a complex number');
  writeln('------------------------------------------------------------------');
  z:= 1 + 0*j;
  write('            z = '); z.println(6,3);
  write('root(z,12, 0) = '); root(z,12, 0).print(6,3); writeln('   phase = ', root(z,12, 0).phsd:4:0, ' degrees');
  write('root(z,12, 1) = '); root(z,12, 1).print(6,3); writeln('   phase = ', root(z,12, 1).phsd:4:0, ' degrees');
  write('root(z,12, 2) = '); root(z,12, 2).print(6,3); writeln('   phase = ', root(z,12, 2).phsd:4:0, ' degrees');
  write('root(z,12, 3) = '); root(z,12, 3).print(6,3); writeln('   phase = ', root(z,12, 3).phsd:4:0, ' degrees');
  write('root(z,12, 4) = '); root(z,12, 4).print(6,3); writeln('   phase = ', root(z,12, 4).phsd:4:0, ' degrees');
  write('root(z,12, 5) = '); root(z,12, 5).print(6,3); writeln('   phase = ', root(z,12, 5).phsd:4:0, ' degrees');
  write('root(z,12, 6) = '); root(z,12, 6).print(6,3); writeln('   phase = ', root(z,12, 6).phsd:4:0, ' degrees');
  write('root(z,12, 7) = '); root(z,12, 7).print(6,3); writeln('   phase = ', root(z,12, 7).phsd:4:0, ' degrees');
  write('root(z,12, 8) = '); root(z,12, 8).print(6,3); writeln('   phase = ', root(z,12, 8).phsd:4:0, ' degrees');
  write('root(z,12, 9) = '); root(z,12, 9).print(6,3); writeln('   phase = ', root(z,12, 9).phsd:4:0, ' degrees');
  write('root(z,12,10) = '); root(z,12,10).print(6,3); writeln('   phase = ', root(z,12,10).phsd:4:0, ' degrees');
  write('root(z,12,11) = '); root(z,12,11).print(6,3); writeln('   phase = ', root(z,12,11).phsd:4:0, ' degrees');
  write('root(z,12,12) = '); root(z,12,12).print(6,3); writeln('   phase = ', root(z,12,12).phsd:4:0, ' degrees');
  writeln;
  writeln('Press any key to continue...');
  readln;
  clrscr;

  writeln('This will test exponentiation of a complex number');
  writeln('-------------------------------------------------');
  write('powr(j,  0) = '); powr(j,  0).print(6,3); writeln('   phase = ', powr(j,  0).phsd:6:1, ' degrees');
  write('powr(j,  1) = '); powr(j,  1).print(6,3); writeln('   phase = ', powr(j,  1).phsd:6:1, ' degrees');
  write('powr(j,  2) = '); powr(j,  2).print(6,3); writeln('   phase = ', powr(j,  2).phsd:6:1, ' degrees');
  write('powr(j,  3) = '); powr(j,  3).print(6,3); writeln('   phase = ', powr(j,  3).phsd:6:1, ' degrees');
  write('powr(j,  4) = '); powr(j,  4).print(6,3); writeln('   phase = ', powr(j,  4).phsd:6:1, ' degrees');
  write('powr(j,  5) = '); powr(j,  5).print(6,3); writeln('   phase = ', powr(j,  5).phsd:6:1, ' degrees');
  write('powr(j,5.5) = '); powr(j,5.5).print(6,3); writeln('   phase = ', powr(j,5.5).phsd:6:1, ' degrees');
  write('powr(j, pi) = '); powr(j, pi).print(6,3); writeln('   phase = ', powr(j, pi).phsd:6:1, ' degrees');
  writeln;
  writeln('Press any key to continue...');
  readln;
  clrscr;

  writeln('This will test direct multiplication of j');
  writeln('-----------------------------------------');

  write('              j = ');                 j.print(2,0); writeln('   phase = ',                 j.phsd:6:1, ' degrees');
  write('            j*j = ');             (j*j).print(2,0); writeln('   phase = ',             (j*j).phsd:6:1, ' degrees');
  write('          j*j*j = ');           (j*j*j).print(2,0); writeln('   phase = ',           (j*j*j).phsd:6:1, ' degrees');
  write('        j*j*j*j = ');         (j*j*j*j).print(2,0); writeln('   phase = ',         (j*j*j*j).phsd:6:1, ' degrees');
  write('      j*j*j*j*j = ');       (j*j*j*j*j).print(2,0); writeln('   phase = ',       (j*j*j*j*j).phsd:6:1, ' degrees');
  write('    j*j*j*j*j*j = ');     (j*j*j*j*j*j).print(2,0); writeln('   phase = ',     (j*j*j*j*j*j).phsd:6:1, ' degrees');
  write('  j*j*j*j*j*j*j = ');   (j*j*j*j*j*j*j).print(2,0); writeln('   phase = ',   (j*j*j*j*j*j*j).phsd:6:1, ' degrees');
  write('j*j*j*j*j*j*j*j = '); (j*j*j*j*j*j*j*j).print(2,0); writeln('   phase = ', (j*j*j*j*j*j*j*j).phsd:6:1, ' degrees');
  writeln;
  writeln('Press any key to QUIT');
  readln;
end.

