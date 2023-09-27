# ---
#
# 02_init-params-for-dqd.r
#
# ---

# local files
pathToDriver <- "D:\\_YES_2023-05-28\\workspace\\SosRunDataQualityDashboard\\drivers\\postgres\\drivers\\42.3.3"
outputFolder <- "D:\\_YES_2023-05-28\\workspace\\SosRunDataQualityDashboard\\output"
outputFile <- "results.json"

# database connectivity
dbms <- "postgresql"
user <- "postgres" 
password <- "mypass" 
server <- "127.0.0.1/postgres" 
port <- "5432"
pathToDriver <- pathToDriver  
extraSettings <- ""

# database schemas
cdmVersion = "5.3"
cdmDatabaseSchema <- "demo_cdm"                       # your omop instance
resultsDatabaseSchema <- "demo_cdm_results"           # instance where results will be written
cdmSourceName <- "DEMO_CDM_SOURCE"                    # a human readable name for your CDM source

# config parameters
numThreads <- 1                                       # number of threads to run, 3 seems to work well on Redshift
sqlOnly <- FALSE                                      # set to TRUE if you just want to get the SQL scripts and not actually run the queries
verboseMode <- TRUE                                   # set to TRUE if you want to see activity written to the console
writeToTable <- TRUE                                  # set to FALSE if you want to skip writing to a SQL table in the results schema

# dqd parameters
checkLevels <- c("TABLE", "FIELD", "CONCEPT")         # which DQ check levels to run
checkNames <- c()                                     # which DQ checks to run, names can be found in inst/csv/OMOP_CDM_v5.3.1_Check_Desciptions.csv
tablesToExclude <- c()                                # which CDM tables to exclude?



