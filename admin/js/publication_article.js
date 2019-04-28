"use strict"
// *** Fonctions ***

/////////////////////////////////////////////////
//// PUBLICATION ou DEPUBLICATION ARTICLE ///
/////////////////////////////////////////////////
function publierDepublier(){
	let id = $(this).data('id');
	let text = $(this).text();
	let idSpan = $(this).attr('id');

	if (text == 'Publier') {
		$.post("ajax/publier_article.php",{id:id, idSpan:idSpan},confirmPublier);
	}
	else {
		$.post("ajax/depublier_article.php",{id:id, idSpan:idSpan},confirmDepublier);
	}
	function confirmPublier(reponse){
		reponse = JSON.parse(reponse);
		$('#'+reponse).text("Dépublier");
		$('#'+reponse).parent().prev().prev().prev().text('Oui');
	}
	function confirmDepublier(reponse){
		reponse = JSON.parse(reponse);
		$('#'+reponse).text("Publier");
		$('#'+reponse).parent().prev().prev().prev().text('Non');
	}
}

/////////////////////////////
//// SUPPRESSION ARTICLE ///
////////////////////////////
function supprimer() {
	let id = $(this).data('id');
	let idSpan = $(this).attr('id');
}

// *** Gestionnaire d'évenements ***
$(function(){

		$(".publication").on("click", publierDepublier);
		$(".supprimer").on("click", supprimer);
})
