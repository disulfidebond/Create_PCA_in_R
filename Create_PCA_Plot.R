# Principal Component Analysis in R
# credit https://tgmstat.wordpress.com/2013/11/21/introduction-to-principal-component-analysis-pca/
# credit https://www.r-bloggers.com/computing-and-visualizing-pca-in-r/
# credit https://plot.ly/ipython-notebooks/principal-component-analysis/

# load data
df <- read.csv(file = '', header = TRUE)
# if not log-transformed, run the next step, otherwise skip it
# set n to the number of consecutive numerical data columns 
log.df <- log(df[, 1:n])
# optional 1: set groups to the column with group labels
df.groups = df[ , x]
df_pca <- prcomp(log.df, center = TRUE, scale = TRUE)

# optional 2: Install PCA library
# install fancier PCA library from github
library(devtools)
install_github("vqv/ggbiplot")
library(ggbiplot)
g <- ggbiplot(df_pca, obs.scale = 1, var.scale = 1, groups = df.groups, ellipse = TRUE, circle = TRUE)

# built-in, less-pretty PCA
biplot(df_pca)

# one-step transformation using Box-Cox
install.packages("caret")
library("caret")
require(caret)
trans = preProcess(df[,1:4], method=c("BoxCox", "center", "scale", "pca"))
