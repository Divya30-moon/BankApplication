package com.jsp.bankEase.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Bank {

		@Id
		@GeneratedValue
		private int id;
		private String name;
		private String ifsc;
		private String loc;
		
		public Bank() {
			super();
		}

		public Bank(String name, String ifsc, String loc) {
			super();
			this.name = name;
			this.ifsc = ifsc;
			this.loc = loc;
		}

		public Bank(int id, String name, String ifsc, String loc) {
			super();
			this.id = id;
			this.name = name;
			this.ifsc = ifsc;
			this.loc = loc;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getIfsc() {
			return ifsc;
		}

		public void setIfsc(String ifsc) {
			this.ifsc = ifsc;
		}

		public String getLoc() {
			return loc;
		}

		public void setLoc(String loc) {
			this.loc = loc;
		}
		
		
}
