package sevletdemo.part04;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import sevletdemo.SessionTemlate;

import static common.JdbcTemplate.*;

public class EmployeesDAO {

	private Connection con;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public EmployeesDAO() {
		// TODO Auto-generated constructor stub
	}

	private static EmployeesDAO dao = new EmployeesDAO();

	public static EmployeesDAO getInstance() {
		return dao;
	}

	public List<EmplitesssDTO> listAll() {
		List<EmplitesssDTO> alList = new ArrayList<EmplitesssDTO>();
		con = getConnection();
		
		try {
			stmt = con.createStatement();
			String sql = "select * from employees order by employee_id";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				EmplitesssDTO dto = new EmplitesssDTO();
				dto.setEmployee_id(rs.getInt("employee_id"));
				dto.setFirst_name(rs.getString("first_name"));
				dto.setSalary(rs.getInt("salary"));
				alList.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
			close(con);
		}
		return alList;
	}
	
	public List<EmplitesssDTO> myList(){
		SqlSession session = null;
		session = SessionTemlate.getSqlSession();
		return session.selectList("emp.list");
	}
}
