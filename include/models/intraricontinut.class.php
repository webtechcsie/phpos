<?php
class IntrariContinut extends AbstractDB
{
	var $useTable="intrari_continut";
	var $primaryKey="intrare_continut_id";
	
	function IntrariContinut($mysql,$id=NULL)
		{
		$this -> AbstractDB($mysql, $id);
		}
}
class ViewIntrariContinut extends AbstractDB
{
	var $useTable="view_intrari_continut";
	var $primaryKey="intrare_continut_id";
	
	function ViewIntrariContinut($mysql,$id=NULL)
		{
		$this -> AbstractDB($mysql, $id);
		}
}

class ViewIesiriVanzari extends AbstractDB
{
	var $useTable="view_iesiri_vanzari";
	var $primaryKey="iesire_id";
	
	function ViewIesiriVanzari($mysql,$id=NULL)
		{
		$this -> AbstractDB($mysql, $id);
		}
}
?>