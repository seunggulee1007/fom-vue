package net.smilegate.fim.util;

import java.io.StringReader;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

public class CommonUtil {
    
    private CommonUtil() { throw new AssertionError();};

    /**
     * 포멧 에 따른 날짜 출력
     * @param format
     * @return
     */
    public static String getToday(String format) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
        String date = simpleDateFormat.format(new Date());
        return date;
    }
    
    /**
     * xml로 넘어온 데이터를 listMap으로 변환
     * @param xmlData
     * @return
     * @throws Exception
     */
    public static List<Map<String, String>> getCrnResultFromXml(String xmlData) throws Exception {
        
        // XML 파싱
        InputSource is =  new InputSource(new StringReader(new String(xmlData)));
        Document doc = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(is);
        doc.getDocumentElement().normalize();
        NodeList nodeList;
        Map<String, String> childNodeMap;
        List<Map<String, String>> xmlList = new ArrayList<>();
        String getNodeName;
        
        if(doc.getFirstChild().getChildNodes().getLength() > 0) {
            
            getNodeName = doc.getFirstChild().getFirstChild().getNodeName();
            nodeList = doc.getElementsByTagName(getNodeName);
            
            for(int i=0; i<nodeList.getLength(); i++) {
                
                NodeList childList = nodeList.item(i).getChildNodes();
                
                childNodeMap = new HashMap<String, String>();
                for (int j = 0; j < childList.getLength(); j++) {
                    String childnodename = childList.item(j).getNodeName();
                    String childnodevalue = childList.item(j).getTextContent();
                    
                    childNodeMap.put(childnodename, childnodevalue);
                }
                xmlList.add(childNodeMap);
            }
            
        }
        return xmlList;
    }
    
    /**
     * 사업자 번호 유효성 체크
     * @param str
     * @return boolean
     */
    public static boolean isBusinessId(String str) {
        String[] strs = str.split("");
        if (strs.length != 10) return false;
        int[] ints = new int[10];
        for(int i=0; i< strs.length; i++) {
            ints[i] = Integer.valueOf(strs[i]);
        }
        int sum = 0;
        int[] indexs = new int[] { 1, 3, 7, 1, 3, 7, 1, 3 };
        for (int i = 0; i < 8; i++) {
            sum += ints[i] * indexs[i];
        }
        int num = ints[8] * 5;
        sum += (num / 10) + (num % 10);
        sum = 10 - (sum % 10);
        if(sum== 10){
             return 0 == ints[9] ? true : false;
        }else{
             return sum == ints[9] ? true : false;
        }
    }

    /**
     * flag 가 true면 client ip, 아니면 web server 혹은 load balancer ip
     * @param flag
     * @return
     */
    public static String getClientIp(boolean flag) {
        HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
        String ip = request.getHeader("X-Forwarded-For");
        if (flag || ip == null) ip = request.getRemoteAddr();
        return ip;
    }
    
    public static String makeLikeCause(String str) {
        return "%"+str+"%";
    }
    
    public static boolean compareObject(Object obj, Object compareObj) throws IllegalArgumentException, IllegalAccessException {
        for(Field field : obj.getClass().getDeclaredFields()) {
            field.setAccessible(true);
            Object value = field.get(obj);
            String fieldName = field.getName();
            for(Field compareField : compareObj.getClass().getDeclaredFields()) {
                compareField.setAccessible(true);
                String compareFieldName = compareField.getName();
                if(value instanceof List) {
                    continue;
                }
                if(fieldName.equals(compareFieldName)) {
                    Object compareValue = compareField.get(compareObj);
                    if(value != null && !value.equals(compareValue)) {
                        return false;
                    }
                    continue;
                }
                
            }
        }
        return true;
    }
}
