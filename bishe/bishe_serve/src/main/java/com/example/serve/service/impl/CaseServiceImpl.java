package com.example.serve.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.mapper.CaseMapper;
import com.example.pojo.Case;
import com.example.service.ICaseService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 测试用例表 服务实现类
 * </p>
 *
 * @author yuliqiang
 * @since 2021-05-24
 */
@Service
public class CaseServiceImpl extends ServiceImpl<CaseMapper, Case> implements ICaseService {

}
