Features <-read.table("./UCI HAR Dataset/features.txt", allowEscapes=TRUE)

trainRows <-read.table("./UCI HAR Dataset/train/Y_train.txt")
trainData <- read.table("./UCI HAR Dataset/train/X_train.txt", row.names=NULL)
colnames(trainData) <- Features[,2]

testRows <-read.table("./UCI HAR Dataset/test/Y_test.txt")
testData <- read.table("./UCI HAR Dataset/test/X_test.txt", row.names=NULL)
colnames(testData) <- Features[,2]
 
OBV <-rbind(trainData[,c(1:6,40:45,80:85,120:125,160:165,201,214,227,240,253,266:270,345:349,424:428,503,516,529,542)], testData[,c(1:6,40:45,80:85,120:125,160:165,201,214,227,240,253,266:270,345:349,424:428,503,516,529,542)])
Act <- rbind(trainRows[1],testRows[1])
OBV$Activity <- Act[,1]
write.csv((aggregate(OBV[1:55], by=list(OBV$Subject), FUN=mean)), file = "./FinalUCITidy.txt", col.names=TRUE, row.names=FALSE)

