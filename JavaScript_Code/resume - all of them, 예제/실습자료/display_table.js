xmlDoc=loadXMLDoc("faculty.xml");

x = xmlDoc.documentElement;
y = xmlDoc.documentElement.childNodes;

function display_items()
{
	document.writeln("<!DOCTYPE html>");
	document.writeln("<html><body>");
	for ( i = 0; i < y.length; i++ )
	{
		if (y[i].nodeType != 3)
		{
    		document.writeln( "<table border=1 width=80% align=center>" );
			// PROFESSOR 엘리먼트의 모든 자식노드를 탐색
			for ( z = 0; z < y[i].childNodes.length; z++ )
			{
		    	if (y[i].childNodes[z].nodeType != 3)
				{
					document.writeln( "<tr>" );
					// 각 자식노드의 노드이름 출력
					document.writeln( "<td align='center'><strong>" + y[i].childNodes[z].nodeName + "</strong></td>" );
					// 노드값 프린트
					document.writeln( "<td>" + y[i].childNodes[z].childNodes[0].nodeValue + "</td>" );
					document.writeln( "</tr>" );
				}
			}
			document.write("</table><br>");
		}
		document.writeln("</body></html>");
	}
}

