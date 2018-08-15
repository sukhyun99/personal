package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;

public class DownloadView extends AbstractView{
	
	private File file;
	
	public DownloadView(File file) {
		setContentType("applicationContext/download; UTF-8");
		this.file = file;
	}

	@Override
	protected void renderMergedOutputModel(Map<String, Object> arg0, HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		resp.setContentType(getContentType());
		resp.setContentLength((int) file.length());
		String userAgent = req.getHeader("User-Agent");
		boolean ie = userAgent.indexOf("MSIE") > -1;
		String fileName;
		if(ie) {			
			fileName = URLEncoder.encode(file.getName(), "UTF-8");
		}
		else {			
			fileName = String.valueOf(file.getName().getBytes("UTF-8"));						
		}
		resp.setHeader("Content-Disposition", "attachment; filename=\" "+ fileName + "\";");
		resp.setHeader("Content-Transfer-Encoding", "binary");
		OutputStream out = resp.getOutputStream();
		FileInputStream fis = null;
		try {
			fis = new FileInputStream(file);
			FileCopyUtils.copy(fis, out);
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if(fis!=null) {
				try {
					fis.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}				
			}
		}
		out.flush();	
	}
}
