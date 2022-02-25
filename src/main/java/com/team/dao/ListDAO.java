package com.team.dao;

import java.util.List;
import java.util.Map;

import com.team.domain.PageDTO;
import com.team.domain.CartegoryDTO;
import com.team.domain.HotKeywordDTO;
import com.team.domain.ListDTO;

public interface ListDAO {
	//	검색어 저장 main
	public void insertSearch(HotKeywordDTO hotKeywordDTO);
	//	인기검색어 main
	public List<HotKeywordDTO> hotKeyword();
	//	신규상품 리스트 main
	public List<ListDTO> getTodayNewList();
	//	인기리스트 main
	public List<ListDTO> healthList();
	//  가공식품리스트 main	
	public List<ListDTO> getProcessedList();
	//  신선식품 main	
	public List<ListDTO> getfreshList();
	//  차/티백 main	
	public List<ListDTO> getTeaList();
	//  생활잡화 main	
	public List<ListDTO> getDailyList();
	//  주간 베스트 main	
	public List<ListDTO> weekBestList();
	//Top 100
	public List<ListDTO> getBestList(PageDTO pageDTO);
	//NEW 
	public List<ListDTO> getNewList(PageDTO pageDTO);
	//menuCategory
	public List<CartegoryDTO> menuCategory();
	//상품 상세페이지
	public ListDTO goodsView(int goodsNo);
	//검색메뉴
	public List<ListDTO> cateSubList(Map<String, Object> countMav);
	//검색 이랑 전체리스트 count
	public Integer count(Map<String, Object> countMav);
	//New BEST count
	public Integer Newcount(PageDTO pageDTO);
	public Integer Bestcount(PageDTO pageDTO);
	
}
