package ec.edu.ups.dao;



import ec.edu.ups.modelo.user;

public interface DaoUsuario extends GenericDAO<user, String> {

	public abstract user findpPrsona(String correo, String contrasena);

}
