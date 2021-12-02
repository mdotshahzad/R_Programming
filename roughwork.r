a <- 5

name_char <- c('S','H','A','H','Z','A','D')
conname <-paste(name,sep='')
conname


msg <- "Hello00"
msg
a <- 2:10
a
seq(2,18, by =2)


m <- matrix(nrow=3,ncol=4)
m
dim(m)
attributes(m)


m[1,1] <-3
m

m <- matrix(2:9,nrow=3,ncol=3)
m

#creating vector and converting into matrix
v <- 1:100
dim(v) <- c(10,10)
v

dim(v) <- c(50,2)
v
vi <- 1:10

dim(vi) <- c(2,5)
vi

dim(vi) <- c(5,2)
vi


#cbind-ing and rbind-ing


x <- 1:5
y <- 10:14

cbind(x, y)
rbind(x,y)


#List


li <- list('a', TRUE, 3, 4L, 5+5i)
li
class(li[3])

#Factors

x <- factor(c("yes","no","yes","yes"))
x
unclass(x)



y <- factor(c("yes","no","yes","yes","dont know"))
y
unclass(y)
#We can explicitly define levels in some case for example weekdays


fac <- factor(c('Mon','Tue','Fri','Sat','Thu','Sun','Wed'),
              levels = c('Mon','Tue','Wed','Thu','Fri','Sat','Sun'))

fac



#MISSING VALUES in R
# Missing values are denoted as NA and NaN


aa <- c(1,2,3,NA,12)
is.na(aa)

ab <- c(NA,1,2,3,NaN,12)
is.na(ab)

ac <- c(NA,1,2,3,NaN,12)
is.nan(ac)


#Data Frames are used to show data data in tabular forms
#it is special type of list.
#rows for each columns are same otherwise it will show as NA.
#It can have different class of objects
#it can be converted into a matrix by calling data.matrix()
#row.names can be used to give any name of data frame


df <- data.frame(day = 1:5, rain = c(T,T,F,T,F))
df

row.names(df) <- c('mon','tue','wed','thu','fri')



df
nrow((df))
ncol(df)


#Name 

name <- 1:3
names(name) <- c('a','b','c')
name


names(name)



li <- list(a=1:3,b='ID',c=c('Fname','Lname'))
li
li$b
li$c




mi <- matrix(1:4,nrow = 2,ncol = 2)
dimnames(mi) <- list(c('row1','row2'),c('col1','col2'))
dimnames
mi


#getting Help

apropos(lm)


#Data Types and Basic Operations
# Subsetting like we have data for whole pakistan and but we want to work only for Isb then we use subsetting
#How we can extract sub set from the whole set

sub <- c('a','b','c','d','d')
sub[2]
sb <- sub[sub > 'b']
sb


#Subsetting on matrix

subm <- matrix(1:6,2,3)
subm
subm[1,3]
subm[1,2]


subm[2,]
subm[,2]

#drop = false will help to show data into matirx instead of vectors
subm[1,2, drop=FALSE]
subm[,2, drop=FALSE]
subm[2, drop=FALSE]
subm[1,, drop=FALSE]




#Subsetting on List


subl <- list(weekdays = 1:4, rain_prob = 0.6)
subl[1]  #single bracket show name and values of the list
subl[[1]]  #two times bracket show only values of the list


subl$weekdays
subl$rain_prob


subl["rain_prob"]  #single bracket show name and values of the list
subl[["rain_prob"]]   #two times bracket show only values of the list


subll <- list(weekdays = 1:4, rain_prob = 0.6, item = 'Umrella')
subll[c(1,3)]
subll[c(2,3)]
subll[c(3,1)]


subll[[c(3)]]



name <- "weekdays"
subll[[name]]


subll$name  # it will give us NULL as names is nothing in subll

subll$item


#Extarction of Nested Lists items

nes_list <- list(a = list(10,12,13),b = c(121.12,125.12))
nes_list[[c(1,2)]]


nes_list[[1]][[2]]

nes_list[[c(2,2)]]
nes_list$b


#How to remove missing values

miss <- c(1,3,NA,7,NA,45,56,34)
missed <- is.na(miss)
missed
!missed
miss[!missed]



missx <- c(2,23,NA,6,3,NA,4)
missy <- c('a','b','c',NA,NA,'f','g')

good <- complete.cases(missx,missy) #highly recommended to remove NA from data
missx[good]
missy[good]

air_dateset <- airquality
air_dateset


clean_data <- complete.cases(air_dateset)
clean_data
final_clean <-air_dateset[clean_data,]
final_clean
final_clean[1:3,]

air_dateset[clean_data,][1:4,]
final_clean[,1:2]
final_clean[1:3,]

#Control Structure
#if,else for testing 
#for is used to execute a loop fixed number of time
# while is used to execute a loop until the condition is true
#repeat is used to execute a loop for infinite number of time
#break is used to break the execution of the loop.
#next: is used to skip a iteration of the loop
#return is used to exit a function



"""
if (condition) {
statements of the code
} esle {

statements of the code

}


if (condition1) {
statements of the code
} esle if(condition2) {

statements of the code

}
else if(condition3) {

statement of the code
}


else {

statement of the code
}

Control Structure in FOR Loop:
for (i in 1:10) {
print(i)
}



"""
for (i in 1:10) {
  print(i)
}

fr <- c('mon','tue','wed','thu','fri','sat','sun')
for (i in 1:4) {
  print(fr[i])
}

#seq_along store the length at the backend and we do not count it by ourself
for (i in seq_along(fr)) {
  print(fr[i])
}

 for (abc in fr) {
   print(abc)
 }


for (i in 1:7) print(fr[i])

#Nested For Loop 

mat_for_loop <- matrix(1:6,2,3)
mat_for_loop
nrow(mat_for_loop)
seq_len(nrow(mat_for_loop))

 for (i in 
     seq_len(nrow(mat_for_loop))) {
  for (j in 
       seq_len(ncol(mat_for_loop))) {
    print(mat_for_loop[i,j])
  }

  
}



mat_for_loop1 <- matrix(1:25,5,5)
mat_for_loop1
nrow(mat_for_loop1)
seq_len(nrow(mat_for_loop1))

for (i in 
     seq_len(nrow(mat_for_loop1))) {
  for (j in 
       seq_len(ncol(mat_for_loop1))) {
    print(mat_for_loop1[i,j])
  }
  
  
}




#Control Structure for While Loop

count <- 0
while (count < 10) {
  
  print(count)
  count <- count+1
 #break
   }

z <- 5
while (z >= 3 && z <= 10  ) {
  print(z)
    coin <- rbinom(1,0.5,1)
    if (coin == 1 ) {
     z=z+1
     } else {
       z=z-1
     }
}



num1 =1:100
print(num1)

 
  for (i in num1) {
  flag =T
  count <- 2 
    while (count < i){
    if (i %% count == 0) {
     flag =F
     
    }
      
         count = count +1
         
    }
    
    if (flag ==T) {

    print(i)    

    }
  i=i+1
    
  }



num1 =1:100
var = 1
for (i in num1) {
  flag =T
  count <- 2 
  while (count < i){
    if (i %% count == 0) {
      flag =F
    }
    count = count +1
  }
  if (flag ==T) {
    while ( var < 11 ) {
      print(i)
      var=var+1
      break
    }

  }
  i=i+1
  
}




### Question 2
**Create a matrix of size 3x3 called mat_1:**  
1. Iterate over all the values one by one 
and print the element as well as the position in the matrix (row, col)



mat_1 <- matrix(1:9,3,3)
mat_1
nrow(mat_1)
seq_len(nrow(mat_1))
seq_len(ncol(mat_1))



for (i in 
     seq_len(nrow(mat_1))) {
  for (j in 
       seq_len(ncol(mat_1))) {
    print(mat_1[j,i])
  }
}

mat_1
print(which(mat_1==mat_1[5],arr.ind = TRUE))



mat_1[1,,drop=FALSE]



mat_1 <- matrix(1:9,3,3)
mat_1
for (i in 
     seq_len(nrow(mat_1))) {
  for (j in 
       seq_len(ncol(mat_1))) {
    print(mat_1[j,i])
    print(which(mat_1==mat_1[j,i],arr.ind = TRUE))
    

    
    
    
  }
}



print(which(mat_1==j,arr.ind =  TRUE))

which
# *apply functions are more useful in the command line. 
#They are much faster than for while

#Functions are created using function() and Stored in R and we will save it in one variable that would belong to the function class.
#Fucntion can pass arguments, functions can be nested and can return in a specific value in last statment.


my_data <- rnorm(100)
my_data



sd(na.rm = FALSE
   , my_data)
args(sd)
args(lm)


sd(data=my_data) #It will give error
sd(x=my_data) #it will execute seamlessly 



mydata <- data.frame(x=rnorm(100),y=rnorm(100))

?lm
"""
Usage
lm(formula, data, subset, weights, na.action,
   method = "qr", model = TRUE, x = FALSE, y = FALSE, qr = TRUE,
   singular.ok = TRUE, contrasts = NULL, offset, ...)
"""
#below both will give same results.


lm(y ~ x, mydata, model = FALSE)
lm(data = mydata,y ~ x, model = FALSE, 1:100)


######################
#value b, c and d set bydefault and a will use provided by the user 


f <- function(a,b=1,c=2,d=NULL) {}
#Laziy Evaluation, these function can be evaluated only as needed.


lazyf <- function(g,h) 
  {g^2

}

lazyf(2)


lazyf <- function(g,h) 
{ print(g)
  print(h)
  
}

lazyf(,2) # this is lazy evaluation jaisy jaisy data milta wo execute karta jata jaahan nhi mila waha error.

lazyf <- function(g=10,h=12) 
{ print(g)
  print(h)
  
}


lazyf(54) #a's value bydefaut was 10 but we pass 54.
lazyf()



#Assignment:

### Question 1
"""
**Create a function called gcd that finds the greatest common divisor of two numbers a and b:**  
  1. a and b, should be taken as input.  
2. The function must print the GCD as well as return it.  
3. The output must be saved in a variable called answer.  
"""

gcd <- function(a,b) {
  
  if ( a > b ) {
    max_num = a
    }
    else {
      max_num = b
    }
  for (i in 1:max_num) {
  if ((a %% i == 0) && (b %% i == 0)) {
    answer = i
  }
}
  return(answer)
}


answer <- gcd(10, 12)
answer






HCF(54,67)

gcd <- function(a,b) {
  
  if ( a > b ) {
    max_num = a
  }
  else {
    max_num = b
  }
 
  return(max_num)
}


ans<-gcd(154, 267)


ans
"""
### Question 2
**Create a function called allConditionsMeet, that checks whether two expressions evaluate to true:**  
  1. a and b, should be taken as input.  
2. the function should check if a and b, both conditions, evaluate to True.  
3. The function must returns a boolean value.  
4. Using a method, print the arguments that function takes.  

"""

print(T)
a=T
if (a == T) {
  print(a)
}



allConditionsMeet <- function(a,b) {
  if ((a == T) && (b == T)) {
    return(T)
  }
  else {
    return(F)
  }
  
}


allConditionsMeet(T,T)
allConditionsMeet(T,F)


 #Vectorized Operations

x <- 1:4; y <- 6:9
x
y
x+y
x>2


y>5
x
y
x * y
x/y


rep(10, 4)
"""
### Question 1
**Create two matrices matrix_1 and matrix_2 of dimensions 2x3 and 3x2:**  
  1. Perform element-wise multiplication.  
2. Perform matrix multipilcation.   

**Create a 2x2 matrix my_mat:**  
  1. Write a function to find the determinant of the matrix.  

"""


matrix_1 <- matrix(1:6,2,3)
matrix_1
matrix_2 <- matrix(10:15,3,2)
matrix_2


matrix_1*matrix_2

matrix_1 %*% matrix_2


matrix_1 <- matrix(rep(5,15),5,3)
matrix_1
matrix_2 <- matrix(1:6,3,2)
matrix_2
matrix_1*matrix_2




matrix_1 %*% matrix_2

matrix_1 = as.matrix(1:6, nrow=2, ncol=3)
matrix_1
matrix_2 = as.matrix(7:12, nrow=3, ncol=2)
matrix_2
matrix_1 * matrix_2 

matrix_1 = c(matrix(1:6, nrow=2, ncol=3))
matrix_1
matrix_2 = c(matrix(7:12, nrow=3, ncol=2))
matrix_2
matrix_1 * matrix_2 

matrix_1 = matrix(1:6, nrow=2, ncol=3)
matrix_1
matrix_2 = matrix(7:12, nrow=3, ncol=2)
matrix_2
matrix_1 * matrix_2 
matrix_1 %*% matrix_2


a=as.numeric(readline("Enter_a"))
b=as.numeric(readline("Enter b"))
c=as.numeric(readline("Enter c"))
d=as.numeric(readline("Enter d"))


deter <- function(a,b,c,d){
  my_mat <- matrix(c(a,b,c,d))
  detr <- (a*d) - (b*c)
  return(detr)
}



deter(1,2,3,4)



my_mat <- matrix(1:4, nrow = 2,ncol = 2)
my_mat
my_mat[1,2]



determinant(my_mat,logarithm = FALSE)


#Date and Time


as.Date("2021-12-12")


x <- Sys.time()
x
class(x)


p <- as.POSIXlt(x)
p

names(unclass(p))

p$sec

p$mon

p$wday

p$zone

p$isdst

"""
### Question 1
**Use the current date and time and store them into variables 
curr_date and curr_time respectively: [use sys]**  
1. Convert both into date and time objects using the appropriate functions.  
2. Print the weekday, year, second and hour using the appropriate function 
and variables.  
"""

curr_date <- Sys.Date()
curr_date
curr_time <- Sys.time()
curr_time

class(curr_date)
class(curr_time)
curr_date <- as.POSIXlt(curr_date)
curr_time <- as.POSIXlt(curr_time)
curr_time
curr_date

names(unclass(curr_time))

curr_time$wday
curr_time$year
curr_time$sec
curr_time$hour
curr_time$sec
curr_time$sec


"""
### Question 2
**Create a variable to store current date/time**  
1. Create another variable that stores and set the timezone as GMT-5  
2. Find the difference between your current time and the GMT-5 timezone.  
"""

curr_time <- as.POSIXct(Sys.time())
curr_time

gmt_currtime <- as.POSIXct("2021-12-01 05:36:29" ,tz = 'UTC')
gmt_currtime

curr_time - gmt_currtime



Time_zoneGMT = as.POSIXct(curr_time, tz = "GMT-5")
Time_zoneGMT




#loop function:
#lapply --> loop over list to apply function on each element
#sapply --> same as lapply to simplify  the result and apply over array
#apply --> apply a function over margin of an array
#tapply --> apply on fucntion over subset of vector
#mapply --> Multivariate version of lapply
#An auxiliary function split is also verfy useful ,specially in conjunction with lapply.




#lapply

x <- list(a=1:5, b=rnorm(10))
x
class(x)



lapply(x, mean)
lapply(x, sum)
mean(x$b)


  x <- list(a=1:5, b=rnorm(10), c=rnorm(15), d=rnorm(20))
  x

lapply(x,sd)

lapply(x, runif)


lapply(x, runif, min=12, max=20)

as <- 1:4
names(as) <- c('a','b','c','d')
lapply(as, runif, min=12, max=20)




#sapply
#using sapply if the element is one then it will return vector.
#If the element is vector and also greater than 2 then it will return matrix
#If it cant figure our it will return as list
#it is enhance version of lapply and recommmended to use over lapply.


x <- list(a=1:5, b=rnorm(10), c=rnorm(15), d=rnorm(20))

x
class(x)





lapply(x, mean)

sapply(x,mean)


meaan <- sapply(x,mean)
meaan


#apply

#str(apply)
#function(x,Margin, Fun)
#x = array
#Margin = 1 which will row and margin=2 which will column
#func can be mean, sd, median etc,
#jab kisi aik row ka mean median find karna ho to apply use karty hain



x <- matrix(rnorm(100), 25,10)
x
apply(x,2,mean)  

y <- matrix(rnorm(10), 5,5)
y
apply(y,2,mean)  

colMeans(y)

rowMeans(y)

y

apply(y, 1, quantile)


apply(y, 1, quantile, probs = c(0.25 ,0.5))


#tapply



"""
> str(tapply)
function (X, INDEX, FUN = NULL, ..., simplify = TRUE)
• X is a vector.
• INDEX is a factor or a list of factors (or else they are coerced to factors).
• FUN is a function to be applied.
• ... contains other arguments to be passed to FUN.
• simplify, should we simplify the result?

index used to apply subset

"""


x <- c(rnorm(5), runif(5), rnorm(5, 1))
x


f <- gl (3, 5)
f

tapply(x, f,mean)


aa <- tapply(x, f, mean, simplify = FALSE)
names(aa) <- c('a','b','c')
aa





tapply(x,f,range)
x


"""

## Section 6: Loop Functions

### Question 1
**Create a function to calculate mean and standard deviation  
of the provided data**
1. Create a sequence of numbers from 100 to 150 store in a variable 
called numbers.
1. Use lapply, sapply, apply and tapply to implement the 
functions on "numbers" 
[only on the second half of the sequence for tapply]
"""
numbers <- 100:150
numbers



lapply(numbers, mean)



sapply(numbers,mean)



mymat <- matrix(rnorm(16),
                4,4)
mymat


apply(mymat,1,mean)
apply(mymat, 2, mean)

apply(mymat,1,sd)
apply(mymat, 2, sd)


numbers  <- c(101:150)
numbers

length(numbers)

fact <- gl(2,length(numbers)/2)
fact


tapply(numbers, fact, mean)
tapply(numbers, fact, sd)


"""

### Question 2
**Create a matrix of dimensions 4x4**
  1. Find the row-wise and column-wise mean of the matrix.
2. Print the values.

"""
runif(4, min =1, max=4)

mtr <- matrix(runif(4, min =2, max=4),4,4)
mtr

row_wise_mean <- apply(mtr,1,mean)

row_wise_mean


col_wise_mean <- apply(mtr,2,mean)
col_wise_mean



#split:

str(split)

"""
> str(split)
function (x, f, drop = FALSE, ...)

"""

x <- c(rnorm(5), runif(5), rnorm(5, 1))
x


fact <- gl (3, 5)
fact


sp <- split(x,fact)
sp

#Now to get a mean of all three lists in the sp 

lapply(sp, mean)


library(datasets)
head(airquality)

montly_split <- split(airquality, airquality$Month)
montly_split

head(montly_split$`6`)
head(montly_split$`9`)
head(montly_split$`8`)

head(montly_split$`8`, drop=TRUE )
colSums(montly_split$`5`)

fc <- function(montly_split) colSums(montly_split(c("Ozone","Solar,R","Wind")))
fc


lapply(montly_split,fc)

lapply(montly_split, function(x) colSums(x[,c("ozone","solar,r","wind")]))


split_mon <- split(airquality, airquality$Month)

fc <- function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")])

fc

lapply(split_mon,fc)
lapply(split_mon, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))

sapply(split_mon,fc)
fc <- function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm = TRUE)

fc
sapply(split_mon, fc )

sapply(split_mon, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], na.rm = TRUE))



"""
## Section 7: Data Split
### Question 1
**Using the data frame Orange:**  
  1. Using split function to break down the dataset on circumference and store it in 'split_data' variable.   
2. Print the values for split_data where circumference is 30 and 75.  
3. Find the average age of the tree when the circumference is 30 and when circumference is 214.  

The dataset is loaded and the variable Orange contains the respective dataset.  

```{r }
library(datasets)
```
```{r }
head(Orange)
```
"""

Orange
split_date <- split(Orange,Orange$circumference)
split_date

sp_date30 <- split_date$`30`
print(sp_date30)


sp_date75 <- split_date$`75`
print(sp_date75)

sum(sp_date30$age)
length(sp_date30$age)


avg <-  sum(sp_date30$age)/length(sp_date30$age)
avg


split_date <- split(Orange,Orange$circumference)

sp_date214 <- split_date$`214`
sp_date214

avg <-  sum(sp_date214$age)/length(sp_date214$age)
avg
