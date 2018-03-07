<?php
class Retetar extends AbstractDB
{
	var $useTable = "retetar";
	var $primaryKey = "retetar_id";
	var $form = array();
	function Retetar($mysql, $id=NULL)
		{
		$this -> AbstractDB($mysql, $id);
		}	
}
?>
