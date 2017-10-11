package pixelware.spring.mvc;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;

import org.springframework.web.servlet.DispatcherServlet;

public class MyDispatcherServlet extends DispatcherServlet {
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
		super.init(config);

		System.out.println("\n\nCargada Aplicacion\n\n");
	}

}
