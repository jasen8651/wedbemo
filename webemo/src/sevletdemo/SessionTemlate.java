package sevletdemo;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SessionTemlate {
	
	private SessionTemlate() {
	}
	
	private static  SessionTemlate sessionTemplate = new SessionTemlate();
	
	public static SessionTemlate getTemlate() {
		return sessionTemplate;
	}
	
	public static SqlSession getSqlSession() {
		SqlSession session= null;
		
		String resoure = "config/configuration.xml";
		try(Reader reader = Resources.getResourceAsReader(resoure)) {
			SqlSessionFactoryBuilder sqlBuilder = new SqlSessionFactoryBuilder();
			SqlSessionFactory factory = sqlBuilder.build(reader);
			session = factory.openSession(true);
		
		} catch (IOException e) {
			e.printStackTrace();
		}
		return session;
	}
}
