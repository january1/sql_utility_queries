SELECT segment_name
     , bytes/1024 AS size_kb
     , blocks
  FROM dba_segments
 WHERE owner = :owner
 ORDER BY size_kb DESC
;

SELECT SUM(ROUND(bytes/1048576,2)) AS size_mb
  FROM DBA_SEGMENTS
 WHERE owner = :owner
;