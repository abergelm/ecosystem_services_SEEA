# load packages
library(terra)
library(readxl)
library(stringr)
library(tidyr)

# set working directory
setwd("C:/Users/abergelm/Desktop/R/ecosystem_services/data/mapdata")



# import ecosystem type tiff file and create raster
eco_type <- rast("ecosystem_type.dir/ecosystem_type.tiff")
plot(eco_type,
     main="Ecosystem Types in Canada 2019",
     axes=FALSE)
# reformat legend
levels(eco_type)
z = levels(eco_type)[[1]]
z$Label = trimws(str_replace_all(z$Label, "([A-Z])", " \\1"))
# re-plot raster with new legend names
levels(eco_type) <- z
plot(eco_type,
     main="Ecosystem Extent in Canada",
     axes=FALSE)



# import land cover type tiff file and create raster
land_cover <- rast("land_cover_type.dir/land_cover_type.tiff")
plot(land_cover,
     main="Land Cover in Canada",
     axes=FALSE)
# reformat legend
levels(land_cover)
z = levels(land_cover)[[1]]
z$Label = trimws(str_replace_all(z$Label, "([A-Z])", " \\1"))
# re-plot raster with new legend names
levels(land_cover) <- z
plot(land_cover,
     main="Ecosystem Extent in Canada",
     axes=FALSE)



# import demand for outdoor recreation tiff file and create raster
outdoor_rec <- rast("outdoor_rec/demand_outdoor_rec.tiff")
plot(outdoor_rec,
     main="Demanded Value for Outdoor Recreation ",
     axes=FALSE)

