"use strict"

// *** Fonctions ***

////////////////////////////////
//// PUBLICATION COMMENTAIRE ///
function publier(){
	let id = $(this).data('id');
	$.post("ajax/publier_comm.php",{id:id},confirmPublier)
}

function confirmPublier(){
	$(".publication").text("Dépublier");
}

////////////////////////////////
// DEPUBLICATION COMMENTAIRE ///
function depublier(){
	let id = $(this).data('id');
	$.post("ajax/depublier_comm.php",{id:id},confirmDepublier)
}

function confirmDepublier(){
	$(".publication").text("Publier");
}

// *** Gestionnaire d'évenements ***
$(function(){

	if ($(".publication").text() == "Dépublier") {
		$(".publication").on("click", depublier);
	}
	else {
		$(".publication").on("click", publier);
	}
})
