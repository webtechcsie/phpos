<form action="" method="post" name="frmCautaProdus" id="frmCautaProdus" onSubmit="return false;">
<table width="100%"  border="0" cellspacing="2" cellpadding="2">
  <tr>
    <td width="15%"><strong>PRODUS</strong></td>
    <td colspan="3"><input name="denumire" type="text" id="denumire" size="50" onKeyUp="if(event.keyCode == 13) xajax_cautaProdus();">
    <input name="produs_id" type="hidden" id="produs_id"></td>
  </tr>
  <tr>
    <td><strong>Pret unitar </strong></td>
    <td width="29%"><input name="pret_ach" type="text" id="pret_ach"></td>
    <td width="22%">&nbsp;</td>
    <td width="34%">&nbsp;</td>
  </tr>
  <tr>
    <td><strong>Cantitate</strong></td>
    <td><input name="cant" type="text" id="cant"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>Unitate masura </strong></td>
    <td>	</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="100%"  border="0" cellspacing="2" cellpadding="2">
  <tr>
    <td width="47%" rowspan="4" valign="top">&nbsp;</td>
    <td width="23%"><strong>PRODUS</strong></td>
    <td width="30%"><div id="div_denumire"></div></td>
  </tr>
  <tr>
    <td><strong>PRET VANZARE </strong></td>
    <td><div id="div_pret"></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

</form>
