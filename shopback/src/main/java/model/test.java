package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
	@Table(name="Product")
	public class test implements Serializable {
			
			@Id
			@GeneratedValue(strategy=GenerationType.IDENTITY)
			@Column(name="productID")
			private int pId;
			@Column(name="productName")
			private String pName;
			@Column(name="productCost")
			private int pCost;
		
			public test()
			{
			
			}
		
			public test(String pName, int pCost) {
				this.pName = pName;
				this.pCost = pCost;
			}

			public int getpId() {
				return pId;
			}
			public void setpId(int pId) {
				this.pId = pId;
			}
			public String getpName() {
				return pName;
			}
			public void setpName(String pName) {
				this.pName = pName;
			}
			public int getpCost() {
				return pCost;
			}
			public void setpCost(int pCost) {
				this.pCost = pCost;
			}	
	}

