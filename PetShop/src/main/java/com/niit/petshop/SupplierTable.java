package com.niit.petshop;

public class SupplierTable {

		public String supplier_id;   //primarykey
		private String supplier_name;
		private String supplier_city;
		private double supplier_pincode;
		private String supplier_address;
		private String supplier_country;
		private String category_id; //foreignkey
		private String pet_id;		//foreignkey
		public String getSupplier_id() {
			return supplier_id;
		}
		public void setSupplier_id(String supplier_id) {
			this.supplier_id = supplier_id;
		}
		public String getSupplier_name() {
			return supplier_name;
		}
		public void setSupplier_name(String supplier_name) {
			this.supplier_name = supplier_name;
		}
		public String getSupplier_city() {
			return supplier_city;
		}
		public void setSupplier_city(String supplier_city) {
			this.supplier_city = supplier_city;
		}
		public double getSupplier_pincode() {
			return supplier_pincode;
		}
		public void setSupplier_pincode(double supplier_pincode) {
			this.supplier_pincode = supplier_pincode;
		}
		public String getSupplier_address() {
			return supplier_address;
		}
		public void setSupplier_address(String supplier_address) {
			this.supplier_address = supplier_address;
		}
		public String getSupplier_country() {
			return supplier_country;
		}
		public void setSupplier_country(String supplier_country) {
			this.supplier_country = supplier_country;
		}
		public String getCategory_id() {
			return category_id;
		}
		public void setCategory_id(String category_id) {
			this.category_id = category_id;
		}
		public String getPet_id() {
			return pet_id;
		}
		public void setPet_id(String pet_id) {
			this.pet_id = pet_id;
		}
		
		
}
