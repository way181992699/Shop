package cn.kx.servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(name = "Servlet", urlPatterns = "/page")
public class PageServlet extends HttpServlet {

//
//    private int currentPage;
//    private int pageSize;
//    private int total;
//    private int count;
//    private List<User> listsub;
//    private int endIndex;
//    private List<User> list;
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doGet(request, response);
//    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        System.out.println("doGet");
//        currentPage = WebUtils.getCurrentPage(request);
//        pageSize = WebUtils.getPageSize(request);
//
//        list = getUsers();
//        endIndex = (currentPage + 1) * pageSize > list.size() ? list.size() : (currentPage + 1) * pageSize;
//        listsub = list.subList(currentPage * pageSize, endIndex);
//        total = (list.size() - 1) / pageSize;
//        count = list.size();
//        BasePage<User> basePage = new BasePage<>();
//        basePage.setList(listsub);
//        basePage.setTotal(total);
//        basePage.setCount(count);
//        basePage.setCurrentPage(currentPage);
//        basePage.setPageSize(pageSize);
//
//        System.out.println(basePage);
//        HttpSession session = request.getSession();
////        session.setAttribute("page",basePage);
//        request.setAttribute("page", basePage);
//        request.getRequestDispatcher("page.jsp").forward(request, response);
//    }
//
//    private static List<User> getUsers() {
//        List<User> list = new ArrayList<>();
//        for (int i = 1; i <= 302; i++) {
//            list.add(new User(i, "July" + i, "ÃÜÂë" + i));
//
//        }
//        return list;
//    }
//

}
