# BesselFunctions
A set of resolutions of Bessel equations in R.

A Bessel Equation is in the form:

![Bessel Equation](https://github.com/VitorMourao/BesselFunctions/blob/master/images/BesselEquation.gif )

We call _Bessel Function of the first kind_ one of the solutions to this equation.
For each **k** in the equation we have a different Bessel Equation denominated _Bessel Function of the first kind and order k_: ![ Bessel Function](https://github.com/VitorMourao/BesselFunctions/blob/master/images/Besselk.gif)

About the repository:
I coded the Bessel function of order 0 which is the only one that has value 1 at t = 0.
Then I will generalize the Bessel equation of order k,
but for this I need to check the values of the derivatives in J[k]'(0).
We know that J_{k}'(t) = (J_{k-1}(t) - J_{k+1}(t))/2.
