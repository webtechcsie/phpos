<?php
class BonuriPlata extends AbstractDB
{
	var $useTable="bonuri_plata";
	var $primaryKey="bon_plata_id";
	function BonuriPlata($mysql,$id=NULL)
		{
		$this -> AbstractDB($mysql, $id);
		}
}
?>