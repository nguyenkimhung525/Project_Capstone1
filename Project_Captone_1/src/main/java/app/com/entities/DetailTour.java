package app.com.entities;

public class DetailTour {
	private int id;
	private String header_ct;
	private String content;
	private String attach;
	private String image;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHeader_ct() {
		return header_ct;
	}
	public void setHeader_ct(String header_ct) {
		this.header_ct = header_ct;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAttach() {
		return attach;
	}
	public void setAttach(String attach) {
		this.attach = attach;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
}
