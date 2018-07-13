package cn.kx.service;

import cn.kx.pojo.McType;

import java.util.List;

/***
 * 服务层接口
 */
public interface IMcTypeService {

    /***
     * 添加商品信息
     * @return int
     */
    public int add(McType type);

    /***
     * 删除商品
     * @param id
     * @return
     */
    public int del(int id);

    /***
     * 修改信息
     * @param type
     * @return
     */
    public int update(McType type);

    /***
     * 查询所有商品信息
     * @return
     */
    public List<McType> queryAll();

    /***
     * 根据主键id查询单个商品信息
     * @param id
     * @return
     */
    public McType queryById(int id);

    /***
     * 查询父类信息
     * @return
     */
    public List<McType> queryFather();
}
