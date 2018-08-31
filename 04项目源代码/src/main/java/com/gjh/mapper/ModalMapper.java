package com.gjh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gjh.model.Modal;
@Mapper
public interface ModalMapper {
	public List<Modal> findAllModal();
	
	public int insertOneModal(Modal modal);
}
