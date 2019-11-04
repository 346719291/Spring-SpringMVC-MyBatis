package com.entity;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class Servlet8
 */
@WebServlet("/YanCode")
public class YanCode extends HttpServlet {
	public HttpSession session;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public YanCode() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int width=100;
        int height=30;
	    //得到画布
		BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_INT_BGR);
	    //得到画笔
		Graphics g=image.getGraphics();
		 //设置颜色
		g.setColor(Color.white);
		//画一个矩形
		g.fillRect(0, 0, width, height);
		//设置边框
		g.setColor(Color.black);
		g.drawRect(0, 0, width-1, height-1);
		//写字
		String str="ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
		Random ran=new Random();
		StringBuffer sb=new StringBuffer();
		//随机产生4个字符
		int x=20;
		int y=20;
		g.setFont(new Font("微软雅黑",Font.BOLD,20));
		for(int i=0;i<4;i++) {
			//得到一个随机数
			int index=ran.nextInt(str.length());
			//通过随机数得到指定的字符
			char ch=str.charAt(index);
			//将随机数写道图片中
			g.drawString(ch+"", x, y);
			sb.append(ch);
			x+=20;
			System.out.println(sb.toString());
		}
		Color[] colors= {Color.black,Color.black,Color.blue};
		for(int i=0;i<100;i++) {
			g.setColor(colors[ran.nextInt(colors.length)]);
			int x1=ran.nextInt(width);
			int y1=ran.nextInt(height);
//设置干扰线
			g.drawLine(x1, y1, x1+10, y1+10);
		}
		session = request.getSession();
		session.setAttribute("sb", sb.toString());
		session.setMaxInactiveInterval(60*1);
		ImageIO.write(image, "jpg", response.getOutputStream());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
