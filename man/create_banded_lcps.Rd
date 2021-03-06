% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_banded_lcps.R
\name{create_banded_lcps}
\alias{create_banded_lcps}
\title{Calculate Least Cost Paths from random locations within distances}
\usage{
create_banded_lcps(
  cost_surface,
  location,
  min_distance,
  max_distance,
  radial_points,
  cost_distance = FALSE,
  parallel = FALSE
)
}
\arguments{
\item{cost_surface}{\code{TransitionLayer} (gdistance package). Cost surface to be used in Least Cost Path calculation}

\item{location}{\code{SpatialPoints*} (sp package). Location from which the Least Cost Paths are calculated. Only the first cell is taken into account}

\item{min_distance}{\code{numeric} value. minimum distance from centre location}

\item{max_distance}{\code{numeric} value. maximum distance from centre location}

\item{radial_points}{\code{numeric} value. Number of random locations around centre location within distances}

\item{cost_distance}{\code{logical}. if TRUE computes total accumulated cost for each Least Cost Path. Default is FALSE}

\item{parallel}{\code{logical}. if TRUE, the Least Cost Paths will be calculated in parallel. Number of Parallel socket clusters is total number of cores available minus 1. Default is FALSE}
}
\value{
\code{SpatialLinesDataFrame} (sp package). The resultant object contains least cost paths (number of LCPs is dependent on radial_points argument) calculated from a centre location to random locations within a specified distance band.
}
\description{
Calculates Least Cost Paths from centre location to random locations within a specified distance band. This is based on the method proposed by Llobera (2015).
}
\examples{

#r <- raster::raster(nrow=50, ncol=50,  xmn=0, xmx=50, ymn=0, ymx=50, crs='+proj=utm')

#r[] <- stats::runif(1:length(r))

#slope_cs <- create_slope_cs(r, cost_function = 'tobler')

#locs <- sp::spsample(as(raster::extent(r), 'SpatialPolygons'),n=1,'random')

#lcp_network <- create_banded_lcps(cost_surface = final_cost_cs, location = locs, min_distance = 20,
#max_distance = 50, radial_points = 10, cost_distance = FALSE, parallel = FALSE)

}
\references{
Llobera, M. (2015). Working the digital: some thoughts from landscape archaeology. In Chapman R, Wylie A (eds), Material evidence: learning from archaeological practice (pp. 173-188). Abingdon: Routledge.
}
\author{
Joseph Lewis
}
