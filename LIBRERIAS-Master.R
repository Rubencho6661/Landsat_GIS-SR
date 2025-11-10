# ARCHIVO EN EL QUE SE CARGA TODAS LAS LIBRERIAS

# Package names
packages <- c("raster", "rgdal", "ggplot2", "devtools", "sf", "RStoolbox")

# Install packages not yet installed
installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
}

# Packages loading
invisible(lapply(packages, library, character.only = TRUE))


#ncdf4 # extract and process netcdf files from ERA5 (nota: considerar que archivos demasiado pesados no pueden ser procesados)
#pastecs # calculo de estadisticas
#circular # calculo de estadisticas circulares para deperminaci?n de angulos promedio
#ggplot2 # para dibujar Radar charts Spider or Web or Polar charts. 
#tidyverse #modificar datos para ggplot2
#Hmisc # calculo de matrices de correlacion
#corrplot # Visualizaci?n de correlaci?n de todas las variables
#factoextra # clusterizing k means