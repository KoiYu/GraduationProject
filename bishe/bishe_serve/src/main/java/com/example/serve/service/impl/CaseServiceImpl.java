package com.example.serve.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.serve.mapper.CaseMapper;
import com.example.serve.pojo.Case;
import com.example.serve.service.ICaseService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 测试用例表 服务实现类
 * </p>
 *
 * @author yuliqiang
 * @since 2021-06-04
 */
@Service
public class CaseServiceImpl extends ServiceImpl<CaseMapper, Case> implements ICaseService {

}
