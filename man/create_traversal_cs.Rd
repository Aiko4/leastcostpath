% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_traversal_cs.R
\name{create_traversal_cs}
\alias{create_traversal_cs}
\title{Create a Traversal across Slope Cost Surface}
\usage{
create_traversal_cs(dem, neighbours = 16)
}
\arguments{
\item{dem}{\code{RasterLayer} (raster package). Digital Elevation Model}

\item{neighbours}{\code{numeric} value. Number of directions used in the Least Cost Path calculation. See Huber and Church (1985) for methodological considerations when choosing number of neighbours. Expected numeric values are 4, 8, 16, 32, 48 or a matrix object. Default is numeric value 16}
}
\value{
\code{TransitionLayer} (gdistance package) numerically expressing the difficulty of moving across slope based on figure given in Bell and Lock (2000). The traversal_cs \code{TransitionLayer} should be multiplied by the create_slope_cs \code{TransitionLayer}, resulting in a \code{TransitionLayer} that takes into account movement across slope in all directions
}
\description{
Creates a cost surface based on the difficulty of traversing across slope. Difficulty of traversal is based on the figure given in Bell and Lock (2000). Traversal across slope accounts for movement directly perpendicular across slope being easier than movement diagonally up/down slope.
}
\examples{
r <- raster::raster(system.file('external/maungawhau.grd', package = 'gdistance'))
traversal_cs <- create_traversal_cs(r, neighbours = 16)
}
\author{
Joseph Lewis
}
