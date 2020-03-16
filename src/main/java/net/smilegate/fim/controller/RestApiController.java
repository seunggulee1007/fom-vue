package net.smilegate.fim.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.FormHttpMessageConverter;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

@Controller
public class RestApiController {

	/**
	 * API호출한다.
	 *
	 * @param url API주소.
	 * @param param 파라미터.
	 * @return
	 * @throws RestClientException
	 * @throws URISyntaxException
	 * @throws ParseException
	 * @throws HttpClientErrorException
	 * @throws NoSuchAlgorithmException
	 * @throws KeyManagementException
	 */
    public JSONObject doExecApi(String url, Map param)  throws RestClientException, URISyntaxException, ParseException, HttpClientErrorException, KeyManagementException, NoSuchAlgorithmException {

    	disableSslVerification();

    	JSONObject rtnJson = new JSONObject();
        List<HttpMessageConverter<?>> converters = new ArrayList<HttpMessageConverter<?>>();
        converters.add(new FormHttpMessageConverter());
        converters.add(new StringHttpMessageConverter());

        RestTemplate restTemplate = new RestTemplate();
        restTemplate.setMessageConverters(converters);

        HttpHeaders headers = new HttpHeaders();
        Charset charset = Charset.forName("UTF-8");
        MediaType mediaType = new MediaType(MediaType.APPLICATION_JSON, charset);

        headers.setContentType(mediaType);

        JSONObject jsObj = new JSONObject();
        jsObj.putAll(param);

//        log.debug(jsObj.toJSONString());

        HttpEntity requestEntity =  new  HttpEntity ( jsObj.toJSONString(), headers);

        ResponseEntity entity = restTemplate.exchange(url, HttpMethod.POST, requestEntity, String.class);


//        log.debug("------------------ 결과 ------------------");
//        log.debug(entity.getBody().toString());
//        log.debug("");

        JSONParser parser = new JSONParser();

        rtnJson = (JSONObject) parser.parse(entity.getBody().toString());

        return rtnJson;
    }

    /**
     * SSL SecurityException 방어코드.
     * @throws NoSuchAlgorithmException
     * @throws KeyManagementException
     */
    private static void disableSslVerification() throws NoSuchAlgorithmException, KeyManagementException {
    	// Create a trust manager that does not validate certificate chains
    	TrustManager[] trustAllCerts = new TrustManager[] {
    			new X509TrustManager() {

    				@Override
    				public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
    					// TODO Auto-generated method stub

    				}

    				@Override
    				public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
    					// TODO Auto-generated method stub

    				}

    				@Override
    				public X509Certificate[] getAcceptedIssuers() {
    					// TODO Auto-generated method stub
    					return null;
    				}

    			}
    	};

    	// Install the all-trusting trust manager
    	SSLContext sc = SSLContext.getInstance("SSL");
    	sc.init(null, trustAllCerts, new java.security.SecureRandom());
    	HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());

    	// Create all-trusting host name verifier
    	HostnameVerifier allHostsValid = new HostnameVerifier() {

    		@Override
    		public boolean verify(String arg0, SSLSession arg1) {
    			// TODO Auto-generated method stub
    			return true;
    		}
    	};

    	// Install the all-trusting host verifier
    	HttpsURLConnection.setDefaultHostnameVerifier(allHostsValid);
    }
}
