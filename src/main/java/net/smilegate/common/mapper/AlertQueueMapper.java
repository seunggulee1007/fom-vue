package net.smilegate.common.mapper;

import org.apache.ibatis.annotations.Mapper;

import net.smilegate.common.vo.AlertQueue;

@Mapper
public interface AlertQueueMapper {
    public int sendMail(AlertQueue alertQueue);
}
