package p1;


import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FileDownload
 */
@WebServlet("/FileDownload")
public class FileDownload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FileDownload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = request.getParameter("path1");
		//System.out.println(path);
		
		int byteReads = 0;
		ServletOutputStream out = response.getOutputStream();//ServletOutputStream Provides an output 
		                                                      //stream for sending binary data to the client
		File myfile = new File(path);
		response.setContentType("image/png");
		BufferedInputStream bis = null;
		
		response.setHeader("Content-disposition", "attachment;filename="+myfile.getName(  )+";");
		response.setContentLength((int)myfile.length());
		bis = new BufferedInputStream(new FileInputStream(myfile));/*A BufferedInputStream adds functionality to another 
		                                                          input stream-namely, the ability to buffer the input and to support
		                                                          the mark and reset methods. When the BufferedInputStream is created, 
		                                                          an internal buffer array is created. As bytes from the stream are read 
		                                                          or skipped, the internal buffer is refilled as necessary from 
	                                                           	 the contained input stream, many bytes at a time.
		                                                         The mark operation remembers a point in the input stream
		                                                         and the reset operation causes all the bytes read since
		                                                        the most recent mark operation to be reread before new bytes are taken 
	                                                          	from the contained input stream.*/
		                                                       //bos = new BufferedOutputStream(out);
		while ((byteReads = bis.read()) != -1) {
			out.write(byteReads);
			
		}
		bis.close();
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
