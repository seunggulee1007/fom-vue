package net.smilegate.common.util;

import org.apache.commons.lang3.StringUtils;

public class StringUtil extends StringUtils {
	
	/**
	 * <P>Checks if input value is null</P>
	 * 
	 * <pre>
	 * StringUtil.nvl(String)	= String
	 * StringUtil.nvl(Null)		= null
	 * </pre>
	 * 
	 * @param String
	 * @return String or null
	 */
    public static String nvl(String str) {
    	return str == null ? "" : str;
    }
    
    /**
     * <P>Checks if input value is null</P>
     * 
     * <pre>
     * StringUtil.nvl(String, String)	= String
     * StringUtil.nvl(null, String)		= null
     * 
     * @param str
     * @param returnStr
     * @return String or null
     */
    public static String nvl(String str, String returnStr) {
    	return str == null ? returnStr : str;
    }
    
    /**
     * <P>Checks if input value is null</P>
     * 
     * <pre>
     * StringUtil.nvl(String[] array)	= 
     * 
     * @param array
     * @return
     */
    public static String[] nvl(String[] array) {
    	return array == null ? new String[0] : array;
    }
}
