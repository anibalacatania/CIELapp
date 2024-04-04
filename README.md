
# CIELapp

The input should be a .csv file with wavelength in rows and products in
columns. The name of the first column should be: longdeonda. The
absorption spectra (380−770 nm) of all the wines were recorded at
constant intervals (Δλ = 1 nm) using 1 mm path length glass cells and
distilled water as areference. The CIELAB parameters (L*, a*, b*, C* ab
, and h ab ) were determine following the recommendations of the
Commission International de L’Eclariage: 26 the 10°Standard Observer and
Standard Illuminant D65.

You can install the development version of {CIELapp} from GitHub with:

``` r
if (!require("devtools")) install.packages("devtools")
```

    ## Loading required package: devtools

    ## Loading required package: usethis

``` r
library(devtools)
install_github("anibalacatania/CIELapp")
```

    ## Downloading GitHub repo anibalacatania/CIELapp@HEAD

    ## ── R CMD build ─────────────────────────────────────────────────────────────────
    ##      checking for file ‘/tmp/RtmpxCedTX/remotes15a2459b2f31/anibalacatania-CIELapp-4a6e1c9/DESCRIPTION’ ...  ✔  checking for file ‘/tmp/RtmpxCedTX/remotes15a2459b2f31/anibalacatania-CIELapp-4a6e1c9/DESCRIPTION’
    ##   ─  preparing ‘CIELapp’:
    ##    checking DESCRIPTION meta-information ...  ✔  checking DESCRIPTION meta-information
    ##   ─  checking for LF line-endings in source and make files and shell scripts
    ##   ─  checking for empty or unneeded directories
    ## ─  creating default NAMESPACE file
    ##   ─  building ‘CIELapp_0.0.0.9000.tar.gz’
    ##      
    ## 

    ## Installing package into '/home/anibal/R/x86_64-pc-linux-gnu-library/4.3'
    ## (as 'lib' is unspecified)
