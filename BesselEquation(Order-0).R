library(deSolve) #import library deSolve

#Initiate the initial values:
st <- c(y1 = 1, dy1 = 0) #J(0) = 1 and J'(0) = 0 (Bessel order 0)

#Insert the Bessel function (order 0): (t^2)y'' + ty' + (t^2 - k^2)y = 0, k = 0
BesselFunction <- function(t,y,p){ 
  dy1 <- y[2] #y' = y[2]
  dy2 <- -((t^2)*y[1]+(t*y[2]))/(t^2) #Isolate y[2]'
  list(c(dy1,dy2))
}

#The time start at 0.01 to not cause problems dividing by 0.
times <- seq(from = 0.01, to = 50, by = 0.01)

#Using the function ode from deSolve to solve the problem
out <- ode(y = st, func = BesselFunction, times = times)

#Plot the function.
plot(times, out[,"y1"], type = "l", xlab = "Time", ylab = "Y", lwd = 2,
     main = "Bessel Function of order 0")

#To view the first 10 iterations:
head(out, n = 10)
#To view the last 10 iterations:
tail(out, n = 10)
#To view between 100 iterations and 120 iterations:
out[100:120, c("time", "y1")]
