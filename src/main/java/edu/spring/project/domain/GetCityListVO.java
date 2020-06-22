package edu.spring.project.domain;

public class GetCityListVO {
	private int areacode;
	private int contentid;
	private int contenttypeid;
	private String firstimage;
	private String firstimage2;
	private int mapx;
	private int mapy;
	private int mlevel;
	private int sigungucode;
	private String title;
	
	
	
	
	public GetCityListVO(int areacode, int contentid, int contenttypeid, String firstimage, String firstimage2,
			int mapx, int mapy, int mlevel, int sigungucode, String title) {
		super();
		this.areacode = areacode;
		this.contentid = contentid;
		this.contenttypeid = contenttypeid;
		this.firstimage = firstimage;
		this.firstimage2 = firstimage2;
		this.mapx = mapx;
		this.mapy = mapy;
		this.mlevel = mlevel;
		this.sigungucode = sigungucode;
		this.title = title;
	}




	public int getAreacode() {
		return areacode;
	}




	public void setAreacode(int areacode) {
		this.areacode = areacode;
	}




	public int getContentid() {
		return contentid;
	}




	public void setContentid(int contentid) {
		this.contentid = contentid;
	}




	public int getContenttypeid() {
		return contenttypeid;
	}




	public void setContenttypeid(int contenttypeid) {
		this.contenttypeid = contenttypeid;
	}




	public String getFirstimage() {
		return firstimage;
	}




	public void setFirstimage(String firstimage) {
		this.firstimage = firstimage;
	}




	public String getFirstimage2() {
		return firstimage2;
	}




	public void setFirstimage2(String firstimage2) {
		this.firstimage2 = firstimage2;
	}




	public int getMapx() {
		return mapx;
	}




	public void setMapx(int mapx) {
		this.mapx = mapx;
	}




	public int getMapy() {
		return mapy;
	}




	public void setMapy(int mapy) {
		this.mapy = mapy;
	}




	public int getMlevel() {
		return mlevel;
	}




	public void setMlevel(int mlevel) {
		this.mlevel = mlevel;
	}




	public int getSigungucode() {
		return sigungucode;
	}




	public void setSigungucode(int sigungucode) {
		this.sigungucode = sigungucode;
	}




	public String getTitle() {
		return title;
	}




	public void setTitle(String title) {
		this.title = title;
	}
	
		
	
	


}
