package beanjson;

import com.fasterxml.jackson.annotation.JsonProperty;

public class IncidentInformation {

	private String ProjectName;
	private String Id;
	private String Owner;
	private String Description;
	private int Duration;
	private String OwnerClass;
	private String Lawer;
	private String PriorityClass;
	
	
	
	
	
	/**
	 * @return the ownerClass
	 */
	@JsonProperty("OwnerClass")
	public String getOwnerClass() {
		return OwnerClass;
	}
	/**
	 * @param ownerClass the ownerClass to set
	 */
	@JsonProperty("OwnerClass")
	public void setOwnerClass(String ownerClass) {
		OwnerClass = ownerClass;
	}
	/**
	 * @return the lawer
	 */
	@JsonProperty("Layer")
	public String getLawer() {
		return Lawer;
	}
	/**
	 * @param lawer the lawer to set
	 */
	@JsonProperty("Layer")
	public void setLawer(String lawer) {
		Lawer = lawer;
	}
	/**
	 * @param duration the duration to set
	 */
	@JsonProperty("Duration")
	public void setDuration(int duration) {
		Duration = duration;
	}
	/**
	 * @param rAF the rAF to set
	 */
	 
	@JsonProperty("Id")
	public String getId() {
		return Id;
	}
	@JsonProperty("Id")
	public void setId(String pID) {
		Id = pID;
	}
	 
	 
	@JsonProperty("Owner")
	public String getOwner() {
		return Owner;
	}
	@JsonProperty("Owner")
	public void setOwner(String owner) {
		Owner = owner;
	}
	 
	 
	@JsonProperty("Description")
	public String getDescription() {
		return Description;
	}
	@JsonProperty("Description")
	public void setDescription(String description) {
		Description = description;
	}
	 
	 

	@JsonProperty("ProjectName")
	public String getProjectName() {
		return ProjectName;
	}
	@JsonProperty("ProjectName")
	public void setProjectName(String projectName) {
		ProjectName = projectName;
	}
	/**
	 * @return the duration
	 */
	@JsonProperty("Duration")
	public int getDuration() {
		return Duration;
	}
	/**
	 * @return the rAF
	 */
	 
	@JsonProperty("PriorityClass")
	public String getPriorityClass() {
		return PriorityClass;
	}
	@JsonProperty("PriorityClass")
	public void setPriorityClass(String priorityClass) {
		PriorityClass = priorityClass;
	}
	 
	 
	
	 
}
