package com.example.vms.entity;

import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author vms
 * @since 2024-11-17
 */
@Data
@EqualsAndHashCode(callSuper = false)
@ApiModel(value="University对象", description="")
public class University implements Serializable {

    private static final long serialVersionUID = 1L;

    private Long schoolCode;

    private String name;

    private String level;

    private String region;

    private String location;

    private Integer scoreLine;

    private String websiteLink;


}
