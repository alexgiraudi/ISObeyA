package beanjson;

import com.fasterxml.jackson.annotation.JsonProperty;

public class KPIInformation {

	private String PojectName;
	/**
	 * @return the week
	 */
	@JsonProperty("Week")
	public int getWeek() {
		return Week;
	}

	/**
	 * @param week the week to set
	 */
	@JsonProperty("Week")
	public void setWeek(int week) {
		Week = week;
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
	 * @return the longDate
	 */
	@JsonProperty("LongDate")
	public String getLongDate() {
		return LongDate;
	}

	/**
	 * @param longDate the longDate to set
	 */
	@JsonProperty("LongDate")
	public void setLongDate(String longDate) {
		LongDate = longDate;
	}

	/**
	 * @return the event
	 */
	@JsonProperty("Event")
	public String getEvent() {
		return Event;
	}

	/**
	 * @param event the event to set
	 */
	@JsonProperty("Event")
	public void setEvent(String event) {
		Event = event;
	}

	private int Week;
	private int KPI;
	private String LongDate;
	private String Event;
	
	public KPIInformation() {
		// TODO Auto-generated constructor stub
	}
	@JsonProperty("ProjectName")
	public String getPojectName() {
		return PojectName;
	}
	@JsonProperty("ProjectName")
	public void setPojectName(String pojectName) {
		PojectName = pojectName;
	}

}
