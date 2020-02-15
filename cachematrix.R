## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i<-NULL
        #set function
        set<-function(matrix){
                x<<-matrix
                i<<-NULL
         }
        #get function
        get<-function(){
                x
         }
        #setinverse function
        setinverse<-function(inverse){
                i<<-inverse
         }
        #getinverse function
        getinverse<-function(){
                i
         }
        #return the list of the functions
        list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
        
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getinverse()
        if( !is.null(m) ) {
                  return(m)
        }
        data <- x$get()
        m <- solve(data) %*% data
        x$setInverse(m)
        m
}
