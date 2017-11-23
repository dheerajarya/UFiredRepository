<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>

</head>
<body>

<a href="index.jsp?video_name=video.wmv" name="video_name">Click to play</a>
<% String vname=null;
vname=request.getParameter("video_name");
%>
<embed type="application/x-mplayer2" pluginspage="http://www.microsoft.com/Windows/MediaPlayer/" name="mediaplayer1" ShowStatusBar="true" EnableContextMenu="false" autostart="false" width="320" height="240" loop="false" src="<%= vname %>" />
</body>
</html>