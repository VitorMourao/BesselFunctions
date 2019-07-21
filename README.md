# BesselFunctions
Bessel's equation arises when finding separable solutions to Laplace's equation and the Helmholtz equation in cylindrical or spherical coordinates. Bessel functions are therefore especially important for many problems of wave propagation and static potentials.

A Bessel Equation is in the form:

![Bessel Equation](https://github.com/VitorMourao/BesselFunctions/blob/master/images/BesselEquation.gif )

We call _Bessel Function of the first kind_ one of the solutions to this equation.
For each **k** in the equation we have a different Bessel Equation whose solution is called _Bessel Function of the first kind and order k_: ![ Bessel Function](https://github.com/VitorMourao/BesselFunctions/blob/master/images/Besselk.gif)

About the repository:
I coded the Bessel function of order 0 which is the only one that has value 1 at t = 0.
Then I will generalize the Bessel equation of order k,
but for this I need to check the values of the derivatives in J[k]'(0).
We know that J_{k}'(t) = (J_{k-1}(t) - J_{k+1}(t))/2.
