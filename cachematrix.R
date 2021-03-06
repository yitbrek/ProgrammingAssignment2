## this project is about implementing matrix invers
## there are two functions the first one is for the input matrix and the second is for computing the inverse

## this function takes matrix and assigns when set is called and returns the matrix when get is called


makeCacheMatrix <- function(x = matrix()) {
 m <- NULL #asigning NULL to m
 #set function        
 set <- function(y) { #recieves y as anrgument
                x <<- y #assigns y to x
                m <<- NULL #assigns null to m
        }
 #get function
        get <- function() x #returns x
        set_inverse_matrix <- function(matrixa) m <<- matrixa #sets the inverse matrix
        get_inverse_matrix <- function() m #returns the inverse matrix
        list(set = set, get = get,
             set_inverse_matrix = set_inverse_matrix,
             get_inverse_matrix = get_inverse_matrix)
 
}


## this function accepts argumet x which is a matrix then returns it's inverse
# the second arguement ... is tels that the entry is not limeted
cacheSolve <- function(x, ...) {
 #here we are calling get matrix function 
 m <- x$get_inverse_matrix() # the '$' sign indicates the function is belongs to x
    # if the inverse is not null it will be returned    
    if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
 #assigning the input matrix to variable data
        data <- x$get()
        m <- solve(data, ...)
        x$set_inverse_matrix(m)
        m
      
}
