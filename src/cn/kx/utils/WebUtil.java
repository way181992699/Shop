package cn.kx.utils;

import javax.servlet.http.HttpServletRequest;

/**
 * 本项目中公共方法
 * @author dpb
 *
 */
public class WebUtil {



	public static final String CURRENT_PAGE = "currentPage";
	public static final String PAGE_SIZE = "pageSize";
	public static int cPage;
	public static int pSize;

	/**
	 * 判断字符串时候为空
	 *
	 * @param str 需要判断的字符串
	 * @return true 空
	 * false 非空
	 */
	public static boolean isEmpty(String str) {
		if (str != null && !"".equals(str)) {
			return false;
		}

		return true;

	}

	/**
	 * 将数字类型的字符串转化成int
	 *
	 * @param   str
	 * @return 转化的结果
	 */
	public static int parserInt(String str) {

		try {
			if (!str.isEmpty()) {

				return Integer.parseInt(str.trim());
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return 0;
	}

	/**
	 * @param request
	 * @param currentPage request传递过来的当前页参数
	 * @param defValue    设置默认当前页的值
	 * @return
	 */
	public static int getCurrentPage(HttpServletRequest request, String currentPage, int defValue) {
		cPage = defValue;
		String currentPageStr = request.getParameter(currentPage);
		if (!isEmpty(currentPageStr)) {
			cPage = parserInt(currentPageStr);
		}
		return cPage;
	}

	/**
	 * 获取request 传递过来的当前页  默认传递参数"currentPage",默认当前页 0；
	 *
	 * @param request
	 * @return
	 */
	public static int getCurrentPage(HttpServletRequest request) {
		String currentPageStr = request.getParameter(CURRENT_PAGE);
		cPage = 0;
		if(!isEmpty(currentPageStr)){
			// 表示请求有传过来具体是哪一页
			cPage = parserInt(currentPageStr);
		}
		return cPage;
	}

	/**
	 * @param request
	 * @param pageSize request传递过来的显示多少条的参数
	 * @param defValue 设置每页显示多少条
	 * @return
	 */
	public static int getPageSize(HttpServletRequest request, String pageSize, int defValue) {
		pSize = defValue;
		String pageSizeStr = request.getParameter(pageSize);
		if (!isEmpty(pageSizeStr)) {
			pSize = parserInt(pageSizeStr);
		}
		return pSize;
	}

	/**
	 * @param request request传递过来的显示多少条的参数 默认传递参数"pageSize" 默认展示：10条
	 * @return
	 */
	public static int getPageSize(HttpServletRequest request) {
		String pageSizePageStr = request.getParameter(PAGE_SIZE);
		pSize = 10;
		if(!isEmpty(pageSizePageStr)){
			// 表示请求有传过来具体是哪一页
			pSize = parserInt(pageSizePageStr);
		}
		return pSize;
	}
	/**
	 * 根据request获取传递过来的当前的页数
	 * @param request
	 * @param defValue 默认值
	 * @return
	 *
	 */
	public static int getCurrentPage(HttpServletRequest request,int defValue){
		String currentPageStr = request.getParameter("currentPage");
		int currentPage = defValue;
		if(!WebUtil.isEmpty(currentPageStr)){
			// 表示请求有传过来具体是哪一页
			currentPage = parserInt(currentPageStr);
		}
		return currentPage;
	}

	/**
	 * 根据request获取传递过来的每页显示的条数
	 * @param request
	 * @param defValue 默认的条数
	 * @return
	 */
	public static int getPageSize(HttpServletRequest request,int defValue){
		String pageSizeStr = request.getParameter("pageSize");
		int pageSize = defValue;
		if(!WebUtil.isEmpty(pageSizeStr)){
			// 表示有pageSize
			pageSize = parserInt(pageSizeStr);
		}
		return pageSize;
	}



}
