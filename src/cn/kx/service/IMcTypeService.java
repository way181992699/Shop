package cn.kx.service;

import cn.kx.pojo.McType;

import java.util.List;

/***
 * �����ӿ�
 */
public interface IMcTypeService {

    /***
     * �����Ʒ��Ϣ
     * @return int
     */
    public int add(McType type);

    /***
     * ɾ����Ʒ
     * @param id
     * @return
     */
    public int del(int id);

    /***
     * �޸���Ϣ
     * @param type
     * @return
     */
    public int update(McType type);

    /***
     * ��ѯ������Ʒ��Ϣ
     * @return
     */
    public List<McType> queryAll();

    /***
     * ��������id��ѯ������Ʒ��Ϣ
     * @param id
     * @return
     */
    public McType queryById(int id);

    /***
     * ��ѯ������Ϣ
     * @return
     */
    public List<McType> queryFather();
}
