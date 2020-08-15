## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#Crea una matrix "especial" y guarda su inversa 
makeCacheMatrix <- function(x = matrix()) {
  v <- NULL
  set <- function(y){ #Pone el valor de la matriz
    x <<- y
    v <<- NULL
  }
  get <- function()x  #Obtiene el valor de la matriz
  setInverse <- function(inverse) j <<- inverse  #Valor de la media
  getInverse <- function() j #Obtiene la media
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  v <- x$getInverse() #Verifica si la inversa ya esta guardada en el caché
  if(!is.null(v)){  #Obtiene la inversa y la retorna
    return(v)
  }
  #Hace el cálculo de la inversa ya que no la encontró
  mat <- x$get()  #Obtiene matriz
  v <- solve(mat,...) #Obtiene la inversa
  x$setInverse(v) 
  v   #Retorna la inversa
}
