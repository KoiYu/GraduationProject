package com.example.serve.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.serve.mapper.ProjectMapper;
import com.example.serve.pojo.Project;
import com.example.serve.service.IProjectService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 测试项目表 服务实现类
 * </p>
 *
 * @author yuliqiang
 * @since 2021-06-04
 */
@Service
public class ProjectServiceImpl extends ServiceImpl<ProjectMapper, Project> implements IProjectService {

}
