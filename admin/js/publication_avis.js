"use strict"
// *** Fonctions ***

/////////////////////////////////////////////////
//// PUBLICATION ou DEPUBLICATION COMMENTAIRE ///
function publierDepublier(){
	let id = $(this).data('id');
	let text = $(this).text();

	if (text == 'Publier') {
		$.post("ajax/publier_comm.php",{id:id},confirmPublier);
	}
	else {
		$.post("ajax/depublier_comm.php",{id:id},confirmDepublier);
	}
}
// Réponses
function confirmPublier(reponse){
	reponse = JSON.parse(reponse);
	$('#num'+reponse).text("Dépublier");
	$('.publie'+reponse).text('Oui');
	$("#commValid"+reponse).remove();
}
function confirmDepublier(reponse){
	reponse = JSON.parse(reponse);
	$('#num'+reponse).text("Publier");
	$('.publie'+reponse).text('Non');
}

/////////////////////////////
//// SUPPRESSION ARTICLE ///
////////////////////////////
function supprimer() {
	let id = $(this).data('id');

  if (confirm("Voulez vous vraiment supprimer ce commentaire ?")) {
    $.post('ajax/supprimer_comm.php',{id:id}, confirmerSuppression);
  }
}
// Réponses
function confirmerSuppression(reponse) {
	reponse = JSON.parse(reponse);
	$("#comm"+reponse).remove();
}

// *** Gestionnaire d'évenements ***
$(function(){

		$(".publication").on("click", publierDepublier);
		$(".supprimer").on("click", supprimer);
})
