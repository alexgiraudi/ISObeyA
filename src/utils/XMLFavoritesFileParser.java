package utils;

 
import java.util.ArrayList;
 
import java.io.File;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;

public class XMLFavoritesFileParser {
	
	public ArrayList<String> ImportXML()
	{
		 ArrayList<String> tabResult = new ArrayList<String>();
		try 
		{
			 
			
            String TemplateJSP = " <li class='show-page-loading-msg' data-mini='true'><a href='xxxx'><p>#ProjectName</p><span style='color:green' class='ui-li-count'>#Status</span></a> </li>";
			
			
			 File inputFile = new File("D:\\Data\\Configuration\\Favorites-projects.xml");
	         DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
	         DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
	         Document doc = dBuilder.parse(inputFile);
	         doc.getDocumentElement().normalize();
	         System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
	         NodeList nList = doc.getElementsByTagName("Project");
	         System.out.println("----------------------------");
	         for (int temp = 0; temp < nList.getLength(); temp++) {
	            Node nNode = nList.item(temp);
	            System.out.println("\nCurrent Element :" + nNode.getNodeName());
	            if (nNode.getNodeType() == Node.ELEMENT_NODE) {
	               Element eElement = (Element) nNode;
	               System.out.println("Student roll no : " + eElement.getAttribute("Id"));
	               System.out.println("Student roll no : " + eElement.getAttribute("Name"));
	               System.out.println("Student roll no : " + eElement.getAttribute("Description"));
	               System.out.println("Student roll no : " + eElement.getAttribute("Status"));
	               System.out.println("Student roll no : " + eElement.getAttribute("Domain"));
	               System.out.println("Student roll no : " + eElement.getAttribute("Country"));
	               System.out.println("Student roll no : " + eElement.getAttribute("SFU"));
	               System.out.println("Student roll no : " + eElement.getAttribute("ProjectLeader"));
	               System.out.println("Student roll no : " + eElement.getAttribute("DALeader"));
	            
				   String NewLine = TemplateJSP;
				   
				   NewLine=NewLine.replaceAll("#Project", eElement.getAttribute("Name"));
				   NewLine=NewLine.replaceAll("#Status", eElement.getAttribute("Status"));
				   tabResult.add(NewLine);
	            }
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
		return tabResult;

		}

}
