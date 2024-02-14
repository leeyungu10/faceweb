<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <title>
        개빡침
    </title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/img/css/global.css" />
    <link rel="stylesheet" href="/img/css/index.css" />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;600;700&display=swap"
    />
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css2?family=Circular Std:wght@400;500&display=swap"
    />
</head>
<body>



<div class="macbook-air-1">
    <div class="top-bar">
        <div class="top-bar-child"></div>
        <div class="title">감정색</div>
        <b class="title1">화 남</b>
        <div class="navigation">
            <div class="tab">angry</div>
            <div class="tab">怒っています</div>
            <div class="tab">愤怒。</div>
            <div class="tab">tức giận</div>
        </div>
    </div>
    <img class="macbook-air-1-child" alt="" src='http://www.w3.org/2000/svg'>
    <div class="container">
        <div class="list">
            <div class="card">
                <img src="${fileName}" style="width:400px; height: 400px;" alt="Uploaded Phfoto">
            </div>
            <div>
                <iframe id="ytplayer"
                        type="text/html"
                        width="520"
                        height="405"
                        src="https://www.youtube.com/embed/${angry_list}?autoplay=1&mute=0--"
                <%--                        autoplay=1&mute=1--%>
                        frameborder="0" allowfullscreen>
                </iframe>
            </div>
        </div>

    </div>
</div>

<b class="title5">업로드한 사진</b>

<div class="section">
    <div class="row">
        <div class="article">
            <div class="image-container">
                <div class="image"></div>
            </div>
            <div class="title-parent">
                <div class="title7">과일 섭취</div>
                <div class="subtitle2">귤 먹기</div>
                <div class="subtitle3">
                    귤의 베타카로틴 성분은 유해산소를 없애는데<br/>효과가 있어
                    스트레스와 불면증에 효과가 있다.

                </div>
            </div>
        </div>
    </div>
    <div class="row1">
        <div class="article">
            <div class="image-container2">
                <div class="image"></div>
            </div>
            <div class="title-parent">
                <div class="title7">진정효과 1</div>
                <div class="subtitle2">심 호흡하기</div>
                <div class="subtitle3">
                    심호흡은 몸에 더 많은 산소를 공급하여 활력을 <br>주는 효과를 가져올 수 있습니다. <br>증가된 산소 수치는 다양한 신체 기능을 <br>지원하며 차분한 사고 방식에 기여할 수 있습니다.
                </div>

            </div>
        </div>
    </div>
    <div class="row2">
        <div class="article">
            <div class="image-container3">
                <div class="image"></div>
            </div>
            <div class="title-parent">
                <div class="title7">따뜻한 음료 마시기</div>
                <div class="subtitle2">차 마시기</div>
                <div class="subtitle3">
                    녹차에는 L-테아닌이라는 아미노산이 함유되어 있으며,<br> 이는 휴식을 촉진하고 스트레스를 줄일수 있다.
                </div>

            </div>
        </div>
    </div>
    <div class="row3">
        <div class="article">
            <div class="image-container4">
                <div class="image"></div>
            </div>
            <div class="title-parent">
                <div class="title7">진정 효과2</div>
                <div class="subtitle2">명 상 </div>
                <div class="subtitle3">
                    명상은 신체의 스트레스 반응 감소와 관련이 있습니다. <br>화가 났을 때 명상을 하면 심박수 증가, 코티솔 수치 증가 등 <br>분노로 인한 생리적 영향을 완화할 수 있습니다.
                </div>

            </div>
        </div>
    </div>
    <%--    <div class="row4">--%>
    <%--        <div class="article">--%>
    <%--            <div class="image-container2">--%>
    <%--                <div class="image"></div>--%>
    <%--            </div>--%>
    <%--            <div class="title-parent">--%>
    <%--                <div class="title7">Step 1</div>--%>
    <%--                <div class="subtitle2">Capture</div>--%>
    <%--                <div class="subtitle3">--%>
    <%--                    Take a selfie expressing your emotions--%>
    <%--                </div>--%>
    <%--                <div class="user">--%>
    <%--                    <div class="avatar">--%>
    <%--                        <div class="avatar1"></div>--%>
    <%--                        <div class="title-wrapper">--%>
    <%--                            <div class="title8">User</div>--%>
    <%--                        </div>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </div>--%>
    <%--    </div>--%>
    <%--    <div class="row5">--%>
    <%--        <div class="article">--%>
    <%--            <div class="image-container3">--%>
    <%--                <div class="image"></div>--%>
    <%--            </div>--%>
    <%--            <div class="title-parent">--%>
    <%--                <div class="title7">Step 2</div>--%>
    <%--                <div class="subtitle2">Analyze</div>--%>
    <%--                <div class="subtitle3">글자는 형태만. 나중에 채우기</div>--%>
    <%--                <div class="user">--%>
    <%--                    <div class="avatar">--%>
    <%--                        <div class="avatar1"></div>--%>
    <%--                        <div class="title-wrapper">--%>
    <%--                            <div class="title8">My App</div>--%>
    <%--                        </div>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </div>--%>
    <%--    </div>--%>

    <%--    <div class="row6">--%>
    <%--        <div class="article2">--%>
    <%--            <div class="image-container4">--%>
    <%--                <div class="image"></div>--%>
    <%--            </div>--%>
    <%--            <div class="title-parent">--%>
    <%--                <div class="title7">Step 2</div>--%>
    <%--                <div class="subtitle2">Analyze</div>--%>
    <%--                <div class="subtitle3">--%>
    <%--                    Our deep learning algorithm predicts your emotions--%>
    <%--                </div>--%>
    <%--                <div class="user">--%>
    <%--                    <div class="avatar">--%>
    <%--                        <div class="avatar1"></div>--%>
    <%--                        <div class="title-wrapper">--%>
    <%--                            <div class="title8">My App</div>--%>
    <%--                        </div>--%>
    <%--                    </div>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </div>--%>
    <%--    </div>--%>
    <div class="container1">
        <div class="title13">© 2024 SMU Team Project </div>
    </div>
    <%--    <b class="title14">지금 하면 좋을 것들 ↗</b>--%>
</div>
<%--    <div class="bottomplayer">--%>
<%--        <div class="bottomplayer-child"></div>--%>
<%--        <div class="right-song">--%>
<%--            <div class="one-step-beyond">One step Beyond</div>--%>
<%--            <div class="madness">Madness</div>--%>
<%--            <img class="minicover-icon" alt="" src="/img/minicover@2x.png" />--%>

<%--            <img class="credit-card-icon" alt="" src="/img/credit-card.svg" />--%>

<%--            <img class="heart-icon" alt="" src="/img/heart.svg" />--%>
<%--        </div>--%>
<%--        <div class="player">--%>
<%--            <div class="player-child"></div>--%>
<%--            <div class="div">00:00</div>--%>
<%--            <div class="div1">02:18</div>--%>
<%--        </div>--%>
<%--        <img class="play-icon" alt="" src="/img/play.svg" />--%>

<%--        <div class="skip">--%>
<%--            <img class="play-icon1" alt="" src="/img/play.svg" />--%>

<%--            <div class="skip-child"></div>--%>
<%--        </div>--%>
<%--        <div class="skip1">--%>
<%--            <img class="play-icon2" alt="" src="/img/play.svg" />--%>

<%--            <div class="skip-child"></div>--%>
<%--        </div>--%>
<%--    </div>--%>

</body>
</html>

<body>

</body>