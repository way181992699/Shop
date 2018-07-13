package cn.kx.utils;

import javax.servlet.http.HttpServletRequest;

/**
 * ����Ŀ�й�������
 * @author dpb
 *
 */
public class WebUtil {



	public static final String CURRENT_PAGE = "currentPage";
	public static final String PAGE_SIZE = "pageSize";
	public static int cPage;
	public static int pSize;

	/**
	 * �ж��ַ���ʱ��Ϊ��
	 *
	 * @param str ��Ҫ�жϵ��ַ���
	 * @return true ��
	 * false �ǿ�
	 */
	public static boolean isEmpty(String str) {
		if (str != null && !"".equals(str)) {
			return false;
		}

		return true;

	}

	/**
	 * ���������͵��ַ���ת����int
	 *
	 * @param   str
	 * @return ת���Ľ��
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
	 * @param currentPage request���ݹ����ĵ�ǰҳ����
	 * @param defValue    ����Ĭ�ϵ�ǰҳ��ֵ
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
	 * ��ȡrequest ���ݹ����ĵ�ǰҳ  Ĭ�ϴ��ݲ���"currentPage",Ĭ�ϵ�ǰҳ 0��
	 *
	 * @param request
	 * @return
	 */
	public static int getCurrentPage(HttpServletRequest request) {
		String currentPageStr = request.getParameter(CURRENT_PAGE);
		cPage = 0;
		if(!isEmpty(currentPageStr)){
			// ��ʾ�����д�������������һҳ
			cPage = parserInt(currentPageStr);
		}
		return cPage;
	}

	/**
	 * @param request
	 * @param pageSize request���ݹ�������ʾ�������Ĳ���
	 * @param defValue ����ÿҳ��ʾ������
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
	 * @param request request���ݹ�������ʾ�������Ĳ��� Ĭ�ϴ��ݲ���"pageSize" Ĭ��չʾ��10��
	 * @return
	 */
	public static int getPageSize(HttpServletRequest request) {
		String pageSizePageStr = request.getParameter(PAGE_SIZE);
		pSize = 10;
		if(!isEmpty(pageSizePageStr)){
			// ��ʾ�����д�������������һҳ
			pSize = parserInt(pageSizePageStr);
		}
		return pSize;
	}
	/**
	 * ����request��ȡ���ݹ����ĵ�ǰ��ҳ��
	 * @param request
	 * @param defValue Ĭ��ֵ
	 * @return
	 *
	 */
	public static int getCurrentPage(HttpServletRequest request,int defValue){
		String currentPageStr = request.getParameter("currentPage");
		int currentPage = defValue;
		if(!WebUtil.isEmpty(currentPageStr)){
			// ��ʾ�����д�������������һҳ
			currentPage = parserInt(currentPageStr);
		}
		return currentPage;
	}

	/**
	 * ����request��ȡ���ݹ�����ÿҳ��ʾ������
	 * @param request
	 * @param defValue Ĭ�ϵ�����
	 * @return
	 */
	public static int getPageSize(HttpServletRequest request,int defValue){
		String pageSizeStr = request.getParameter("pageSize");
		int pageSize = defValue;
		if(!WebUtil.isEmpty(pageSizeStr)){
			// ��ʾ��pageSize
			pageSize = parserInt(pageSizeStr);
		}
		return pageSize;
	}



}
