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
 * 缺陷报告表
 * </p>
 *
 * @author yuliqiang
 * @since 2021-05-24
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("t_bug")
@ApiModel(value="Bug对象", description="缺陷报告表")
public class Bug implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    private Integer project;

    @TableField("case_link")
    private String caseLink;

    private String description;

    private String message;

    @ApiModelProperty(value = "0代表 P0，默认值\n1代表 P1\n2代表 P2\n3代表 P3")
    private Integer level;

    @ApiModelProperty(value = "0代表新提交，默认值\n1代表已修复\n2代表已发布\n3代表重新打开")
    private Integer status;

    private String founder;

    private String operator;

    @TableField("create_time")
    private LocalDateTime createTime;

    @TableField("update_time")
    private LocalDateTime updateTime;


}
