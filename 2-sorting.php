<?php
	function mysort($arr) {
	  for($i=0;$i<count($arr);$i++) {
	    for($j=$i+1;$j<count($arr);$j++) {
  	    if($arr[$i] > $arr[$j]) {
  	      $temp = $arr[$j];
  	      $arr[$j] = $arr[$i];
  	      $arr[$i] = $temp;
  	    }
	    }
	  }
	  $sorted_arr = $arr;
	  
	  return $sorted_arr;
	}
	
	$arr = array(1,3,9,2,11,4,5);
	$sorted_arr = mysort($arr);
	
	foreach($sorted_arr as $val) {
	  echo $val."\n";
	}
?>