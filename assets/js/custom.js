
vl = $(".vl");
srch = $("#search");
function searchsong(str) {
  if (str.length==0) {
    $(vl).html("");
    return;
  }

  $.getJSON( "ajax.php?song="+str, function( data ) {
    $(vl).html("");
    if(data!=""){
      $.each(data.songs,function(){$(vl).append("<li id=\""+this.s_id+"\" onclick=\"selectsong(this.innerHTML,this.id)\">"+this.name+"</li>")})
    }
    $(vl).append("<li onclick=\"addmusic()\">Escolher outra música</li>")
    itsnew = 0;
  });
}
function pvote(song){//selectionar a música
  $(vl).hide();
  $(srch).val(song);
  $(srch).prop("disabled",true);
  $("#clvote").show()
  $("#vtmb").show()
}
function clvote(){//limpar o voto
  $(srch).val("");
  $(srch).prop("disabled",false);
  $(vl).html("");
  $(vl).show();
  $(srch).focus();
  $("#clvote").hide()
  $("#vtmb").hide()
  $(srch).attr("size","");
  $(srch).attr("placeholder","Nome da música");
  $("#sugerir").hide();
}


function selectsong(song,s_id){//selecionar a música existente
  $(vl).hide();
  $(srch).val(song);
  $(srch).prop("disabled",true);
  $("#clvote").show()
  $("#vtmb").show()
  $("#clplay").show()
  $("#clplay").attr('onclick','claction(1,"'+s_id+'")')
  $("#cladd").attr('onclick','claction(2,"'+s_id+'","'+song+'")')
  $("#clremove").attr('onclick','claction(3,"'+s_id+'")')
  $("#clremove").show()
  song_id = s_id;
  $("#sugerir").show();
  mode = 1;
}
function addmusic(){//opção de add música nova
  $(vl).hide();
  $("#clvote").show()
  $("#vtmb").show()
  $("#url").show()
  $("#cladd").show()
  itsnew = 1;
  $(srch).attr("placeholder","https://www.youtube.com/watch?v=7dJ3CJjKcqc");
  $(srch).val("");
  $(srch).attr("size","48");
  alert("Atenção!\nÉ recomendado você escolher uma música que esteja na lista, desta forma ela irá tocar automaticamente na rádio. Caso contrário, informe o url da música no Youtube (será revisado por um administrador e só então o pedido poderá ser aceito ou negado).");
  $("#sugerir").show();
  mode = 2;
}
$("#sugerir").hide();
function sugerir(){
  if(mode==2){
    str = $(srch).val();
  }else{
    str = song_id;
  }
  $.getJSON( "ajax.php?sugerir="+mode+"&music="+str+"&token="+token, function( data ) {
    if(data!=""){
      alert(data.response);
    }
  });
  clvote();
}
