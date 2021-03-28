---
title: "MELANIE - R PROGRAMMING EXERCISES"
author: "Melanie Tran"
date: "1/9/2021"
output: html_document
---

```{r}
x <- 1
if (x == 1) { 
  print("Hello")}
```

 Ex 1: Write a script that will print "Even Number" if the variable x is an even number, otherwise print "Not Even": 
```{r}
x <- 3

if (x %%2 == 0) {
  print("EVEN")
} else {
  print("NOT EVEN")
}
```


Ex 2: Write a script that will print 'Is a Matrix' if the variable x is a matrix, otherwise print "Not a Matrix". Hint: You may want to check out help(is.matrix)
```{r}
x <- matrix()

if (is.matrix(x)) { 
  print("MATRIX")
} else {
  print("NOT A MATRIX")
}
```
Ex 3: Create a script that given a numeric vector x with a length 3, will print out the elements in order from high to low. You must use if,else if, and else statements for your logic. (This code will be relatively long) 
```{r}
x <- c(3,7,1)

if (x[1]>x[2]>x[3]){
  x <- c(x[3],x[2],x[1])
} elif ()

```




Ex 4: Write a script that uses if,else if, and else statements to print the max element in a numeric vector with 3 elements.

```{r}


x <- c(20, 10, 1)

if (max(x) == x[1]) { 
    print(x[1])
  } else if (max(x) == x[2]) { 
    print(x[2])
  } else {
    print(x[3])
}


```


```{r}
x[1]
```

##FUNCTIONS 


EXAMPLE 2: Create a function that takes in a name as a string argument and returns a string of the form - "Hello name"
```{r}
hello_you2 <- function(name) { 
  return(paste("Hello",name))
}
hello_you2('Melanie')
```


Ex 1: Create a function that will return the product of two integers.
```{r}
prod <- function(x,y){
  return(x*y)
}

prod(3,4)
```


Ex 2: Create a function that accepts two arguments, an integer and a vector of integers. It returns TRUE if the integer is present in the vector, otherwise it returns FALSE. Make sure you pay careful attention to your placement of the return(FALSE) line in your function!
```{r}


num_check <- function(num,v){
    for (item in v){
        if (item == num){
            return(TRUE)
        }
    }
    return(FALSE)
}

num_check(2,c(1,2,3))
```


Ex 3: Create a function that accepts two arguments, an integer and a vector of integers. It returns the count of the number of occurences of the integer in the input vector.

```{r}

num_count <- function(n,v){ 
  count <- 0
  for (i in v){
    if (i == n) { 
      count <- count + 1
    }
  }
  return(count)
}



num_count(1,c(1,1,2,2,3,1,4,5,5,2,2,1,3))

```


Ex 4: We want to ship bars of aluminum. We will create a function that accepts an integer representing the requested kilograms of aluminum for the package to be shipped. To fullfill these order, we have small bars (1 kilogram each) and big bars (5 kilograms each). Return the least number of bars needed.

For example, a load of 6 kg requires a minimum of two bars (1 5kg bars and 1 1kg bars). A load of 17 kg requires a minimum of 5 bars (3 5kg bars and 2 1kg bars).

```{r}
bar_count <- function(x){ 
  small <- 1
  big <- 5 
  
  if (x > 5) {
   big_count <- floor(x/big)
   little_count <- x%%big
   total <- big_count + little_count
  
   } else { 
     total <- x
   }
  return(total)
}

bar_count(23)

```
Ex 5: Create a function that accepts 3 integer values and returns their sum. However, if an integer value is evenly divisible by 3, then it does not count towards the sum. Return zero if all numbers are evenly divisible by 3. Hint: You may want to use the append() function.

```{r}

summer <- function(x,y,z){ 
  total <- numeric(3)
  for (i in 1:length(total){ 
    if (x%%3 != 0) { 
      total[i] <- x
    } if (y %%3 != 0) { 
      total[i]}
      })
  if (x%%3 !=0){
    
summer(7,2,3)


```

