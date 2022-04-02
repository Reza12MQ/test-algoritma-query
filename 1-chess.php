<?php
  function chess ($x, $y) {
    
    $blk = 0;
    $wht = 0;
    $count = 0;
    $reverse = 0;
    
    for($i=1;$i<=$y;$i++) { //row
    
        for($j=1;$j<=$y;$j++) { //col
        
          if($blk < $x && $wht == 0) {
            if($reverse == 0) {
              echo("*");
            }
            else {
              echo("-");
            }
            $blk++;
            if($blk >= $x) {
              $wht = $x;
              $blk = 0;
            }
          }
          else {
            if($reverse == 0) {
              echo("-");
            }
            else {
              echo("*");
            }
            $wht--;
          }
        }
        
        $blk = 0;
        $wht = 0;
        
        $count++;
        
        if($count >= $x && $reverse == 0) {
          $count = 0;
          $reverse = $x;
        }
        elseif($reverse != 0) {
          $count--;
          $reverse--;
        }
        
      echo("\n");
    }
  }
  
  chess(2, 8);
?>