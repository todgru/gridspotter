<?php

  $json_all_results = file_get_contents('http://dxcluster.co.uk/api/all');

  $all_results = json_decode( $json_all_results );

  foreach ( $all_results as $result )
  {
    var_dump( $result->comment, $result->freq );
  }

  var_dump( $all_results );


  $json_band_results = file_get_contents('http://dxcluster.co.uk/api/data_band/6');

  $band_results = json_decode( $json_band_results );

  foreach ( $band_results as $result )
  {
    var_dump( $result->comment, $result->freq );
  }

  var_dump( $band_results );

?>
