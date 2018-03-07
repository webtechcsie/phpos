) <div style="margin-top:75px ">
<table width="900" border="0" align="center" cellpadding="5" cellspacing="5">
  <tr>
    <td width="25%"><div align="center">
      <input name="btnMarcaj" type="button" id="btnMarcaj" class="btnTouch" value="Marcaj" onClick="window.location.href = 'comanda.php'" <?php echo $user -> verificaDreptButton('marcaj');?>>
    </div></td>
    <td width="25%"><div align="center">
      <input name="btnConfigurari" type="button" id="btnConfigurari" class="btnTouch" value="Configurari" onClick="window.location.href = 'configurari.php'" <?php echo $user -> verificaDreptButton('configurari');?>>
    </div></td>
    <td width="25%"><div align="center">
      <input name="btnRapoarte" type="button" id="btnRapoarte" class="btnTouch" value="Rapoarte" onClick="window.location.href = 'rapoarte.php'" <?php echo $user -> verificaDreptButton('rapoarte');?>>
    </div></td>
    <td width="25%"><div align="center">
      <input name="btnInchidereZi" type="button" id="btnInchidereZi" class="btnTouch" value="Inchidere zi" onClick="window.location.href = 'inchidere.zi.php'" <?php echo $user -> verificaDreptButton('inchidere_zi');?>>
    </div></td>
  </tr>
  <tr>
    <td><div align="center">
      <input name="btnIntrari" type="button" id="btnIntrari" value="INTRARI" class="btnTouch" onClick="window.location.href='evidenta.niruri.php'" <?php echo $user -> verificaDreptButton('intrari');?>>
    </div></td>
    <td><div align="center">
      <input name="btnConfigurariProduse" type="button" id="btnConfigurariProduse"  class="btnTouch"value="Configurari Produse" onClick="window.location.href = 'config.produse.php'" <?php echo $user -> verificaDreptButton('configurari_produse');?>>
    </div></td>
    <td><div align="center">
      <input name="btnEvidantaBonuri" type="button" id="btnEvidantaBonuri" class="btnTouch" value="Evidenta Bonuri" onClick="window.location.href = 'evidenta.bonuri.php'" <?php echo $user -> verificaDreptButton('evidenta_bonuri');?>>
    </div></td>
    <td><div align="center">
      <input name="btnIesire" type="button" id="btnIesire3" class="btnTouch" value="IESIRE" onClick="window.location.href = 'exit.php'" <?php echo $user -> verificaDreptButton('iesire_program');?>>
    </div></td>
  </tr>
  <tr>
    <td><div align="center">
      <input name="btnInventar" type="button" id="btnInventar" value="INVENTAR" class="btnTouch" onClick="window.location.href='evidenta.inventar.php'" <?php echo $user -> verificaDreptButton('intrari');?>>
    </div></td>
    <td><div align="center">
      <input name="btnEvidentaVanzari3232" type="button" id="btnEvidentaVanzari323" class="btnTouch" value="MODIFICARI PRET" <?php echo $user -> verificaDreptButton('intrari');?> onclick="window.location.href = 'modificaripret.php'"  />
    </div></td>
    <td><div align="center">
      <input name="btnEvidentaVanzari" type="button" id="btnEvidentaVanzari4" class="btnTouch" value="Evidenta Vanzari" onClick="window.location.href = 'evidenta.vanzari.php'" <?php echo $user -> verificaDreptButton('evidenta_bonuri');?>>
    </div></td>
    <td><div align="center">
      <input name="btnEvidentaVanzari2" type="button" id="btnEvidentaVanzari22" class="btnTouch" value="LISTARE PRODUSE" <?php echo $user -> verificaDreptButton('intrari');?> onClick="window.location.href = 'listari.produse.php'" >
    </div></td>
  </tr>
  <tr>
    <td><div align="center">
      <input name="btnEvidentaVanzari3223" type="button" id="btnEvidentaVanzari3224" class="btnTouch" value="TRANSFORMARI" <?php echo $user -> verificaDreptButton('intrari');?> onClick="window.location.href = 'evidenta.transformari.php'" >
    </div></td>
    <td><div align="center">
      <input name="btnEvidentaVanzari32322" type="button" id="btnEvidentaVanzari3232" class="btnTouch" value="PV MODIFICARI PRET" <?php echo $user -> verificaDreptButton('intrari');?> onclick="window.location.href = 'docmodificaripret.php'">
    </div></td>
    <td><div align="center">
      <input name="btnEvidentaVanzari3" type="button" id="btnEvidentaVanzari" class="btnTouch" value="Evidenta Loturi" <?php echo $user -> verificaDreptButton('intrari');?> onClick="window.location.href = 'evidenta.loturi.php'" >
    </div></td>
    <td><div align="center">
      <input name="btnLogOut" type="button" id="btnLogOut" class="btnTouch" value="Log Out" onClick="window.location.href = 'logout.php'" >
    </div></td>
  </tr>
  <tr>
    <td><div align="center">
      <input name="btnEvidentaVanzari322" type="button" id="btnEvidentaVanzari3223" class="btnTouch" value="CLIENTI" <?php echo $user -> verificaDreptButton('intrari');?> onClick="window.location.href = 'clienti.php'" >
    </div></td>
    <td><div align="center">
      <input name="btnEvidentaVanzari323222" type="button" id="btnEvidentaVanzari32322" class="btnTouch" value="BONURI CONSUM" <?php echo $user -> verificaDreptButton('intrari');?> onclick="window.location.href = 'bonuriconsum.php'">
    </div></td>
    <td><div align="center">
      <input name="btnEvidentaVanzari32" type="button" id="btnEvidentaVanzari3" class="btnTouch" value="VALOARE STOC" <?php echo $user -> verificaDreptButton('intrari');?> onClick="window.location.href = 'valoare.stoc.php'" >
    </div></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><div align="center">
      <input name="btnEvidentaVanzari3222" type="button" id="btnEvidentaVanzari3222" class="btnTouch" value="FURNIZORI" <?php echo $user -> verificaDreptButton('intrari');?> onClick="window.location.href = 'furnizori.php'" >
    </div></td>
    <td><div align="center">
        <input name="btnEvidentaVanzari323" type="button" id="btnEvidentaVanzari322" class="btnTouch" value="ETICHETE" <?php echo $user -> verificaDreptButton('intrari');?> onclick="window.location.href = 'evidenta.etichete.php'">
    </div></td>
    <td>      <div align="center">
      <input name="btnEvidentaVanzari4" type="button" id="btnEvidentaVanzari2" class="btnTouch" value="RAPORT GESTIUNE" <?php echo $user -> verificaDreptButton('intrari');?> onclick="window.location.href = 'raportgestiune.php'" />    
    </div></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><div align="center">
      <input name="btnEvidentaVanzari32222" type="button" id="btnEvidentaVanzari32222" class="btnTouch" value="REGISTRU CASA" <?php echo $user -> verificaDreptButton('intrari');?> onClick="window.location.href = 'registru.casa.php'" >
    </div></td>
    <td><div align="center">
        <input name="btnGeneratorCoduri" type="button" id="btnRapoarte22222" class="btnTouch" value="GENERATOR CODURI" <?php echo $user -> verificaDreptButton('intrari');?> onclick="window.location.href = 'generator.coduri.php'" />
    </div></td>
    <td><div align="center">
      <input name="btnEvidentaVanzari5" type="button" id="btnEvidentaVanzari5" class="btnTouch" value="RETURURI MARCAJ" <?php echo $user -> verificaDreptButton('intrari');?> onclick="window.location.href = 'evidenta.retur.php'" />
    </div></td>
    <td><div align="center">
      <input name="btnEvidentaVanzari6" type="button" id="btnEvidentaVanzari6" class="btnTouch" value="PRODUSE FURNIZORI" <?php echo $user -> verificaDreptButton('intrari');?> onclick="window.location.href = 'furnizori.produse.php'" />
    </div></td>
  </tr>
</table>
</div>
