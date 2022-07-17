CAGE peaks
===
This directory contains the CAGE peaks defined in the FANTOM5 project as a robust set, where genomic coordinates originally defined on hg19 are lifted to hg38 by liftOver tool.

By following the update, their annotations are also updated - see “CAGE_peaks_annotation” directory in the parent directory.

- Inquiries: fantom-help@gsc.riken.jp
- Update:  2015-09-18 initial release
           2016-07-22 ver.2 release
           2017-04-14 ver.3 release
	   2017-10-27 restructured

Data files
---
- hg38_liftover+new_CAGE_peaks_phase1and2.bed.gz : all CAGE peaks consisting of lifted-over CAGE peaks using UCSC Lift-over and newly identified CAGE peaks
- hg38_fair+new_CAGE_peaks_phase1and2.bed.gz : all CAGE peaks consisting of fairly remapped CAGE peaks and newly identified CAGE peaks. Recommended to use this file for analysis.

- breakdown/hg38_liftover_CAGE_peaks_phase1and2.bed.gz : all lifted-over CAGE peaks using UCSC Lift-over
- breakdown/hg38_fair_CAGE_peaks_phase1and2.bed : fairly remapped CAGE peaks.
- breakdown/hg38_problematic_CAGE_peaks_phase1and2.bed : problematic CAGE peaks that were filtered out by QC
- breakdown/hg38_new_CAGE_peaks_phase1and2.bed : newly identified CAGE peaks in hg38 DPI clustering
- breakdown/hg19_droppped_CAGE_peaks_phase1and2.bed : unmapped CAGE peaks (in hg19 coordination)

Description of the columns in CAGE peaks coordinates files
---
This is baed on BED9 format, where the thickStart and thickEnd position represent representative TSS positions. (https://genome.ucsc.edu/FAQ/FAQformat.html#format1)

- chromosome
- start of CAGE peak region
- end of CAGE peak region
- name (ID) of the CAGE peak
- score
- strand of the CAGE peak
- start of the representative TSS position
- end of the representative TSS position (Note: end is always start+1)
- rgb string for color coding (plus or minus strand only)

