package cn.kx.service.Impl;

import cn.kx.dao.IMcDao;
import cn.kx.dao.Impl.McDaoImpl;
import cn.kx.pojo.Mc;
import cn.kx.service.IMcService;
import cn.kx.utils.BasePage;

import java.util.List;
/**
 * Service 实现类 商品信息
 * @author dpb
 *
 */
public class McServiceImpl implements IMcService {

	IMcDao dao = new McDaoImpl();
	@Override
	public int add(Mc mc) {
		// TODO Auto-generated method stub
		return dao.add(mc);
	}

	@Override
	public int update(Mc mc) {
		// TODO Auto-generated method stub
		return dao.update(mc);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return dao.delete(id);
	}

	@Override
	public List<Mc> queryAll() {
		// TODO Auto-generated method stub
		return dao.queryAll();
	}

	@Override
	public Mc queryById(int id) {
		// TODO Auto-generated method stub
		return dao.queryById(id);
	}

	@Override
	public BasePage<Mc> queryPage(Mc mc, int currentPage, int pageSize) {
		// TODO Auto-generated method stub
		return dao.queryPage(mc, currentPage, pageSize);

	}

}
