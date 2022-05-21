package com.javaclass.domain.user;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private String boardDate;
	private String boardFname;
	private String boardRFname;
	
	MultipartFile file;
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		//파일 업로드 작업
		if(!file.isEmpty()) {
			this.boardFname = file.getOriginalFilename();//사용자가 올리는 사진파일명
			
			//실제 저장되는 파일명 만들기
			UUID uuid = UUID.randomUUID();
			boardRFname = uuid.toString() + "_" + boardFname;
			
			//저장 : File - 자바에서 파일과 디렉토리를 생성, 삭제, 관리하는 클래스 
			//upload 폴더 경로 찾기
			File f = new File("C:\\Users\\kimja\\Git\\semiProject\\src\\main\\webapp\\resources\\upload\\" + boardRFname);
			
			try {
				file.transferTo(f);
			}
			 catch (Exception e) {
				e.printStackTrace();
			}			
		}
	}
	
	
	public BoardVO() {
		super();
	}

	public BoardVO(int boardNo, String boardTitle, String boardContent, String boardDate) {
		super();
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardDate = boardDate;
	}

	//getter setter
	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}


	public String getBoardFname() {
		return boardFname;
	}


	public void setBoardFname(String boardFname) {
		this.boardFname = boardFname;
	}


	public String getBoardRFname() {
		return boardRFname;
	}

	public void setBoardRFname(String boardRFname) {
		this.boardRFname = boardRFname;
	}
	

}
