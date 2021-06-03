package com.example.serve.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.mapper.ProjectMapper;
import com.example.pojo.Project;
import com.example.service.IProjectService;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 测试项目表 服务实现类
 * </p>
 *
 * @author yuliqiang
 * @since 2021-05-24
 */
@Service
public class ProjectServiceImpl extends ServiceImpl<ProjectMapper, Project> implements IProjectService {

}
