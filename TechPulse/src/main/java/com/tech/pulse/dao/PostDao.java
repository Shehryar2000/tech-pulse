package com.tech.pulse.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.tech.pulse.entities.Category;

public class PostDao {

	Connection con;

	public PostDao(Connection con) {
		this.con = con;
	}

	public ArrayList<Category> getAllCategories() {

		ArrayList<Category> list = new ArrayList<Category>();
		String photo = "";

		try {

			String query = "SELECT * FROM category";
			Statement stmt = this.con.createStatement();
			ResultSet result = stmt.executeQuery(query);

			while (result.next()) {

				int id = result.getInt("id");
				String name = result.getString("name");
				String desc = result.getString("description");
				Category category = new Category(name, desc, photo);
				list.add(category);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

}
