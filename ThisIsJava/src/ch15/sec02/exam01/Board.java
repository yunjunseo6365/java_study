package ch15.sec02.exam01;

public class Board {
	private String subject;
	private String content;
	private String write;
	
	public Board(String subject, String content, String write) {
		this.subject = subject;
		this.content = content;
		this.write = write;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWrite() {
		return write;
	}

	public void setWrite(String write) {
		this.write = write;
	}
}
