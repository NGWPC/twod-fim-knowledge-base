
Successive calls to the USGS 3DEP service at `https://prd-tnm.s3.amazonaws.com/StagedProducts/Elevation/13/TIFF/USGS_Seamless_DEM_13.vrt` yield different DEMs.  This makes model creation nondeterministic and may impact process reproducibility and file hashing.

The root cause of this issue may be the .vrt query itself or one of the transform operations within the modeling pipeline.  Further investigation is needed.