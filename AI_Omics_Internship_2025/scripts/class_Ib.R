
#creating subfolders
dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("results")
dir.create("plots")

# reading the chosen file which is "patient_info.csv" and storing it in the variable 'data'
data = read.csv(file.choose())
str(data)

# converting the "gender" data type from 'char' into 'factor/categorical'
data$gender = as.factor(data$gender)
class(data$gender)

# converting the "diagnosis" data type from 'char' into 'factor/categorical'
data$diagnosis = as.factor(data$diagnosis)
class(data$diagnosis)

# converting the "smoker" data type from 'char' into 'factor/categorical'
data$smoker = as.factor(data$smoker)
class(data$smoker)

# adding the binary "smoker_status" col with 1 for "Yes" and 0 for "No"
data$smoker_status = ifelse(data$smoker == "Yes",1,0)
str(data)

# saving the cleaned dataset in the "clean_data" folder
write.csv(data,file = "clean_data/patient_info_cleaned.csv",row.names = FALSE)

