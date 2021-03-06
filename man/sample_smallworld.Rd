% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/games.R
\name{sample_smallworld}
\alias{sample_smallworld}
\alias{watts.strogatz.game}
\alias{smallworld}
\title{The Watts-Strogatz small-world model}
\usage{
sample_smallworld(dim, size, nei, p, loops = FALSE, multiple = FALSE)

smallworld(...)
}
\arguments{
\item{dim}{Integer constant, the dimension of the starting lattice.}

\item{size}{Integer constant, the size of the lattice along each dimension.}

\item{nei}{Integer constant, the neighborhood within which the vertices of
the lattice will be connected.}

\item{p}{Real constant between zero and one, the rewiring probability.}

\item{loops}{Logical scalar, whether loops edges are allowed in the
generated graph.}

\item{multiple}{Logical scalar, whether multiple edges are allowed int the
generated graph.}

\item{...}{Passed to \code{sample_smallworld}.}
}
\value{
A graph object.
}
\description{
Generate a graph according to the Watts-Strogatz network model.
}
\details{
First a lattice is created with the given \code{dim}, \code{size} and
\code{nei} arguments. Then the edges of the lattice are rewired uniformly
randomly with probability \code{p}.

Note that this function might create graphs with loops and/or multiple
edges. You can use \code{\link{simplify}} to get rid of these.
}
\examples{

g <- sample_smallworld(1, 100, 5, 0.05)
mean_distance(g)
transitivity(g, type="average")

}
\references{
Duncan J Watts and Steven H Strogatz: Collective dynamics of
\sQuote{small world} networks, Nature 393, 440-442, 1998.
}
\seealso{
\code{\link{make_lattice}}, \code{\link{rewire}}
}
\author{
Gabor Csardi \email{csardi.gabor@gmail.com}
}
\keyword{graphs}
