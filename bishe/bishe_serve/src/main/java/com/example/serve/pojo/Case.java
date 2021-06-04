package com.example.serve.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 测试用例表
 * </p>
 *
 * @author yuliqiang
 * @since 2021-06-04
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("t_case")
@ApiModel(value="Case对象", description="测试用例表")
public class Case implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private String title;

    private String condition;

    private String step;

    private String expect;

    private String dependence;

    @ApiModelProperty(value = "0代表功能用例，默认值\n1代表性能用例\n2代表兼容性用例\n3代表UI用例")
    private Integer type;

    @ApiModelProperty(value = "0代表P0，默认值\n1代表P1\n2代表P2\n3代表P3")
    private Integer level;

    @TableField("bug_link")
    private String bugLink;

    @ApiModelProperty(value = "0代表未执行，默认值\n1代表通过\n2代表不通过\n3代表受阻")
    private Integer result;

    @ApiModelProperty(value = "0代表草稿，默认值\n1代表通过\n2代表未通过\n3代表废弃")
    private Integer status;

    private String founder;

    private String operator;

    @TableField("create_time")
    private LocalDateTime createTime;

    @TableField("update_time")
    private LocalDateTime updateTime;

    private Integer project;


}
