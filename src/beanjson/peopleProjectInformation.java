package beanjson;

import com.fasterxml.jackson.annotation.JsonProperty;

public class peopleProjectInformation {

	private String ProjectName;
	private String Owner;
	private String OldHumor;
	private String NewHumor;
	private String Photo;
	private String IdUser;
	private String OwnerClasse;
	
	/**
	 * @return the projectName
	 */
	@JsonProperty("ProjectName")
	public String getProjectName() {
		return ProjectName;
	}
	/**
	 * @param projectName the projectName to set
	 */
	@JsonProperty("ProjectName")
	public void setProjectName(String projectName) {
		ProjectName = projectName;
	}
	/**
	 * @return the owner
	 */
	@JsonProperty("Owner")
	public String getOwner() {
		return Owner;
	}
	/**
	 * @param owner the owner to set
	 */
	@JsonProperty("Owner")
	public void setOwner(String owner) {
		Owner = owner;
	}
	/**
	 * @return the oldHumor
	 */
	@JsonProperty("OldHumor")
	public String getOldHumor() {
		return OldHumor;
	}
	/**
	 * @param oldHumor the oldHumor to set
	 */
	@JsonProperty("OldHumor")
	public void setOldHumor(String oldHumor) {
		OldHumor = oldHumor;
	}
	/**
	 * @return the newHumor
	 */
	@JsonProperty("NewHumor")
	public String getNewHumor() {
		return NewHumor;
	}
	/**
	 * @param newHumor the newHumor to set
	 */
	@JsonProperty("NewHumor")
	public void setNewHumor(String newHumor) {
		NewHumor = newHumor;
	}
	/**
	 * @return the photo
	 */
	@JsonProperty("Photo")
	public String getPhoto() {
		return Photo;
	}
	/**
	 * @param photo the photo to set
	 */
	@JsonProperty("Photo")
	public void setPhoto(String photo) {
		Photo = photo;
	}
	/**
	 * @return the idUser
	 */
	@JsonProperty("IdUser")
	public String getIdUser() {
		return IdUser;
	}
	/**
	 * @param idUser the idUser to set
	 */
	@JsonProperty("IdUser")
	public void setIdUser(String idUser) {
		IdUser = idUser;
	}
	/**
	 * @return the ownerClasse
	 */
	@JsonProperty("OwnerClasse")
	public String getOwnerClasse() {
		return OwnerClasse;
	}
	/**
	 * @param ownerClasse the ownerClasse to set
	 */
	@JsonProperty("OwnerClasse")
	public void setOwnerClasse(String ownerClasse) {
		OwnerClasse = ownerClasse;
	}
	
	
	
	 
}
