package com.sinosoft.one.monitor.application.repository;

import com.sinosoft.one.data.jade.annotation.SQL;
import com.sinosoft.one.monitor.application.model.RequestPerMinute;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * 每分钟请求数持久化类
 * User: carvin
 * Date: 13-3-4
 * Time: 下午4:57
 */
public interface RequestPerMinuteRepository extends PagingAndSortingRepository<RequestPerMinute, String> {
	@SQL("SELECT * FROM ge_monitor_request_per_minute t WHERE t.application_id=?1 and t.record_time >= ?2 AND t.record_time <= ?3")
	List<RequestPerMinute> selectRequestPerMinutes(String applicationId, Date startDate, Date endDate);

    @SQL("delete from ge_monitor_request_per_minute where RECORD_TIME<?1")
    void deleteByStartTime(Date startTime);

    @SQL("SELECT * FROM ge_monitor_request_per_minute t WHERE t.application_id=?1 and t.record_time = ?2")
    RequestPerMinute selectRequestPerMinute(String applicationId, Date currHour);
}
