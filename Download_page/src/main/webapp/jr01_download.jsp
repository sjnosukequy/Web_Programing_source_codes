<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css" />
</head>

<body>
    <div id="container">
        <h1>Downloads</h1>
        <h2>Joe Rut - Genuine Wood Grained Finish</h2>
        <div id="disc">
            <img id="big_black" src = "./imgs/giphy.gif"> </img>
            <img class="BG_ALBUM" src="./imgs/4.jpg">
            <div id="smol_black"> </div>
        </div>

        <table>
            <tr>
                <th>Song title</th>
                <th>Audio Format</th>
            </tr>
            <tr>
                <td>Filter</td>
                <td><a href="./sound/${productCode}/filter.mp3">MP3</a></td>
            </tr>
            <tr>
                <td>So Long Lazy Ray</td>
                <td><a href="./sound/${productCode}/so_long.mp3">MP3</a></td>
            </tr>
        </table>
        <div class="BUTT_BOX">
            <a class="BUTT" href="?action=viewAlbums">View list of albums</a>
            <a class="BUTT" href="?action=viewCookies">View all cookies</a>
        </div>
    </div>
    <a href="/"> <button class="Back_BUTT"> Back to home website </button> </a>
</body>

</html>