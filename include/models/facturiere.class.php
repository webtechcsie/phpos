<?php
class Facturiere extends AbstractDB
{
	var $useTable="facturiere";
	var $primaryKey="facturier_id";
	var $form = array();
	
	function Facturiere($mysql, $id=NULL)
		{
		$this -> AbstractDB($mysql,$id);
		}
}
?>