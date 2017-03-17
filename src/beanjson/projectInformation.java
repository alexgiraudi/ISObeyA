package beanjson;

import com.fasterxml.jackson.annotation.JsonProperty;

public class projectInformation {

	private String ProjectName;
	private int Id;
	private String Status;
	private String KPIGlobal;
	private String KPIBudget;
	private String KPIPlanning;
	private String KPIDesign;
	private String KPIPurchasing;
	private String KPIProvisioning;
	private String KPIBuild;
	private String KPIRollout;
	private String KPIRemarks;
	private int KPI;
	private String Tendance;
	private String KPIGolive;
	
	
	/**
	 * @return the status
	 */
	@JsonProperty("Status")
	public String getStatus() {
		return Status;
	}
	/**
	 * @param status the status to set
	 */
	@JsonProperty("Status")
	public void setStatus(String status) {
		Status = status;
	}
	/**
	 * @return the kPIGlobal
	 */
	@JsonProperty("KPIGlobal")
	public String getKPIGlobal() {
		return KPIGlobal;
	}
	/**
	 * @param kPIGlobal the kPIGlobal to set
	 */
	@JsonProperty("KPIGlobal")
	public void setKPIGlobal(String kPIGlobal) {
		KPIGlobal = kPIGlobal;
	}
	/**
	 * @return the kPIBudget
	 */
	@JsonProperty("KPIBudget")
	public String getKPIBudget() {
		return KPIBudget;
	}
	/**
	 * @param kPIBudget the kPIBudget to set
	 */
	@JsonProperty("KPIBudget")
	public void setKPIBudget(String kPIBudget) {
		KPIBudget = kPIBudget;
	}
	/**
	 * @return the kPIPlanning
	 */
	@JsonProperty("KPIPlanning")
	public String getKPIPlanning() {
		return KPIPlanning;
	}
	/**
	 * @param kPIPlanning the kPIPlanning to set
	 */
	@JsonProperty("KPIPlanning")
	public void setKPIPlanning(String kPIPlanning) {
		KPIPlanning = kPIPlanning;
	}
	/**
	 * @return the kPIDesign
	 */
	@JsonProperty("KPIDesign")
	public String getKPIDesign() {
		return KPIDesign;
	}
	/**
	 * @param kPIDesign the kPIDesign to set
	 */
	@JsonProperty("KPIDesign")
	public void setKPIDesign(String kPIDesign) {
		KPIDesign = kPIDesign;
	}
	/**
	 * @return the kPIPurchasing
	 */
	@JsonProperty("KPIPurchasing")
	public String getKPIPurchasing() {
		return KPIPurchasing;
	}
	/**
	 * @param kPIPurchasing the kPIPurchasing to set
	 */
	@JsonProperty("KPIPurchasing")
	public void setKPIPurchasing(String kPIPurchasing) {
		KPIPurchasing = kPIPurchasing;
	}
	/**
	 * @return the kPIProvisioning
	 */
	@JsonProperty("KPIProvisioning")
	public String getKPIProvisioning() {
		return KPIProvisioning;
	}
	/**
	 * @param kPIProvisioning the kPIProvisioning to set
	 */
	@JsonProperty("KPIProvisioning")
	public void setKPIProvisioning(String kPIProvisioning) {
		KPIProvisioning = kPIProvisioning;
	}
	/**
	 * @return the kPIBuild
	 */
	@JsonProperty("KPIBuild")
	public String getKPIBuild() {
		return KPIBuild;
	}
	/**
	 * @param kPIBuild the kPIBuild to set
	 */
	@JsonProperty("KPIBuild")
	public void setKPIBuild(String kPIBuild) {
		KPIBuild = kPIBuild;
	}
	/**
	 * @return the kPIRollout
	 */
	@JsonProperty("KPIRollout")
	public String getKPIRollout() {
		return KPIRollout;
	}
	/**
	 * @param kPIRollout the kPIRollout to set
	 */
	@JsonProperty("KPIRollout")
	public void setKPIRollout(String kPIRollout) {
		KPIRollout = kPIRollout;
	}
	/**
	 * @return the kPIRemarks
	 */
	@JsonProperty("KPIRemarks")
	public String getKPIRemarks() {
		return KPIRemarks;
	}
	/**
	 * @param kPIRemarks the kPIRemarks to set
	 */
	@JsonProperty("KPIRemarks")
	public void setKPIRemarks(String kPIRemarks) {
		KPIRemarks = kPIRemarks;
	}
	/**
	 * @return the kPI
	 */
	@JsonProperty("KPI")
	public int getKPI() {
		return KPI;
	}
	/**
	 * @param kPI the kPI to set
	 */
	@JsonProperty("KPI")
	public void setKPI(int kPI) {
		KPI = kPI;
	}
	/**
	 * @return the tendance
	 */
	@JsonProperty("Tendance")
	public String getTendance() {
		return Tendance;
	}
	/**
	 * @param tendance the tendance to set
	 */
	@JsonProperty("Tendance")
	public void setTendance(String tendance) {
		Tendance = tendance;
	}
	/**
	 * @return the kPIGolive
	 */
	@JsonProperty("KPIGolive")
	public String getKPIGolive() {
		return KPIGolive;
	}
	/**
	 * @param kPIGolive the kPIGolive to set
	 */
	@JsonProperty("KPIGolive")
	public void setKPIGolive(String kPIGolive) {
		KPIGolive = kPIGolive;
	}

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
	 * @return the id
	 */
	@JsonProperty("Id")
	public int getId() {
		return Id;
	}
	/**
	 * @param id the id to set
	 */
	@JsonProperty("Id")
	public void setId(int id) {
		Id = id;
	}
	
	
	 
	
	
	
	 
}
