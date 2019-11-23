$(document).on('turbolinks:load', function() {

	// 使用者を追加ボタンを押下した際、newアクションに飛ばす
	$('.btn-outline-success').click(function() {
		location.href = 'http://localhost:3000/users/new';
	});

	// 編集ボタンを押下した際、editアクションに飛ばす
	$('.btn-outline-primary').click(function() {
		location.href = `http://localhost:3000/users/${this.id}/edit`;
	});

	// 削除ボタンを押下した際、destroyアクションにとばす
	$('.btn-outline-danger').click(function() {
		$.ajax ({
			url: `http://localhost:3000/users/${this.id}`,
			type: 'POST',
			data: {'_method': 'DELETE'}
		});
	});

	$('.form-back-btn').click(function() {
		location.href = 'http://localhost:3000/users';
	});

	// alertを時間経過で非表示
	$(function(){
  setTimeout("$('.alert-hide').fadeOut(4000)") 
	})

});