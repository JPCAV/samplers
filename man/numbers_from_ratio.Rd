% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{numbers_from_ratio}
\alias{numbers_from_ratio}
\title{Check and normalise the number of each particle type from the mix_ratio}
\usage{
numbers_from_ratio(mix_ratio, num_particles = 1000)
}
\arguments{
\item{mix_ratio}{A vector of floats betwen 0 and 1 and summing to 1 which give the ratio
of particles to generate from the population level parameters, the individual random
effects and the conditional parameters repectively}

\item{num_particles}{The total number of particles to generate using a combination of the
three methods.}
}
\value{
The wound vector as a matrix
}
\description{
Takes a mix ratio vector (3 x float) and a number of particles to generate and returns
a vector containing the number of each particle type to generate
}
\examples{
psamplers:::numbers_from_ratio(c(0.1, 0.3, 0.6))
}
\keyword{internal}
