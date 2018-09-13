package controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;

import model.Board;
import service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService bService;
	
	@RequestMapping("customerSendQuestion.do")
	public String customerSendQuestion(HttpSession session, String title, String content) {
		String userId = (String) session.getAttribute("userId");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Board b = new Board();
		b.setContent(content);
		b.setTitle(title);
		b.setUserId(userId);
		b.setWriteDate(sdf.format(new Date()));
		bService.insertBoard(b);
		return "customerCenter";
	}
	
	@RequestMapping("memberMyQuestion.do")
	public String memberMyQuestion(Model model, HttpSession session) {
		String userId = (String) session.getAttribute("userId");
		if(bService.selectAll(userId).size()!=0) {
			List<Board> boardList = bService.selectAll(userId);
			Gson gson = new Gson();
			String board = gson.toJson(boardList);
			model.addAttribute("board", board);
		}
		return "memberMyQuestionBoard";
	}

}
