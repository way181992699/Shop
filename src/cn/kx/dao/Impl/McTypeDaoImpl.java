package cn.kx.dao.Impl;

import cn.kx.dao.IMcTypeDao;
import cn.kx.pojo.McType;
import cn.kx.utils.BaseDao;

import java.util.List;

/***
 * Dao实现类
 * 商品实现类
 */
public class McTypeDaoImpl extends BaseDao implements IMcTypeDao {


    private String sql;

    @Override
    public int add(McType type) {
        sql = "insert into t_mctype values(seq_t_mctype.nextval,?,?)";
        return super.baseUpdate(sql,type.getTypename(),type.getFatherid());
    }

    @Override
    public int del(int id) {
        sql = "delete from T_MCTYPE where TYPEID=? or fatherid =?";
        return super.baseUpdate(sql,id,id);
    }

    @Override
    public int update(McType type) {
        sql = "update T_MCTYPE set TYPENAME=?,FATHERID=? where TYPEID=?";
        return super.baseUpdate(sql,type.getTypename(),type.getFatherid(),type.getTypeid());
    }

    @Override
    public List<McType> queryAll() {
        sql = "select * from  T_MCTYPE order by TYPEID asc";
        return super.baseQuery(sql,McType.class);
    }

    @Override
    public McType queryById(int id) {
        sql = "select * from T_MCTYPE where TYPEID = ?";

        return super.baseQueryById(sql, McType.class, id);
    }

    @Override
    public List<McType> queryFather() {
        sql = "select * from  T_MCTYPE where FATHERID =0";
        return super.baseQuery(sql,McType.class);
    }
}
