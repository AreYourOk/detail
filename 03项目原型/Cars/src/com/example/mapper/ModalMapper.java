package com.example.mapper;

import java.util.List;

import org.springframework.ui.Model;

import model.City;
import model.Modal;

public interface ModalMapper {
	public List<Modal> findAllModal();
	
	public int insertOneModal(Modal modal);
}
