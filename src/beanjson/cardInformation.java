package beanjson;

import com.fasterxml.jackson.annotation.JsonProperty;

public class cardInformation {

	private String ProjectName;
	private String Id;
	private String Priority;
	private String Owner;
	private String Blocked;
	private String Description;
	private String DueDate;
	private int Duration;
	private int RAF;
	private String OwnerClass;
	private String Lawer;
	private String PriorityClass;
	private String BlockedStyle;
	
	
	
	
	
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
	@JsonProperty("Raf")
	public void setRAF(int rAF) {
		RAF = rAF;
	}
	@JsonProperty("Id")
	public String getId() {
		return Id;
	}
	@JsonProperty("Id")
	public void setId(String pID) {
		Id = pID;
	}
	@JsonProperty("Priority")
	public String getPriority() {
		return Priority;
	}
	@JsonProperty("Priority")
	public void setPriority(String Priority) {
		this.Priority = Priority;
	}
	@JsonProperty("Owner")
	public String getOwner() {
		return Owner;
	}
	@JsonProperty("Owner")
	public void setOwner(String owner) {
		Owner = owner;
	}
	@JsonProperty("Blocked")
	public String getBlocked() {
		return Blocked;
	}
	@JsonProperty("Blocked")
	public void setBlocked(String blocked) {
		Blocked = blocked;
	}
	@JsonProperty("Description")
	public String getDescription() {
		return Description;
	}
	@JsonProperty("Description")
	public void setDescription(String description) {
		Description = description;
	}
	@JsonProperty("DueDate")
	public String getDueDate() {
		return DueDate;
	}
	@JsonProperty("DueDate")
	public void setDueDate(String dueDate) {
		DueDate = dueDate;
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
	@JsonProperty("Raf")
	public int getRAF() {
		return RAF;
	}
	@JsonProperty("PriorityClass")
	public String getPriorityClass() {
		return PriorityClass;
	}
	@JsonProperty("PriorityClass")
	public void setPriorityClass(String priorityClass) {
		PriorityClass = priorityClass;
	}
	@JsonProperty("BlockedStyle")
	public String getBlockedStyle() {
		return BlockedStyle;
	}
	@JsonProperty("BlockedStyle")
	public void setBlockedStyle(String blockedStyle) {
		BlockedStyle = blockedStyle;
	}
	
	 
}
