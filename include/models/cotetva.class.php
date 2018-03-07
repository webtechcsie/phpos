<?php
class CoteTva extends AbstractDB
{
	var $useTable = "cotetva";
	var $primaryKey = "cotatva_id";
	function CoteTva($mysql, $id=NULL)
		{
		$this -> AbstractDB($mysql, $id);
		}
}
?>
