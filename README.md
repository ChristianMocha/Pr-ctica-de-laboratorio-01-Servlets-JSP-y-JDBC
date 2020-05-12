# Pr-ctica-de-laboratorio-01-Servlets-JSP-y-JDBC
- El DAO es un objeto de acceso a datos es un componente de software que suministra una interfaz común entre la aplicación y uno o más dispositivos de almacenamiento de datos, tales como una Base de datos o un archivo.

1. En primer lugar se realizara el crear usuario

<img width="1280" alt="Screen Shot 2020-05-11 at 21 49 00" src="https://user-images.githubusercontent.com/34308608/81633083-75154e80-93d1-11ea-9393-6ab605802517.png">
- En este metodo creamos dentro de un servlet para poder agragar un telefono a la BD
```ruby

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		String cedula=request.getParameter("cedula");
		String nombre=request.getParameter("nombre");
		String apellido=request.getParameter("apellido");
		String email=request.getParameter("email");
		String pass=request.getParameter("passw");
		
		DAOFactory.getFactory().createTables();
	
		
        
		DaoUsuario userDao = DAOFactory.getFactory().getUsuarioDAO();
        user user = new user(cedula, nombre, apellido, email, pass);
        if (userDao.create(user)) {
            response.sendRedirect("/Practica_de_laboratorio_01_Servlets_JSP_y_JDBC/html/Login.html");
            }else{
            System.out.println("Usuario No Creado");
            response.sendRedirect("/Practica_de_laboratorio_01_Servlets_JSP_y_JDBC/html/CreateAccount.html");
        }
		
       
	}
	
	
  ```

2. Al momento que se  crea el usuario, nos redirecciona a la interfaz del login.

<img width="1280" alt="Screen Shot 2020-05-11 at 21 52 11" src="https://user-images.githubusercontent.com/34308608/81633153-adb52800-93d1-11ea-936f-ed11edfe255c.png">

- En este caso para poder iniciar sesion necesitamos pasar el correo asi como la contraseña, en este mismo metodo estamos aplicando un filtro para el logueo, que la aplicación tenga seguridad.

```ruby
protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		String email = request.getParameter("email");
		String pass = request.getParameter("passw");

		DaoUsuario userDao = DAOFactory.getFactory().getUsuarioDAO();
		user user = userDao.findPrsona(email, pass);

		System.out.println("Usuario " + user.toString());

		if (user != null) {
			System.out.println("Usuario encontrado");
			HttpSession session = request.getSession(true);
			System.out.println("Sesion iniciada con el id: " + request.getSession().getId());
			session.setAttribute("sessionID", String.valueOf(session.getId()));

			session.setAttribute("userId", user.getCedula());

			// System.out.println("Id del ususario " +
			// request.getSession().getAttribute("personaId"));

			response.sendRedirect("/Practica_de_laboratorio_01_Servlets_JSP_y_JDBC/Agenda");

		} else {
			System.out.println("Usuario no encontrado");
			response.sendRedirect("/Practica_de_laboratorio_01_Servlets_JSP_y_JDBC/html/Login.html");
		}

	}

```

3. Luego que el usuario acaba de iniciar sesion, nos manda a la pagina de agenda, dentro de la agenda podemos agregar mas telefonos a ese usuario asi como tambien se puede eliminar los numeros  o editar los numero, asi como tambien se puede buscar mediante la cedula o el correo, tambien se aplico un metodo para buscar mediante el numero de celular que tenemos agregado dentro de la agenda de ese usuario.

<img width="1280" alt="Screen Shot 2020-05-11 at 21 54 53" src="https://user-images.githubusercontent.com/34308608/81633306-0d133800-93d2-11ea-91fc-4685d9c987df.png">
