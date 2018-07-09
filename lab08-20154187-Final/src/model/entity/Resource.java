package model.entity;
import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;
@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class Resource {
	 @PrimaryKey
   	 @Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY) private Long id;
	 @Persistent private String Url;
	 @Persistent private boolean status;
	public Resource(String url) {
		
		this.Url = url;
		this.status = true;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUrl() {
		return Url;
	}
	public void setUrl(String url) {
		Url = url;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String toString(){
		return Url;
	}

}
