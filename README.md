# RNA-seq Data Processing by HPC

**Quality Check - FastQC**

**Read Mapping - HISAT**

**Quantification, Normalization of gene expression data - Cufflinks and Cuffnorm**

**quantifying gene expression levels - FeatureCounts**

## Project Overview:

In the realm of genomics research, RNA-seq has emerged as a transformative technology, empowering us to explore **gene expression** intricacies with unprecedented depth. This project demonstrates essential skills for tackling challenges and seizing opportunities in RNA-seq analysis. Through curated hands-on experiences, we delve into theory and practice, utilizing an adapted dataset from **Shaw et al. (2015)** to immerse ourselves in the dynamic realm of RNA-seq analysis. The dataset's "treatment" and "control" samples hold keys to unravel the effects of specific drug treatments, guiding us through RNA-seq intricacies and showcasing its power in decoding molecular responses.

-   **Step 1: Check FASTQ Quality Control**

In the pursuit of reliable and accurate genomics analysis, quality control is foundational. We begin by assessing the quality of the sequencing data through the application of FastQC.

Command:

`fastqc -o output_directory input_fastq_file(s)`

-   **Step 2: Build HISAT Index**

The foundation for alignment by building the HISAT index, an component of the analysis pipeline.

Command:

`hisat2-build reference_genome.fa index_prefix`

-   **Step 3: Execute HISAT Alignment**

Accurate read mapping is critical to understanding the intricacies of transcription factor binding. Consistent with the methodology of the study, we employ HISAT for its proficiency in aligning reads to the reference genome.

Command:

`hisat2 -x index_prefix -U input_fastq_file(s) -S aligned_reads.sam`

-   **Step 4: Conduct Transcript Assembly with Cufflinks**

    Cufflinks is responsible for transcript assembly and quantification.

Command:

`cufflinks -o output_directory -p num_threads aligned_reads.sam`

-   **Step 5: Normalize Transcript Abundances with Cuffnorm**

Normalizing the gene expression data across samples to make them suitable for meaningful comparisons.

Command:

`cuffnorm -o output_directory --library-norm-method quartile normalized_data_table.txt`

-   **Step 6: Quantify Gene Expression with FeatureCounts**

FeatureCounts is a critical tool for quantifying gene expression levels from RNA-seq data. It aids in differential expression analysis, functional annotation, and other downstream analyses by providing accurate read counts for genes and other genomic features, enabling researchers to gain insights into the underlying biology of their experimental systems.

Command:

`featureCounts -T num_threads -a annotation.gtf -o gene_counts.txt bam_file(s)`

## Summary:

In this immersive exploration, we navigate the intricate landscape of RNA-seq analysis, unraveling the molecular intricacies that underlie gene expression patterns. Through careful data processing and interpretation, we unlock the potential to uncover transformative insights within genomic data.

## References:

Shaw, P., Chaotheing, S., Kaewprommal, P., Piriyapongsa, J., Wongsombat, C., Suwannakitti, N., Koonyosying, P., Uthaipibull, C., Yuthavong, Y., & Kamchonwongpaisan, S. (2015). Plasmodium parasites mount an arrest response to dihydroartemisinin, as revealed by whole transcriptome shotgun sequencing (RNA-seq) and microarray study. *BMC Genomics*, *16*(1). <https://doi.org/10.1186/s12864-015-2040-0>

## Blog:

<https://ssidmarine.wordpress.com/2023/08/12/rna-seq-data-processing-by-hpc/>

## Access data:

<https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE62136>

**Some output data available in the data folder**
