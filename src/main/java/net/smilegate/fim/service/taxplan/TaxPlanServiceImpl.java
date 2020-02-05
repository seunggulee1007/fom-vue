package net.smilegate.fim.service.taxplan;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import net.smilegate.fim.mappers.my.TaxScheduleMapper;

@Service
public class TaxPlanServiceImpl implements TaxPlanService {

    @Value("${nts.url}")
    private String NTS_URL;             // 국세청 url 주소
    
    @Autowired 
    private TaxScheduleMapper taxScheduleMapper;
    
    public void getNtsInfo() {
        taxScheduleMapper.deleteTaxSchedule();
        e: for(int i=1; i< 13; i++) {      // 1월 부터 12월까지 가져오는게 목적이므로 하드코딩
            String url = NTS_URL+i;
            Document doc = null;
            
            try { 
                doc = Jsoup.connect(url).get();
            }catch (IOException e) {
                e.printStackTrace();
            }
            
            String [] titleList = {"taxMonth", "taxDay", "taxPlan", "note"};
            
            Elements elements = doc.select("article.contents");                                     // 해당 정보가 있는 최상단 엘리먼트
            
            Map<String, Object> map;
            
            for(Element element : elements.select("table.tb_grey_list > tbody > tr")) {             // 각 로우별 정보를 저장하기 위해 tr까지
                map = new HashMap<String, Object>();
                for(int j=0; j< element.select("td").size(); j++) {
                    String text = element.select("td").get(j).text().replaceAll("\'", "\''");       // database에 싱글 쿼터가 들어가면 에러가 나기 때문에 싱글 쿼터를 하나 더 붙여주는 작업
                    map.put(titleList[j], text);                                                    // 순서별로 월, 일, 일정, 비고
                }
                
                  if(taxScheduleMapper.insertTaxSchedule(map) < 1) { // 실패시 전체 끝 
                      break e; 
                  }
                 
            }
            
        }
    }
    
    /**
     * 인덱스 페이지 조회
     */
    public Map<String, Object> getTaxPlan() {
        Map<String, Object> map = new HashMap<>();
        map.put("taxPlanList", taxScheduleMapper.selectTaxScheduleByIndex());
        return map;
    }
    
}
