% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_mngeo.R
\name{read_mngeo}
\alias{read_mngeo}
\title{Get Shapefiles from the MN Geocommons}
\usage{
read_mngeo(
 
    url = "https://resources.gisdata.mn.gov/pub/gdrs/data/pub/us_mn_state_pca/env_ej_mpca_census/shp_env_ej_mpca_census.zip",
  layer = "ej_mpca_census.shp",
  path = getwd(),
  folder_name = "mngeo_shapes",
  add_date = TRUE
)
}
\arguments{
\item{path}{Directory to save the ZIP file to, if necessary.}

\item{folder_name}{Name of folder to save downloaded ZIP file to, if necessary.}

\item{add_date}{If TRUE, add today's date to the folder name. Helps to prevent overwriting existing folders.}
}
\description{
Downloads the shapefile from a MN Geocommons webpage at https://gisdata.mn.gov/.
}
\details{
Example data source
MPCA EJ areas: https://gisdata.mn.gov/dataset/env-ej-mpca-census
}
\examples{
library(mpcaej)

\dontrun{
ej <- read_mngeo(url = "https://gisdata.mn.gov/dataset/env-ej-mpca-census", layer = "ej_mpca_census.shp")

ej[1, ]

plot(ej[ , 1])
}

}
