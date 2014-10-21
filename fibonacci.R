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

memo3 <- c()

createFib3 <- function() {
    
    fib3 <- function(n) {
        val <- 1
        if (n != 0 & n != 1) {
            if (length(memo3) < n) {
                val <- fib3(n-1) + fib3(n-2)
                memo3[n] <<- val
            } else {
                val <- memo3[n]
            }
        }
        val
    }
}

fib3 <- createFib3()

fib3(50)



createFib4 <- function() {
    memo4 <- c()

    fib4 <- function(n) {
        val <- 1
        if (n != 0 & n != 1) {
            if (length(memo4) < n) {
                val <- fib4(n-1) + fib4(n-2)
                memo4[n] <<- val
            } else {
                val <- memo4[n]
            }
        }
        val
    }
}

fib4 <- createFib4()

fib4(100)
