package beanjson;

import com.fasterxml.jackson.annotation.JsonProperty;

public class projectInformation {

	/* Fields dedicated field for Steerco Dashboard Reporting */
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
	
	/* Fields dedicated field for Steerco Dashboard Project */
	private String ProjectDescription;
	private String KeyPoint1;
	private String KeyPoint2;
	private String KeyPoint3;
	private String Remark1;
	private String Remark2;
	private String Remark3;
	private String NextStep1;
	private String NextStep2;
	private int GlobalBudget;
	private int CapexBudget;
	private int OpexBudget;
	private int GlobalOfficial;
	private int GlobalOutlook;
	private int GlobalOrdered;
	private int CapexOfficial;
	private int CapexOutlook;
	private int CapexOrdered;
	private int OpexOfficial;
	private int OpexOutlook;
	private int OpexOrdered;
	private String TeamCDP;
	private String TeamDA;
	private String TeamArchi;
	private String TeamIntegrator;
	private String TeamRollout;
	private int initalKPI1;
	private int initalKPI2;
	private int initalKPI3;
	private int initalKPI4;
	private int initalKPI5;
	/**
	 * @return the projectDescription
	 */
	@JsonProperty("ProjectDescription")
	public String getProjectDescription() {
		return ProjectDescription;
	}
	/**
	 * @param projectDescription the projectDescription to set
	 */
	@JsonProperty("ProjectDescription")
	public void setProjectDescription(String projectDescription) {
		ProjectDescription = projectDescription;
	}
	/**
	 * @return the keyPoint1
	 */
	@JsonProperty("KeyPoint1")
	public String getKeyPoint1() {
		return KeyPoint1;
	}
	/**
	 * @param keyPoint1 the keyPoint1 to set
	 */
	@JsonProperty("KeyPoint1")
	public void setKeyPoint1(String keyPoint1) {
		KeyPoint1 = keyPoint1;
	}
	/**
	 * @return the keyPoint2
	 */
	@JsonProperty("KeyPoint2")
	public String getKeyPoint2() {
		return KeyPoint2;
	}
	/**
	 * @param keyPoint2 the keyPoint2 to set
	 */
	@JsonProperty("KeyPoint2")
	public void setKeyPoint2(String keyPoint2) {
		KeyPoint2 = keyPoint2;
	}
	/**
	 * @return the keyPoint3
	 */
	@JsonProperty("KeyPoint3")
	public String getKeyPoint3() {
		return KeyPoint3;
	}
	/**
	 * @param keyPoint3 the keyPoint3 to set
	 */
	@JsonProperty("KeyPoint3")
	public void setKeyPoint3(String keyPoint3) {
		KeyPoint3 = keyPoint3;
	}
	/**
	 * @return the remark1
	 */
	@JsonProperty("Remark1")
	public String getRemark1() {
		return Remark1;
	}
	/**
	 * @param remark1 the remark1 to set
	 */
	@JsonProperty("Remark1")
	public void setRemark1(String remark1) {
		Remark1 = remark1;
	}
	/**
	 * @return the remark2
	 */
	@JsonProperty("Remark2")
	public String getRemark2() {
		return Remark2;
	}
	/**
	 * @param remark2 the remark2 to set
	 */
	@JsonProperty("Remark2")
	public void setRemark2(String remark2) {
		Remark2 = remark2;
	}
	/**
	 * @return the remark3
	 */
	@JsonProperty("Remark3")
	public String getRemark3() {
		return Remark3;
	}
	/**
	 * @param remark3 the remark3 to set
	 */
	@JsonProperty("Remark3")
	public void setRemark3(String remark3) {
		Remark3 = remark3;
	}
	/**
	 * @return the nextStep1
	 */
	@JsonProperty("NextStep1")
	public String getNextStep1() {
		return NextStep1;
	}
	/**
	 * @param nextStep1 the nextStep1 to set
	 */
	@JsonProperty("NextStep1")
	public void setNextStep1(String nextStep1) {
		NextStep1 = nextStep1;
	}
	/**
	 * @return the nextStep2
	 */
	@JsonProperty("NextStep2")
	public String getNextStep2() {
		return NextStep2;
	}
	/**
	 * @param nextStep2 the nextStep2 to set
	 */
	@JsonProperty("NextStep2")
	public void setNextStep2(String nextStep2) {
		NextStep2 = nextStep2;
	}
	/**
	 * @return the globalBudget
	 */
	@JsonProperty("GlobalBudget")
	public int getGlobalBudget() {
		return GlobalBudget;
	}
	/**
	 * @param globalBudget the globalBudget to set
	 */
	@JsonProperty("GlobalBudget")
	public void setGlobalBudget(int globalBudget) {
		GlobalBudget = globalBudget;
	}
	/**
	 * @return the capexBudget
	 */
	@JsonProperty("CapexBudget")
	public int getCapexBudget() {
		return CapexBudget;
	}
	/**
	 * @param capexBudget the capexBudget to set
	 */
	@JsonProperty("CapexBudget")
	public void setCapexBudget(int capexBudget) {
		CapexBudget = capexBudget;
	}
	/**
	 * @return the opexBudget
	 */
	@JsonProperty("OpexBudget")
	public int getOpexBudget() {
		return OpexBudget;
	}
	/**
	 * @param opexBudget the opexBudget to set
	 */
	@JsonProperty("OpexBudget")
	public void setOpexBudget(int opexBudget) {
		OpexBudget = opexBudget;
	}
	/**
	 * @return the globalOfficial
	 */
	@JsonProperty("GlobalOfficial")
	public int getGlobalOfficial() {
		return GlobalOfficial;
	}
	/**
	 * @param globalOfficial the globalOfficial to set
	 */
	@JsonProperty("GlobalOfficial")
	public void setGlobalOfficial(int globalOfficial) {
		GlobalOfficial = globalOfficial;
	}
	/**
	 * @return the globalOutlook
	 */
	@JsonProperty("GlobalOutlook")
	public int getGlobalOutlook() {
		return GlobalOutlook;
	}
	/**
	 * @param globalOutlook the globalOutlook to set
	 */
	@JsonProperty("GlobalOutlook")
	public void setGlobalOutlook(int globalOutlook) {
		GlobalOutlook = globalOutlook;
	}
	/**
	 * @return the globalOrdered
	 */
	@JsonProperty("GlobalOrdered")
	public int getGlobalOrdered() {
		return GlobalOrdered;
	}
	/**
	 * @param globalOrdered the globalOrdered to set
	 */
	@JsonProperty("GlobalOrdered")
	public void setGlobalOrdered(int globalOrdered) {
		GlobalOrdered = globalOrdered;
	}
	/**
	 * @return the capexOfficial
	 */
	@JsonProperty("CapexOfficial")
	public int getCapexOfficial() {
		return CapexOfficial;
	}
	/**
	 * @param capexOfficial the capexOfficial to set
	 */
	@JsonProperty("CapexOfficial")
	public void setCapexOfficial(int capexOfficial) {
		CapexOfficial = capexOfficial;
	}
	/**
	 * @return the capexOutlook
	 */
	@JsonProperty("CapexOutlook")
	public int getCapexOutlook() {
		return CapexOutlook;
	}
	/**
	 * @param capexOutlook the capexOutlook to set
	 */
	@JsonProperty("CapexOutlook")
	public void setCapexOutlook(int capexOutlook) {
		CapexOutlook = capexOutlook;
	}
	/**
	 * @return the capexOrdered
	 */
	@JsonProperty("CapexOrdered")
	public int getCapexOrdered() {
		return CapexOrdered;
	}
	/**
	 * @param capexOrdered the capexOrdered to set
	 */
	@JsonProperty("CapexOrdered")
	public void setCapexOrdered(int capexOrdered) {
		CapexOrdered = capexOrdered;
	}
	/**
	 * @return the opexOfficial
	 */
	@JsonProperty("OpexOfficial")
	public int getOpexOfficial() {
		return OpexOfficial;
	}
	/**
	 * @param opexOfficial the opexOfficial to set
	 */
	@JsonProperty("OpexOfficial")
	public void setOpexOfficial(int opexOfficial) {
		OpexOfficial = opexOfficial;
	}
	/**
	 * @return the opexOutlook
	 */
	@JsonProperty("OpexOutlook")
	public int getOpexOutlook() {
		return OpexOutlook;
	}
	/**
	 * @param opexOutlook the opexOutlook to set
	 */
	@JsonProperty("OpexOutlook")
	public void setOpexOutlook(int opexOutlook) {
		OpexOutlook = opexOutlook;
	}
	/**
	 * @return the opexOrdered
	 */
	@JsonProperty("OpexOrdered")
	public int getOpexOrdered() {
		return OpexOrdered;
	}
	/**
	 * @param opexOrdered the opexOrdered to set
	 */
	@JsonProperty("OpexOrdered")
	public void setOpexOrdered(int opexOrdered) {
		OpexOrdered = opexOrdered;
	}
	/**
	 * @return the teamCDP
	 */
	@JsonProperty("TeamCDP")
	public String getTeamCDP() {
		return TeamCDP;
	}
	/**
	 * @param teamCDP the teamCDP to set
	 */
	@JsonProperty("TeamCDP")
	public void setTeamCDP(String teamCDP) {
		TeamCDP = teamCDP;
	}
	/**
	 * @return the teamDA
	 */
	@JsonProperty("TeamDA")
	public String getTeamDA() {
		return TeamDA;
	}
	/**
	 * @param teamDA the teamDA to set
	 */
	@JsonProperty("TeamDA")
	public void setTeamDA(String teamDA) {
		TeamDA = teamDA;
	}
	/**
	 * @return the teamArchi
	 */
	@JsonProperty("TeamArchi")
	public String getTeamArchi() {
		return TeamArchi;
	}
	/**
	 * @param teamArchi the teamArchi to set
	 */
	@JsonProperty("TeamArchi")
	public void setTeamArchi(String teamArchi) {
		TeamArchi = teamArchi;
	}
	/**
	 * @return the teamIntegrator
	 */
	@JsonProperty("TeamIntegrator")
	public String getTeamIntegrator() {
		return TeamIntegrator;
	}
	/**
	 * @param teamIntegrator the teamIntegrator to set
	 */
	@JsonProperty("TeamIntegrator")
	public void setTeamIntegrator(String teamIntegrator) {
		TeamIntegrator = teamIntegrator;
	}
	/**
	 * @return the teamRollout
	 */
	@JsonProperty("TeamRollout")
	public String getTeamRollout() {
		return TeamRollout;
	}
	/**
	 * @param teamRollout the teamRollout to set
	 */
	@JsonProperty("TeamRollout")
	public void setTeamRollout(String teamRollout) {
		TeamRollout = teamRollout;
	}
	/**
	 * @return the initalKPI1
	 */
	@JsonProperty("initalKPI1")
	public int getInitalKPI1() {
		return initalKPI1;
	}
	/**
	 * @param initalKPI1 the initalKPI1 to set
	 */
	@JsonProperty("initalKPI1")
	public void setInitalKPI1(int initalKPI1) {
		this.initalKPI1 = initalKPI1;
	}
	/**
	 * @return the initalKPI2
	 */
	@JsonProperty("initalKPI2")
	public int getInitalKPI2() {
		return initalKPI2;
	}
	/**
	 * @param initalKPI2 the initalKPI2 to set
	 */
	@JsonProperty("initalKPI2")
	public void setInitalKPI2(int initalKPI2) {
		this.initalKPI2 = initalKPI2;
	}
	/**
	 * @return the initalKPI3
	 */
	@JsonProperty("initalKPI3")
	public int getInitalKPI3() {
		return initalKPI3;
	}
	/**
	 * @param initalKPI3 the initalKPI3 to set
	 */
	@JsonProperty("initalKPI3")
	public void setInitalKPI3(int initalKPI3) {
		this.initalKPI3 = initalKPI3;
	}
	/**
	 * @return the initalKPI4
	 */
	@JsonProperty("initalKPI4")
	public int getInitalKPI4() {
		return initalKPI4;
	}
	/**
	 * @param initalKPI4 the initalKPI4 to set
	 */
	@JsonProperty("initalKPI4")
	public void setInitalKPI4(int initalKPI4) {
		this.initalKPI4 = initalKPI4;
	}
	/**
	 * @return the initalKPI5
	 */
	@JsonProperty("initalKPI5")
	public int getInitalKPI5() {
		return initalKPI5;
	}
	/**
	 * @param initalKPI5 the initalKPI5 to set
	 */
	@JsonProperty("initalKPI5")
	public void setInitalKPI5(int initalKPI5) {
		this.initalKPI5 = initalKPI5;
	}
	
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
