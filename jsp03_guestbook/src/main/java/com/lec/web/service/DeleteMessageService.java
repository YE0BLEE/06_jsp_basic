package com.lec.web.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.lec.web.dao.MessageDAO;
import com.lec.web.exception.InvalidPasswordException;
import com.lec.web.exception.MessageNotFoundException;
import com.lec.web.exception.ServiceException;
import com.lec.web.jdbc.ConnectionProvider;
import com.lec.web.jdbc.JDBCUtil;
import com.lec.web.model.Message;

public class DeleteMessageService {

	// singleton
	private DeleteMessageService() {}
	private static DeleteMessageService instance = new DeleteMessageService();
	public static DeleteMessageService getInstance() { return instance; }
	
	public void deleteMessage(int id, String pw) {
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);
			MessageDAO messageDAO = MessageDAO.getInstance();
			Message message = messageDAO.select(conn, id);
			
			if(message == null) throw new MessageNotFoundException(id + "Message Not Founded");
			if(!message.matchPassword(pw)) throw new InvalidPasswordException("Wrong Password. Try Again.");
			
			messageDAO.delete(conn, id);
			conn.commit();
			
		} catch (SQLException e) {
			throw new ServiceException("Deletion Failed" + e.getMessage(), null);
		} catch(MessageNotFoundException | InvalidPasswordException e) {
			JDBCUtil.rollback(conn);
			throw e;
		} finally {
			JDBCUtil.close(conn, null, null);
		}
	}
}
