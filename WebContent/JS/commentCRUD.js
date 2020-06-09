$(document).ready(function(){
	var userUid = $("#user_uid").text();
	var postUid = $("#post_uid").text();

	// 페이지가 로딩되면 댓글 목록을 보여줍니다.
	getList();
		
	// 댓글 목록을 보여주는 함수
	function getList(){
		var url = "commentList.ajax?post_uid=" + postUid;
		
		$.ajax({
			url :  url,
			type : "post",
			cache : false,
			success : function(data, status){
				if(status == "success") 
					parseJSON(data);
			}
		});
	}
	
	function parseJSON(jsonObj){
		var data = jsonObj.data;
		var i;
		var str="";
		
		if(data != null){
			for (i = 0; i < data.length; i++){ 
				str += "<div class='comment-box'>";
				str += "<div class='cmt-header row'>";
				
				str += "<div class='panel_cmt_info col-12'>";
				str += "<span class='cmt-uid' style='display: none'>" + data[i].comment_uid + "</span>";
				str += "<span class='cmt-writer-name'><a href='#'>" + data[i].user_name + "</a></span> ";
				str += "<span class='cmt-date'>(" + data[i].comment_regdate + ")</span>";
				str += "</div>";
				
				str += "</div>";
				
				str += "<div class='row'>";
				str += "<div class='col-10' style='min-height:100px;'>";
				str += "<span class='cmt-content'>" + data[i].comment_content + "</span>";
				str += "</div>";
				
				str += "<div class='panel_cmt_buttons col-2'>";
				if(userUid == data[i].user_uid){
				str +=	"<ul class='pagination justify-content-end'>"
					str += "<li class='page-item'><span class='link-cmt-update'><a class='page-link' href='#'>수정</a></span></li>";
					str += "<li class='page-item'><a class='link-cmt-delete page-link' href='commentDelete.ajax?comment_uid=" + data[i].comment_uid + "'>삭제</a></li>";
				str +=	"</ul>"
				}
				str += "</div>";
				str += "</div>";				
				str += "</div>";
			} // end for
		}
		$(".comment-list").html(str);
	}
	//------------------------------
		
	// 댓글 작성 시 새로운 댓글 데이터를 반영하여 댓글 목록 보여주는 함수
	$("#frm-write-cmt button[type=submit]").click(writeComment);

	function writeComment(e){
		e.preventDefault();
		
		if(userUid == null || userUid == ""){
			alert("로그인 후 이용해주세요!");
			return;
		}
		
		if(chkSubmit()){
			var queryString = $("#frm-write-cmt").serialize();
			console.log("query : " + queryString);
			
			var url = $("#frm-write-cmt").attr("action");
			console.log("url : " + url);
			
			$.ajax({
					type : "post",
					url : url,
					data : queryString,
					dataType: "json",
					success : writeSuccess
			});
		};
	}
	
	// 댓글 작성 폼 검증
    function chkSubmit() {  
        frm = document.forms["frm"];
        
        var comment_content = frm["comment_content"].value.trim();
        
        if(comment_content == "") {
            alert("내용을 입력해 주세요!");
            frm["comment_content"].focus();
            return false;
        }
        return true;
    }

	function writeSuccess(){
		getList();
		$("textarea[name='comment_content']").val("");
	}
	//------------------------------
	
	// 댓글 수정 시 모달창을 띄워주는 함수
	$(document).on('click', '.link-cmt-update', openUpdateComment);
	
	function openUpdateComment(e){
		var item = $(this).closest(".comment-box");
		var comment_uid = item.find(".cmt-uid").text();
		var cmt_content = item.find(".cmt-content").text();
		
		// 모달창에 보여줄 데이터 세팅
		$("#modal-update-cmt-uid").val(comment_uid);
		$("#modal-update-cmt-content").val(cmt_content);
		
		// 모달창을 보여줌
		$("#modal-update-cmt").css("display", "block");
	}
	//------------------------------
	
	// 댓글 수정 시 새로운 댓글 데이터를 반영하여 댓글 목록 보여주는 함수
	$("#frm-update-cmt button[type=submit]").click(updateComment);

	function updateComment(e){
		e.preventDefault();
		
		var queryString = $("#frm-update-cmt").serialize();
		console.log("query : " + queryString);
		
		var url = $("#frm-update-cmt").attr("action");
		console.log("url : " + url);
		
		$.ajax({
				type : "post",
				url : url,
				data : queryString,
				dataType : "json",
				success : updateSuccess
		});
	}
	
	function updateSuccess(){
		$("#modal-update-cmt").css("display", "none");
		getList();
	}
	//------------------------------
	
	// 댓글 삭제 시 삭제된 데이터를 반영하여 댓글 목록 보여주는 함수
	$(document).on('click', '.link-cmt-delete', deleteComment);
	
	function deleteComment(e){
		e.preventDefault();
		
		// 삭제 여부 확인하고 진행
		var r = confirm("댓글을 삭제 하시겠습니까?")
		
		if(r){
			var url = $(this).attr("href");
			console.log("url : " + url);
			
			$.ajax({
				type : "post",
				url : url,
				data : {post_uid : postUid},
				dataType : "json",
				success : getList
			});
		}
	}
	//------------------------------
});