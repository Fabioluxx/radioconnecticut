vl = $("#songlist");
srch = $("#search");
function searchsong(str) {
  if (str.length==0) {
    $(vl).html("");
    return;
  }
  str = encodeURIComponent(str);
  $.getJSON( "ajax.php?song="+str, function( data ) {
    $(vl).html("");
    if(data!=""){
      $.each(data.songs,function(){$(vl).append("<li id=\""+this.s_id+"\" onclick=\"selectsong(this.innerHTML,this.id)\">"+this.name+"</li>")})
    }
    $(vl).append("<li onclick=\"addmusic()\">Adicionar uma música</li>")
    itsnew = 0;
  });
}
function addmusic(){//opção de add música nova
  $(vl).hide();
  $("#clvote").show()
  $("#vtmb").show()
  $("#url").show()
  $("#cladd").show()
  itsnew = 1;
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
  $("#player").attr("src","musics/"+song_id+".mp3");
  $("#player").show();
}
function clvote(){//limpar seleção
  $(srch).prop("disabled",false);
  $(vl).html("");
  $(srch).val("");
  $(vl).show();
  $(srch).focus();
  $("#clvote").hide();
  $("#vtmb").hide();
  $("#url").hide();
  $("#url").val("");
  $("#cladd").hide();
  $("#clplay").hide();
  $("#clremove").hide();
  $("#player").attr("src","");
  $("#player").hide();

}
function claction(action,s_id="",id_playlist=""){//1=play|2=add|3=remove
  switch (action) {
    case 1://Tocar a música|Set Next in pls
      $("#tocar_loading").show();
      $("#clplay").hide()
      $("#clremove").hide()
      $.getJSON( "ajax.php?playsong="+s_id, function( data ) {
        if(data!=""){
          clvote()
          $("#tocar_loading").hide();
          var response = data.response;
          if(response!=1){
            $("#tocar_msg").html("<b>Houve o seguinte erro:</b> "+response)
            $("#tocar_msg").fadeIn();
          }else{
            $("#tocar_msg").html("Música adicionada com sucesso!");
            $("#tocar_msg").fadeIn().delay(2000).fadeOut();
          }
        }
      });
      break;
    case 2://adicionar nova música na DB
      var name = $("#search").val();
      name = encodeURIComponent(name);
      var url = $("#url").val();
      $("#tocar_loading").show();
      $("#cladd").hide();
      $.getJSON( "ajax.php?addsong="+name+"&url="+url, function( data ) {
        if(data!=""){
          clvote()
          $("#tocar_loading").hide();
          var response = data.response;
          if(response!=1){
            $("#tocar_msg").html("<b>Houve o seguinte erro:</b> "+response)
            $("#tocar_msg").fadeIn();
          }else{
            $("#tocar_msg").html("Música adicionada com sucesso!");
            $("#tocar_msg").fadeIn().delay(2000).fadeOut();
          }
        }
      });
      break;
    case 3://Apagar música da DB
    if(!confirm("Tem certeza que deseja apagar esta música?")){return;}
    if(id_playlist!=""){//se for executado na seção playlist
      $("#playlist_loading").show();
    }else{
      $("#tocar_loading").show();
      $("#clplay").hide()
      $("#clremove").hide()
    }
    $.getJSON( "ajax.php?removesong="+s_id, function( data ) {
      if(data!=""){
        $("#tocar_loading").hide();
        var response = data.response;
        if(response!=1){
          if(id_playlist!=""){//se for executado na seção playlist
              $("#playlist_msg").html("<b>Houve o seguinte erro:</b> "+response)
              $("#playlist_msg").fadeIn();
              clvote()
            }else{
              $("#tocar_msg").html("<b>Houve o seguinte erro:</b> "+response)
              $("#tocar_msg").fadeIn();
              clvote()
            }
        }else{
          if(id_playlist!=""){//se for executado na seção playlist
              $("#"+id_playlist).remove();
              $("#playlist_loading").hide();
              $("#playlist_msg").html("Música removida com sucesso!")
              $("#playlist_msg").fadeIn().delay(2000).fadeOut();
            }else{
              $("#tocar_msg").html("Música removida com sucesso!")
              $("#tocar_msg").fadeIn().delay(2000).fadeOut();
              clvote();
            }
        }
      }
    });
      break;

      case 4://remove from pls
      if(!confirm("Remover esta música da playlist?")){return;}
        $("#playlist_loading").show();
      $.getJSON( "ajax.php?removefrompls="+s_id, function( data ) {
        if(data!=""){
          $("#tocar_loading").hide();
          var response = data.response;
          if(response!=1){
                $("#playlist_msg").html("<b>Houve o seguinte erro:</b> "+response)
                $("#playlist_msg").fadeIn();
                $("#playlist_loading").hide();
          }else{
                $("#"+id_playlist).remove();
                $("#playlist_loading").hide();
                $("#playlist_msg").html("Removido da playlist com sucesso!")
                $("#playlist_msg").fadeIn().delay(2000).fadeOut();
          }
        }
      });
        break;
  }
  return;
  /*
  var name = $("#search").val()
  var val = "";
  if(itsnew==true){
    val = $("#url").val();
  }else{
    val = song_id
  }
  alert(name+val)
  */
}


pls = $("#pls");
function getpls(name) {//pegar a playlist e mostra 3 anteriores atual 3 próximas músicas
  $.getJSON( "ajax.php?pls="+name, function( data ) {
    currentsong = data.currentsong;
    var nome = "NOME";
    $(pls).html("");
    if(data!=""){
      var can_remove = false;//não devem ser removidas as anteriores da que está tocando!
      $.each(data.songs,function(){
        if(currentsong==this.inpls){
          $(pls).append("<li>Tocando: "+this.name+"</li>")
          can_remove = true;//quando a atual aparece, as próximas são liberadas para serem removidas
        }else{
          var id_inpls = this.inpls;
          var name = this.name;
          //ícone de remover da playlist:
          var act_remove = '<span onclick="claction(4,\''+id_inpls+'\',\''+id_inpls+'\')" class="rmicon icon fa-remove"></span>';
          //ícone de apagar da DB:
          var act_delete = '<span onclick="claction(3,\''+this.id+'\',\''+id_inpls+'\')" class="rmicon icon fa-trash"></span>';
          var icons = "";
          if(can_remove==true){
            icons = act_remove+act_delete;//pode remover e apagar
          }else{
            icons = act_delete;//somente remover
          }
          $(pls).append('<li id="'+id_inpls+'">['+id_inpls+'] '+name+icons+'</li>')
        }
      })

      //TORNA A PLAYLIST DRAGGABLE
      $( function() {
        $(pls).sortable({
          revert: false
        });
        $( "ul, li" ).disableSelection();
      } );

    }
  });
}

function getsugestions(){
  var sugestions = $("#sugestions");
  $.getJSON( "ajax.php?getsugestions", function( data ) {
    $(sugestions).html("");
    if(data!=""){
      if(data.response==0){
        $(sugestions).append('<li>Nada por aqui :)</li>')
      }else{
        $.each(data.response,function(){
          $(sugestions).append('<li>'+this.name+':<br><a target="_blank" href="'+this.value+'">'+this.value+'</a><br><iframe src="https://www.youtube.com/embed/'+this.videoid+'" frameborder="0" allowfullscreen></iframe><br><span onclick="actsugestion(1,'+this.id+',$(this).parent())" class="rmicon icon fa-check"></span><span onclick="actsugestion(2,'+this.id+',$(this).parent())" class="rmicon icon fa-remove"></span></li>');
        });
      }
    }
});
}
function actsugestion(act,id,element){
  $(element).remove();
  $.getJSON( "ajax.php?updatesugestion="+id+"&act="+act, function( data ) {
    if(data!=""){
      alert(data.response);
    }
});
}