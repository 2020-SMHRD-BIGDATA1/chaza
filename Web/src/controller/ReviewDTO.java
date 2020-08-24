package controller;

public class ReviewDTO {

	private String review_num;
	private String review_id;
	private String start_location;
	private String dest_location;
	private String review_place_name;
	private String review_date;
	private String review_score;
	private String title;
	private String contents;
	
	public ReviewDTO(String review_num, String review_id, String start_location, String dest_location,
			String review_place_name, String review_date, String review_score, String title, String contents) {
		super();
		this.review_num = review_num;
		this.review_id = review_id;
		this.start_location = start_location;
		this.dest_location = dest_location;
		this.review_place_name = review_place_name;
		this.review_date = review_date;
		this.review_score = review_score;
		this.title = title;
		this.contents = contents;
	}

	public String getReview_num() {
		return review_num;
	}

	public void setReview_num(String review_num) {
		this.review_num = review_num;
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

	public String getReview_place_name() {
		return review_place_name;
	}

	public void setReview_place_name(String review_place_name) {
		this.review_place_name = review_place_name;
	}

	public String getReview_date() {
		return review_date;
	}

	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}

	public String getReview_score() {
		return review_score;
	}

	public void setReview_score(String review_score) {
		this.review_score = review_score;
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
	
	
}
