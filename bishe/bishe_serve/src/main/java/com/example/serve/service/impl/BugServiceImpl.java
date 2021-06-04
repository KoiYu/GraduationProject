package com.example.serve.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.serve.mapper.BugMapper;
import com.example.serve.pojo.Bug;
import com.example.serve.service.IBugService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 缺陷报告表 服务实现类
 * </p>
 *
 * @author yuliqiang
 * @since 2021-06-04
 */
@Service
public class BugServiceImpl extends ServiceImpl<BugMapper, Bug> implements IBugService {

}
