# Libraries to use
* A.Blomberg_15_01 - 180 - Yes, reads should overlap (length ~118)
* A.Blomberg_16_07 - 550 - Yes, reads should overlap (length ~296)
* A.Blomberg_15_20 - MPL - Yes; 'jumping library'
* A.Blomberg_16_15 - MPS - Yes; 'jumping library'

* A.Blomberg_15_17 - 350 - No, reads won't overlap (length ~151)

# Note
During the preparation step (p.11-14 in the manual), `in_libs.csv` asks for a standard deviation
of fragment size and insert size
* Fragment size for fragment libraries is easy to obtain a StDev for:
  * 180 library (length-filtered) - 0.7836127
  * 550 library 1 - 51.87538
  * 550 library 2 - 51.7201

* As far as I can tell, insert size for jumping libraries requires a SAM/BAM file to estimate...
  * Also need to figure out the mean? Currently I've set this to the insert size from the SLL reports

  * If new attempt fails, try length-filtering the rest of the data?
    * This will make the StDev easier to estimate?

# Attempt 1
This failed at the "Use corrected fragment reads to create filled fragment reads" step [error 1]
* The directory contains over 1Tb of data, so can't keep this if I want to retry
  * Delete all new files, redo prep for the input libraries (include updated figures for fragment
    libraries and give a StDev estimate for 'jumping libraries'), and retry
    * Will use an estimated StDev of ~20% of the insert size (which in itself is an estimate...)

# Attempts 2 & 3
These failed at the `CloseUnipathGaps` step [error 137]
* Attempt 2 included standard deviation (and more accurate average fragment size) for the PE libraries
* Attempt 3 also included standard deviation (and more accurate average insert size) for the MP libraries

# Attempt 4
The problem with the above seems to be a known issue (although forum posts I've found imply that this step tends
to hang, rather than kill the pipeline), so will turn this option off and try `SimpleGapCloser` instead
* In the interests of time, this will first be attempted **without** deleting the previous job; based on the
  documentation, this should resume from where it left off, but as the altered step is the one that killed the
  job, this may not work and a complete restart may be necessary...

# Attempt 5
The simple gap closer produced its own errors and killed the pipline. 

# Attempt 6
Attempt without any unipath gap closing module
* From [Biostars](https://www.biostars.org/p/122091/) - "At the advice from Allpaths-LG forum, I just disabled
the CloseUnipathGaps module using CLOSE_UNIPATH_GAPS=False, as it was stated this doesn't affect the quality of
assembly much at all. Without this module, Allpaths-LG was able to finish the assembly process."
  * However, this was for an instance where the module was HANGING, not CRASHING

* Process killed with error 137; FillFragments

# Attempt 7
