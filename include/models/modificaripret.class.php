<?php
class ModificariPret extends AbstractDB
{
	/*  */
	var $useTable = "modificari_pret";
	var $primaryKey = "modificare_pret_id";
	var $form = array();

	/* form processing */
	
	function ModificariPret($mysql, $id=NULL)
		{
		$this -> AbstractDB($mysql, $id);
		}

}
?>