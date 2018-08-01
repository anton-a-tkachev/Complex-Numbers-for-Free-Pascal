# Complex Numbers for Free Pascal
This implementation of complex numbers for Free Pascal allows you to easily evaluate complicated expressions working with complex numbers in a fashion similar to that of Matlab. The user is provided with all power of complex calculations in a simple and intuitive way. One does not need to learn what each particular method does and how to use it as all arithmetic operators ('+', '-', '*', '/') are overloaded and work exactly as you expect them to.

*This works best with [Lazarus IDE](https://www.lazarus-ide.org/)*

## Usage
To use this module with your Pascal project you need to follow these steps

1. Copy unit '*Cplx.pas*' and '*Cplxsup.pas*' into your Pascal project root directory
2. Call Project Manager (if any) in your IDE and attach units '*Cplx.pas*' and '*Cplxsup.pas*' to your project
3. List units '*Cplx*' and '*Cplxsup*' under your '*USES*' preprocessor directive in the main *.lpr* file which is the *ComplexNumbers.lpr* in our case but can be different in yours
4. Enjoy your coding with complex numbers!

Your *USES* directive then may look as follows

	uses
	{$IFDEF UNIX}{$IFDEF UseCThreads}
	cthreads,
	{$ENDIF}{$ENDIF}
	Classes, Cplx, Cplxsup, Math, Crt;

## Imaginary unit
Imaginary unit is defined as 'j' such that one can execute, for example

    z:= 3 + 5*j;

and it will work!

## Algebraic expressions
With this object implementation you can:

- add, subtract, multiply and divide complex numbers
- perform mixed type operations like "complex + real"
- exponentiate the numbers to a real or a complex power
- evaluate natural roots of complex numbers
- and more...

For example

    (3 + 5*j) / (7 - 2*j)

will evaluate to give

	1.511 + j 5.632

which can be then assigned to a variable of type 'complex'.

## Unitary operation methods
One can also evaluate:

- magnitude of a complex number
- cost-effective magnitude squared
- phase of a complex number in radians (-pi; pi]
- phase of a complex number in degrees (-180; 180]
- complex conjugate

For example

    ((3 + 5*j) / (7 - 2*j)).phsd

will evaluate to give 74.982 degrees.

## Complicated expressions
One can evaluate extremely sophisticated expressions with both complex and real numbers mixed together such as for instance

	(10 + 13*j)*(15 - 75*j)/(20 + 33*j) - 50*eulr(pi/3*j) + root(3 + 4*j,9,2)*powr(5 - 3*j,3.5).conj

which evaluates down to

	-471.334 - j 1434.228

## Demonstration
This project listed on GitHub includes the demonstration of the capabilities
![Complex Numbers - screenshot](https://raw.githubusercontent.com/anton-a-tkachev/Complex-Numbers-for-Free-Pascal/master/Capture.PNG)

## List of functions & methods
	
    1.    j  : defines the imaginary unit
    
    2. eulr  : evaluates Euler's representation of a complex number
    3. powr  : exponentiates a complex number to a real or complex power
    4. root  : computes natural root of a complex number
    
    5.    +  : overloaded operator to work with complex and real numbers
    6.    -  : overloaded operator to work with complex and real numbers
    7.    *  : overloaded operator to work with complex and real numbers
    8.    /  : overloaded operator to work with complex and real numbers
    
    9.  phs  : method, returns phase of a complex number in radians
    10. phsd : method, returns phase of a complex number in degrees
    11. mag  : returns the magnitude of a complex number
    12. mag2 : returns magnitude squared of a complex number
    13. conj : returns complex conjugate of a complex number