# Complex Numbers for Free Pascal
This implementation of complex numbers for Free Pascal allows you to easily evaluate complicated expressions working with complex numbers in a fashion similar to that of Matlab. The user is provided with powerful methods to perform complex calculations in a simple and intuitive way. One does not need to learn much about the implementation.

*This works best with [Lazarus IDE](https://www.lazarus-ide.org/)*

## Usage
To use this module with your Pascal project you need to follow these steps

1. Copy units '*Cplx.pas*' and '*Cplxsup.pas*' into your Pascal project root directory
2. Call Project Manager (if any in your IDE) and attach units '*Cplx.pas*' and '*Cplxsup.pas*' to your Pascal project
3. List the units '*Cplx*' and '*Cplxsup*' under the main '*USES*' 
4. Enjoy coding with complex numbers!

Your *USES* directive then may look as follows

	uses
	{$IFDEF UNIX}{$IFDEF UseCThreads}
	cthreads,
	{$ENDIF}{$ENDIF}
	Classes, Cplx, Cplxsup, Math, Crt;

## Imaginary unit
Imaginary unit is defined as '**j**' such that one can execute, for example

    z:= 3 + 5*j;

and it will simply work!

## Arithmetics
All common arithmetic operators such as ' + ', ' - ', ' * ', ' / ', are overloaded to accept a complex or a real type on either side, which will work exactly as you expect.

## Algebraic expressions
With this complex numbers implementation you also can:

- add, subtract, multiply and divide complex numbers
- perform mixed type operations like 'complex' + 'real'
- exponentiate the a real or a complex number to a real or a complex power
- evaluate roots of a real or a complex number
- and more...

For example

    (3 + 5*j) / (7 - 2*j)

will evaluate to give

	0.2075 + 0.7736i

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

will evaluate to give 74.9852 degrees.

## Complicated expressions
One can evaluate sophisticated expressions with both complex and real numbers mixed together such as for instance

	(10 + 13*j)*(15 - 75*j)/(20 + 33*j) - 50*eulr(pi/3*j) + root(3 + 4*j,9,2)*powr(5 - 3*j,3.5).conj

which evaluates down to

	-576.9781 - 216.8603i

## Demonstration
This project includes comes with the demonstration

![Complex Numbers - screenshot](https://raw.githubusercontent.com/anton-a-tkachev/Complex-Numbers-for-Free-Pascal/master/Capture.PNG)

## List of functions & methods
	
    1.        j : function with no parameters, defines the imaginary unit, returns (0 + 1i)
    
    2.     eulr : function, evaluates Euler's representation of a complex number
    3.     powr : function, exponentiates a real or complex number to a real or complex power
    4.     root : function, computes natural root of a complex number
    
    5.        + : overloaded operator to work with complex and real numbers
    6.        - : overloaded operator to work with complex and real numbers
    7.        * : overloaded operator to work with complex and real numbers
    8.        / : overloaded operator to work with complex and real numbers
    
    9.      phs : method, returns phase of a complex number in radians
    10.    phsd : method, returns phase of a complex number in degrees
    11.     mag : method, returns the magnitude of a complex number
    12.    mag2 : method, returns magnitude squared of a complex number
    13.    conj : method, returns complex conjugate of a complex number
    14.   print : method, prints a complex number without new line
    15. println : method, prints a complex number with new line