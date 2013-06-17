package com.dao;

import java.util.List;

import com.Paper;

public interface PaperDao {
	List<Paper> findAllPapers();
	List<Paper> findPaperByUserId(int userId);
	List<Paper> findPaperByPaperType(int paperType);
	
	Paper findPaperByPaperId(int paperId);
	int   findPaperIdByuserIdAndDate(int userId,String paperStartDate);
	
	int addPapers(Paper paper);
	int modifiedStatusBypaperId(int paperId);
	int deletePaperByPaperId(int paperId);
	int deletePaperByUserId(int userId);
}
