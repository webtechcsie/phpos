	$innerHTML = '
	<table width="500" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="250"><strong>Total Bon </strong></td>
    <td><div align="right"></div></td>
  </tr>
  <tr>
    <td><strong>Achitat</strong></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td><div style="text-align: center">
		<strong>Suma:</strong>
          <input type="text" name="txtSumaPlata" id="txtSumaPlata" readonly="" value="0">
</div>
		'. $tn -> html('txtSumaPlata', 'txtSumaPlata') .'</td>
    <td><div align="right"></div></td>
  </tr>
  <tr>
    <td><strong>Rest Datorat </strong></td>
    <td><div align="right"></div></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><div align="center">
      <input name="btnComandaNoua" type="button" id="btnComandaNoua" value="Comanda Urmatoare" onClick="window.location.href = \'comanda.php\'">
    </div></td>
    <td><div align="center">
      <input name="btnCalculeazaRest" type="button" id="btnCalculeazaRest" value="Calculeaza Rest">
    </div></td>
  </tr>
</table>
	';

