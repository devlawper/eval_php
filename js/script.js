"use strict"

function refreshComm() {
  $.post("ajax/refresh_comm.php", affichageComm);
}
function affichageComm(commentaires) {
  commentaires = JSON.parse(commentaires);
  $(".last_comm").empty();
  for (var i = 0; i < commentaires.length; i++) {
    $(".last_comm").append('<p><i class="fas fa-angle-right"></i> ' + commentaires[i][0].substr(0,40) + "...</p>");
  }
}

let timer = setInterval(refreshComm, 10000);
