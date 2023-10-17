# ---
#
# 03_debug-dqd.r
#
# ---

# create connection details object
connectionDetails <- DatabaseConnector::createConnectionDetails(
  dbms = dbms, 
  user = user, 
  password = password, 
  server = server, 
  port = port, 
  pathToDriver = pathToDriver,
  extraSettings = extraSettings 
)

# ---
#
# debug the code
#
# ---

debugDataQualityDashboard <- function() {
  browser()
  DataQualityDashboard::executeDqChecks (
    connectionDetails = connectionDetails, 
    cdmDatabaseSchema = cdmDatabaseSchema, 
    resultsDatabaseSchema = resultsDatabaseSchema,
    cdmSourceName = cdmSourceName, 
    numThreads = numThreads,
    sqlOnly = sqlOnly, 
    outputFolder = outputFolder, 
    outputFile = outputFile,
    verboseMode = verboseMode,
    writeToTable = writeToTable,
    checkLevels = checkLevels,
    tablesToExclude = tablesToExclude,
    checkNames = checkNames,
    cdmVersion = cdmVersion
  )
}

debugonce(debugDataQualityDashboard)

debugDataQualityDashboard()


