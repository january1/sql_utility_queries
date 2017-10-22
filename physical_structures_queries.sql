SELECT segment_name
     , bytes/1024 AS size_kb
     , blocks
  FROM dba_segments WHERE owner = :owner
 ORDER BY size_kb DESC
;