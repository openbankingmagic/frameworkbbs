package com.jyw.bbs.service;

import java.util.List;

import com.jyw.bbs.dto.RepleVO;

public interface RepleService {
	public void delete (int rno);
	public void register(RepleVO reple);
	public List<RepleVO> getList(int bno);
	public void remove(int rno);
}
