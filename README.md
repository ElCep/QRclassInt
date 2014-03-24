QRclassInt
==========

QRclassInt is a sextante plug-in for Qgis in R.  It is convenient to visualize the distribution of statistical record and choose the best univariate discretization.

  * This plug-in uses sextante capability for intergrer some R fonctions of classInt package
  * You're abble to even distributions of statistical recording as a cumulative-frequency curve and a summary table for choose the base way for an univariate classification.
  * a shapefile is built containing a column "factor" which contains the bounds of class to which the individual object belongs
  
To install this plugin in Qgis you juste need to copies all git files in `~/.qgis2/processing/rscripts/`

To use it :
-----------

You need to install in R the following pakages (whit `install.packages('my.package')`)

  * [classInt] [a] 
  * [xtable] [b]

[a]: http://cran.r-project.org/web/packages/classInt/index.html
[b]: http://cran.r-project.org/web/packages/xtable/index.html
