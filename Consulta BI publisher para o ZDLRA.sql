#########################################################################################
# Consulta em relatorio no BI publisher para o ZDLRA
#
#########################################################################################


select  "MGMT$JOB_EXECUTION_HISTORY"."TARGET_NAME" as "TARGET_NAME",
"MGMT$JOB_EXECUTION_HISTORY"."JOB_NAME" as "JOB_NAME",
"MGMT$JOB_EXECUTION_HISTORY"."END_TIME" as "END_TIME",
"MGMT$JOB_EXECUTION_HISTORY"."STATUS" as "STATUS"
from "MGMT_VIEW"."MGMT$JOB_EXECUTION_HISTORY" "MGMT$JOB_EXECUTION_HISTORY"
where   "MGMT$JOB_EXECUTION_HISTORY"."TARGET_NAME" like  '%BANCODEDADOS%'
   and  "MGMT$JOB_EXECUTION_HISTORY"."JOB_NAME" like '%BACKUP%'
order by "MGMT$JOB_EXECUTION_HISTORY"."END_TIME" ASC


#########################################################################################

select  count("MGMT$JOB_EXECUTION_HISTORY"."TARGET_NAME") as "TOTAL"
from "MGMT_VIEW"."MGMT$JOB_EXECUTION_HISTORY" "MGMT$JOB_EXECUTION_HISTORY"
where   "MGMT$JOB_EXECUTION_HISTORY"."TARGET_NAME" like  '%BANCODEDADOS%'
   and  "MGMT$JOB_EXECUTION_HISTORY"."JOB_NAME" like '%BACKUP%'
order by "MGMT$JOB_EXECUTION_HISTORY"."END_TIME" ASC