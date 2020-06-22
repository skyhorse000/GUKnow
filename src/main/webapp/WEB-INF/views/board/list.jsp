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
      <h2 class="ir_so">Course_blog</h2>
      <div id="content">

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <br>
          <!-- DataTales Example -->
          <div class="card shadow mb-4">

            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary" style="font-size: 25px;">문의사항을 저희에게 남겨
                주세요.</h6>
            </div>

            <div class="card-body">
              <div class="table-responsive">
                <table id="dataTable" class="table table-striped table-bordered" width="100%" style="text-align: center">
                  <thead>
                    <tr>
                      <th style="width: 30px;">번호</th>
                      <th>제목</th>
                      <th style="width: 125px;">작성자</th>
                      <th style="width: 125px;">작성일</th>
                      <th style="width: 125px;">수정일</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach var="vo" items="${boardList }">
                      <tr>
                        <td>${vo.bno }</td>
                        <td><a class="goToDetail" href="${vo.bno }">${vo.title }</a></td>
                        <td>${vo.username }</td>
                        <td>
                          <fmt:formatDate value="${vo.regdate }" pattern="yyyy/MM/dd HH:mm" />
                        </td>
                        <td>
                          <fmt:formatDate value="${vo.updatedate }" pattern="yyyy/MM/dd HH:mm" />
                        </td>
                      </tr>
                    </c:forEach>
                  </tbody>
                  <tfoot>
                    <tr>
                      <th style="width: 30px;">번호</th>
                      <th>제목</th>
                      <th style="width: 125px;">작성자</th>
                      <th style="width: 125px;">작성일</th>
                      <th style="width: 125px;">수정일</th>
                    </tr>
                  </tfoot>
                </table>
              </div>

            </div>

            <!-- pagination -->
            <div>
              <ul id="pager" class="pagination justify-content-center">
                <c:if test="${pageMaker.hasPrev }">
                  <li class="page-item" style="border: 0; padding: 17px; margin-bottom: 0; min-height: 0;">
                    <a class="page-link" href="${pageMaker.startPageNo - 1}">Previous</a></li>
                </c:if>
                <c:forEach begin="${pageMaker.startPageNo }" end="${pageMaker.endPageNo }" var="num">
                  <li class="page-item"><a class="page-link" href="${num }">${num }</a></li>
                </c:forEach>
                <c:if test="${pageMaker.hasNext }">
                  <li class="page-item"><a class="page-link" href="${pageMaker.endPageNo + 1}">Next</a></li>
                </c:if>
              </ul>
            </div>
            <!-- pagination -->

            <div>
              <form id="pagingForm" style="display: none;">
                <input type="text" name="page" value="${pageMaker.criteria.page }"> <input type="text" name="bno">
              </form>
            </div>

          </div>

          <div class="panel-heading">
            <button id="btn_register" type="button" class="btn btn-outline-primary btn-block">글작성</button>
          </div>
          <br>

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
              <span class="bar2">사업자번호 : 203-87-00672 </span> 통신판매업신고번호
              : 제 2016-서울구로-1560호
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
  $(document).ready(
    function() {

      var result = '<c:out value="${insert_result}"/>';
      checkModal(result);

      history.replaceState({}, null, null);

      function checkModal(result) {
        if (result === ' ' || history.state) {
          return;
        }
        if ('${insert_result}' === 'success') {
          /* $(".modal-body").html("게시글 " + parseInt(result) + " 번이 등록되었습니다."); */
          $(".modal-body").html("게시판에 글이 작성 되었습니다.");
        } else if ('${insert_result}' === 'fail') {
          $(".modal-body").html("새 글 작성 실패");
        }
        $("#myModal").modal("show");
      }

      // 글작성 페이지 이동
      $('#btn_register').click(function() {
        location = 'register';
      });

      // 데이터 테이블 옵션 설정
      $('#dataTable').DataTable({
        // 표시 건수기능 숨기기
        "lengthChange": false,
        // 검색 기능 숨기기
        "searching": false,
        // 정렬 기능 숨기기
        "ordering": true,
        // 정보 표시 숨기기
        "info": false,
        // 페이징 기능 숨기기
        "paging": false,
        // 정렬
        "order": [
          [0, "desc"]
        ]
      });

      // pagination 구현 (클릭한 a태그의 정보를 가져오는 코드)
      $('#pager li a').click(function() {
        // .pager 클래스의 하위 li 요소의 하위 a 요소를 찾아감
        event.preventDefault(); // a 태그의 기본 동작(페이지 이동)을 금지
        var targetPage = $(this).attr('href'); // a 태그 href 속성의 값을 저장
        console.log(targetPage);

        var frm = $('#pagingForm'); // form의 정보를 frm에 저장
        frm.find('[name="page"]').val(targetPage); // name="page"를 찾아서 value=targetPage를 저장
        frm.attr('action', 'list'); // form에 action 속성 추가
        frm.attr('method', 'get'); // form에 method 속성 추가
        frm.submit(); // form 데이터 전송
      }); // end click()

      // 게시판 내용 상세 detail 페이지 이동
      $('.goToDetail').click(function() {
        console.log("Detail page 이동 ");
        event.preventDefault();
        var bno = $(this).attr('href');
        var frm = $('#pagingForm');
        frm.attr('action', 'detail');
        frm.attr('method', 'get');
        frm.find('[name="bno"]').val(bno);
        frm.submit();
      }); // end click()

      /*         // modal로 처리함
       // register에서 넘어온 insert_result 데이터를 바탕으로 alert 처리
       if ('${insert_result}' === 'success') {
       alert('새 글 작성 성공');
       } else if ('${insert_result}' === 'fail') {
       alert('새 글 작성 실패');
       } */

      //배너 이미지 슬라이드
      var swiper = new Swiper('.swiper-container', {
        pagination: {
          el: '.swiper-pagination',
        },
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
        autoplay: {
          delay: 3000,
        },
      });

      //공지사항 탭 메뉴
      var tabMenu = $(".notice");

      //컨텐츠 내용을 숨겨주세요!
      tabMenu.find("ul > li > ul").hide();
      tabMenu.find("li.active > ul").show();

      function tabList(e) {
        e.preventDefault(); //#의 기능을 차단
        var target = $(this);
        target.next().show().parent("li").addClass("active").siblings("li")
          .removeClass("active").find("ul").hide();
        //버튼을 클릭하면 ~ div를 보여주고
        //부모의 li 태그에 클래스 추가하고
        //형제의 li 태그에 클래스 제거하고
        //제거한 자식의 div 태그를 숨겨줌
      }

      tabMenu.find("ul > li > a").click(tabList).focus(tabList);

      $('#btn_login').click(function() {
        var userid = $("#email").val();
        console.log("userid : " + userid);
      });

      $('#registerSubmit').click(function() {
        if ($('#chk1').prop('checked') == false) {
          alert('필수 약관에 동의 하셔야 합니다.');
          document.location.href = 'member/register';
          /*           } else {
                    document.location.href = 'member/main';
                    /* $(location).attr('href','https://www.naver.com/'); */
        }
      });

      // 로그아웃 버튼 누르기
      $(document).ready(function() {
        $('#btn_logout').click(function() {
          location = 'logout';
        });
      });

    });
</script>

</body>

</html>
<!-- //help -->
