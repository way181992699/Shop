package cn.kx.servlet;

import cn.kx.pojo.Mc;
import cn.kx.service.IMcService;
import cn.kx.service.Impl.McServiceImpl;
import cn.kx.utils.BasePage;
import cn.kx.utils.WebUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Servlet 商品信息
 */
@WebServlet(name = "Servlet1",urlPatterns = "/back/McServlet")
public class McServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	IMcService service = new McServiceImpl();
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int currentPage = WebUtil.getCurrentPage(request);
		int pageSize = WebUtil.getPageSize(request);

		BasePage<Mc> page = service.queryPage(null, currentPage, pageSize);
		// 2.将BasePage放入作用域中
		request.setAttribute("page", page);
		// 2.将BasePage放入作用域中
		request.setAttribute("list", page);

		// 3.跳转到相应的jsp页面
		request.getRequestDispatcher("mc/Mc.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
