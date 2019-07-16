library(deSolve) #import library deSolve
st <- c(y1 = 1, dy1 = 0) #J(0) = 1 and J'(0) = 0 (Bessel order 0)
BesselFunction <- function(t,y,p){ #(t^2)y'' + ty' + (t^2 + k^2)y = 0, k = 0
  dy1 <- y[2] #dy = y2
  dy2 <- -((t^2)*y[1]+(t*y[2]))/(t^2) #Isolate y2'
  list(c(dy1,dy2))
}
times <- seq(from = 0.01, to = 50, by = 0.01)
out <- ode(y = st, func = BesselFunction, times = times)

#Plot the function.
plot(times, out[,"y1"], type = "l", xlab = "Time", ylab = "Y", lwd = 2,
     main = "Bessel Function of order 0")

#To view the first 10 iterations:
head(out, n = 10)
#To view the last 10 iterations:
tail(out, n = 10)
