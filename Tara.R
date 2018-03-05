y <- data.frame( a = 1, b = "a")

dput(y)

dput(y , file= "~/GitHub/SoftwareActuarial3/y.R")

y2 <- dget(file= "~/GitHub/SoftwareActuarial3/y.R")
