# Bessel Functions
Bessel's equation arises when finding separable solutions to Laplace's equation and the Helmholtz equation in cylindrical or spherical coordinates. Bessel functions are therefore especially important for many problems of wave propagation and static potentials.

A Bessel Equation is in the form:

![Bessel Equation](https://github.com/VitorMourao/BesselFunctions/blob/master/images/BesselEquation.gif )

We call [_Bessel Function of the first kind_](http://mathworld.wolfram.com/BesselFunctionoftheFirstKind.html) one of the solutions to this equation, the term “first kind” reflects the fact that the Bessel function includes the functions that, for nonnegative integer k, are regular at x = 0.
For each **k** in the equation we have a different Bessel Equation whose solution is called _Bessel Function of the first kind and order k_: ![ Bessel Function](https://github.com/VitorMourao/BesselFunctions/blob/master/images/Besselk.gif)

## About the code
Disclaimer: The implementation will consider just the Bessel Equation of order 0, despite having a initial value to implement  a Bessel of order 1 the program will NOT SOLVE any Bessel Equation, this is just an example using the famous equation.

The implementation is in R language using the library [_deSolve_ ](http://desolve.r-forge.r-project.org/). Since the _ode_ function in deSolve returns a list whose first element is a vector containing the derivatives of y, and whose next elements are global values that are required at each point in _times_ we need to separate the derivatives, then we have:

![Bessel Equation](https://github.com/VitorMourao/BesselFunctions/blob/master/images/Eqnew.gif)

Since our solver solves a system of first order ODE's we substitute our first order derivative:

![Variable that substitutes the first derivative](https://github.com/VitorMourao/BesselFunctions/blob/master/images/y1lin.gif)

Then replacing in equation:

![Bessel Equation with new variable](https://github.com/VitorMourao/BesselFunctions/blob/master/images/Eqwy2.gif)

Isolating the first order derivative:

![Isolating the major derivative](https://github.com/VitorMourao/BesselFunctions/blob/master/images/y2lin.gif)

_With these two derivatives of first order we have our system and just need to implement on our code._

First we determine our initial values and the order of our Bessel equation, in our example we will use a Bessel Equation of order 0, but if we want a Bessel equation of order 1 (dont forget to change k to 1 in this case) we have our initial values in a comment:

![Initial Values](https://github.com/VitorMourao/BesselFunctions/blob/master/images/stimages.png)

Then we need to create our function using the fact that we need to create a list of ordinary differential equations of first order:

![Bessel Function in R](https://github.com/VitorMourao/BesselFunctions/blob/master/images/Besselfunction1.png)

After that we create our vector of times (x) and start it at 0.01 because if we start at 0 our program will try to divide by zero and will occur an error.

![Times/Ode](https://github.com/VitorMourao/BesselFunctions/blob/master/images/timesode.png)

Our implementation of the Bessel Equation is done, but how do we know that our result is good? In R we have a function called [_BesselJ_](https://stat.ethz.ch/R-manual/R-devel/library/base/html/Bessel.html) that permit us to make a comparison. Using this function we can compare values (head,tail, or specific values):

![Comparison](https://github.com/VitorMourao/BesselFunctions/blob/master/images/comparisonBessel.png)

And at the end we can plot our implemented Bessel equation and the BesselJ function from R:

![Ploting](https://github.com/VitorMourao/BesselFunctions/blob/master/images/plotB.png)

And finally we have the results:

![Graph](https://github.com/VitorMourao/BesselFunctions/blob/master/images/Rplot.png)

In the end we see that our implemented model have _in general_ the same result as the base function BesselJ.
