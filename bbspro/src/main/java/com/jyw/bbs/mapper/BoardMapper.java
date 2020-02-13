package com.jyw.bbs.mapper;

import java.util.List;

import com.jyw.bbs.dto.BoardVO;
import com.jyw.bbs.dto.Criteria;

public interface BoardMapper {
	public List<BoardVO> getList();
	public void insert(BoardVO board);
	public void insertSelectKey(BoardVO board);
	public BoardVO read(int bno);
	public void delete(int bno);
	public int update(BoardVO board);
	public void updateReadCount(int bno);
	public List<BoardVO> oraListPaging(Criteria cri);
	public int totalCount();
}
