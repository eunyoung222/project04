<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.servletContext.contextPath }" />

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>스마트해법</title>
    <jsp:include page="./include/head.jsp" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@600&family=Lobster+Two:wght@700&display=swap" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${path}/resources/lib/animate/animate.min.css" rel="stylesheet">
    <link href="${path}/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${path}/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${path}/resources/css/style.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap');

        *{
            font-family: 'Nanum Gothic Coding', monospace;
        }

        .mb-3, .p, .pmb-0, .mb-4 {
            font-family: 'Nanum Gothic Coding', monospace;
        }

        .pmb-0 {
            margin: 10px;
            color: white;
            line-height: 50px;
            text-align: center;
        }

    </style>
</head>

<body>
<div class="container-xxl bg-white p-0">


    <jsp:include page="./include/header.jsp" />


    <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5">
        <div class="owl-carousel header-carousel position-relative">
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="${path}/resources/img/1.png" alt="" style="
    margin-left: 172px;
    width: 1344px;
">
            </div>
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="${path}/resources/img/2.png" alt="" style="
    margin-left: 172px;
    width: 1344px;
">
            </div>
        </div>
    </div>
    <!-- Carousel End -->


    <!-- Facilities Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h1 class="mb-3">천재교육이 만든 천재적 공부</h1>
                <br>
                <p class="p">우리아이 성적과 공부 자신감, 스마트해법으로 올려주세요!</p>
            </div>
            <div class="row g-4">
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="facility-item">
                        <div class="facility-text bg-primary">
                            <p class="pmb-0">
                                1등 교과서 <br>
                                천재교과서의 검증된 교육 노하우
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="facility-item">
                        <div class="facility-text bg-success">
                            <p class="pmb-0">
                                1,966책 합격 및 발생 <br>
                                검정교과서 최다 합격
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="facility-item">
                        <div class="facility-text bg-warning">
                            <p class="pmb-0">
                                독보적 데이터 보유 <br>
                                11억건 이상의 문항풀이
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="facility-item">
                        <div class="facility-text bg-info">
                            <p class="pmb-0">
                                초중고 베스트셀러 <br>
                                참고서 보유
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Facilities End -->


    <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5 align-items-center">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <h1 class="mb-4">
                        "스마트해법이<br>
                        자신있는 이유!"
                    </h1>
                    <p>
                        우리아이 맞춤 학습 <br>
                        아이마다 다 다른데, 왜 다 똑같은 걸로 공부시키세요? <br>
                        우리아이에게 딱 맞춘 학습이기에 성적은 오릅니다.
                    </p>
                    <p class="mb-4">
                        우리아이 수준에 대한 세밀한 평가! <br>
                        ✅ 정확한 수준과 취약점 분석을 위한 AI 진단평가 설계 및 실행 <br>
                        ✅ 연 7회 시기별 성취도 평가, 내전석 등 다양한 평가 시스템 제공
                        <br> <br>
                        평가에 대한 정확하고 날카로운 분석! <br>
                        ✅ 진단평가, 성취도 평가 등을 통해 영역별 학습 성취도 및 취약점 분석
                        <br> <br>
                        진단평가 후, 체계적인 커리큘럼 제공은 물론 학생들이 공부해야하는 <br>
                        '오늘의 학습'에 자동으로 추천되는 시스템은 유일!
                        <br>
                        학생들이 스스로 필요한 콘텐츠를 어렵게 찾을 필요 NO!
                    </p>
                </div>
                <div class="col-lg-6 about-img wow fadeInUp" data-wow-delay="0.5s">
                    <div class="row">
                        <div class="col-12 text-center">
                            <img class="img-fluid w-75 rounded-circle bg-light p-3" src="${path}/resources/img/about-1.jpg" alt="">
                        </div>
                        <div class="col-6 text-start" style="margin-top: -150px;">
                            <img class="img-fluid w-100 rounded-circle bg-light p-3" src="${path}/resources/img/about-2.jpg" alt="">
                        </div>
                        <div class="col-6 text-end" style="margin-top: -150px;">
                            <img class="img-fluid w-100 rounded-circle bg-light p-3" src="${path}/resources/img/about-3.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->

    <!-- Team Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h1 class="mb-3">
                    선생님들을 <br>
                    소개합니다!
                </h1>
                <p class="pmb-0">
                    좋은 선생님의 좋은 강의는 오직 스마트 해법에서, <br>
                    성적향상은 시작점은 강.사.진
                </p>
            </div>
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="team-item position-relative">
                        <img class="img-fluid rounded-circle w-75" src="${path}/resources/img/3t.png" alt="">
                        <div class="team-text">
                            <h3>이은영</h3>
                            <p>확률과 통계</p>
                            <div class="d-flex align-items-center">
                                <a class="btn btn-square btn-primary mx-3" href="${path}/video/detail.do?no=2">강의 <br> 보러가기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="team-item position-relative">
                        <img class="img-fluid rounded-circle w-75" src="${path}/resources/img/1t.png" alt="">
                        <div class="team-text">
                            <h3>한선</h3>
                            <p>사회문화</p>
                            <div class="d-flex align-items-center">
                                <a class="btn btn-square btn-primary mx-3" href="${path}/video/detail.do?no=4">강의 <br> 보러가기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="team-item position-relative">
                        <img class="img-fluid rounded-circle w-75" src="${path}/resources/img/2t.png" alt="">
                        <div class="team-text">
                            <h3>이소윤</h3>
                            <p>문학 + 독서</p>
                            <div class="d-flex align-items-center">
                                <a class="btn btn-square btn-primary mx-3" href="${path}/video/detail.do?no=1">강의 <br> 보러가기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Team End -->


    <!-- Testimonial  Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h1 class="mb-3">Our Students Say!</h1>
                <p>학생들의 솔직하고 소중한 후기 봐주세요!</p>
            </div>
            <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                <div class="testimonial-item bg-light rounded p-5">
                    <p class="fs-5">사고 메커니즘을 확정하는 데에 문제를 어떻게 풀어야 할지 고민하는 것이 큰 도움이 될 것입니다. <br>
                        남이 알려주는 것보다 자기가 한 번 생각해 보는 것이 훨씬 기억에 잘 남고 한 번 문제풀이 과정을 스스로 생각하여 <br>
                        풀이에 성공한다면 다음 번의 풀이에서는 자연스럽게 그러한 사고를 할 수 있게 될 테니까요.</p>
                    <div class="d-flex align-items-center bg-white me-n5" style="border-radius: 50px 0 0 50px;">
                        <img class="img-fluid flex-shrink-0 rounded-circle" src="${path}/resources/img/testimonial-1.jpg" style="width: 90px; height: 90px;">
                        <div class="ps-3">
                            <h3 class="mb-1">이은영</h3>
                            <span>student</span>
                        </div>
                        <i class="fa fa-quote-right fa-3x text-primary ms-auto d-none d-sm-flex"></i>
                    </div>
                </div>
                <div class="testimonial-item bg-light rounded p-5">
                    <p class="fs-5">어릴 때부터 학원을 다니며 억지로 공부를 하다가 오히려 실전에서 좋은 성적을 내야 하는 고등학교 때 <br>
                        지쳐 성적이 원하는 대로 나오지 않는 친구들을 많이 봐왔습니다. <br>
                        저도 어릴 적에는 본능적으로 “공부는 재미없는 것이다!”라는 생각을 가지고 있었지만, <br>
                        밀크T를 시작하면서 이런 인식이 점점 사라졌던 것 같습니다.</p>
                    <div class="d-flex align-items-center bg-white me-n5" style="border-radius: 50px 0 0 50px;">
                        <img class="img-fluid flex-shrink-0 rounded-circle" src="${path}/resources/img/testimonial-2.jpg" style="width: 90px; height: 90px;">
                        <div class="ps-3">
                            <h3 class="mb-1">삼은영</h3>
                            <span>student</span>
                        </div>
                        <i class="fa fa-quote-right fa-3x text-primary ms-auto d-none d-sm-flex"></i>
                    </div>
                </div>
                <div class="testimonial-item bg-light rounded p-5">
                    <p class="fs-5">여러분들이 한 가지 목표를 위해 죽을 듯이 노력해 보고, 끝까지 포기 않고 완주해 본 경험은 <br>
                        앞으로 삶에 큰 자부심이자 자신감이 된답니다. <br>
                        그러니까, 너무 힘들고 포기하고 싶어도, 잠시 숨 돌린 후에 집중해 보기로 해요. <br>
                        여러분과 저 모두 파이팅 하는 걸로 해요! 파이팅!</p>
                    <div class="d-flex align-items-center bg-white me-n5" style="border-radius: 50px 0 0 50px;">
                        <img class="img-fluid flex-shrink-0 rounded-circle" src="${path}/resources/img/testimonial-3.jpg" style="width: 90px; height: 90px;">
                        <div class="ps-3">
                            <h3 class="mb-1">오은영</h3>
                            <span>student</span>
                        </div>
                        <i class="fa fa-quote-right fa-3x text-primary ms-auto d-none d-sm-flex"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->
</div>

<jsp:include page="./include/footer.jsp" />

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${path}/resources/lib/wow/wow.min.js"></script>
<script src="${path}/resources/lib/easing/easing.min.js"></script>
<script src="${path}/resources/lib/waypoints/waypoints.min.js"></script>
<script src="${path}/resources/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="${path}/resources/js/main.js"></script>
</body>

</html>