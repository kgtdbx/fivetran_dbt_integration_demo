SELECT
  CONVERT_TIMEZONE('America/Chicago', START_TIME)::TIMESTAMP_NTZ AS START_TIME_CT,
  CONVERT_TIMEZONE('America/Chicago', END_TIME)::TIMESTAMP_NTZ AS END_TIME_CT,
  QUERY_ID,
  QUERY_TEXT,
  DATABASE_ID,
  DATABASE_NAME,
  SCHEMA_ID,
  SCHEMA_NAME,
  QUERY_TYPE,
  SESSION_ID,
  USER_NAME,
  ROLE_NAME,
  WAREHOUSE_ID,
  WAREHOUSE_NAME,
  WAREHOUSE_SIZE,
  WAREHOUSE_TYPE,
  CLUSTER_NUMBER,
  QUERY_TAG,
  EXECUTION_STATUS,
  ERROR_CODE,
  ERROR_MESSAGE,
  TOTAL_ELAPSED_TIME,
  BYTES_SCANNED,
  PERCENTAGE_SCANNED_FROM_CACHE,
  BYTES_WRITTEN,
  BYTES_WRITTEN_TO_RESULT,
  BYTES_READ_FROM_RESULT,
  ROWS_PRODUCED,
  ROWS_INSERTED,
  ROWS_UPDATED,
  ROWS_DELETED,
  ROWS_UNLOADED,
  BYTES_DELETED,
  PARTITIONS_SCANNED,
  PARTITIONS_TOTAL,
  BYTES_SPILLED_TO_LOCAL_STORAGE,
  BYTES_SPILLED_TO_REMOTE_STORAGE,
  BYTES_SENT_OVER_THE_NETWORK,
  COMPILATION_TIME,
  EXECUTION_TIME,
  QUEUED_PROVISIONING_TIME,
  QUEUED_REPAIR_TIME,
  QUEUED_OVERLOAD_TIME,
  TRANSACTION_BLOCKED_TIME,
  OUTBOUND_DATA_TRANSFER_CLOUD,
  OUTBOUND_DATA_TRANSFER_REGION,
  OUTBOUND_DATA_TRANSFER_BYTES,
  INBOUND_DATA_TRANSFER_CLOUD,
  INBOUND_DATA_TRANSFER_REGION,
  INBOUND_DATA_TRANSFER_BYTES,
  LIST_EXTERNAL_FILES_TIME,
  CREDITS_USED_CLOUD_SERVICES,
  RELEASE_VERSION,
  EXTERNAL_FUNCTION_TOTAL_INVOCATIONS,
  EXTERNAL_FUNCTION_TOTAL_SENT_ROWS,
  EXTERNAL_FUNCTION_TOTAL_RECEIVED_ROWS,
  EXTERNAL_FUNCTION_TOTAL_SENT_BYTES,
  EXTERNAL_FUNCTION_TOTAL_RECEIVED_BYTES,
  QUERY_LOAD_PERCENT,
  IS_CLIENT_GENERATED_STATEMENT

FROM
  {{ref('stg_query_history')}}