## this project is about implementing matrix invers
## there are two functions the first one is for the input matrix and the second is for computing the inverse

## this function takes matrix and assigns when set is called and returns the matrix when get is called


makeCacheMatrix <- function(x = matrix()) {
 #set
 m<-NULL # initalizing variable m waith NULL 
 #here the function recieves matrix y as an arguement then assigns to m
        set<-function(y){
         x<<-y#asigning seted  matrix to x
        m<<- NULL; # still m is NULL
                
 }
        # the function below returns the matrix when called
        get<-function() x  
  
 
 
 
}


## this function accepts argumet x which is a matrix then returns it's inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     m<-x$get()
 # solve function is used to compute the inverse
  solve(m)
      
}
