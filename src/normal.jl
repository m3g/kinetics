#
# Generate random numbers with a normal distribution
# 
# mean: the mean
# sigma: the standard deviation
#

normal(mean :: Float64, sigma :: Float64) = sigma*sqrt(-2*log(rand()))*cos(2*pi*rand()) + mean


