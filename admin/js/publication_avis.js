"use strict"
function publier(){
	let id = $(this).data('id');
	$.post("ajax/publier_comm.php",{id:id},confirmPublier)
}

function confirmPublier(){
	$(".publication").text("Dépublier");
}

function depublier(){
	let id = $(this).data('id');
	$.post("ajax/depublier_comm.php",{id:id},confirmDepublier)
}

function confirmDepublier(){
	$(".publication").text("Publier");
}




$(function(){	
	if ($(".publication").text() == "Dépublier") {
		$(".publication").on("click", publier);
	}
	else {
		$(".publication").on("click", depublier);
	}
})