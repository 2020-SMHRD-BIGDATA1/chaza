package controller;

public class PlaceDTO {
	
	private String place_id;
	private String place_name;
	private String place_cat;
	private String place_addr;
	private String toilet;
	private String sink;
	private String water;
	private String title;
	private String contents;
	private String place_score;
	
	public PlaceDTO(String place_id, String place_name, String place_cat, String place_addr, String toilet, String sink,
			String water, String title, String contents, String place_score) {
		super();
		this.place_id = place_id;
		this.place_name = place_name;
		this.place_cat = place_cat;
		this.place_addr = place_addr;
		this.toilet = toilet;
		this.sink = sink;
		this.water = water;
		this.title = title;
		this.contents = contents;
		this.place_score = place_score;
	}

	public String getPlace_id() {
		return place_id;
	}

	public void setPlace_id(String place_id) {
		this.place_id = place_id;
	}

	public String getPlace_name() {
		return place_name;
	}

	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}

	public String getPlace_cat() {
		return place_cat;
	}

	public void setPlace_cat(String place_cat) {
		this.place_cat = place_cat;
	}

	public String getPlace_addr() {
		return place_addr;
	}

	public void setPlace_addr(String place_addr) {
		this.place_addr = place_addr;
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getPlace_score() {
		return place_score;
	}

	public void setPlace_score(String place_score) {
		this.place_score = place_score;
	}
	
	
	
	}
