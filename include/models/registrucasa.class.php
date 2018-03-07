<?php
class RegistruCasa extends AbstractDB
{
	var $useTable = "registru_casa";
	var $primaryKey = "inregistrare_id";
	var $form = array();
	function RegistruCasa($mysql, $id=NULL)
		{
		$this -> AbstractDB($mysql, $id);
		}
	
}
?>
