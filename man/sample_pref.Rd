% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/games.R
\name{sample_pref}
\alias{sample_pref}
\alias{sample_asym_pref}
\alias{preference.game}
\alias{asymmetric.preference.game}
\alias{pref}
\alias{asym_pref}
\title{Trait-based random generation}
\usage{
sample_pref(nodes, types, type.dist = rep(1, types),
  fixed.sizes = FALSE, pref.matrix = matrix(1, types, types),
  directed = FALSE, loops = FALSE)

pref(...)

sample_asym_pref(nodes, types, type.dist.matrix = matrix(1, types,
  types), pref.matrix = matrix(1, types, types), loops = FALSE)

asym_pref(...)
}
\arguments{
\item{nodes}{The number of vertices in the graphs.}

\item{types}{The number of different vertex types.}

\item{type.dist}{The distribution of the vertex types, a numeric vector of
length \sQuote{types} containing non-negative numbers. The vector will be
normed to obtain probabilities.}

\item{fixed.sizes}{Fix the number of vertices with a given vertex type
label. The \code{type.dist} argument gives the group sizes (i.e. number of
vertices with the different labels) in this case.}

\item{pref.matrix}{A square matrix giving the preferences of the vertex
types. The matrix has \sQuote{types} rows and columns.}

\item{directed}{Logical constant, whether to create a directed graph.}

\item{loops}{Logical constant, whether self-loops are allowed in the graph.}

\item{...}{Passed to the constructor, \code{sample_pref} or
\code{sample_asym_pref}.}

\item{type.dist.matrix}{The joint distribution of the in- and out-vertex
types.}
}
\value{
An igraph graph.
}
\description{
Generation of random graphs based on different vertex types.
}
\details{
Both models generate random graphs with given vertex types. For
\code{sample_pref} the probability that two vertices will be connected
depends on their type and is given by the \sQuote{pref.matrix} argument.
This matrix should be symmetric to make sense but this is not checked. The
distribution of the different vertes types is given by the
\sQuote{type.dist} vector.

For \code{sample_asym_pref} each vertex has an in-type and an
out-type and a directed graph is created. The probability that a directed
edge is realized from a vertex with a given out-type to a vertex with a
given in-type is given in the \sQuote{pref.matrix} argument, which can be
asymmetric. The joint distribution for the in- and out-types is given in the
\sQuote{type.dist.matrix} argument.
}
\examples{

pf <- matrix( c(1, 0, 0, 1), nr=2)
g <- sample_pref(20, 2, pref.matrix=pf)
\dontrun{tkplot(g, layout=layout_with_fr)}

pf <- matrix( c(0, 1, 0, 0), nr=2)
g <- sample_asym_pref(20, 2, pref.matrix=pf)
\dontrun{tkplot(g, layout=layout_in_circle)}

}
\seealso{
\code{\link{sample_traits}}.
\code{\link{sample_traits_callaway}}
}
\author{
Tamas Nepusz \email{ntamas@gmail.com} and Gabor Csardi
\email{csardi.gabor@gmail.com} for the R interface
}
\keyword{graphs}
