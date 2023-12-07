library(RODBC)

connection_string <- "Driver={SQL Server};Server=11.33.41.96;Database=DAS_DM;Trusted_Connection=yes;"
# Use the connection string to establish a connection
conn <- odbcDriverConnect(connection_string)

test_query <- sqlQuery(conn, "SELECT * FROM CUUMS_MAESTRO")
# Check the result
print(test_query)

# Close connection
close(conn)
