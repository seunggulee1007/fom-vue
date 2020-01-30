package net.smilegate.common.vo;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import net.smilegate.common.enums.AlertType;

/**
 * 그룹웨어 메일 서비스
 * 테이블에 데이터를 입력하면 메일 발송
 * @table EKP_WORKFLOW.dbo.ALERT_QUEUE
 * @author dooykang
 *
 */
@Data
public class AlertQueue {
    private String createDate;
    private String updateDate;
    private String sendDate;
    private int alertStatus;
    private AlertType alertType;
    private String fromId;
    private String fromName;
    private String fromMail;
    private String toId;
    private String toName;

    @ApiModelProperty(value = "받는사람", required = true)
    @Email
    private String toMail;

    @ApiModelProperty(value = "제목", required = true)
    @NotNull
    private String alertSubject;

    @ApiModelProperty(value = "본문", required = true)
    @NotNull
    private String alertMessage;
    private String appType;
    private String appId;
    private int priority;
}
