package controller;

public class ReviewDTO {

	private String review_number;
	private String review_id;
	private String start_location;
	private String dest_location;
	private String travel_time;
	private String break_time;
	private String review_score;
	private String review_title;
	private String review_contents;
	private String place_name;
	private String review_date;
	private String map_lat;
	private String map_long;
	private String review_image;
	
	public ReviewDTO(String review_number, String review_id, String start_location, String dest_location,
			String travel_time, String break_time, String review_score, String review_title, String review_contents,
			String place_name, String review_date, String map_lat, String map_long, String review_image) {
		super();
		this.review_number = review_number;
		this.review_id = review_id;
		this.start_location = start_location;
		this.dest_location = dest_location;
		this.travel_time = travel_time;
		this.break_time = break_time;
		this.review_score = review_score;
		this.review_title = review_title;
		this.review_contents = review_contents;
		this.place_name = place_name;
		this.review_date = review_date;
		this.map_lat = map_lat;
		this.map_long = map_long;
		this.review_image = review_image;
	}

	public String getReview_number() {
		return review_number;
	}

	public void setReview_number(String review_number) {
		this.review_number = review_number;
	}

	public String getReview_id() {
		return review_id;
	}

	public void setReview_id(String review_id) {
		this.review_id = review_id;
	}

	public String getStart_location() {
		return start_location;
	}

	public void setStart_location(String start_location) {
		this.start_location = start_location;
	}

	public String getDest_location() {
		return dest_location;
	}

	public void setDest_location(String dest_location) {
		this.dest_location = dest_location;
	}

	public String getTravel_time() {
		return travel_time;
	}

	public void setTravel_time(String travel_time) {
		this.travel_time = travel_time;
	}

	public String getBreak_time() {
		return break_time;
	}

	public void setBreak_time(String break_time) {
		this.break_time = break_time;
	}

	public String getReview_score() {
		return review_score;
	}

	public void setReview_score(String review_score) {
		this.review_score = review_score;
	}

	public String getReview_title() {
		return review_title;
	}

	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}

	public String getReview_contents() {
		return review_contents;
	}

	public void setReview_contents(String review_contents) {
		this.review_contents = review_contents;
	}

	public String getPlace_name() {
		return place_name;
	}

	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}

	public String getReview_date() {
		return review_date;
	}

	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}

	public String getMap_lat() {
		return map_lat;
	}

	public void setMap_lat(String map_lat) {
		this.map_lat = map_lat;
	}

	public String getMap_long() {
		return map_long;
	}

	public void setMap_long(String map_long) {
		this.map_long = map_long;
	}

	public String getReview_image() {
		return review_image;
	}

	public void setReview_image(String review_image) {
		this.review_image = review_image;
	}
	
	

	
	
}
