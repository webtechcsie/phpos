<?php
class BonuriConsumContinut extends AbstractDB
{
	/*  */
	var $useTable = "bonuri_consum_continut";
	var $primaryKey = "bon_consum_continut_id";
	var $form = array();

	/* form processing */
	
	function BonuriConsumContinut($mysql, $id=NULL)
		{
		$this -> AbstractDB($mysql, $id);
		}

}
?>