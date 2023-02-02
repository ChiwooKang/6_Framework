package edu.kh.project.chatting.model.service;

import java.util.List;
import java.util.Map;

import edu.kh.project.chatting.model.vo.ChattingRoom;
import edu.kh.project.chatting.model.vo.Message;

public interface ChattingService {

	/** 채팅방 있는지 확인
	 * @param map
	 * @return
	 */
	int checkChattingNo(Map<String, Integer> map);

	// 채팅방 생성
	int createChattingRoom(Map<String, Integer> map);

	
	/** 참여중인 채팅방
	 * @param memberNo
	 * @return
	 */
	List<ChattingRoom> selectRoomList(int memberNo);
	
    /** 메세지 삽입
     * @param msg
     * @return
     */
    int insertMessage(Message msg);

    /** 읽음 처리
     * @param paramMap
     * @return
     */
    int updateReadFlag(Map<String, Object> paramMap);

    /** 특정 채팅방 메시지 목록 조회
     * @param paramMap
     * @return
     */
    List<Message> selectMessageList( Map<String, Object> paramMap);

}
