TYPE=VIEW
query=select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,\'/\',-2) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ`) AS `read_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE`) AS `write_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC`) AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0),0)) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where `performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like \'wait/io/file/%\' and `performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0 order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc
md5=0272cfa47514b02ded601f6f9cf04fb0
updatable=1
algorithm=1
definer_user=mariadb.sys
definer_host=localhost
suid=0
with_check_option=0
timestamp=0001728333658792881
create-version=2
source=SELECT SUBSTRING_INDEX(event_name, \'/\', -2) AS event_name,\n       count_star AS total,\n       format_pico_time(sum_timer_wait) AS total_latency,\n       format_pico_time(avg_timer_wait) AS avg_latency,\n       format_pico_time(max_timer_wait) AS max_latency,\n       format_pico_time(sum_timer_read) AS read_latency,\n       format_pico_time(sum_timer_write) AS write_latency,\n       format_pico_time(sum_timer_misc) AS misc_latency,\n       count_read,\n       sys.format_bytes(sum_number_of_bytes_read) AS total_read,\n       sys.format_bytes(IFNULL(sum_number_of_bytes_read / NULLIF(count_read, 0), 0)) AS avg_read,\n       count_write,\n       sys.format_bytes(sum_number_of_bytes_write) AS total_written,\n       sys.format_bytes(IFNULL(sum_number_of_bytes_write / NULLIF(count_write, 0), 0)) AS avg_written\n  FROM performance_schema.file_summary_by_event_name\n WHERE event_name LIKE \'wait/io/file/%\'\n   AND count_star > 0\n ORDER BY sum_timer_wait DESC;
client_cs_name=utf8mb3
connection_cl_name=utf8mb3_general_ci
view_body_utf8=select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,\'/\',-2) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ`) AS `read_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE`) AS `write_latency`,format_pico_time(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC`) AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0),0)) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where `performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like \'wait/io/file/%\' and `performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0 order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc
mariadb-version=110402
