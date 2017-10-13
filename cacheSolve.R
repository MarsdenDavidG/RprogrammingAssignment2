#This computes the inverse of the matrix or retrieves it from cache.
#This requires the makeCacheMatrix function which requires the matlib library.
cacheSolve <- function(x, ...) {
  I <- x$getInv()
  if(!is.null(I)) {
    message("getting cached data")
    return(I)
  }
  data <- x$get()
  I <- Inverse(data, ...)
  x$setInv(I)
  I
}
