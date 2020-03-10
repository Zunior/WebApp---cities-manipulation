package domain;

public class City {
	private int cityNumber;
	private String naziv;
	
	public City() {

	}

	
	
	public City(int cityNumber) {
		super();
		this.cityNumber = cityNumber;
	}



	public City(int cityNumber, String naziv) {
		this.cityNumber = cityNumber;
		this.naziv = naziv;
	}

	public int getCityNumber() {
		return cityNumber;
	}

	public void setCityNumber(int cityNumber) {
		this.cityNumber = cityNumber;
	}

	public String getNaziv() {
		return naziv;
	}

	public void setNaziv(String naziv) {
		this.naziv = naziv;
	}

	
	
	@Override
	public boolean equals(Object obj) {
		if(!(obj instanceof City))
			return false;
		City city = (City)obj;
		return city.getCityNumber() == getCityNumber();
	}

	@Override
	public String toString() {
		return "City [cityNumber=" + cityNumber + ", naziv=" + naziv + "]";
	}
	
	
	
	
}
