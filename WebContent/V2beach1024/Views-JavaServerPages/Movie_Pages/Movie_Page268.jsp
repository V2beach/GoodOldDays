<%@ page language="java" import="java.util.*, cn.v2beach.model.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<%@include file="../Include.jsp"%>
	<style> 
	body {background-image:url('${imgPath}/Wallpaper/memphis-colorful.png');}  
	a:link {
	    color:#000000;
	    text-decoration: none;
	}
    a:visited {
	    color:#000000;
	    text-decoration:none;
    }
    a:hover {
	    color:#FF0000;
	    text-decoration:none;
    }
    a:active {
	    color:#FF0000;
	    text-decoration:none;
    }
	</style>
</head>

<body>
	<%@include file="../Movie_Template.jsp"%>
	<div class="moviecenter_log">
		<div>
		<!--Content Start-->
		<span style="FONT-SIZE: 17px"/>
		●片　　名  Integrity <br />
		●产　　地  中国香港/中国 <br />
		●类　　别  剧情/悬疑/犯罪 <br />
		●语　　言  国语/粤语 <br />
		●上映日期  2019-02-05(中国/中国香港) <br />
		●IMDb评分  5.5/10 from 135 users <br />
		●豆瓣评分  5.5/10 from 27010 users <br />
		●片　　长  114分钟 <br />
		●导　　演  麦兆辉 Alan Mak <br />
		●主　　演  刘青云 Sean Lau <br />
		●简　　介  廉政公署一宗经历多年调查的严重非法内销行贿案件，竟因首被告理达贸易集团负责人陈超群弃保潜逃，以及唯一重要证人兼举报者，理达的前任财务总监许植尧（张家辉饰）缺席出庭作证，导致法庭勒令延审一星期！为了7天后案件顺利重审，ICAC展开全面行动。负责此案的队长陈敬慈（刘青云饰）和负责寻找证人的江雪儿（林嘉欣饰）原是廉政公署一对恩爱夫妻，如今已分居多时，为了案件不得不联手合作。在抓捕陈超群和寻找许植尧的过程中两人都意外发现他们背后隐藏的另一重身份。一个谜团的解开是另一个谜团的开启，背后的阴谋远远超出所有人的想象，烟幕笼罩下光明之路在何方？ <br />
		●影　　评  <a href="${path}/showreviews.v"><strong>「查看影评」</strong></a><br />
		●会　　员  <a href="${path}/AddOneReview.v"><strong>「发表影评」</strong></a><br /><br />
		
		<%	
			UserLogin userlogin = (UserLogin)request.getSession().getAttribute("login");
			String user = "null";
			if (userlogin != null) {
				user = userlogin.getId().toString();//每个用户一个
			}
			String filename = Thread.currentThread().getStackTrace()[1].getFileName();
			request.getSession().setAttribute(user, filename);
			//System.out.println(user + " " + filename);
		%>
		
		<strong><font color="#ff0000"><font size="4">【下载地址】</font></font></strong> <br /><br /><br />
		<strong><font size="4">磁力链点击下载，或复制下面链接下载</font></strong></p>
		<p>&nbsp;</p>
		<p>
		<table style="BORDER-BOTTOM: #cccccc 1px dotted; BORDER-LEFT: #cccccc 1px dotted; TABLE-LAYOUT: fixed; BORDER-TOP: #cccccc 1px dotted; BORDER-RIGHT: #cccccc 1px dotted" border="0" cellspacing="0" cellpadding="6" width="95%" align="center">
		    <tbody>
		        <tr>
		            <td style="WORD-WRAP: break-word" bgcolor="#fdfddf"><a href="ftp://ygdy8:ygdy8@yg45.dydytt.net:4125/阳光电影www.ygdy8.com.廉政风云.HD.720p.国粤双语中字.mkv">ftp://ygdy8:ygdy8@yg45.dydytt.net:4125/阳光电影www.ygdy8.com.廉政风云.HD.720p.国粤双语中字.mkv</a></td>
		        </tr>
		    </tbody>
		</table>
		</p> <br><center></center>
		
		<br>
		<font color=red>下载地址2：<a href="https://www.ygdy8.net/" target="_blank"  title="迅雷电影">点击进入</a> </font >
		&nbsp; &nbsp; <font color=#07519a>温馨提示：如遇迅雷无法下载可换用无限制版尝试用磁力下载!</font>
		
		<BR><BR>
		<font color=red>下载方法：安装软件后，点击即可下载，谢谢大家支持！喜欢本站，请使用Ctrl+D进行添加收藏！</font ><BR>
		
		      <tr>
		        <td colspan="2"><hr color="#CC6600" size="1px" /></td>
		      </tr>
		</tr>
		        <center><a href="http://www.dytt8.net/" target="_blank" ><font color="blue">点击进入：想第一时间下载本站的影片吗？ </font></a></center>
		</div>
	</div>
	
</body>
</html>