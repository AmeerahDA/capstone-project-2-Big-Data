-- create a chart to display the most 5 posts has favorite count in the StackOverFlow
SELECT
    TOP 5 id,FavoriteCount,Title
FROM
    OPENROWSET(
        BULK 'https://projectcapstonestorage.dfs.core.windows.net/capstoneprojectcontainer/BI/csv_posts/posts.csv',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0',
        HEADER_ROW = TRUE
    ) AS [result]   
ORDER BY FavoriteCount DESC;