package net.smilegate.fim.util;

import java.io.StringReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilderFactory;

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
    public static String getDate(String format) {
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
    
}
