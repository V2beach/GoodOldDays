<%@ page language="java" import="java.util.*, cn.v2beach.model.*" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<%@include file="Include.jsp"%>
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
	<%@include file="Movie_Template.jsp"%>
	<div class="left_log">
		<div style="border-style:outset;color:#1496bb">
		<div style="color:black">
		
		<table style="font-family:Microsoft Yahei;text-align:left" border="0" cellspacing="0">
			<tr><td><a href="${viewsPath}/Movie_Pages/Movie_Page-1.jsp">2019年《小丑》BD中英双字幕</a></td> <td align="center" width="100px" color="red">2019-10-04</td></tr>
			<tr><td><a href="${viewsPath}/Movie_Pages/Movie_Page0.jsp">2017《速度与激情8》中英双字幕</a></td> <td align="center" width="100px" color="red">2017-04-14</td></tr>
			<%
				int count = 0;
				Movie movie = null;
				int movieid = 0;
				String moviename = " ";
				String publishdate = " ";
				Set<Movie> movieSet = (Set<Movie>)request.getSession().getAttribute("indexMovies");
				Iterator<Movie> it = movieSet.iterator();
				while (count++ <= 28 && it.hasNext()){
					movie = it.next();
					movieid = movie.getMovieid();
					moviename = movie.getMoviename();
					publishdate = movie.getPublishdate().substring(0, 10);
			%>
				<tr><td><a href="${viewsPath}/Movie_Pages/Movie_Page<%=movieid%>.jsp"</a><%=moviename%></td> <td align="center" width="100px" color="red"><%=publishdate%></td></tr>
			<%
				}
			%>
		</table>

		</div>
		</div>
	</div>
	<div class="right_log">
		<div style="border-style:outset;color:#1496bb">
		<div style="color:black">
		
		<table style="font-family:Microsoft Yahei;text-align:left" border="0" cellspacing="0" >
			<%
				while (it.hasNext()){
					movie = it.next();
					movieid = movie.getMovieid();
					moviename = movie.getMoviename();
					publishdate = movie.getPublishdate().substring(0, 10);
			%>
				<tr><td><a href="${viewsPath}/Movie_Pages/Movie_Page<%=movieid%>.jsp"</a><%=moviename%></td> <td align="center" width="100px" color="red"><%=publishdate%></td></tr>
			<%
				}
			%>
		</table>
		<br>
		<strong><center><a href="${path}/MovieAll.v" style="font-family:Microsoft Yahei;font-size:20px">「查看更多」</a></center></strong>
		
		</div>
		</div>
	</div>
	
</body>
</html>