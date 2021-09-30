###################################################################
# Generate Poisson random variable from a U(0,1) random variable
###################################################################

lambda = 5
n = 1000

y = as.list(runif(n, min = 0, max = 1))
x = c()

for (p in y) {
  x_i = 0
  pr_x = 0
  while (pr_x < p) {
    pr_x = pr_x + (exp(-lambda) * (lambda ^ x_i))/factorial(x_i)
    x_i = x_i + 1
  }
  x_i = x_i - 1
  x = append(x, x_i)
}


hist(x)