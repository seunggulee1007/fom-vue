package net.smilegate.common.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Builder
@Getter
public class ExternalAccount {
    private String applicant;
    private String reason;
    private String targetName;
    private String targetId;
    private String targetPasswd;
}
