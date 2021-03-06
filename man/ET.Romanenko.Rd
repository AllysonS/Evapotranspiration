\name{ET.Romanenko}
\alias{ET.Romanenko}

\title{Romanenko Formulation
}
\description{
Implementing the Romanenko formulation for estimating potential evapotranspiration.
}
\usage{
\method{ET}{Romanenko}(data, ts="daily", \dots) 
}

\arguments{
  \item{data}{
  A list of data which contains the following items (climate variables) required by Romanenko formulation:\cr
  \emph{Tmax}, \emph{Tmin}, \emph{RHmax}, \emph{RHmin}
  }
  \item{ts}{
  Must be either \code{daily}, \code{monthly} or \code{annual}, which indicates the disired time step that the output ET estimates should be on. 
  Default is \code{daily}.
  }
  \item{\dots}{
  Dummy for generic function, no need to define.
  }
}

\details{
  This formulation provides a single calculation method with no alternatives available.
}

\value{
The function prints a calculation summary to the screen containing the following elements:\cr
- ET model name and ET quantity estimated\cr
- Time step of the output ET estimates (i.e. the value of argument \code{ts})\cr
- Units of the output ET estimates\cr
- Time duration of the ET estimation\cr
- Number of ET estimates obtained in the entire time-series\cr
- Basic statistics of the estimated ET time-series including \emph{mean}, \emph{max} and \emph{min} values.\cr
\cr
The function also generates a list containing the following components, which is saved into a \code{csv} file named as \emph{ET_Romanenko.csv} in the working directory:

  \item{ET.Daily}{
  Daily aggregated estimations of Romanenko potential evapotranspiration.
  }
  \item{ET.Monthly}{
  Monthly aggregated estimations of Romanenko potential evapotranspiration.
  }
  \item{ET.Annual}{
  Annually aggregated estimations of Romanenko potential evapotranspiration.
  }
  \item{ET.MonthlyAve}{
  Monthly averaged estimations of daily Romanenko potential evapotranspiration.
  }
  \item{ET.AnnualAve}{
  Annually averaged estimations of daily Romanenko potential evapotranspiration.
  }
  \item{ET_formulation}{
  Name of the formulation used which equals to \code{Romanenko}.
  }
  \item{ET_type}{
  Type of the estimation obtained which is \code{Potential Evapotranspiration}.
  }
}
\references{
Oudin, L., Hervieu, F., Michel, C., Perrin, C., Andreassian, V., Anctil, F.Loumagne, C. 2005, \emph{Which potential evapotranspiration input for a lumped rainfall-runoff model?: Part 2-Towards a simple and efficient potential evapotranspiration model for rainfall-runoff modelling}. Journal of Hydrology, vol. 303, no. 1-4, pp. 290-306.

}
\author{
Danlu Guo
}
\seealso{
\code{\link{ET}},\code{\link{processeddata}}
}
\examples{
# Use processed existing data set and constants from kent Town, Adelaide
data("processeddata")
data("constants")

# Call ET.Romanenko under the generic function ET
results <- ET.Romanenko(data, ts="daily") 
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Romanenko}
\keyword{evapotranspiration}
\keyword{potential evapotranspiration}
% __ONLY ONE__ keyword per line

