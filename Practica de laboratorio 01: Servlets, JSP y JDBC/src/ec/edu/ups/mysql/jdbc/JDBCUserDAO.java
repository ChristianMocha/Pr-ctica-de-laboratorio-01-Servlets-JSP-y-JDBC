package ec.edu.ups.mysql.jdbc;


import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import ec.edu.ups.dao.DaoUsuario;
import ec.edu.ups.modelo.user;


public class JDBCUserDAO extends JDBCGenericDAO<user, String> implements DaoUsuario {

	@Override
	public void createTable() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void create(user entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public user read(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(user entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(user entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<user> find() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public user findpPrsona(String correo, String contrasena) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public user findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	
	

}
