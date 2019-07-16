# BesselFunctions
A set of resolutions of Bessel equations in R.

A Bessel Equation is in the form: (t^{2})y'' + (t)y' + (t^{2} - k^{2})y = 0.
We call "Bessel Function of the first kind" (J(t)) one of the solutions to this equation.
For each k in the equation we have a different Bessel Equation denominated "Bessel Function of the first kind and order k" (J_{k}(t))

About the repository:
I coded the Bessel function of order 0 which is the only one that has value 1 at t = 0.
Then I will generalize the Bessel equation of order k,
but for this I need to check the values of the derivatives in J[k]'(0).
We know that J_{k}'(t) = (J_{k-1}(t) - J_{k+1}(t))/2.
