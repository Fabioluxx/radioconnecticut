/*Funções
stitle = song title
stmb = song thumb
surl = song url
pname = playlist name
-----------------------
toptxt(text) altera a mensagem no topo
addvote(name,fb_id,vote) add um voto
addpls(txt) add uma música nas tocadas anteriormente
fdimg(url)
fdtitle(text)
https://unsplash.it/854/480/?random
queria colocar isso:
https://github.com/wayou/HTML5_Audio_Visualizer
mas a cpu n deixa =/
FODA-SE A CPU CARALHO, vou colocar mesmo assim!
*/
url_json = "get.php";

$(document).ready(function(){
//  startvisualizer();
  getmusic();
  rotate(1);
});


function rotate(x){//rodar o logo
  d = 360*x
  var elem = $(".logo");

    $({deg: 0}).animate({deg: d}, {
        duration: 2000,
        step: function(now){
            elem.css({
                 transform: "rotate(" + now + "deg)"
            });
        }
    });
}
function getmusic(){//pega as informações da música
  $.getJSON(url_json, function(obj){
    if(obj.ads=="true"){//se for um anuncio
      var stitle = false;
    }else{//se não
      var stitle = obj.name;
    }
    var surl = obj.url;
    playsong(stitle,surl);//toca a música
  });
}

currentsubs = ""
function updatesubs(){
  setTimeout(function(){updatesubs()},3000);
  var key = "AIzaSyBLG3F6tzyaem3YO3l8GpBx5t3YfLPIJBE";
  var channelID = "UCsZfuVJvQLsZS8gObdc6-Qg";
  var url = 'https://www.googleapis.com/youtube/v3/channels?part=statistics&id='+channelID+'&key='+key;
  $.getJSON(url, function(obj){
    subs = obj.items[0].statistics.subscriberCount;//número de inscritos
    $(".odometer").html(subs);
    if(subs!=currentsubs&&currentsubs!=""){
      rotate(subs-currentsubs)
    }
    currentsubs = subs;
  });
}
setTimeout(function(){updatesubs()},1000);

function supdate(obj){
  if(obj.toptxt != 0){
    toptxt(obj.toptxt.message);
  }
}

function playsong(stitle,surl){//toca a música
  if(stitle!==false){//se for anúncio não coloca na pls
    addpls(stitle);
  }
  mp3 = $("#mp3")[0]
  $(mp3).attr('src',surl);
//  visualize(surl);
  mp3.play();//remover esta linha quando ativar o visualizer	
}
function startplay(){//chamado quando o visualizer está pronto
  mp3.play();//inicia
}



function toptxt(text){
  scrolltxt = $("#scrolltxt").fadeToggle(2000,function(){scrolltxt.html(text);});
  scrolltxt = $("#scrolltxt").fadeToggle(2000);
}
function fdimg(obj){
  if(obj!=0){
    var url = obj.url;
    $("#tmb").fadeToggle(2000,function(){$("#tmb").attr("src",url);$("#tmb").fadeToggle(2000);});
  }
}
function fdtitle(text){
  $(".title").fadeToggle(2000,function(){$(".title").html(text);$(".title").fadeToggle(2000);});
}
$('#mp3').on('timeupdate', function() {//faz a barra ir junto com a música
  progress = this.currentTime / this.duration * 100;
  $(".played").css("width",progress+"%")
  time = cathTime(Math.round(this.duration - this.currentTime))
  $(".time").html(time);
});

$("#mp3").on("ended", function(){//quando acaba a música
  getmusic();
  updatebg();
})

function cathTime(s) {
  if(isNaN(s)){
    return "00";
  }
  var m = Math.floor(s/60); //Get remaining minutes
  s -= m*60;
  return (m < 10 ? '0'+m : m)+":"+(s < 10 ? '0'+s : s); //zero padding on minutes and seconds
}

function addpls(txt){
  var length = $(".h_list").children().length;
  if(length==0){
    $(".h_list").html('<li>►'+txt+'</li>');
  }else{
    $(".h_list li:first").text($(".h_list li:first").text().substr(1)) //remove the ► symbol
    $(".h_list li:first").before('<li>►'+txt+'</li>');
    if(length==5){
    $(".h_list li:last").remove();
  }
}
}
function updatebg(){
  var useless = new Date().getTime();
  //$('#fullback').css('background-image', 'url(css/power.png)');
  var back = $("#fullback");
  var img_url = 'https://unsplash.it/854/480/?random&useless='+useless;
  $('<img src="'+img_url+'"/>');//preload image
  $(back).fadeToggle();
  $(back).css('background-image', 'url('+img_url+')');
  $(back).fadeToggle();
}