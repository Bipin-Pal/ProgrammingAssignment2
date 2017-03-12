## Instructions as given in ReadMe.md in programmingAssignment2 has been followed


## First function gives a list, assigning varaibles to cache 
## the lsit contians 4 steps
## 1. Set the  matrix
## 2. Get the  matrix
## 3. Set the inverse of matrix
## 4. Get the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set<- function(y) {
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setinv<-function(inv) m<<-inv
  getinv<-function() m
  list(set=set,get=get,setinv=setinv,getinv=getinv)
}


## The function below checks if mean is calculated , if so it gets the value 
## from cache memory otherwise it sets the inverted matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getinv()
  
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data<-x$get()
  m<-solve(data,...)
  x$setinv(m)
  m
}

