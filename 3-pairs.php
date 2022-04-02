<?php
	function pairs($arr) {
	  $counts = array_count_values($arr);
	  
	  foreach($counts as $val => $i) {
	    if($i < 2) {
	      echo $val.", ";
	    }
	  }
	}
	
	$arr = array(2,2,3,4,6,4,5,7,3);
	pairs($arr);
?>