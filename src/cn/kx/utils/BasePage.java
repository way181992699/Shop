package cn.kx.utils;

import java.util.List;

public class BasePage<T> {
    /**
     * 分页数据
     */
    private List<T> list;
    /**
     * 当前页
     */
    private int currentPage;
    /**
     * 展示多少页
     */
    private int pageSize;
    /**
     * 总页数
     */
    private int total;
    /**
     * 数据总条数
     */
    private int count;

    public BasePage() {
    }

    public BasePage(List<T> list, int currentPage, int pageSize, int total, int count) {
        this.list = list;
        this.currentPage = currentPage;
        this.pageSize = pageSize;
        this.total = total;
        this.count = count;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "BasePage{" +
                "list=" + list +
                ", currentPage=" + currentPage +
                ", pageSize=" + pageSize +
                ", total=" + total +
                ", count=" + count +
                '}';
    }
}
