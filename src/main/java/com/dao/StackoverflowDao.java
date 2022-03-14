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
import com.bean.GetAllDataUsingTitle;
import com.bean.SetAnswerUser;
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
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("insert into questions (title,body,issolved,userid,tags) values (?,?,false,?,?)");
		pre.setString(1, bean.getTitle());
		pre.setString(2, bean.getBody());
		pre.setInt(3, bean.getUserid());
		pre.setString(4, bean.getTags());
		System.out.println(bean.getTags()+" inserdata question");
		int row=pre.executeUpdate();
		System.out.println("1 row inserted");
		
	}
	
	
	
	
	public ArrayList<AskAQuestionbean> checkAllDataQuestions(int userid) throws SQLException{
		System.out.println("inside dao checkAll dataquestions");
		ArrayList<AskAQuestionbean> arr=new ArrayList<AskAQuestionbean>();
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("select title,body,issolved,tags,firstname from users natural join questions where userid=?");
		pre.setInt(1,userid);
		ResultSet r=pre.executeQuery();
		while(r.next()) {
			AskAQuestionbean bean=new AskAQuestionbean();
			bean.setTitle(r.getString("title"));
			bean.setBody(r.getString("body"));
			bean.setIssolved(r.getString("issolved"));
			bean.setTags(r.getString("tags"));
			bean.setFirstname(r.getString("firstname"));
			arr.add(bean);
		}
		
		System.out.println(arr);
		return arr;
	}
	
	
	public ArrayList<AskAQuestionbean> checkAllDataQuestionA(int userid) throws SQLException{
		System.out.println("inside checkalldataquestionA");
		ArrayList<AskAQuestionbean> arr=new ArrayList<AskAQuestionbean>();
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("select title,body,issolved,firstname,tags from users natural join questions where userid!=?");
		pre.setInt(1,userid);
		ResultSet r=pre.executeQuery();
		while(r.next()) {
			AskAQuestionbean bean=new AskAQuestionbean();
			bean.setTitle(r.getString("title"));
			bean.setBody(r.getString("body"));
			bean.setIssolved(r.getString("issolved"));
			bean.setFirstname(r.getString("firstname"));
			bean.setTags(r.getString("tags"));
			arr.add(bean);	
		}
		
		System.out.println(arr);
		return arr;
	}
	
	
	
	public ArrayList<GetAllDataUsingTitle> getAllDataQuestionTitle(String str) throws SQLException{
		System.out.println("getAllDataQuestion in");
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("select firstname,questionid,title,body,tags,userid from questions natural join users where title=?;");
		ArrayList<GetAllDataUsingTitle> arr=new ArrayList<GetAllDataUsingTitle>();
		pre.setString(1,str);
		ResultSet r=pre.executeQuery();
		while(r.next()) {
			GetAllDataUsingTitle bean=new GetAllDataUsingTitle();
			bean.setBody(r.getString("body"));
			bean.setQuestionid(r.getInt("questionid"));
			bean.setTags(r.getString("tags"));
			bean.setTitle(r.getString("title"));
			bean.setFirstname(r.getString("firstname"));
			bean.setUserid(r.getInt("userid"));
			arr.add(bean);
		}
		System.out.println(arr);
		return arr;
		
	}//get back to array on listparticularquestion 

	
	public int getQuestionIdTitle(String title) throws SQLException {
		System.out.println("getQuestion id fetch using title");
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("select questionid from questions where title=?");
		pre.setString(1, title);
		ResultSet r=pre.executeQuery();
		int questionid=-1;
		while(r.next()) {
			questionid=r.getInt("questionid");
		}
		System.out.println(questionid+"  id");
		return questionid;
		
		
		
		
	}//getquestion id using title 
	
	
	public void setAllDetailsAnswer(SetAnswerUser bean) throws SQLException{
		System.out.println("setall detail answer");
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("insert into answers (userid,questionid,answer,url) values(?,?,?,?)");
		pre.setInt(1, bean.getUserid());
		pre.setInt(2,bean.getQuestionid());
		pre.setString(3, bean.getAnswer());
		pre.setString(4, bean.getUrl());
		int row=pre.executeUpdate();
		System.out.println("inserted into answer table "+row);
		
		
	}//return array
	
	public ArrayList<SetAnswerUser> getAllAnswerParticularQuestion(int questionid) throws SQLException{
		System.out.println("Fetch the data");
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("select userid,questionid,answer,url,firstname,isaccepted,answersid from answers natural join users where questionid=?");
		pre.setInt(1, questionid);
		ResultSet r=pre.executeQuery();
		ArrayList<SetAnswerUser> arr11=new ArrayList<SetAnswerUser>();
		while(r.next()) {
			SetAnswerUser bean1=new SetAnswerUser();
			bean1.setQuestionid(r.getInt("questionid"));
			bean1.setUserid(r.getInt("userid"));
			bean1.setAnswer(r.getString("answer"));
			bean1.setUrl(r.getString("url"));
			bean1.setFirstname(r.getString("firstname"));
			bean1.setAnswersid(r.getInt("answersid"));
			arr11.add(bean1);
			
		}
		
		return arr11;
	}
	
	
	public void isSolvedCalled(int answerid,int questionid) throws SQLException {
		PreparedStatement pre=DbConnectionConn.con.prepareStatement("update answers set isaccepted=TRUE where answersid=?");
		pre.setInt(1,answerid);
		pre.executeUpdate();
		
		PreparedStatement pre1=DbConnectionConn.con.prepareStatement("update questions set issolved=TRUE where questionid=?");
		pre1.setInt(1,questionid);
		pre.executeUpdate();
		
		
		
		
	}
		
}
