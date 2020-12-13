CREATE EXTERNAL TABLE HTTP_LOGS_15GB(
  CLIENT_IP STRING,
  CLIENT_ID STRING,
  USER_ID STRING,
  REQUEST_RECEIVED_AT STRING,
  CLIENT_REQUEST STRING,
  STATUS_CODE STRING,
  OBJECT_SIZE STRING)
ROW FORMAT SERDE 'org.apache.hadoop.hive.contrib.serde2.RegexSerDe'
WITH SERDEPROPERTIES (
  "input.regex" = "([^ ]*) ([^ ]*) ([^ ]*) (-|\\[[^\\]]*\\]) ([^ \"]*|\"[^\"]*\") (-|[0-9]*) (-|[0-9]*)",
  "output.format.string" = "%1$s %2$s %3$s %4$s %5$s %6$s %7$s"
)
STORED AS TEXTFILE;