<?php
class BonuriContinut extends AbstractDB
{
	var $useTable="bonuri_continut";
	var $primaryKey="bon_continut_id";
	function BonuriContinut($mysql,$id=NULL)
		{
		$this -> AbstractDB($mysql, $id);
		}
}

class ViewBonuriContinut extends AbstractDB
{
	var $useTable="view_bonuri_continut";
	var $primaryKey="bon_continut_id";
	function ViewBonuriContinut($mysql,$id=NULL)
		{
		$this -> AbstractDB($mysql, $id);
		}
}
?>