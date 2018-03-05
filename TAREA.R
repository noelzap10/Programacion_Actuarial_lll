y <- data.frame( a = 1, b = "a")

dput(y)

dput(y , file= "~/GitHub/SoftwareActuarial3/y.R")

y2 <- dget(file= "~/GitHub/SoftwareActuarial3/y.R")


#TAREA
mtcars
dput(mtcars, file = "~/GitHub/SoftwareActuarial3/y.R")
CarrosNoel <- dput(mtcars, file = "~/GitHub/SoftwareActuarial3/y.R")
CarrosNoel