package com.jyw.bbs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jyw.bbs.dto.BoardVO;
import com.jyw.bbs.dto.Criteria;
import com.jyw.bbs.dto.PageMaker;
import com.jyw.bbs.service.BoardService;

@Controller
public class BoardController {
	@Inject
	BoardService service;
	
	
	@RequestMapping("/list")
	public String list(@ModelAttribute("cri") Criteria cri, Model model) {
		int totalCount=service.totalCount(cri);
		PageMaker pageMaker=new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("list", service.selectAll(cri));
		return "list";
	}
	
	@GetMapping("/input")
	public String insert() {
		return "input";
	}
	@PostMapping("/input")
	public String insert(@ModelAttribute("board") BoardVO board) {
		service.insert(board);
		return "redirect:list";
	}
	
	// 폼에 들어갈땐 모델이 있어야 된다.
	@GetMapping("/update")
	public String update(@RequestParam("bno") int bno, Model model) {
		model.addAttribute("board", service.selectOne(bno));
		return "update";
		// 업데이트란 논리뷰로 넣어줘라
	}
	@PostMapping("/update")
	public String update(@ModelAttribute("board") BoardVO board) {
		service.update(board);
		return "redirect:list";
	}
	@GetMapping("/delete")
	public String delete(@RequestParam("bno") int bno) {
		service.delete(bno);
		return "redirect:list";
	}
}
