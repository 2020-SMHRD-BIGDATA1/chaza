package controller;

public class PlaceDTO {
	
	private String place_name;
	private String place_address;
	private String toilet;
	private String sink;
	private String water;
	private String score;
	
	
	public PlaceDTO(String place_name, String place_address, String toilet, String sink, String water, String score) {
		super();
		this.place_name = place_name;
		this.place_address = place_address;
		this.toilet = toilet;
		this.sink = sink;
		this.water = water;
		this.score = score;
	}


	public String getPlace_name() {
		return place_name;
	}


	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}


	public String getPlace_address() {
		return place_address;
	}


	public void setPlace_address(String place_address) {
		this.place_address = place_address;
	}


	public String getToilet() {
		return toilet;
	}


	public void setToilet(String toilet) {
		this.toilet = toilet;
	}


	public String getSink() {
		return sink;
	}


	public void setSink(String sink) {
		this.sink = sink;
	}


	public String getWater() {
		return water;
	}


	public void setWater(String water) {
		this.water = water;
	}


	public String getScore() {
		return score;
	}


	public void setScore(String score) {
		this.score = score;
	}
	
	
	
	
	}
