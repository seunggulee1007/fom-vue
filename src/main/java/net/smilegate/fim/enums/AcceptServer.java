package net.smilegate.fim.enums;

/**
 * 접근 가능 서버 설정 (추후 ip로 변경 될 수 있음)
 * @author es-seungglee
 *
 */
public enum AcceptServer {
    
    FIM("fim")
    ,EXERP("exerp")
    ,HELPDESK("helpdesk")
    ,JFT("jft")
    ,MDI("mdi")
    ;
    private final String serverName;
    
    AcceptServer(String serverName) {
        this.serverName = serverName;
    }
    
    public String getServerName() {
        return serverName;
    }
    
    public static AcceptServer getServers(String serverName) {
        for(AcceptServer server : values()) {
            if(serverName.equals(server.getServerName())) {
                return server;
            }
        }
        return null;
    }
    
}
