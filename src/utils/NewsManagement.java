package utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class NewsManagement {
	
	protected String filenews ="";
	protected String News;
	protected List<String> listNews = new ArrayList<String>() ;
	protected List<String> listEmails = new ArrayList<String>() ;
	protected List<String> listAlerts = new ArrayList<String>() ;
	/**
	 * @return the filenews
	 */
	public String getFilenews() {
		return filenews;
	}
	/**
	 * @return the listNews
	 */
	public List<String> getListNews() {
		readnews();
		return listNews;
	}
	/**
	 * @param listNews the listNews to set
	 */
	public void setListNews(List<String> listNews) {
		this.listNews = listNews;
	}
	/**
	 * @param filenews the filenews to set
	 */
	public void setFilenews(String filenews) {
		this.filenews = filenews;
	}
	/**
	 * @return the news
	 */
	public String getNews() {
		return News;
	}
	
	
public void setEmail(String name) {
		
		if (name!=null && !name.isEmpty()){
		
			String lNews = "<li data-role='list-divider'>#date<span class='ui-li-count'>1</span></li><li><h3>#name</h3><p><strong>#subject</strong></p><p>#content</p><p class='ui-li-aside'><strong>#time</strong></p></li>";
			Date todaysDate = new java.util.Date();
			SimpleDateFormat formatter = new SimpleDateFormat("E yyyy.MM.dd");
			SimpleDateFormat ft = new SimpleDateFormat ("hh:mm:ss a");
			String formattedDate = formatter.format(todaysDate);
			lNews=lNews.replaceAll("#date", formattedDate);
			lNews=lNews.replaceAll("#name", name);
			lNews=lNews.replaceAll("#subject", "Welcome to the user " + name);
			lNews=lNews.replaceAll("#content", "New user subscribes since "+ formattedDate);
			lNews=lNews.replaceAll("#time", ft.format(todaysDate));
			
			//readEmails();
			listEmails.add(lNews);
			
			FileWriter fw;
			try {
				//URL url =this.getClass().getClassLoader().getResource("/tmp/news.txt");
				  File file = new File("/var/eWeatherWebAppFiles/subscribers.txt");
				fw = new FileWriter(file, true);
				BufferedWriter output = new BufferedWriter(fw);
				for (int i=0; i<listEmails.size();i++){
						output.write(listEmails.get(i).toString());
						output.newLine();
					}
				//on peut utiliser plusieurs fois methode write
				output.flush();
				//ensuite flush envoie dans le fichier, ne pas oublier cette methode pour le BufferedWriter
				output.close();
			} catch (IOException e) {
				
				System.err.println("Error1-NewsManagement: " + e.getMessage());
			}
		}
		
		
		
	}
	
public void setAlert(List<String> Justification, String alertFile) {
	
	if (Justification!=null && !Justification.isEmpty()){
	
		String lNews = "<li data-role='list-divider'>#date<span class='ui-li-count'>1</span></li><li><a href='WeatherWebApp-IphoneAlert.jsp?File=#alertFile'><h3>#name</h3><p><strong>#subject</strong></p><p>#content</p><p class='ui-li-aside'><strong>#time</strong></p></a></li>";
		Date todaysDate = new java.util.Date();
		SimpleDateFormat formatter = new SimpleDateFormat("E yyyy.MM.dd");
		SimpleDateFormat ft = new SimpleDateFormat ("hh:mm:ss a");
		String formattedDate = formatter.format(todaysDate);
		lNews=lNews.replaceAll("#date", formattedDate);
		lNews=lNews.replaceAll("#name", "New weather alert from " + Justification.get(0));
		lNews=lNews.replaceAll("#subject", Justification.get(1));
		lNews=lNews.replaceAll("#content", Justification.get(2));
		lNews=lNews.replaceAll("#time", ft.format(todaysDate));
		lNews=lNews.replaceAll("#alertFile", alertFile);
		
		//readAlerts();
		listAlerts.add(lNews);
		
		FileWriter fw;
		try {
		    File file = new File("/var/eWeatherWebAppFiles/alerts.txt");
			fw = new FileWriter(file, true);
			BufferedWriter output = new BufferedWriter(fw);
			for (int i=0; i<listAlerts.size();i++){
					output.write(listAlerts.get(i).toString());
					output.newLine();
				}
			//on peut utiliser plusieurs fois methode write
			output.flush();
			//ensuite flush envoie dans le fichier, ne pas oublier cette methode pour le BufferedWriter
			output.close();
		} catch (IOException e) {
			
			System.err.println("Error2-NewsManagement: " + e.getMessage());
		}
	}
}
	
	public void saveAlertInFile(StringBuffer Buffer, String alertFile) {
	
		
		FileWriter fw;
		try {
		    File file = new File("/var/eWeatherWebAppFiles/"+alertFile);
			fw = new FileWriter(file, true);
			BufferedWriter output = new BufferedWriter(fw);
			output.write(Buffer.toString());
			output.flush();
			output.close();
		} catch (IOException e) {
			System.err.println("Error3-NewsManagement: " + e.getMessage());
		}
	}
	
	public List<String> getAlertFromFile(String alertFile) {
	
		ArrayList<String> data = new ArrayList<String>();
		try{
			  
			  File file = new File("/var/eWeatherWebAppFiles/"+alertFile);
			  FileInputStream fstream = new FileInputStream(file);
			  // Get the object of DataInputStream
			  DataInputStream in = new DataInputStream(fstream);
			  BufferedReader br = new BufferedReader(new InputStreamReader(in));
			  String strLine;
			  //Read File Line By Line
			 
			  while ((strLine = br.readLine()) != null)   {
				  data.add(strLine);
				//System.out.println(strLine);
		  }
			  //Close the input stream
			  in.close();
		  }catch (Exception e){//Catch exception if any
		    	System.err.println("Error4-NewsManagement: " + e.getMessage());
		  }
	return data;
	}

	
	
	/**
	 * @param news the news to set
	 */
	public void setNews(String name, String subject, String content) {
		
		if (name!=null && !name.isEmpty()){
		
			String lNews = "<li data-role='list-divider'>#date<span class='ui-li-count'>1</span></li><li><h3>#name</h3><p><strong>#subject</strong></p><p>#content</p><p class='ui-li-aside'><strong>#time</strong></p></li>";
			Date todaysDate = new java.util.Date();
			SimpleDateFormat formatter = new SimpleDateFormat("E yyyy.MM.dd");
			SimpleDateFormat ft = new SimpleDateFormat ("hh:mm:ss a");
			String formattedDate = formatter.format(todaysDate);
			lNews=lNews.replaceAll("#date", formattedDate);
			lNews=lNews.replaceAll("#name", name);
			lNews=lNews.replaceAll("#subject", subject);
			lNews=lNews.replaceAll("#content", content);
			lNews=lNews.replaceAll("#time", ft.format(todaysDate));
			
			//readnews();
			listNews.add(lNews);
			
			FileWriter fw;
			try {
				//URL url =this.getClass().getClassLoader().getResource("/tmp/news.txt");
				  File file = new File("/var/eWeatherWebAppFiles/news.txt");
				fw = new FileWriter(file, true);
				BufferedWriter output = new BufferedWriter(fw);
				for (int i=0; i<listNews.size();i++){
						output.write(listNews.get(i).toString());
						output.newLine();
					}
				//on peut utiliser plusieurs fois methode write
				output.flush();
				//ensuite flush envoie dans le fichier, ne pas oublier cette methode pour le BufferedWriter
				output.close();
			} catch (IOException e) {
				
				System.err.println("Error5-NewsManagement: " + e.getMessage());
			}
		}
		
		
		
	}
	
	public List<String> readnews()
	  {
	  try{
			  // Open the file that is the first 
			  // command line parameter
			  //URL url =this.getClass().getClassLoader().getResource("/tmp/news.txt");
			  File file = new File("/var/eWeatherWebAppFiles/news.txt");
			  FileInputStream fstream = new FileInputStream(file);
			  // Get the object of DataInputStream
			  DataInputStream in = new DataInputStream(fstream);
			  BufferedReader br = new BufferedReader(new InputStreamReader(in));
			  String strLine;
			  //Read File Line By Line
			  listNews = new ArrayList<String>();
			  
			  while ((strLine = br.readLine()) != null)   {
				  listNews.add(strLine);
				//System.out.println(strLine);
		  }
			  //Close the input stream
			  in.close();
		  }catch (Exception e){//Catch exception if any
		    	System.err.println("Error6-NewsManagement: " + e.getMessage());
		  }
	return listNews;
	  }
	
	public List<String> readEmails()
	  {
	  try{
			  // Open the file that is the first 
			  // command line parameter
			  //URL url =this.getClass().getClassLoader().getResource("/tmp/news.txt");
			  File file = new File("/var/eWeatherWebAppFiles/subscribers.txt");
			  FileInputStream fstream = new FileInputStream(file);
			  // Get the object of DataInputStream
			  DataInputStream in = new DataInputStream(fstream);
			  BufferedReader br = new BufferedReader(new InputStreamReader(in));
			  String strLine;
			  
			  while ((strLine = br.readLine()) != null)   {
				  listEmails.add(strLine);
				//System.out.println(strLine);
		  }
			  //Close the input stream
			  in.close();
		  }catch (Exception e){//Catch exception if any
		    	System.err.println("Error7-NewsManagement: " + e.getMessage());
		  }
	return listEmails;
	  }
	
	public List<String> readAlerts()
	  {
	  try{
			  // Open the file that is the first 
			  // command line parameter
			  //URL url =this.getClass().getClassLoader().getResource("/tmp/news.txt");
			  File file = new File("/var/eWeatherWebAppFiles/alerts.txt");
			  FileInputStream fstream = new FileInputStream(file);
			  // Get the object of DataInputStream
			  DataInputStream in = new DataInputStream(fstream);
			  BufferedReader br = new BufferedReader(new InputStreamReader(in));
			  String strLine;
			  
			  while ((strLine = br.readLine()) != null)   {
				  listAlerts.add(strLine);
				//System.out.println(strLine);
		  }
			  //Close the input stream
			  in.close();
		  }catch (Exception e){//Catch exception if any
		    	System.err.println("Error8-NewsManagement: " + e.getMessage());
		  }
	return listAlerts;
	  }
	

}
