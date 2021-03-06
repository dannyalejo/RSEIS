\name{plotseis24}
\Rdversion{1.1}
\alias{plotseis24}
\title{Plot 24 hours of seismic data
}
\description{Plot 24 hours of seismic data using output
  of getseis24.
}
\usage{
plotseis24(JJ, dy = 1/18, FIX = 24, SCALE = 0, FILT = list(ON = FALSE,
fl = 0.05, fh = 20, type = "BP", proto = "BU"), RCOLS = c(rgb(0.2, 0.2,
1), rgb(0.2, 0.2, 0.2)), add=FALSE )
}
\arguments{
  \item{JJ}{output list of getseis24
}
  \item{dy}{Delta-y in percentage of trace
}
  \item{FIX}{Fix 24 hour plot.  If FIX is less than 24, the plot will
    show only that number of hours.
}
  \item{SCALE}{scale, 0=scale each trace, 1=scale window
}
  \item{FILT}{filter data
}
  \item{RCOLS}{colors
  }
  \item{add}{logical, if TRUE, add to existing plot (i.e. do not issue a
    plot command)}
  
}
\details{
  Plots full 24 hours of data.
  The list returned can be used by winseis24
  to get picks and windows for zooming.

  The FIX argument is currently not available.
}
\value{
  list:
\item{x}{x-axis}
\item{y}{y-axis}
\item{yr}{year}
\item{jd}{julian day}
        
}

\author{
Jonathan M. Lees<jonathan.lees@unc.edu>
}

\seealso{getseis24, winseis24
}
\examples{

\dontrun{
JJ <- getseis24(DB, 2008, 366, usta, acomp, kind = 1)

### show with no scaling
pjj <- plotseis24(JJ, dy=1/18, FIX=24, SCALE=0, FILT=list(ON=FALSE,
fl=0.05 , fh=20.0, type="BP", proto="BU"), RCOLS=c(grey(0.8) , grey(0.8)), add=FALSE  )


pjj <- plotseis24(JJ, dy=1/18, FIX=24, SCALE=1, FILT=list(ON=FALSE,
fl=0.05 , fh=20.0, type="BP", proto="BU"), RCOLS=c(rgb(0.2, .2, 1),
rgb(.2, .2, .2)), add=TRUE  )




}


}
\keyword{misc}
