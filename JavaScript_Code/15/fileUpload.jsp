<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>파일 업로드 처리</title>
</head>
<body>

<h2> 파일 업로드 예제</h2><hr>
<%@ page import = "org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import = "org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import = "org.apache.commons.fileupload.FileItem" %>
<%@ page import = "java.io.File" %>
<%@ page import = "java.io.IOException" %>
<%@ page import = "java.util.List" %>

<%
	//업로드된 파일이 저장되는 폴더
	String strSaveDir = getServletContext().getRealPath("uploadStorage");
	File saveDir = new File(strSaveDir);
    out.println("업로드되는 파일이 저장될 폴더 : <br>" + saveDir.getPath() + "<p>");
    
	//업로드에 필요한 임시 폴더
	String strTempDir = getServletContext().getRealPath("temp");
	File tempDir = new File(strTempDir);
    if ( !tempDir.exists() ) tempDir.mkdir();
    out.println("업로드를 위한 임시 폴더 : <br>" + tempDir.getPath() + "<br><hr>");
	
    if (ServletFileUpload.isMultipartContent(request)) {  
		// Create a factory for disk-based file items
        //DiskFileItemFactory factory = new DiskFileItemFactory(1024*100, tempDir);
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(1024*100);
        factory.setRepository(tempDir);

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);
        // Set overall request size constraint
        upload.setSizeMax(1024*1024);
        
        // request를 분석해 각 항목으로 처리 
        List<FileItem> items = upload.parseRequest(request);
        out.println("<h3> 업로드 처리 결과  </h3> <p><hr>");     	
        for ( FileItem fileItem : items ) {  
			//일반 인자와 파일업로드 인자를 구분하여 처리 
            if (fileItem.isFormField()) {
                // 파일 이외의 파라미터 내용 출력
                out.println(fileItem.getFieldName() + " : " + fileItem.getString("euc-kr") + "<p><hr>");
            } else {
                // 업로드한 파일이 존재하는 경우
                if ( fileItem.getSize() > 0) {	
                	//파일 이름만 추출하여 fileName에 저장
                    String fileName = new File( fileItem.getName() ).getName();
                    //업로드파일 저장 폴더 생성 
                    if ( !saveDir.exists() ) saveDir.mkdir();
                    
                    try {
                        File uploadedFile = new File(saveDir, fileName);
                    	//같은 이름이 이미 있으면 현재 시간정보를 뒤에 붙인 파일 이름으로 저장   
                        if ( uploadedFile.exists() ) {
                        	java.util.Date now = new java.util.Date();
                        	String newFileName = fileName + "-" + now.getTime();
                        	uploadedFile = new File(saveDir, newFileName);
                            out.println("이름이 같은 파일이 이미 있어 다음 파일 이름으로 수정하였습니다. <br>");
                            out.println("이전 파일 이름 : " + fileName + ", ");
                            out.println("수정 파일 이름 : " + newFileName + "<p>");
                        }
                        //업로드 파일 저장
                        fileItem.write(uploadedFile);
                        out.println("업로드 폴더 위치 : " + saveDir.getPath() + "<br>");
                        out.println("업로드 파일 이름 : " + uploadedFile.getName() + "<p><hr>");
                    } catch(IOException e) {
                        // 예외 처리
                        out.println(e.toString());
                    }
                }
            }  
        }
    }
%>        

</body>
</html>