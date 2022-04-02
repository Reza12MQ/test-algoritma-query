<?php
  function anagram($a) {
    $map = array();
    
    foreach($a as $listword) {
      $split = str_split($listword);
      sort($split);
      $split = implode("", $split);
      $map[$split][] = $listword;
    }
    
    foreach($map as $result) {
      echo '[';
      foreach($result as $word) {
        echo $word.',';
      }
      echo '], ';
    }
  }
  
  $list_word = array('kita', 'atik', 'tika', 'aku', 'kia', 'makan', 'kua');
  anagram($list_word);
  
?>