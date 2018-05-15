globalVariables("group")

names = c("genefilter", "xcms", "impute", "MAIT")

for (n in 1:length(names)){
  if (!(names[n] %in% rownames(installed.packages()))){
    if (interactive()) {
      repeat {
        cat(paste("Install necessary package ", names[n], "from bioconductor repository? [y or n]"))
        answer <- readLines(n = 1)
        if (answer %in% c("y", "Y", "n", "N")){
          source("http://bioconductor.org/biocLite.R")
          biocLite(names[n])
        }
      }
    }
  }
}

if (interactive()) {
  repeat {
    cat(paste("Install necessary package rcytoscapejs from github? [y or n]"))
    answer <- readLines(n = 1)
    if (answer %in% c("y", "Y", "n", "N")){
      install_github('cytoscape/r-cytoscape.js')
    }
  }
}

#if (!("mzmatch.R" %in% rownames(installed.packages()))){
#	source ("http://puma.ibls.gla.ac.uk/mzmatch.R/install_mzmatch.R")
#}
