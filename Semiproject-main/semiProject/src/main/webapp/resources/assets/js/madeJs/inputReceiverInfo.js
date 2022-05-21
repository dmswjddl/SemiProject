$(function() {

			$('.oAddr input').attr('disabled', 'true');
			$('.oInfo input').attr('disabled', 'true');
			$('#btnUaddr').click(function() {
				$('.oAddr input').attr('disabled', 'true');
				$('.uAddr input').removeAttr('disabled');
			})
			$('#btnOaddr').click(function() {
				$('.uAddr input').attr('disabled', 'true');
				$('.oAddr input').removeAttr('disabled');
			})
			$('#btnUInfo').click(function() {
				$('.oInfo input').attr('disabled', 'true');
				$('.uInfo input').removeAttr('disabled');
			})
			$('#btnOInfo').click(function() {
				$('.uInfo input').attr('disabled', 'true');
				$('.oInfo input').removeAttr('disabled');
			})
		})