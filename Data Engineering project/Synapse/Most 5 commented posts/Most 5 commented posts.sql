-- create a chart to display the Most 5 posts has comments in the StackOverFlow
SET ANSI_WARNINGS OFF
SELECT
    TOP 5 id,CommentCount
FROM
    OPENROWSET(
        BULK 'https://projectcapstonestorage.dfs.core.windows.net/capstoneprojectcontainer/BI/csv_posts/posts.csv',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0',
        HEADER_ROW = TRUE
    ) AS [result]
ORDER BY CommentCount DESC
SET ANSI_WARNINGS ON;
