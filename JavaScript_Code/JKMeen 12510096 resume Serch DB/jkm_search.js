﻿function loadXMLDoc(filename)
{
	if (window.XMLHttpRequest)
	{
	  xhttp=new XMLHttpRequest();
	}
	else // code for IE5 and IE6
	{
	  xhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	//xhttp.open("GET",filename,true);
	xhttp.open("GET",filename,false);
	xhttp.send();
	return xhttp.responseXML;
}

function find(element, searchkey){
	var key = searchkey;
	
	for (i=1; i<element.childNodes.length; i++){
		var curNode = element.childNodes( i );
		switch (i){
			case 1: var value = curNode.firstChild;
					if (value.nodeValue == key){
						return true;
					}
					break;
			case 2: var value1 = curNode.firstChild.firstChild;
					var value2 = curNode.lastChild.firstChild;
					if (value1.nodeValue == key || value2.nodeValue == key){
						return true;
					}
					break;

			case 3: var value = curNode.firstChild;
					var byear = value.firstChild;
					var bmonth = value.nextSibling.firstChild;
					var bday = value.nextSibling.nextSibling.firstChild;
					var age = value.nextSibling.nextSibling.nextSibling.firstChild;
					if (value.nodeValue == key || byear.nodeValue == key || bmonth.nodeValue == key || bday.nodeValue == key || age.nodeValue == key){
						return true;
					}
					break;

			case 4: var value = curNode.firstChild;
					if (value.nodeValue == key){
						return true;
					}
					break;

			case 5: var value = curNode.firstChild;
					var paren = value.firstChild;
					var parenname = value.nextSibling.firstChild;
					if (value.nodeValue == key || paren.nodeValue == key || parenname.nodeValue == key){
						return true;
					}
					break;

			default: var value = curNode.firstChild;
					var year = value.firstChild;
					var month = value.nextSibling.firstChild;
					var day = value.nextSibling.nextSibling.firstChild;
					var cont = value.nextSibling.nextSibling.nextSibling.firstChild;
					var org = value.nextSibling.nextSibling.nextSibling.nextSibling.firstChild;
					if (value.nodeValue == key || year.nodeValue == key || month.nodeValue == key || day.nodeValue == key || cont.nodeValue == key || org.nodeValue == key){
						return true;
					}
					break;
		}
	}
	return false;
}

function search(key){
	var xmlDocument = new ActiveXObject( 'MSXML.DOMDocument' );
	xmlDocument.load( 'JKMeen_resume.xml' );
	document.writeln("<body style='background-color:gray'>");
	document.writeln("<h1 align='center' style='font-family: Arial, Helvetica, sans-serif; color: #123456;'>Resume DB Homework</h1>" );
	document.writeln("<h3 align='center' style='font-family: Arial, Helvetica, sans-serif; color: #123456;'>12510096 조광민</h3>" );
	document.writeln("<br><p align='center' style='background-color:#89abcd; font-family: Arial, Helvetica, sans-serif; color: #ffffff;'>'"+key+"' 의 검색 결과</p>" );
	var count=0;
	var i=0;
	var searchkey = key;
	//for (i = 0; i < xmlDocument.documentElement.childNodes.length; i++ ){
	while (i<xmlDocument.documentElement.childNodes.length){
		var element = xmlDocument.documentElement.childNodes( i );
		
		if(find(element, searchkey) == true){
			count++; // 검색결과 수 증가
			
			document.writeln( "<table class='ResumeTable' align='center' width='800' border='2px' style='background-color:#dddddd; margin: 0 5%; border-collapse:collapse; border:medium'>" );
		
				document.writeln( "<tr height='20' style='background-color:silver;'>" );
					document.writeln( "<td width='6' style='width:2%; padding:0; border:solid windowtext 1.5pt;'></td>" );
			
					var attributes = element.attributes;
				    var personID = attributes.getNamedItem('ID');
					document.writeln( "<td width='588' colspan='10' align='center' style='width:96%; padding:0; border:solid windowtext 1.5pt;'>"+personID.value+"</td>" );
			
					document.writeln( "<td width='6' style='width:2%; padding:0; border:solid windowtext 1.5pt;'></td>" );
				document.writeln( "</tr>" );
			
				// Title Resum / avoid : 인쇄시 페이지 자동분리를 막아줌
				document.writeln( "<tr style='page-break-inside:avoid;'>" );
					document.writeln( "<td rowspan='7' style='width:2%; background-color:silver;  padding:0%; border:solid windowtext 1.5pt; border-bottom:none; border-top:none;'></td>" );
					
					// 사진
					document.writeln( "<td colspan='3' rowspan='4' style='width:20%; padding:0; border:solid windowtext 1.5pt;'>" );
						document.writeln( "<p class='a' align='center' style='text-align:center'>" );
			
							var img_set = element.childNodes( 0 );
							var img_a = img_set.src;
							//var img_a = document.getElementById('src');
							document.writeln( "<p>"+img_a+"</p>" );
							document.writeln( "<img style='width:121; height:150'>"+img_a+"</img>" );
			
						document.writeln( "</p>" );
					document.writeln( "</td>" );
					
					// 제목
					document.writeln( "<th height='30' colspan='7' style='width:76%; background-color:rgba(133, 133, 133, 0.5);  border:solid windowtext 1.5pt; padding:0%;'>" );
						document.writeln( "<p class='a' align='center' style='text-align:center'>" );
			
							var curNode = element.childNodes.item( 1 );
						    var value = curNode.firstChild;
							document.writeln( "<p style='font-size:30px; margin:0 0 -20 0;'> '" + value.nodeValue + "' Resume </p>" );
							
						document.writeln( "</p>" );
					document.writeln( "</th>" );
					
					document.writeln( "<td width='6' rowspan='7' style='width:2%; background-color:silver;  padding:0%; border:solid windowtext 1.5pt; border-bottom:none; border-top:none;'></td>" );
					
				document.writeln( "</tr>" );
					
					
				// 성명 / 주민번호
				document.writeln( "<tr style='page-break-inside:avoid;'>" );
				
					// 성명
					document.writeln( "<th rowspan='2' style='width:15%; padding:0%; border:solid windowtext 1.5pt;'>" );
						document.writeln( "<p class='a' align='center' style='text-align:center;word-break:keep-all'>" );
							document.writeln( "<span style='font-family:함초롬돋움; font-size:11.0pt;'>성명</span>" );
						document.writeln( "</p>" );
					document.writeln( "</th>" );
				
					// 성명 작성
					document.writeln( "<td colspan='3' rowspan='2' style='width:35%; padding:0%; border:solid windowtext 1.5pt;'>" );
						document.writeln( "<p class='a' align='right' style='margin-right:10%; text-align:right; word-break:keep-all'>" );
			
							var curNode = element.childNodes( 1 );
						    var value = curNode.firstChild;
							document.writeln( "<span style='font-size:11.0pt;'><b>"+ value.nodeValue + "</b> (인)</span>");
			
						document.writeln( "</p>" );
					document.writeln( "</td>" );
					
					// 주민등록번호
					document.writeln( "<th colspan='3' style='width:46%; padding:0%; border:solid windowtext 1.5pt;'>" );
						document.writeln( "<p class='a' align='center' style='text-align:center; word-break:keep-all'>" );
							document.writeln( "<span style='font-family:함초롬돋움; font-size:11.0pt;'>주민등록번호</span>" );
						document.writeln( "</p>" );
					document.writeln( "</th>" );
					
				document.writeln( "</tr>" );
				
				
				// 주민등록번호 작성
				document.writeln( "<tr style='page-break-inside:avoid;'>" );
				
					document.writeln( "<td height='20' colspan='3' style='width:46%; padding:0%; border:solid windowtext 1.5pt;'>" );
						document.writeln( "<p class='a' align='center' style='text-align:center;word-break:keep-all'>" );
			
							var curNode = element.childNodes( 2 );
						    var value1 = curNode.firstChild.firstChild;
						    var value2 = curNode.lastChild.firstChild;
							document.writeln( "<span lang='en-us' style='font-size:11.0pt;'>"+ value1.nodeValue + ' - ' + value2.nodeValue +"</span>" );
						document.writeln( "</p>" );
					document.writeln( "</td>" );
					
				document.writeln( "</th>" );
				
				
				// 생년월일
				document.writeln( "<tr style='page-break-inside:avoid; height:35pt;'>" );
				
					// 생년월일
					document.writeln( "<th width='101' style='width:15%; padding:0%; border:solid windowtext 1.5pt;'>" );
						document.writeln( "<p class='a' align='center' style='text-align:center;word-break:keep-all'>" );
							document.writeln( "<span style='font-family:함초롬돋움; font-size:11.0pt;'>생년월일</span>" );
						document.writeln( "</p>" );
					document.writeln( "</th>" );
					
					// 생년월일 작성
					document.writeln( "<td colspan='6' style='width:85%; padding:0%; border:solid windowtext 1.5pt; height:35pt;'>" );
						document.writeln( "<p class='a' align='left' style='margin-left:10.0pt;text-align:left'>" );
			
							var curNode = element.childNodes( 3 );
							var value = curNode.firstChild;
						    var byear = value.firstChild;
						    var bmonth = value.nextSibling.firstChild;
						    var bday = value.nextSibling.nextSibling.firstChild;
						    var age = value.nextSibling.nextSibling.nextSibling.firstChild;
			
							document.writeln( "<span lang='en-us' style='font-size:11.0pt;'>" + byear.nodeValue + " 년  " + bmonth.nodeValue + " 월  " + bday.nodeValue + " 일  " + "만 " + age.nodeValue + " 세" + "</span>" );
								
						document.writeln( "</p>" );
					document.writeln( "</td>" );
					
				document.writeln( "</th>" );
				
				
				// 주소
				document.writeln( "<tr style='page-break-inside:avoid; height:35pt;'>" );
				
					//document.writeln( "<td width='6'  style='width:2%; background-color:silver;  padding:0%; border:solid windowtext 1.5pt; border-bottom:none; border-top:none;'></td>" );
					
					// 주소
					document.writeln( "<th colspan='3' style='width:20%; background-color:rgba(133, 133, 133, 0.5);  padding:0%; border:solid windowtext 1.5pt;'>" );
						document.writeln( "<p class='a' align='center' style='text-align:center'>" );
							document.writeln( "<span style='font-family:함초롬돋움; font-size:11.0pt;'>주소</span>" );
						document.writeln( "</p>" );
					document.writeln( "</th>" );
					
					// 주소 입력
					document.writeln( "<td colspan='7' style='width:76%; padding:0%; border:solid windowtext 1.5pt;'>" );
			
						var curNode = element.childNodes.item( 4 );
						var value = curNode.firstChild;
						document.writeln( "<p class='a' align='center' style='text-align:center'>"+ value.nodeValue +"</p>" );
			
					document.writeln( "</td>" );
					
					//document.writeln( "<td width='6' style='width:2%; background-color:silver;  padding:0%; border:solid windowtext 1.5pt; border-bottom:none; border-top:none;'></td>" );
					
				document.writeln( "</tr>" );
					
					
				// 호적
				document.writeln( "<tr style='height:35pt'>" );
					
					document.writeln( "<th colspan='3' style='width:20%; background-color:rgba(133, 133, 133, 0.5);  padding:0%; border:solid windowtext 1.5pt;'>" );
						document.writeln( "<p class='a' align='center' style='text-align:center'>" );
							document.writeln( "<span style='font-family:함초롬돋움; font-size:11.0pt;'>호적</span>" );
						document.writeln( "</p>" );
					document.writeln( "</th>" );
					
					// 호주와의 관계
					document.writeln( "<th style='width:15%; padding:0%; border:solid windowtext 1.5pt;'>" );
						document.writeln( "<p class='a' align='center' style='text-align:center'>" );
							document.writeln( "<span style='font-family:함초롬돋움; font-size: 11.0pt;'>호적 관계</span>" );
						document.writeln( "</p>" );
					document.writeln( "</th>" );
					
					// 호주와의 관계 입력
					document.writeln( "<td colspan='2' style='width:25%; padding:0%; border:solid windowtext 1.5pt;'>" );
						document.writeln( "<p class='a' align='center' style='text-align:center'>" );
						
							var curNode = element.childNodes( 5 );
							var value = curNode.firstChild;
							var paren = value.firstChild;
							var parenname = value.nextSibling.firstChild;
							document.writeln( "<span lang='en-us' style='font-size:11.0pt;line-height:123%'>"+ paren.nodeValue + "</span>" );
						document.writeln( "</p>" );
					document.writeln( "</td>" );
					
					// 호주 성명
					document.writeln( "<th style='width:15%; padding:0%; border:solid windowtext 1.5pt;'>" );
						document.writeln( "<p class='a' align='center' style='text-align:center'>" );
							document.writeln( "<span style='font-family:함초롬돋움; font-size:11.0pt;'>호주성명</span>" );
						document.writeln( "</p>" );
					document.writeln( "</th>" );
			
					// 호주 성명 입력
					document.writeln( "<td colspan='3' style='width:25%; padding:0%; border:solid windowtext 1.5pt;'>" );
						document.writeln( "<p class='a' align='center' style='text-align:center'>" );
							document.writeln( "<span lang='en-us' style='font-size:11.0pt;line-height:123%'>"+ parenname.nodeValue + "</span>" );
						document.writeln( "</p>" );
					document.writeln( "</td>" );
			
				document.writeln( "</tr>" );
				
				
				// 공백
				document.writeln( "<tr style='height:15pt; background-color:silver; '>" );
					document.writeln( "<td width='6' colspan='11' style='width:2%; padding:0%; border:solid windowtext 1.5pt; border-bottom:none; border-top:none;'></td>" );
				document.writeln( "</tr>" );
				
				
				// 학력 및 경력사항
				document.writeln( "<tr style='height:20pt;'>" );
				
					document.writeln( "<td width='6' style='width:2%; background-color:silver;  padding:0%; border:solid windowtext 1.5pt; border-bottom:none; border-top:none;'></td>" );
					
					// 년 월 일
					document.writeln( "<th style='width:7%; background-color:rgba(133, 133, 133, 0.5);  padding:0%; border:solid windowtext 1.5pt; border-right:dashed windowtext 1.5pt;'>" );
						document.writeln( "<p class='a' align='center' style='text-align:center'>" );
							document.writeln( "<span style='font-family:함초롬돋움; font-size: 11.0pt; text-align:center;'>년</span>" );
						document.writeln( "</p>" );
					document.writeln( "</th>" );
					
					document.writeln( "<th style='width:7%; background-color:rgba(133, 133, 133, 0.5); padding:0%; border:solid windowtext 1.5pt; border-left:dashed windowtext 1.5pt; border-right:dashed windowtext 1.5pt;'>" );
						document.writeln( "<p class='a' align='center' style='text-align:center'>" );
							document.writeln( "<span style='font-family:함초롬돋움; font-size: 11.0pt; text-align:center;'>월</span>" );
						document.writeln( "</p>" );
					document.writeln( "</th>" );
					
					document.writeln( "<th style='width:7%; background-color:rgba(133, 133, 133, 0.5); padding:0%; border:solid windowtext 1.5pt; border-left:dashed windowtext 1.5pt; border-right:dashed windowtext 1.5pt;'>" );
						document.writeln( "<p class='a' align='center' style='text-align:center'>" );
							document.writeln( "<span style='font-family:함초롬돋움; font-size: 11.0pt; text-align:center;'>일</span>" );
						document.writeln( "</p>" );
					document.writeln( "</th>" );
				
					// 학력 및 경력사항
					document.writeln( "<th colspan='4' style='width:50%; background-color:rgba(133, 133, 133, 0.5); padding:0%; border:solid windowtext 1.5pt;'>" );
						document.writeln( "<p class='a' align='center' style='text-align:center'>" );
							document.writeln( "<span style='font-family:함초롬돋움; font-size:11.0pt;'>학력 및 경력사항</span>" );
						document.writeln( "</p>" );
					document.writeln( "</th>" );
					
					// 발령청
					document.writeln( "<th colspan='3' style='width:25%; background-color:rgba(133, 133, 133, 0.5); padding:0%; border:solid windowtext 1.5pt;'>" );
						document.writeln( "<p class='a' align='center' style='text-align:center'>" );
							document.writeln( "<span style='font-family:함초롬돋움; font-size:11.0pt;'>발령청</span>" );
						document.writeln( "</p>" );
					document.writeln( "</th>" );
					
					document.writeln( "<td width='6' style='width:2%; background-color:silver;  padding:0%; border:solid windowtext 1.5pt; border-bottom:none; border-top:none;'></td>" );
					
				document.writeln( "</tr>" );
				
				
				/* 내용 추가 루프*/
				for ( j = 6; j < element.childNodes.length; j++  ) {
				//document.writeln( "<xsl:for-each select="학력">" );
					//document.writeln( "<xsl:sort select="@번호" order="ascending"/>
					var curNode = element.childNodes( j );
					var value = curNode.firstChild;
					var year = value.firstChild;
					var month = value.nextSibling.firstChild;
					var day = value.nextSibling.nextSibling.firstChild;
					var cont = value.nextSibling.nextSibling.nextSibling.firstChild;
					var org = value.nextSibling.nextSibling.nextSibling.nextSibling.firstChild;
					
					document.writeln( "<tr style='height:32.65pt'>" );
										
						document.writeln( "<td width='6' style='width:2%; background-color:silver;  padding:0%; border:solid windowtext 1.5pt; border-bottom:none; border-top:none;'></td> " );
											  
						document.writeln( "<td style='width:7%; padding:0; border:solid windowtext 1.5pt; border-right:dashed windowtext 1.5pt;'>" );
							document.writeln( "<p class='a' align='center' style='text-align:center'>" );
								document.writeln( "<span lang='EN-US' style='font-size:10.0pt;line-height:123%'>"+ year.nodeValue+"</span>" );
							document.writeln( "</p>" );
						document.writeln( "</td>" );
											
						document.writeln( "<td style='width:7%; padding:0; border:solid windowtext 1.5pt; border-left:dashed windowtext 1.5pt; border-right:dashed windowtext 1.5pt;'>" );
							document.writeln( "<p class='a' align='center' style='text-align:center'>" );
								document.writeln( "<span lang='EN-US' style='font-size:10.0pt;line-height:123%'>"+ month.nodeValue+"</span>" );
							document.writeln( "</p>" );
						document.writeln( "</td>" );
											
						document.writeln( "<td style='width:7%; padding:0; border:solid windowtext 1.5pt; border-left:dashed windowtext 1.5pt;'>" );
							document.writeln( "<p class='a' align='center' style='text-align:center'>" );
								document.writeln( "<span lang='EN-US' style='font-size:10.0pt;line-height:123%'>"+ day.nodeValue+"</span>" );
							document.writeln( "</p>" );
						document.writeln( "</td>" );
											
						document.writeln( "<td colspan='4' style='width:50%; padding:0; border:solid windowtext 1.5pt;'>" );
							document.writeln( "<p class='a' align='center' style='text-align:center'>" );
								document.writeln( "<span lang='EN-US' style='font-size:10.0pt;line-height:123%'>"+ cont.nodeValue+"</span>" );
							document.writeln( "</p>" );
						document.writeln( "</td>" );
											
						document.writeln( "<td colspan='3' style='width:25%; padding: 0; border:solid windowtext 1.5pt;'>" );
							document.writeln( "<p class='a' align='center' style='text-align:center'>" );
								document.writeln( "<span lang='EN-US' style='font-size:10.0pt;line-height:123%'>"+ org.nodeValue+"</span>" );
							document.writeln( "</p>" );
						document.writeln( "</td>" );
											
						document.writeln( "<td width='6' style='width:2%; background-color:silver; padding:0%; border:solid windowtext 1.5pt; border-bottom:none; border-top:none;'></td>" );
					document.writeln( "</tr>" );
				}
				
				
				// bottom 여백
				document.writeln( "<tr height='20' style='background-color:silver;'>" );
					document.writeln( "<td width='6' style='width:2%; padding:0; border:solid windowtext 1.5pt;'></td>" );
					document.writeln( "<td width='588' colspan='10' style='width:96%; padding:0; border:solid windowtext 1.5pt;'></td>" );
					document.writeln( "<td width='6' style='width:2%; padding:0; border:solid windowtext 1.5pt;'></td>" );
				document.writeln( "</tr>" );
				
				
				document.writeln( "<tr height='70' style='background-color:gray;'>" );
					document.writeln( "<td width='588' colspan='12' style='width:96%; padding:0; border:none 1.5pt;'></td>" );
				document.writeln( "</tr>" );
				
			document.writeln( "</table>" );
		}
		i++;
	}
	
	   document.writeln( "<p align='center' style='background-color:#89abcd; font-family: Arial, Helvetica, sans-serif; color: #ffffff;'>" + count + "개의 이력서를 찾았습니다. </p>");
	document.writeln( "<br></body>" );
}

function home(){
   window.open("JKMeen_resume_home.html");
}	
