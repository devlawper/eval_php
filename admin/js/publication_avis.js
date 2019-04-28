"use strict"
// *** Fonctions ***

/////////////////////////////////////////////////
//// PUBLICATION ou DEPUBLICATION COMMENTAIRE ///
function publierDepublier(){
	let id = $(this).data('id');
	let text = $(this).text();
	let idSpan = $(this).attr('id');

	if (text == 'Publier') {
		$.post("ajax/publier_comm.php",{id:id, idSpan:idSpan},confirmPublier);
	}
	else {
		$.post("ajax/depublier_comm.php",{id:id, idSpan:idSpan},confirmDepublier);
	}
	function confirmPublier(reponse){
		reponse = JSON.parse(reponse);
		$('#'+reponse).text("Dépublier");
		$('#'+reponse).parent().prev().text('Oui');
	}
	function confirmDepublier(reponse){
		reponse = JSON.parse(reponse);
		$('#'+reponse).text("Publier");
		$('#'+reponse).parent().prev().text('Non');
	}
}

/////////////////////////////
//// SUPPRESSION ARTICLE ///
////////////////////////////
function supprimer() {
	let id = $(this).data('id');
	confirm("Voulez vous vraiment supprimer ce commentaire ?");
  if (true) {
    $.post('ajax/supprimer_comm.php',{id:id}, confirmerSuppression);
  }
	function confirmerSuppression(reponse) {
		reponse = JSON.parse(reponse);
		$("#comm"+reponse).remove();
	}
}

// *** Gestionnaire d'évenements ***
$(function(){

		$(".publication").on("click", publierDepublier);
		$(".supprimer").on("click", supprimer);
})
