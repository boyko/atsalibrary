% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/greeklandings-data.R
\docType{data}
\name{greeklandings}
\alias{greeklandings}
\title{Annual Anchovy, Sardine and Mackerel landings in Hellenic Waters 1964-2007}
\format{Objects of class \code{"data.frame"}.  Columns are Year, Species, log.metric.tons, metric.tons}
\source{
\href{http://dlib.statistics.gr/portal/page/portal/ESYE}{Hellenic Statisitcal Authority Digital Library}
}
\usage{
data(greeklandings)
}
\description{
Annual commercial landings of anchovy, sardine and mackerel
from Greek fisheries compiled by the Hellenic Statisitcal Authority.
}
\details{
Data are from Table IV in the "Sea Fishery by Motor Vessels" statistical
reports published by the Hellenic Statisitcal Authority.  The reports
are available in Digital Library (\href{http://dlib.statistics.gr}{ELSTAT}), Special Publications, 
Agriculture-Livestock-Fisheries, Fisheries.
In Table IV, the landings data were taken from the total column, units are metric tons.
In the table, sardine is denoted ' Pilchard'
}
\examples{
data(greeklandings)
anchovy = ts(subset(greeklandings, Species=="Anchovy")$log.metric.tons, start=1964)
plot(anchovy)

library(ggplot2)
ggplot(greeklandings, aes(x=Year, y=log.metric.tons)) + 
      geom_line() + facet_wrap(~Species)
}
\keyword{datasets}
