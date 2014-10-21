fib <- function(n) {
    val <- 1
    if (n != 0 & n != 1) {
        val <- fib(n-1) + fib(n-2)
    }
    val
}

fib(30)


memo <- c()

fib2 <- function(n) {
    val <- 1
    if (n != 0 & n != 1) {
        if (length(memo) < n) {
            val <- fib2(n-1) + fib2(n-2)
            memo[n] <<- val
        } else {
            val <- memo[n]
        }
    }
    val
}


fib2(100)

createFib3 <- function() {
    memo <- c()

    fib3 <- function(n) {
        val <- 1
        if (n != 0 & n != 1) {
            if (length(memo) < n) {
                val <- fib3(n-1) + fib3(n-2)
                memo[n] <<- val
            } else {
                val <- memo[n]
            }
        }
        val
    }
}

fib3 <- createFib3()

fib3(30)
