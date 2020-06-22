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
              <h6 class="m-0 font-weight-bold text-primary" style="font-size: 25px;">게시글을 확인하여 주세요.</h6>
            </div>

            <div class="card-body">
              <div class="ros">
                <div class="col-lg-12">
                  <div class="panal panel-default">

                    <div class="panel-body">
                      <form id="frm" action="update" method="get">
                        <input type="hidden" name="page" value="${criteria.page }"> <input type="hidden" name="perPage" value="${criteria.numsPerPage }">

                        <div class="form-group">
                          <label>번호</label> <input class="form-control" name="bno" value="${boardVO.bno }" readonly>
                        </div>
                        <div class="form-group">
                          <label>제목</label> <input class="form-control" name="title" value="${boardVO.title }" readonly>
                        </div>
                        <div class="form-group">
                          <label>작성자</label> <input class="form-control" name="username" value="${boardVO.username }" readonly>
                        </div>
                        <div class="form-group">
                          <label>내용</label>
                          <textarea class="form-control" rows="5" name="content" readonly>${boardVO.content }</textarea>
                        </div>
                        <div class="form-group">
                          <label>작성일</label>
                          <fmt:formatDate value="${boardVO.regdate }" pattern="yyyy/MM/dd HH:mm:ss" var="regdate" />
                          <input class="form-control" type="text" value="${regdate }" readonly>
                        </div>
                      </form>
                      <div>
                        <button data-oper="update" style="min-width: 49%;" id="btn_update" class="btn btn-outline-primary">수정</button>
                        <button data-oper="list" style="min-width: 49%;" id="btn_list" class="btn btn-outline-warning">리스트
                          이동</button>
                        <!-- 리스트로 이동 아래꺼로 사용해도 됨  -->
                        <%--                   <a href="list?page=${criteria.page }"><input
                    type="button" style="min-width: 49%;"
                    class="btn btn-outline-warning" value="리스트 이동"></a> --%>
                      </div>

                      <!-- 나중에 다양한 상황을 처리하기 위해 form 태그 이용, 파라미터가 3개 이상만 되어도 지저분해져서... -->
                      <form id="operForm" action="update" method="get">
                        <input type="hidden" id="bno" name="bno" value="${boardVO.bno }">
                      </form>

                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.card-body -->

          </div>
          <!-- /.card shadow mb-4 -->

          <!-- DataTales 리플 작성창 -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary" style="font-size: 25px;">댓글을 달아 주세요.</h6>
            </div>
            <div class="card-body">
              <div class="form-group">
                <div class="form-inline">
                  <input type="text" id="bno" value="${boardVO.bno }" style="display: none;">
                  <div class="form-group">
                    <input type="text" id="replyname" style="width: 200px;" class="form-control" name="replyname" placeholder="작성자 입력" required></input>
                  </div>
                  <div class="form-group">
                    <input type="text" id="replycontent" style="width: 900px;" class="form-control" name="replycontent" placeholder="댓글 입력" required></input>
                  </div>
                  <div>
                    <div class="form-group">
                      <button id="btn_add" style="width: 100px;" class="btn btn-outline-primary">등록</button>
                    </div>
                  </div>
                </div>
                <!-- End form-inline 내용창  -->
              </div>
              <!-- End form-group 내용창  -->
              <hr>
              <div>
                <div id="replies"></div>
              </div>
            </div>
            <!-- End card-body 내용창  -->
          </div>
          <!-- End card shadow mb-4  -->
        </div>
        <!-- End container-fluid -->

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
  $(document)
    .ready(
      function() {

        /*     // 업데이트 창 이동
         $('#btn_update').click(function() {
         location = 'update';
         }); */

        var operForm = $('#operForm');

        // 업데이트창 이동
        $("button[data-oper='update']").on("click", function(e) {
          operForm.attr("action", "update").submit();
        });

        // 리스트로 이동
        $("button[data-oper='list']").on("click", function(e) {
          operForm.find("#bno").remove();
          operForm.attr("action", "list").submit();
        });

        // 게시판 번호 값
        var bno = ${boardVO.bno };
        console.log(bno);
        // 댓글 입력 기능
        $('#btn_add').click(function() {

          // 댓글 아이디, 댓글 내용의 값을 가져와서
          // get 방식으로 전송
          // url : 'localhost:8080/Web10_MVC/replies/add'
          // data : 게시판 번호, 댓글 내용, 댓글 아이디
          var replycontent = $('#replycontent').val(); // 댓글 내용 값
          var replyname = $('#replyname').val(); // 댓글 아이디 값
          var regdate = $('#replyname').val(); // 댓글 아이디 값
          var updatedate = $('#replyname').val(); // 댓글 아이디 값
          var obj = {
            'bno': bno,
            'replycontent': replycontent,
            'replyname': replyname
          };

          // $.ajax로 송신
          $.ajax({
            type: 'post',
            url: '/project/replies',
            headers: {
              'Content-Type': 'application/json',
              'X-HTTP-Method-Override': 'POST'
            },
            data: JSON.stringify(obj),
            success: function(result) {
              // result 값이 xml 로 들어 와서 data로 내용을 찾아서 입력함
              var data = $(result).find("Integer").text();

              if (data == 1) {
                alert('댓글 입력 성공');
                $('#replycontent').val('');
                $('#replyname').val('');
                console.log("댓글 등록 진행");
                console.log("getAllReplies() 실행");
                getAllReplies();
              }
            }
          }); // end ajax()
        }); // end btn_add.click()
        getAllReplies(); // 메소드 호출 // 자동 리플레쉬

        // 게시판의 댓글 전체 가져오기
        function getAllReplies() {
          var url = '/project/replies/all/' + bno;
          $
            .getJSON(
              url,
              function(jsonData) {
                console.log(jsonData);
                var list = ''; // JSON 데이터에서 데이터를 꺼내 태그 + 데이터 형식으로 저장할 변수
                $(jsonData)
                  .each(
                    // jsonData 를 사용하는 each 반복문
                    function() {
                      // this : jsonData
                      var date = new Date(this.regdate),
                        yr = date
                        .getFullYear(),
                        month = date
                        .getMonth() < 10 ? '0' +
                        date.getMonth() : date.getMonth(),
                        day = date
                        .getDate() < 10 ? '0' +
                        date.getDate() : date.getDate(),
                        hour = date
                        .getHours() < 10 ? '0' +
                        date.getHours() : date.getHours(),
                        m = date
                        .getMinutes() < 10 ? '0' +
                        date.getMinutes() : date
                        .getMinutes(),
                        s = date.getSeconds() < 10 ? '0' +
                        date.getSeconds() :
                        date.getSeconds(),
                        newDate = yr +
                        '/' + month + '/' + day + '' +
                        ' ' + hour + ':' + m + ':' + s;
                      console.log("댓글 번호 : " + this.rno);
                      list += '<div class="reply_item">' +
                        '<pre>' +
                        '<div class="form-inline">' +
                        '<input type ="hidden" id="rno" value="' + this.rno + '" />' +
                        '<input type ="hidden" id="reply_name" value="' + this.replyname + '" /><br>' +
                        '<br>' +
                        '&nbsp;' +
                        '<input type ="text" class="form-control" id="reply_name"  style="width:200px; background-color: #2d2d2d;" value="' + this.replyname + '" />' +
                        '&nbsp;' +
                        '<input type ="text" class="form-control" id="reply_content"  style="width:680px; background-color: #ffbc4b; " value="' + this.replycontent + '" />' +
                        '<br />' +
                        '&nbsp;' +
                        newDate +
                        '&nbsp;' +
                        '<br />' +
                        '<br />' +
                        '<button class="btn btn-outline-primary btn_update" style="width: 100px;" type="button">수정</button>' +
                        '&nbsp;' +
                        '<button class="btn btn-outline-danger btn_delete" style="width: 100px;" type="button">삭제</button>' +
                        '</div>' + '</div>' + '</pre>' +
                        '</div>';
                    }); // end each()
                $('#replies').html(list);
              } // end callback()
            ); // end getJSON()
        } // end getAllReplies()

        // 수정 버튼 클릭하면 선택된 댓글 수정
        $('#replies').on(
          'click',
          '.reply_item .btn_update',
          function() { // click는 메소드 기능. function은 눌렀을 때 뭘 할것인가
            console.log("btn_update 실행");
            var rno = $(this).prevAll('#rno').val(); // this에 update이전 것 중에 rno를 찾겠다
            //var rno = 15;
            var replycontent = $(this).prevAll('#reply_content')
              .val();
            console.log("선택된 댓글 번호 : " + rno + ", 댓글 내용 : " +
              replycontent);

            // ajax 요청
            $.ajax({
              type: 'put',
              url: '/project/replies/' + rno,
              headers: {
                'Content-Type': 'application/json',
                'X-HTTP-Method-Override': 'PUT'
              },
              data: JSON.stringify({
                'replycontent': replycontent
              }),
              success: function(result) {

                if (result == 'success') {
                  alert('댓글 수정성공')
                  console.log("getAllReplies() 실행")
                  getAllReplies();
                } // end if()
              } // end success()

            }); // end ajax()
          }); // end btn_update.click()

        // 삭제 버튼을 클릭하면 선택된 댓글 삭제
        $('#replies').on(
          'click',
          '.reply_item .btn_delete',
          function() { // click는 메소드 기능. function은 눌렀을 때 뭘 할것인가
            console.log("btn_delete 실행");

            var rno = $(this).prevAll('#rno').val();
            var replycontent = $(this).prevAll('#reply_content').val(); // 내용 없어도 됨
            console.log("선택된 댓글 번호 : " + rno + ", 댓글 내용 : " +
              replycontent);

            // ajax 요청
            $.ajax({
              type: 'delete',
              url: '/project/replies/' + rno,
              headers: {
                'Content-Type': 'application/json',
                'X-HTTP-Method-Override': 'DELETE'
              },
              data: JSON.stringify({
                'bno': bno
              }),
              success: function(result) {
                if (result == 'success') {
                  alert('댓글 삭제성공')
                  console.log("getAllReplies() 실행")
                  getAllReplies();
                } // end if()
              } // end success()

            }); // end ajax()
          }); // end btn_delte.click()

      });
</script>

</body>

</html>
