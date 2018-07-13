package cn.kx.service.Impl;

import cn.kx.dao.IMcTypeDao;
import cn.kx.dao.Impl.McTypeDaoImpl;
import cn.kx.pojo.McType;
import cn.kx.service.IMcTypeService;

import java.util.List;

public class McTypeServiceImpl implements IMcTypeService {
        IMcTypeDao dao = new McTypeDaoImpl();

    @Override
    public int add(McType type) {
        return dao.add(type);
    }

    @Override
    public int del(int id) {
        return dao.del(id);
    }

    @Override
    public int update(McType type) {
        return dao.update(type);
    }

    @Override
    public List<McType> queryAll() {
        return dao.queryAll();
    }

    @Override
    public McType queryById(int id) {
        return dao.queryById(id);
    }

    @Override
    public List<McType> queryFather() {
        return dao.queryFather();
    }
}
