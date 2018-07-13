package cn.kx.pojo;

/***
 * javabean
 *
 */
public class McType {
    private int typeid;
    private String typename;
    private int fatherid;

    public McType() {

    }

    public int getTypeid() {
        return typeid;
    }

    public void setTypeid(int typeid) {
        this.typeid = typeid;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }

    public int getFatherid() {
        return fatherid;
    }

    public void setFatherid(int fatherid) {
        this.fatherid = fatherid;
    }

    @Override
    public String toString() {
        return "McType{" +
                "typeid=" + typeid +
                ", typename='" + typename + '\'' +
                ", fatherid=" + fatherid +
                '}';
    }
}
