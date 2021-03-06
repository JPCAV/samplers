% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sampling.R
\name{new_sample}
\alias{new_sample}
\title{Generate a new particle}
\usage{
new_sample(s, data, num_particles, parameters, efficient_mu = NULL,
  efficient_sig2 = NULL, mix_ratio = c(0.5, 0.5, 0),
  likelihood_func = NULL, epsilon = 1, subjects = NULL)
}
\arguments{
\item{s}{A number - the index of the subject, also selects particles. For
`s == 1` The first subject ID from the `data` subject column will be
selected. For `s == 2` the second unique value for subject id will be used.}

\item{data}{A data.frame containing variables for
response time (\code{rt}), trial condition (\code{condition}),
accuracy (\code{correct}) and subject (\code{subject}) which
contains the data against which the particles are assessed}

\item{num_particles}{The total number of particles to generate using a combination of the
three methods.}

\item{parameters}{A list containing:
* the vector of means for the multivariate normal (gm),
* A covariate matrix for the multivariate normal (gv)
* An array of individual subject means (re proposals for latent
  variables) (sm)}

\item{efficient_mu}{The mu value for the efficient proposals}

\item{efficient_sig2}{The sigma value for the efficient proposals}

\item{mix_ratio}{A vector of floats betwen 0 and 1 and summing to 1 which give the ratio
of particles to generate from the population level parameters, the individual random
effects and the conditional parameters repectively}

\item{likelihood_func}{A likelihood function for calculating log likelihood
of samples}

\item{epsilon}{A scaling factor to reduce the variance on individual level
parameter samples}

\item{subjects}{A list of unique subject ids in the order they appear in
the data.frame}
}
\value{
A single sample from the new proposals
}
\description{
Generate samples from either the initial proposal or from the last
iteration of the particles (according to a mixing value) and return
a weighted random sample from the new proposals
This uses the simplest, and slowest, proposals: a mixture of the
the population distribution and Gaussian around current random effect.
}
\examples{
# No example yet
}
