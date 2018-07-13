package cn.kx.servlet;

import cn.kx.pojo.McType;
import cn.kx.service.IMcTypeService;
import cn.kx.service.Impl.McTypeServiceImpl;
import cn.kx.utils.WebUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/***
 * 商品类别
 */
@WebServlet(name = "Servlet",urlPatterns = "/back/McTypeServlet")
public class McTypeServlet extends HttpServlet {
    IMcTypeService service = new McTypeServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String status = request.getParameter("status");
        request.setAttribute("status",status);
        String task = request.getParameter("task");

        if ("update".equals(task)) {
            int typeid = WebUtil.parserInt(request.getParameter("typeid"));
            McType type = service.queryById(typeid);
            request.setAttribute("type", type);
            List<McType> list = service.queryFather();
            request.setAttribute("list", list);
            request.getRequestDispatcher("mctype/McTypeAdd.jsp").forward(request, response);

        }
        if ("edit".equals(task)) {
            McType type = new McType();
            type.setFatherid(WebUtil.parserInt(request.getParameter("fatherid")));
            type.setTypename(request.getParameter("typename"));
            int typeid = WebUtil.parserInt(request.getParameter("typeid"));
            type.setTypeid(typeid);
            service.update(type);
        }
        if ("add".equals(task)) {
            McType type = new McType();
            type.setFatherid(WebUtil.parserInt(request.getParameter("fatherid")));
            type.setTypename(request.getParameter("typename"));
            service.add(type);
        }
        if ("getFather".equals(task)) {
            List<McType> list = service.queryFather();
            request.setAttribute("list", list);
            request.getRequestDispatcher("mctype/McTypeAdd.jsp").forward(request, response);

        }
        if ("del".equals(task)) {
            int typeid = WebUtil.parserInt(request.getParameter("typeid"));
            try {
                service.del(typeid);
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
        query(request, response, service);
    }

    private static void query(HttpServletRequest request, HttpServletResponse response, IMcTypeService service) throws ServletException, IOException {
        List<McType> list =new ArrayList<>();
        list = service.queryAll();
        request.setAttribute("list",list);
        request.getRequestDispatcher("mctype/ShowMcType.jsp").forward(request, response);
    }
}
