<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8" />
    <title>Title</title>
</head>
</html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Music</title>
    <%--    //<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">--%>
    <%--    <script src="https://cdn.tailwindcss.com"></script>--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>


    <style>
        body {
            background-color: #f5f5f5;
            font-family: 'Open Sans', sans-serif;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 0;
        }

        h1 {
            font-size: 2rem;
            font-weight: bold;
        }

        .hero-image {
            width: 30%;
            height: auto;
        }

        .feature-image {
            background-color: #D1D5DB;
            width: 100px;
            height: 100px;
        }

        .section-heading {
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .button-primary {
            background-color: #1a202c;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
        }

        .button-secondary {
            border: 2px solid #1a202c;
            color: #1a202c;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 1rem;
            font-weight: bold;
            cursor: pointer;
            margin-right: 10px;
        }

        /*.center-container {*/
        /*    text-align: center;*/
        /*}*/
    </style>
</head>
<body>

<div class="container">
    <header>
        <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;나만의 감정 DJ, emotion music, emu</h1>
    </header>

    <section class="text-center my-8">
        <button class="button-secondary my-4">Camera Capture</button>
    </section>

<%--사진 출력--%>
    <section class="flex justify-around my-8">
        <div id="imageContainer"></div>
    </section>
    <section class="text-center my-8">
        <div class="mb-4">
            <h3 class="section-heading">사진을 추가해주세요.</h3>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-4 mx-auto mt-5">
                        <form method="post" action="file/upload" enctype="multipart/form-data">
                        <div class="center-container">
                                <img id="imaged"  style="width:350px; height: 350px;" src="" alt="img" >
                                <input onchange="readURL(this);" type="file" name="imaged" class="form-control" style="margin-top:2%;">
<%--                                <input type="file" name="imaged" />--%>
<%--                                <img id="imaged"  style="width:300px; height: 300px;" src="" alt="image" >--%>
                        </div>
<%--                    <form action="/start/showAll" method="post">--%>
                        <button type="submit" class="button-primary"> 시작하기</button>
                    </form>
                    </div>

                </div>
            </div>
            <script>
                function readURL(input) {
                    if (input.files && input.files[0]) {
                        var reader = new FileReader();

                        reader.onload = function(e) {
                            $('#imaged')
                                .attr('src', e.target.result);
                        };
                        reader.readAsDataURL(input.files[0]);
                    }
                }
            </script>

            <h4 class="section-heading my-2">Deep Learning Model:</h4>
            <p>Trained Emotion Recognition Model</p>
        </div>

        <div class="mb-1">
            <h3 class="section-heading">🤬화남 / 😱두려움 / 🥰행복 / 😐무표정 / 😭슬픔 / 😮놀람</h3>
            <p>Emotion-based Playlist:</p>
<%--                <p>🤬화남 / 😱두려움 / 🥰행복 / 😐무표정 / 😭슬픔 / 😮놀람</p>--%>
<%--                <p>😱두려움</p>--%>
<%--                <p>🥰행복</p>--%>
<%--                <p>😐무표정</p>--%>
<%--                <p>😭슬픔</p>--%>
<%--                <p>😮놀람</p>--%>
            <h1> "당신의 감정을 음악으로 번역합니다.<br/> 새로운 감성의 시작, <br/>여기에서."</h1>
            <img src="img/action/KakaoTalk_20240201_195445422.png" alt="" >
            <ul class="list-disc list-inside">
        <br/>
            </ul>
        </div>
    </section>

    <!-- Additional sections as needed -->

    <section class="my-8">
        <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
            <!-- Placeholder for mobile screens -->
        </div>
    </section>
</div>

<script>
    // Your JavaScript goes here
</script>
</body>
</html>
