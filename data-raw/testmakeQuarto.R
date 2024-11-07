




usedir <- "C:/Users/Malcolm/Dropbox/A_Code/codeutils/data-raw/"
makeQuarto(usedir,author="My Name")
txt <- readLines(pathtopath(usedir,"manuscript.qmd"))
nline <- length(txt)
for (i in 1:nline) print(txt[i],quote=FALSE)
