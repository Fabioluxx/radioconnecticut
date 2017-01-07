<?php
require_once "config.php";
  set_include_path ("lib/libssh");
  include('lib/libssh/Net/SSH2.php');

  function download_music($v){
    $ssh = new Net_SSH2(SSH_HOST,22,60);//port=22|timeout=60
    if (!$ssh->login(SSH_USER, SSH_PASS)) {
      exit('Login Failed');
    }
    $dir = SERVER_MUSICS_DIR;
    $cmd = "cd ".$dir." \n youtube-dl -x --id --audio-format mp3 ".$v;
    $result = $ssh->exec($cmd);
    $havefound = strpos($result, '[ffmpeg] Destination: '.$v.'.mp3');
    if($havefound==false){
      return "ERROR:".$result;
    }else{
      return 1;
    }
  }
  function cpuinfo(){//pegar informações da cpu
    $ssh = new Net_SSH2(SSH_HOST,22,30);//port=22|timeout=30
    if (!$ssh->login(SSH_USER, SSH_PASS)) {
      exit('Login Failed');
    }
    $partition = SERVER_HDD_PARTITION;
    $cmd = 'top -bn1 | awk \'/Mem/ { mem = "{\"ram\":" "\"" $5 / $3 * 100 "\"" }; /Cpu/ { cpu = "\"cpu\":" "\"" 100 - $8 "\"," }; END   { print mem", " cpu }\' && df -hl | grep \''.$partition.'\' | awk \' {percent+=$5;} {print "\"hd\":""\""percent"\"}"}\'';
    $result = $ssh->exec($cmd);
    if($ret = json_decode($result)){
      $return = [];
      foreach($ret as $r){
        $return[] = round($r);
      }
      return $return;
      /*
      [0]:RAM
      [1]:CPU
      [2]:HD
      */
    }else{
      return 0;
    }
  }
?>