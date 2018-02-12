<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="utf-8">
	<title>Verkefni 5</title>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
<h1>Verkefni 5</h1>
<div class="container">
	%import datetime
	%for atridi in data['results']:
	<div class="box">
		%date = datetime.datetime.strptime(atridi['dateOfShow'], '%Y-%m-%dT%H:%M:%S')
		%date2 = date.strftime('%H:%M | %d/%m/%Y')
		<h2>{{atridi['eventDateName']}}</h2>
		<h4>{{atridi['eventHallName']}}</h4>
		<h4>{{date2}}</h4>
		<img src="{{atridi['imageSource']}}">
	</div>
	%end
</div>
</body>
</html>
