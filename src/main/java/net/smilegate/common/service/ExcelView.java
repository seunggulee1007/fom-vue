package net.smilegate.common.service;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.servlet.view.document.AbstractXlsxStreamingView;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;
import net.sf.jxls.transformer.XLSTransformer;

@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ExcelView extends AbstractXlsxStreamingView {
	// 클래스패스에 있는 Resource 경로
	@Builder.Default
	private String templateLocation = "/excel/dynamicTemplate.xlsx";

	@Autowired
	private ExcelUploadService excelUploadService;

	@Override
	protected void buildExcelDocument(final Map<String, Object> model, final Workbook workbook,
			final HttpServletRequest request, final HttpServletResponse response) throws Exception {

		ClassPathResource templateResource = new ClassPathResource(templateLocation);
		String filename = templateResource.getFile().getAbsolutePath();
		
		try (InputStream is = templateResource.getInputStream(); OutputStream os = response.getOutputStream();) {
			response.setHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_OCTET_STREAM_VALUE);
			response.setHeader(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=template.xlsx");
			XLSTransformer transformer = new XLSTransformer();
			Workbook excel = transformer.transformXLS(is, model);
			excel.write(os);
			os.flush();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
		
	}
}