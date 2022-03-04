package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

import com.bean.AddDataSignupbean;
import com.bean.AskAQuestionbean;
import com.bean.CheckDataLoginbean;
import com.bean.UseridCookie;
import com.util.DBConnectiongetCon;
import com.util.DbConnectionConn;
import com.util.UserCounterStatic;

public class StackoverflowDao {
	public void insertData(AddDataSignupbean bean) throws SQLException {
//		Connection con=DbConnectionConn.con.getConnection();
		System.out.println("insert in");
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("insert into users (firstname,lastname,gender,email,password,createdat,roleid) values (?,?,?,?,?,CURRENT_DATE,2)");
		pre.setString(1, bean.getFirstName());
		pre.setString(2, bean.getLastName());
		pre.setString(3, bean.getGender());
		pre.setString(4, bean.getEmail());
		pre.setString(5, bean.getPassword());
		int record=pre.executeUpdate();//because of insert query
		
		
		PreparedStatement pre1=DbConnectionConn.con.prepareStatement("select userid from users where firstname=? and lastname=? and email=?");
		pre1.setString(1, bean.getFirstName());
		pre1.setString(2, bean.getLastName());
		pre1.setString(3,bean.getEmail());
		ResultSet r= pre1.executeQuery();
		while(r.next()) {
//			System.out.println(r.getInt("userid"));
			UseridCookie.userid=r.getInt("userid");
			System.out.println(UseridCookie.userid+ "  "+ r.getInt("userid"));
		
		}
		
		System.out.println(record+"row insert new user");//show the record
	}//insert data in sign up time
	
	public boolean checkAlldata(CheckDataLoginbean bean) throws SQLException{
//		Connection con=DBConnectiongetCon.getConnection();
		System.out.println("select in checking");
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("select email,password,userid from users");
		ResultSet rs=pre.executeQuery();
		System.out.println(rs);
		while(rs.next()) {
			String email=rs.getString("email");
			String password=rs.getString("password");
			System.out.println(email+" "+password);
			if(email.equals(bean.getEmail())&&password.equals(bean.getPassword())) {
				System.out.println("correct user check");
				UseridCookie.userid=rs.getInt("userid");
				System.out.println(UseridCookie.userid+ "  "+ rs.getInt("userid"));
				return true;
			}
		}
		
		return false;
	}//check all data for return true or false to get connection
	
	
	
	public void insertDataQuestion(AskAQuestionbean bean) throws SQLException{
		System.out.println("insert question in data base");
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("insert into questions (title,body,issolved,userid) values (?,?,false,?)");
		pre.setString(1, bean.getTitle());
		pre.setString(2, bean.getBody());
		pre.setInt(3, bean.getUserid());
		int row=pre.executeUpdate();
		System.out.println("1 row inserted");
		
	}
	
	
	
	
	public ArrayList<AskAQuestionbean> checkAllDataQuestions(int userid) throws SQLException{
		System.out.println("inside dao checkAll dataquestions");
		ArrayList<AskAQuestionbean> arr=new ArrayList<AskAQuestionbean>();
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("select title,body,issolved from users natural join questions where userid=?");
		pre.setInt(1,userid);
		ResultSet r=pre.executeQuery();
		while(r.next()) {
			AskAQuestionbean bean=new AskAQuestionbean();
			bean.setTitle(r.getString("title"));
			bean.setBody(r.getString("body"));
			bean.setIssolved(r.getString("issolved"));
			arr.add(bean);
		}
		
		System.out.println(arr);
		return arr;
	}
	
	
	public ArrayList<AskAQuestionbean> checkAllDataQuestionA(int userid) throws SQLException{
		System.out.println("inside checkalldataquestionA");
		ArrayList<AskAQuestionbean> arr=new ArrayList<AskAQuestionbean>();
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("select title,body,issolved,firstname from users natural join questions where userid!=?");
		pre.setInt(1,userid);
		ResultSet r=pre.executeQuery();
		while(r.next()) {
			AskAQuestionbean bean=new AskAQuestionbean();
			bean.setTitle(r.getString("title"));
			bean.setBody(r.getString("body"));
			bean.setIssolved(r.getString("issolved"));
			bean.setFirstname(r.getString("firstname"));
			arr.add(bean);
		}
		
		System.out.println(arr);
		return arr;
	}
	
}
