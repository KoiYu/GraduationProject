package com.example.service.impl;

import com.example.pojo.Project;
import com.example.mapper.ProjectMapper;
import com.example.service.IProjectService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
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
