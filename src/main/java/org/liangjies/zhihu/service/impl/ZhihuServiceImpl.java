package org.liangjies.zhihu.service.impl;

import org.liangjies.zhihu.entity.Zhihu;
import org.liangjies.zhihu.dao.ZhihuDao;
import org.liangjies.zhihu.service.ZhihuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Zhihu)表服务实现类
 *
 * @author liangjies
 * @since 2020-03-30 00:30:54
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class ZhihuServiceImpl implements ZhihuService {
    @Autowired
    private ZhihuDao zhihuDao;

    /**
     * 通过answer ID查询单条数据
     *
     * @param answer 主键
     * @return 实例对象
     */
    public Zhihu queryByAnswer(Integer answer){
        return this.zhihuDao.queryByAnswer(answer);
    }

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public Zhihu queryById(Integer id) {
        return this.zhihuDao.queryById(id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Zhihu> queryAllByLimit(int offset, int limit) {
        return this.zhihuDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param zhihu 实例对象
     * @return 实例对象
     */
    @Override
    public Zhihu insert(Zhihu zhihu) {
        this.zhihuDao.insert(zhihu);
        return zhihu;
    }

    /**
     * 修改数据
     *
     * @param zhihu 实例对象
     * @return 实例对象
     */
    @Override
    public Zhihu update(Zhihu zhihu) {
        this.zhihuDao.update(zhihu);
        return this.queryById(zhihu.getId());
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer id) {
        return this.zhihuDao.deleteById(id) > 0;
    }
}