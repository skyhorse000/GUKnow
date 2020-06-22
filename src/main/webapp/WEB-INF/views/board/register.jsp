<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 헤드 불러오기 -->
<%@include file="../includes/header.jsp"%>

<!-- Main Content -->

<section id="movie" style="background-color: #fff;">
  <div class="container">
    <div class="row" style="width: 1024px; margin: 0 auto; padding: 0 20px 27px 20px;">
      <div id="content">

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <br>
          <!-- DataTales Example -->
          <div class="card shadow mb-4">

            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary" style="font-size: 25px;">게시글을 작성하여 주세요.</h6>
            </div>

            <div class="card-body">
              <div class="ros">
                <div class="col-lg-12">
                  <div class="panal panel-default">

                    <div class="panel-body">
                      <form action="register" method="POST">
                        <div class="form-group">
                          <label>제목</label> <input class="form-control" type="text" name="title" placeholder="제목 입력" required>
                        </div>
                        <div class="form-group">
                          <label>작성자</label> <input class="form-control" type="text" name="username" placeholder="작성자 입력" required>
                        </div>
                        <div class="form-group">
                          <label>내용</label>
                          <textarea class="form-control" rows="10" name="content" placeholder="내용 입력" required></textarea>
                        </div>
                        <br>
                        <div>
                          <button style="min-width: 33%;" type="submit" class="btn btn-outline-primary">등록</button>
                          <button style="min-width: 33%;" type="reset" class="btn btn-outline-primary">리셋</button>
                          <button style="min-width: 33%;" id="btn_list" class="btn btn-outline-warning">리스트 이동</button>
                        </div>
                      </form>
                    </div>

                  </div>
                </div>
              </div>
            </div>
            <!-- /.card-body -->

          </div>
          <!-- /.card shadow mb-4 -->

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

    </div>
  </div>
</section>

<footer id="footer">
  <div id="footer_sns">
    <div class="container">
      <div class="footer_sns">
        <ul>
          <li class="icon s1"><a href="#"><span class="ir_pm">트위터</span></a></li>
          <li class="icon s2"><a href="#"><span class="ir_pm">페이스북</span></a></li>
          <li class="icon s3"><a href="#"><span class="ir_pm">인스타그램</span></a></li>
        </ul>
        <div class="tel">
          <a href="#">대표전화 <em>02-837-9922</em></a>
        </div>
      </div>
    </div>
  </div>
  <div id="footer_infor">
    <div class="container">
      <div class="row">
        <div class="footer_infor">
          <h2>
            <img src="../resources/home/assets/img/logo_footer.png" alt="megabox">
          </h2>
          <ul>
            <li><a href="#">회사소개</a></li>
            <li><a href="#">채용정보</a></li>
            <li><a href="#">제휴/광고/부대사업 문의</a></li>
            <li><a href="#">이용약관</a></li>
            <li><a href="#">개인정보처리방침</a></li>
            <li><a href="#">고객센터</a></li>
            <li><a href="#">윤리경영</a></li>
          </ul>
          <address>
            <p>
              서울시 구로구 시흥대로 163길 33 주호타워 2층 구트 아카데미 학원(구로동 1129-1) <br>
              <span class="bar2">대표이사 : 이시형</span> 개인정보책임자: 송도권부원장<br>
              <span class="bar2">사업자번호 : 203-87-00672 </span>
              통신판매업신고번호 : 제 2016-서울구로-1560호
            </p>
            <p>Copyright © 주식회사구트. ALL RIGHTS RESERVED</p>
          </address>
        </div>
      </div>
    </div>
  </div>
</footer>
<aside role="complementary" id="blackout" class="overlay">
  <div id="trailerModal" class="modal">
    <div id="trailer"></div>
    <!-- YouTube 플레이어로 대체되는 부분 -->
  </div>
  <button id="hideTrailer" class="modal_close">닫기</button>
</aside>
<!-- 자바스크립트 라이브러리 -->
<script src="../resources/home/assets/js/jquery.min_1.12.4.js"></script>
<script src="../resources/home/assets/js/modernizr-custom.js"></script>
<script src="../resources/home/assets/js/ie-checker.js"></script>
<script src="../resources/home/assets/js/swiper.min.js"></script>
<!-- <script src="../resources/home/assets/js/login.js"></script> -->
<!-- 게시판 전용 스크립트 -->
<script src="../resources/vendor/datatables/jquery.dataTables.min.js"></script>
<!-- Bootstrap을 이용하기 위한 최신 버전 링크 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- jQuery 최신 버전의 js 파일들을 링크 -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<!-- Propper 최신 버전 링크 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


<script type="text/javascript">
  $(document).ready(function() {
    $('#btn_list').click(function() {
      location = 'list';
    });

  });
</script>

</body>

</html>
