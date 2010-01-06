<?php
  class pForm {
    # ----------------------------------------------------------------------
    # Constructor
    # ----------------------------------------------------------------------
    function pForm () {
    }
    function redirect_to ($url) {
      header ('Location: ' . $newurl);
      exit ();
    }
} # class
?>
