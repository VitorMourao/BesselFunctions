library(deSolve) #import library deSolve

#Initiate the initial values:
st <- c(y1 = 1, dy1 = 0)
#y1 = 0.005, dy1 = 1/2 for order 1.

#Order of the Bessel Equation
k <- 0

#Insert the Bessel function : (x^2)y'' + xy' + (x^2 - k^2)y = 0, k = 0
BesselFunction <- function(x,y,p){ 
  dy1 <- y[2] #y' = y[2]
  dy2 <- -(((x^2)-k^2)*y[1]+(x*y[2]))/(x^2) #Isolate y[2]'
  list(c(dy1,dy2))
}

#The time start at 0.01 to not cause problems dividing by 0.
times <- seq(from = 0.01, to = 50, by = 0.01)

#Using the function ode from deSolve to solve the problem
out <- ode(y = st, func = BesselFunction, times = times)

#Bessel function of the first kind in the library (Base) in R
Jzero <- besselJ(times, k)

#To view the first 10 iterations:
head(out, n = 10)
head(Jzero, n = 10)
#To view the last 10 iterations:
tail(out, n = 10)
tail(Jzero, n = 10)
#To view between 100 iterations and 120 iterations:
out[100:120, c("time", "y1")]
Jzero[100:120]

#Plot the function.
plot(times, out[,"y1"], type = "l", xlab = "x", ylab = "J(x)", lwd = 3,
     main = "Bessel Function", col = "black")
lines(times, Jzero, type = "l", col = "red", lwd = 1.5)
