package org.liangjies.zhihu.service;

import org.liangjies.zhihu.entity.Zhihu;
import java.util.List;

/**
 * (Zhihu)表服务接口
 *
 * @author liangjies
 * @since 2020-03-30 00:30:54
 */
public interface ZhihuService {
    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    Zhihu queryById(Integer id);

    /**
     * 通过answer ID查询单条数据
     *
     * @param answer 主键
     * @return 实例对象
     */
    Zhihu queryByAnswer(Integer answer);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Zhihu> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param zhihu 实例对象
     * @return 实例对象
     */
    Zhihu insert(Zhihu zhihu);

    /**
     * 修改数据
     *
     * @param zhihu 实例对象
     * @return 实例对象
     */
    Zhihu update(Zhihu zhihu);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    boolean deleteById(Integer id);

}