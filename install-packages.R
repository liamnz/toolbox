# Character vector which specifies a subset of packages to install. If NULL will
# install all packages in the package table.
categories <- NULL

packages <- read.csv('package-table.csv', header = TRUE)

if (length(categories) == 0){
  install.packages(packages$package)
} else {
  install.packages(packages$package[packages$category %in% categories])
}



