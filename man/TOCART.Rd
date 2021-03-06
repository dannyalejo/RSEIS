\name{TOCART}
\alias{TOCART}

\title{Convert to Cartesian coordinates}
\description{
  Convert to cartesian coordinates
}
\usage{
TOCART(az, nadir)
}

\arguments{
  \item{az}{degrees, azimuth }
  \item{nadir}{degrees, dip }
}

\value{
 LIST
  \item{x}{x-coordinate}
  \item{y}{y-coordinate}
  \item{z}{z-coordinate}
  \item{az}{degrees, azimuth }
  \item{nadir}{degrees, dip }

}

\author{Jonathan M. Lees <jonathan.lees@unc.edu>}

\seealso{tocartL}
\examples{
TOCART(132, 69)
}

\keyword{misc}
