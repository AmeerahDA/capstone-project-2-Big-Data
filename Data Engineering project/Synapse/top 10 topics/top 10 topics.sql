-- create a chart to display the top 10 topics in the StackOverFlow Posts
SELECT
    TOP 10 *
FROM
    OPENROWSET(
        BULK 'https://projectcapstonestorage.dfs.core.windows.net/capstoneprojectcontainer/BI/ml_result.csv',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0',
        HEADER_ROW = TRUE
    ) AS [result]