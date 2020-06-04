/*View structure for view iesiri_bon_consum */

/*!50001 DROP TABLE IF EXISTS `iesiri_bon_consum` */;
/*!50001 DROP VIEW IF EXISTS `iesiri_bon_consum` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `iesiri_bon_consum` AS (select `iesiri`.`iesire_id` AS `iesire_id`,`iesiri`.`bon_continut_id` AS `bon_continut_id`,`bonuri_consum_continut`.`bon_consum_id` AS `bon_consum_id`,`produse`.`produs_id` AS `produs_id`,`produse`.`denumire` AS `denumire`,`intrari_continut`.`pret_intrare` AS `pret_intrare`,`intrari_continut`.`pret_intrare` AS `pret_vanzare`,`iesiri`.`cantitate` AS `cantitate`,`bonuri_consum`.`data` AS `data`,`iesiri`.`tip` AS `tip` from ((((`iesiri` join `intrari_continut` on((`iesiri`.`intrare_continut_id` = `intrari_continut`.`intrare_continut_id`))) join `produse` on((`intrari_continut`.`produs_id` = `produse`.`produs_id`))) join `bonuri_consum_continut` on((`iesiri`.`bon_continut_id` = `bonuri_consum_continut`.`bon_consum_continut_id`))) join `bonuri_consum` on((`bonuri_consum`.`bon_consum_id` = `bonuri_consum_continut`.`bon_consum_id`))) where (`iesiri`.`tip` = _latin1'bon_consum')) */;

/*View structure for view iesiri_group */

/*!50001 DROP TABLE IF EXISTS `iesiri_group` */;
/*!50001 DROP VIEW IF EXISTS `iesiri_group` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `iesiri_group` AS (select `iesiri_union`.`produs_id` AS `produs_id`,`iesiri_union`.`denumire` AS `denumire`,`iesiri_union`.`pret_intrare` AS `pret_intrare`,`iesiri_union`.`pret_vanzare` AS `pret_vanzare`,sum(`iesiri_union`.`cantitate`) AS `cantitate`,`iesiri_union`.`data` AS `data` from `iesiri_union` group by `iesiri_union`.`produs_id`,`iesiri_union`.`denumire`,`iesiri_union`.`pret_intrare`,`iesiri_union`.`pret_vanzare`,`iesiri_union`.`data` order by `iesiri_union`.`data`,`iesiri_union`.`pret_intrare`,`iesiri_union`.`pret_vanzare`) */;

/*View structure for view iesiri_materii */

/*!50001 DROP TABLE IF EXISTS `iesiri_materii` */;
/*!50001 DROP VIEW IF EXISTS `iesiri_materii` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `iesiri_materii` AS (select `iesiri`.`iesire_id` AS `iesire_id`,`bonuri_continut`.`bon_continut_id` AS `bon_continut_id`,`produse`.`produs_id` AS `produs_id`,`produse`.`denumire` AS `denumire`,`intrari_continut`.`pret_intrare` AS `pret_intrare`,(`intrari_continut`.`pret_intrare` * (`bonuri_continut`.`valoare` / `preturi_ach_retete`.`pret_ach`)) AS `pret_vanzare`,`iesiri`.`cantitate` AS `cantitate`,`bonuri`.`data` AS `data`,`iesiri`.`tip` AS `tip` from (((((`iesiri` join `intrari_continut` on((`intrari_continut`.`intrare_continut_id` = `iesiri`.`intrare_continut_id`))) join `bonuri_continut` on((`bonuri_continut`.`bon_continut_id` = `iesiri`.`bon_continut_id`))) join `produse` on((`produse`.`produs_id` = `intrari_continut`.`produs_id`))) join `preturi_ach_retete` on((`preturi_ach_retete`.`bon_continut_id` = `iesiri`.`bon_continut_id`))) join `bonuri` on((`bonuri_continut`.`bon_id` = `bonuri`.`bon_id`)))) */;

/*View structure for view iesiri_materii_prime */

/*!50001 DROP TABLE IF EXISTS `iesiri_materii_prime` */;
/*!50001 DROP VIEW IF EXISTS `iesiri_materii_prime` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `iesiri_materii_prime` AS (select `iesiri`.`bon_continut_id` AS `bon_continut_id`,`produse`.`produs_id` AS `produs_id`,`produse`.`denumire` AS `denumire`,`bonuri_continut`.`cantitate` AS `cantitate_vanduta`,`bonuri_continut`.`valoare` AS `valoare`,`view_intrari_continut`.`produs_id` AS `componenta_id`,`view_intrari_continut`.`denumire` AS `denumire_componenta`,`view_intrari_continut`.`pret_intrare` AS `pret_intrare`,`iesiri`.`cantitate` AS `cantitate_iesire` from ((((`iesiri` join `bonuri_continut` on((`iesiri`.`bon_continut_id` = `bonuri_continut`.`bon_continut_id`))) join `produse` on((`produse`.`produs_id` = `bonuri_continut`.`produs_id`))) join `view_intrari_continut` on((`view_intrari_continut`.`intrare_continut_id` = `iesiri`.`intrare_continut_id`))) join `retetar` on(((`view_intrari_continut`.`produs_id` = `retetar`.`componenta_id`) and (`produse`.`produs_id` = `retetar`.`produs_id`)))) where (`iesiri`.`tip` = _latin1'vanzare_reteta')) */;

/*View structure for view iesiri_retete */

/*!50001 DROP TABLE IF EXISTS `iesiri_retete` */;
/*!50001 DROP VIEW IF EXISTS `iesiri_retete` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `iesiri_retete` AS (select distinct `iesiri`.`bon_continut_id` AS `bon_continut_id`,`produse`.`produs_id` AS `produs_id`,`produse`.`denumire` AS `denumire`,`preturi_ach_retete`.`pret_ach` AS `pret_intrare`,`bonuri_continut`.`valoare` AS `pret_vanzare`,`bonuri_continut`.`cantitate` AS `cantitate`,`bonuri`.`data` AS `data`,_utf8'vanzare_reteta' AS `tip` from ((((`iesiri` join `preturi_ach_retete` on((`preturi_ach_retete`.`bon_continut_id` = `iesiri`.`bon_continut_id`))) join `bonuri_continut` on((`bonuri_continut`.`bon_continut_id` = `iesiri`.`bon_continut_id`))) join `produse` on((`produse`.`produs_id` = `bonuri_continut`.`produs_id`))) join `bonuri` on((`bonuri`.`bon_id` = `bonuri_continut`.`bon_id`))) where (`iesiri`.`tip` = _latin1'vanzare_reteta')) */;

/*View structure for view iesiri_union */

/*!50001 DROP TABLE IF EXISTS `iesiri_union` */;
/*!50001 DROP VIEW IF EXISTS `iesiri_union` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `iesiri_union` AS select `iesiri_bon_consum`.`iesire_id` AS `iesire_id`,`iesiri_bon_consum`.`bon_continut_id` AS `bon_continut_id`,`iesiri_bon_consum`.`produs_id` AS `produs_id`,`iesiri_bon_consum`.`denumire` AS `denumire`,`iesiri_bon_consum`.`pret_intrare` AS `pret_intrare`,`iesiri_bon_consum`.`pret_vanzare` AS `pret_vanzare`,`iesiri_bon_consum`.`cantitate` AS `cantitate`,`iesiri_bon_consum`.`data` AS `data`,`iesiri_bon_consum`.`tip` AS `tip` from `iesiri_bon_consum` union select `iesiri_vanzari`.`iesire_id` AS `iesire_id`,`iesiri_vanzari`.`bon_continut_id` AS `bon_continut_id`,`iesiri_vanzari`.`produs_id` AS `produs_id`,`iesiri_vanzari`.`denumire` AS `denumire`,`iesiri_vanzari`.`pret_intrare` AS `pret_intrare`,`iesiri_vanzari`.`pret_vanzare` AS `pret_vanzare`,`iesiri_vanzari`.`cantitate` AS `cantitate`,`iesiri_vanzari`.`data` AS `data`,`iesiri_vanzari`.`tip` AS `tip` from `iesiri_vanzari` union select 0 AS `iesire_id`,`iesiri_materii`.`bon_continut_id` AS `bon_continut_id`,`iesiri_materii`.`produs_id` AS `produs_id`,`iesiri_materii`.`denumire` AS `denumire`,`iesiri_materii`.`pret_intrare` AS `pret_intrare`,`iesiri_materii`.`pret_vanzare` AS `pret_vanzare`,`iesiri_materii`.`cantitate` AS `cantitate`,`iesiri_materii`.`data` AS `data`,`iesiri_materii`.`tip` AS `tip` from `iesiri_materii` */;

/*View structure for view iesiri_vanzari */

/*!50001 DROP TABLE IF EXISTS `iesiri_vanzari` */;
/*!50001 DROP VIEW IF EXISTS `iesiri_vanzari` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `iesiri_vanzari` AS (select `iesiri`.`iesire_id` AS `iesire_id`,`iesiri`.`bon_continut_id` AS `bon_continut_id`,`produse`.`produs_id` AS `produs_id`,`produse`.`denumire` AS `denumire`,`intrari_continut`.`pret_intrare` AS `pret_intrare`,`bonuri_continut`.`valoare` AS `pret_vanzare`,`iesiri`.`cantitate` AS `cantitate`,`bonuri`.`data` AS `data`,`iesiri`.`tip` AS `tip` from ((((`iesiri` join `intrari_continut` on((`iesiri`.`intrare_continut_id` = `intrari_continut`.`intrare_continut_id`))) join `produse` on((`intrari_continut`.`produs_id` = `produse`.`produs_id`))) join `bonuri_continut` on((`iesiri`.`bon_continut_id` = `bonuri_continut`.`bon_continut_id`))) join `bonuri` on((`bonuri`.`bon_id` = `bonuri_continut`.`bon_id`))) where (`iesiri`.`tip` = _latin1'vanzare')) */;

/*View structure for view intrari_group */

/*!50001 DROP TABLE IF EXISTS `intrari_group` */;
/*!50001 DROP VIEW IF EXISTS `intrari_group` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `intrari_group` AS (select `produse`.`produs_id` AS `produs_id`,`produse`.`denumire` AS `denumire`,sum(`intrari_continut`.`cantitate`) AS `cantitate`,`intrari_continut`.`pret_intrare` AS `pret_intrare`,`intrari_continut`.`pret_vanzare` AS `pret_vanzare`,`intrari_continut`.`data` AS `data` from (`intrari_continut` join `produse` on((`intrari_continut`.`produs_id` = `produse`.`produs_id`))) group by `produse`.`produs_id`,`produse`.`denumire`,`intrari_continut`.`pret_intrare`,`intrari_continut`.`pret_vanzare`,`intrari_continut`.`data` order by `intrari_continut`.`data`,`intrari_continut`.`pret_intrare`,`intrari_continut`.`pret_vanzare`) */;

/*View structure for view intrari_iesiri */

/*!50001 DROP TABLE IF EXISTS `intrari_iesiri` */;
/*!50001 DROP VIEW IF EXISTS `intrari_iesiri` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `intrari_iesiri` AS select `intrari_group`.`produs_id` AS `produs_id`,`intrari_group`.`denumire` AS `denumire`,`intrari_group`.`pret_intrare` AS `pret_intrare`,`intrari_group`.`pret_vanzare` AS `pret_vanzare`,`intrari_group`.`cantitate` AS `cantitate`,`intrari_group`.`data` AS `data`,_utf8'a' AS `tip` from `intrari_group` union select `iesiri_group`.`produs_id` AS `produs_id`,`iesiri_group`.`denumire` AS `denumire`,`iesiri_group`.`pret_intrare` AS `pret_intrare`,`iesiri_group`.`pret_vanzare` AS `pret_vanzare`,`iesiri_group`.`cantitate` AS `cantitate`,`iesiri_group`.`data` AS `data`,_utf8'b' AS `tip` from `iesiri_group` */;

/*View structure for view preturi_ach_retete */

/*!50001 DROP TABLE IF EXISTS `preturi_ach_retete` */;
/*!50001 DROP VIEW IF EXISTS `preturi_ach_retete` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `preturi_ach_retete` AS select `retete_calcul`.`bon_continut_id` AS `bon_continut_id`,(`retete_calcul`.`suma` / `bonuri_continut`.`cantitate`) AS `pret_ach` from (`retete_calcul` join `bonuri_continut` on((`retete_calcul`.`bon_continut_id` = `bonuri_continut`.`bon_continut_id`))) */;

/*View structure for view retete_calcul */

/*!50001 DROP TABLE IF EXISTS `retete_calcul` */;
/*!50001 DROP VIEW IF EXISTS `retete_calcul` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `retete_calcul` AS (select `iesiri_materii_prime`.`bon_continut_id` AS `bon_continut_id`,sum((`iesiri_materii_prime`.`pret_intrare` * `iesiri_materii_prime`.`cantitate_iesire`)) AS `suma`,sum(`iesiri_materii_prime`.`cantitate_iesire`) AS `cant_ies` from `iesiri_materii_prime` group by `iesiri_materii_prime`.`bon_continut_id`) */;

/*View structure for view rpt_bonuri_emise */

/*!50001 DROP TABLE IF EXISTS `rpt_bonuri_emise` */;
/*!50001 DROP VIEW IF EXISTS `rpt_bonuri_emise` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `rpt_bonuri_emise` AS (select count(`bonuri`.`bon_id`) AS `bonuri_emise`,sum(`bonuri`.`total`) AS `total`,`zile_economice`.`zi_economica_id` AS `zi_economica_id`,`zile_economice`.`data` AS `data`,`case_fiscale`.`casa_id` AS `casa_id`,`case_fiscale`.`nume_casa` AS `nume_casa` from ((`bonuri` join `zile_economice` on((`zile_economice`.`zi_economica_id` = `bonuri`.`zi_economica_id`))) join `case_fiscale` on((`bonuri`.`casa_id` = `case_fiscale`.`casa_id`))) group by `zile_economice`.`zi_economica_id`,`zile_economice`.`data`,`case_fiscale`.`casa_id`,`case_fiscale`.`nume_casa`) */;

/*View structure for view rpt_moduri_case */

/*!50001 DROP TABLE IF EXISTS `rpt_moduri_case` */;
/*!50001 DROP VIEW IF EXISTS `rpt_moduri_case` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `rpt_moduri_case` AS (select `bonuri`.`casa_id` AS `casa_id`,`case_fiscale`.`nume_casa` AS `nume_casa`,`moduri_plata`.`nume_mod` AS `nume_mod`,sum(`bonuri_plata`.`suma`) AS `suma`,`moduri_plata`.`mod_plata_id` AS `mod_plata_id`,`zile_economice`.`zi_economica_id` AS `zi_economica_id`,`zile_economice`.`data` AS `data` from ((((`bonuri` join `bonuri_plata` on((`bonuri_plata`.`bon_id` = `bonuri`.`bon_id`))) join `moduri_plata` on((`moduri_plata`.`mod_plata_id` = `bonuri_plata`.`mod_plata_id`))) join `case_fiscale` on((`bonuri`.`casa_id` = `case_fiscale`.`casa_id`))) join `zile_economice` on((`zile_economice`.`zi_economica_id` = `bonuri`.`zi_economica_id`))) group by `zile_economice`.`zi_economica_id`,`bonuri`.`casa_id`,`case_fiscale`.`nume_casa`,`moduri_plata`.`nume_mod`,`moduri_plata`.`mod_plata_id`,`zile_economice`.`data`) */;

/*View structure for view rpt_moduri_plata */

/*!50001 DROP TABLE IF EXISTS `rpt_moduri_plata` */;
/*!50001 DROP VIEW IF EXISTS `rpt_moduri_plata` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `rpt_moduri_plata` AS (select `moduri_plata`.`nume_mod` AS `nume_mod`,sum(`bonuri_plata`.`suma`) AS `total_suma`,`zile_economice`.`zi_economica_id` AS `zi_economica_id`,`zile_economice`.`data` AS `data` from (((`bonuri_plata` join `bonuri` on((`bonuri_plata`.`bon_id` = `bonuri`.`bon_id`))) join `zile_economice` on((`bonuri`.`zi_economica_id` = `zile_economice`.`zi_economica_id`))) join `moduri_plata` on((`bonuri_plata`.`mod_plata_id` = `moduri_plata`.`mod_plata_id`))) group by `zile_economice`.`zi_economica_id`,`moduri_plata`.`nume_mod`,`zile_economice`.`data`) */;

/*View structure for view rpt_utilizatori_moduri */

/*!50001 DROP TABLE IF EXISTS `rpt_utilizatori_moduri` */;
/*!50001 DROP VIEW IF EXISTS `rpt_utilizatori_moduri` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `rpt_utilizatori_moduri` AS (select `bonuri`.`user_id` AS `user_id`,`users`.`nume` AS `nume`,`moduri_plata`.`nume_mod` AS `nume_mod`,sum(`bonuri_plata`.`suma`) AS `suma`,`moduri_plata`.`mod_plata_id` AS `mod_plata_id`,`zile_economice`.`zi_economica_id` AS `zi_economica_id`,`zile_economice`.`data` AS `data` from ((((`bonuri` join `bonuri_plata` on((`bonuri_plata`.`bon_id` = `bonuri`.`bon_id`))) join `moduri_plata` on((`moduri_plata`.`mod_plata_id` = `bonuri_plata`.`mod_plata_id`))) join `users` on((`bonuri`.`user_id` = `users`.`user_id`))) join `zile_economice` on((`zile_economice`.`zi_economica_id` = `bonuri`.`zi_economica_id`))) group by `zile_economice`.`zi_economica_id`,`bonuri`.`user_id`,`users`.`nume`,`moduri_plata`.`nume_mod`,`moduri_plata`.`mod_plata_id`,`zile_economice`.`data`) */;

/*View structure for view rpt_vanzari */

/*!50001 DROP TABLE IF EXISTS `rpt_vanzari` */;
/*!50001 DROP VIEW IF EXISTS `rpt_vanzari` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `rpt_vanzari` AS (select `produse`.`denumire` AS `denumire`,`categorii`.`denumire_categorie` AS `denumire_categorie`,sum(`bonuri_continut`.`cantitate`) AS `cantitate_vanduta`,sum((`bonuri_continut`.`cantitate` * `bonuri_continut`.`valoare`)) AS `valoare_vanduta`,`ze`.`zi_economica_id` AS `zi_economica_id`,`ze`.`data` AS `data` from ((((`bonuri_continut` join `bonuri` on((`bonuri_continut`.`bon_id` = `bonuri`.`bon_id`))) join `produse` on((`bonuri_continut`.`produs_id` = `produse`.`produs_id`))) join `categorii` on((`produse`.`categorie_id` = `categorii`.`categorie_id`))) join `zile_economice` `ze` on((`ze`.`zi_economica_id` = `bonuri`.`zi_economica_id`))) group by `produse`.`denumire`,`ze`.`zi_economica_id`,`ze`.`data`,`produse`.`produs_id`,`categorii`.`denumire_categorie`,`categorii`.`categorie_id`) */;

/*View structure for view test */

/*!50001 DROP TABLE IF EXISTS `test` */;
/*!50001 DROP VIEW IF EXISTS `test` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `test` AS (select `produse`.`denumire` AS `denumire`,`intrari_continut`.`nir_id` AS `nir_id`,`produse`.`pret` AS `pret`,`intrari_continut`.`pret_vanzare` AS `pret_vanzare`,`intrari_continut`.`pret_intrare` AS `pret_intrare` from (`produse` join `intrari_continut` on((`produse`.`produs_id` = `intrari_continut`.`produs_id`)))) */;

/*View structure for view union */

/*!50001 DROP TABLE IF EXISTS `union` */;
/*!50001 DROP VIEW IF EXISTS `union` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `union` AS select `iesiri_bon_consum`.`iesire_id` AS `iesire_id`,`iesiri_bon_consum`.`bon_continut_id` AS `bon_continut_id`,`iesiri_bon_consum`.`produs_id` AS `produs_id`,`iesiri_bon_consum`.`denumire` AS `denumire`,`iesiri_bon_consum`.`pret_intrare` AS `pret_intrare`,`iesiri_bon_consum`.`pret_vanzare` AS `pret_vanzare`,`iesiri_bon_consum`.`cantitate` AS `cantitate`,`iesiri_bon_consum`.`tip` AS `tip` from `iesiri_bon_consum` union select `iesiri_vanzari`.`iesire_id` AS `iesire_id`,`iesiri_vanzari`.`bon_continut_id` AS `bon_continut_id`,`iesiri_vanzari`.`produs_id` AS `produs_id`,`iesiri_vanzari`.`denumire` AS `denumire`,`iesiri_vanzari`.`pret_intrare` AS `pret_intrare`,`iesiri_vanzari`.`pret_vanzare` AS `pret_vanzare`,`iesiri_vanzari`.`cantitate` AS `cantitate`,`iesiri_vanzari`.`tip` AS `tip` from `iesiri_vanzari` */;

/*View structure for view valoare_stoc */

/*!50001 DROP TABLE IF EXISTS `valoare_stoc` */;
/*!50001 DROP VIEW IF EXISTS `valoare_stoc` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `valoare_stoc` AS (select `view_stocuri_produse`.`produs_id` AS `produs_id`,`view_stocuri_produse`.`denumire` AS `denumire`,`view_stocuri_produse`.`stoc` AS `stoc`,`view_stocuri_produse`.`pret` AS `pret`,(`view_stocuri_produse`.`stoc` * `view_stocuri_produse`.`pret`) AS `valoare_stoc`,`view_stocuri_produse`.`categorie_id` AS `categorie_id`,`categorii`.`denumire_categorie` AS `denumire_categorie` from (`view_stocuri_produse` join `categorii` on((`view_stocuri_produse`.`categorie_id` = `categorii`.`categorie_id`)))) */;

/*View structure for view view_bonuri_continut */

/*!50001 DROP TABLE IF EXISTS `view_bonuri_continut` */;
/*!50001 DROP VIEW IF EXISTS `view_bonuri_continut` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `view_bonuri_continut` AS (select `bonuri_continut`.`bon_continut_id` AS `bon_continut_id`,`bonuri_continut`.`bon_id` AS `bon_id`,`bonuri_continut`.`produs_id` AS `produs_id`,`bonuri_continut`.`cantitate` AS `cantitate`,`bonuri_continut`.`valoare` AS `valoare`,`produse`.`denumire` AS `denumire` from (`bonuri_continut` join `produse` on((`bonuri_continut`.`produs_id` = `produse`.`produs_id`)))) */;

/*View structure for view view_bonuri_moduri */

/*!50001 DROP TABLE IF EXISTS `view_bonuri_moduri` */;
/*!50001 DROP VIEW IF EXISTS `view_bonuri_moduri` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_bonuri_moduri` AS (select `bonuri`.`data_ora` AS `data_ora`,`bonuri`.`bon_id` AS `bon_id`,`bonuri`.`numar_bon` AS `numar_bon`,`bonuri`.`total` AS `total`,`bonuri_plata`.`suma` AS `suma`,`case_fiscale`.`casa_id` AS `casa_id`,`case_fiscale`.`nume_casa` AS `nume_casa`,`users`.`user_id` AS `user_id`,`users`.`nume` AS `nume`,`moduri_plata`.`mod_plata_id` AS `mod_plata_id`,`moduri_plata`.`nume_mod` AS `nume_mod`,`moduri_plata`.`cash` AS `cash`,`zile_economice`.`data` AS `data` from (((((`bonuri` join `bonuri_plata` on((`bonuri`.`bon_id` = `bonuri_plata`.`bon_id`))) join `moduri_plata` on((`bonuri_plata`.`mod_plata_id` = `moduri_plata`.`mod_plata_id`))) join `zile_economice` on((`bonuri`.`zi_economica_id` = `zile_economice`.`zi_economica_id`))) join `users` on((`bonuri`.`user_id` = `users`.`user_id`))) join `case_fiscale` on((`bonuri`.`casa_id` = `case_fiscale`.`casa_id`)))) */;

/*View structure for view view_comenzi_continut */

/*!50001 DROP TABLE IF EXISTS `view_comenzi_continut` */;
/*!50001 DROP VIEW IF EXISTS `view_comenzi_continut` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `view_comenzi_continut` AS (select `comenzi_continut`.`comanda_continut_id` AS `comanda_continut_id`,`comenzi_continut`.`comanda_id` AS `comanda_id`,`comenzi_continut`.`cantitate` AS `cantitate`,`comenzi_continut`.`valoare` AS `valoare`,`comenzi_continut`.`discount` AS `discount`,`produse`.`denumire` AS `denumire` from (`comenzi_continut` join `produse` on((`comenzi_continut`.`produs_id` = `produse`.`produs_id`)))) */;

/*View structure for view view_iesiri_vanzari */

/*!50001 DROP TABLE IF EXISTS `view_iesiri_vanzari` */;
/*!50001 DROP VIEW IF EXISTS `view_iesiri_vanzari` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `view_iesiri_vanzari` AS (select `iesiri`.`iesire_id` AS `iesire_id`,`iesiri`.`bon_continut_id` AS `bon_continut_id`,`iesiri`.`cantitate` AS `cantitate`,`bonuri_continut`.`valoare` AS `valoare`,`iesiri`.`tip` AS `tip`,`bonuri`.`numar_bon` AS `numar_bon`,`view_intrari_continut`.`intrare_continut_id` AS `intrare_continut_id`,`zile_economice`.`data` AS `data`,`users`.`nume` AS `nume` from (((((`iesiri` join `view_intrari_continut` on((`iesiri`.`intrare_continut_id` = `view_intrari_continut`.`intrare_continut_id`))) join `bonuri_continut` on((`bonuri_continut`.`bon_continut_id` = `iesiri`.`bon_continut_id`))) join `bonuri` on((`bonuri`.`bon_id` = `bonuri_continut`.`bon_id`))) join `zile_economice` on((`zile_economice`.`zi_economica_id` = `bonuri`.`zi_economica_id`))) join `users` on((`users`.`user_id` = `bonuri`.`user_id`))) where (`iesiri`.`tip` = _latin1'vanzare')) */;

/*View structure for view view_intrari_continut */

/*!50001 DROP TABLE IF EXISTS `view_intrari_continut` */;
/*!50001 DROP VIEW IF EXISTS `view_intrari_continut` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `view_intrari_continut` AS (select `intrari_continut`.`intrare_continut_id` AS `intrare_continut_id`,`intrari_continut`.`tip` AS `tip`,`produse`.`denumire` AS `denumire`,`intrari_continut`.`nir_componenta_id` AS `nir_componenta_id`,`intrari_continut`.`nir_id` AS `nir_id`,`intrari_continut`.`produs_id` AS `produs_id`,`intrari_continut`.`cantitate` AS `cantitate`,`intrari_continut`.`cantitate_ramasa` AS `cantitate_ramasa`,`intrari_continut`.`pret_intrare` AS `pret_intrare`,`intrari_continut`.`activ` AS `activ`,`intrari_continut`.`data` AS `data`,`intrari_continut`.`pret_vanzare` AS `pret_vanzare` from (`intrari_continut` join `produse` on((`produse`.`produs_id` = `intrari_continut`.`produs_id`)))) */;

/*View structure for view view_inventar_continut */

/*!50001 DROP TABLE IF EXISTS `view_inventar_continut` */;
/*!50001 DROP VIEW IF EXISTS `view_inventar_continut` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `view_inventar_continut` AS (select `inventar_continut`.`inventar_continut_id` AS `inventar_continut_id`,`inventar_continut`.`inventar_id` AS `inventar_id`,`inventar_continut`.`produs_id` AS `produs_id`,`inventar_continut`.`stoc_scriptic` AS `stoc_scriptic`,`inventar_continut`.`stoc_faptic` AS `stoc_faptic`,`produse`.`denumire` AS `denumire` from (`inventar_continut` join `produse` on((`inventar_continut`.`produs_id` = `produse`.`produs_id`)))) */;

/*View structure for view view_niruri_detalii */

/*!50001 DROP TABLE IF EXISTS `view_niruri_detalii` */;
/*!50001 DROP VIEW IF EXISTS `view_niruri_detalii` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `view_niruri_detalii` AS (select `niruri`.`nir_id` AS `nir_id`,`niruri`.`numar_nir` AS `numar_nir`,`niruri`.`furnizor_id` AS `furnizor_id`,`niruri`.`numar_factura` AS `numar_factura`,`niruri`.`data_factura` AS `data_factura`,`niruri`.`data_scadenta` AS `data_scadenta`,`niruri`.`total_factura` AS `total_factura`,`niruri`.`total_tva` AS `total_tva`,`niruri`.`total_fara_tva` AS `total_fara_tva`,`niruri`.`data_adaugare` AS `data_adaugare`,`niruri`.`user_id` AS `user_id`,`furnizori`.`nume` AS `nume_furnizor`,`users`.`nume` AS `nume_user` from ((`niruri` join `furnizori` on((`niruri`.`furnizor_id` = `furnizori`.`furnizor_id`))) join `users` on((`niruri`.`user_id` = `users`.`user_id`)))) */;

/*View structure for view view_stocuri */

/*!50001 DROP TABLE IF EXISTS `view_stocuri` */;
/*!50001 DROP VIEW IF EXISTS `view_stocuri` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `view_stocuri` AS (select `produse`.`produs_id` AS `produs_id`,`produse`.`denumire` AS `denumire`,sum(`intrari_continut`.`cantitate_ramasa`) AS `stoc` from (`produse` join `intrari_continut` on((`intrari_continut`.`produs_id` = `produse`.`produs_id`))) where (`intrari_continut`.`cantitate_ramasa` <> 0) group by `produse`.`produs_id`,`produse`.`denumire`) */;

/*View structure for view view_stocuri_produse */

/*!50001 DROP TABLE IF EXISTS `view_stocuri_produse` */;
/*!50001 DROP VIEW IF EXISTS `view_stocuri_produse` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `view_stocuri_produse` AS (select `produse`.`produs_id` AS `produs_id`,`produse`.`denumire` AS `denumire`,`produse`.`categorie_id` AS `categorie_id`,`produse`.`cod` AS `cod`,`produse`.`denumire2` AS `denumire2`,`produse`.`cod_bare` AS `cod_bare`,`produse`.`pret` AS `pret`,`produse`.`cotatva_id` AS `cotatva_id`,`view_stocuri`.`stoc` AS `stoc`,`produse`.`la_vanzare` AS `la_vanzare`,`produse`.`tip_produs` AS `tip_produs` from (`produse` left join `view_stocuri` on(((`produse`.`produs_id` = `view_stocuri`.`produs_id`) and (`produse`.`denumire` = `view_stocuri`.`denumire`))))) */;

/*View structure for view view_vanzari */

/*!50001 DROP TABLE IF EXISTS `view_vanzari` */;
/*!50001 DROP VIEW IF EXISTS `view_vanzari` */;

/*!50001 CREATE ALGORITHM=UNDEFINED  SQL SECURITY DEFINER VIEW `view_vanzari` AS (select `p`.`denumire` AS `denumire`,sum(round((`bc`.`cantitate` * (`bp`.`suma` / `b`.`total`)),2)) AS `cantitate`,`bc`.`valoare` AS `valoare`,`m`.`nume_mod` AS `nume_mod`,`m`.`mod_plata_id` AS `mod_plata_id`,`c`.`denumire_categorie` AS `denumire_categorie`,`cf`.`casa_id` AS `casa_id`,`cf`.`nume_casa` AS `nume_casa`,`u`.`user_id` AS `user_id`,`u`.`nume` AS `nume`,`z`.`data` AS `data`,`z`.`zi_economica_id` AS `zi_economica_id` from ((((((((`bonuri_continut` `bc` join `bonuri` `b` on((`bc`.`bon_id` = `b`.`bon_id`))) join `bonuri_plata` `bp` on((`bc`.`bon_id` = `bp`.`bon_id`))) join `moduri_plata` `m` on((`bp`.`mod_plata_id` = `m`.`mod_plata_id`))) join `produse` `p` on((`bc`.`produs_id` = `p`.`produs_id`))) join `categorii` `c` on((`p`.`categorie_id` = `c`.`categorie_id`))) join `users` `u` on((`b`.`user_id` = `u`.`user_id`))) join `case_fiscale` `cf` on((`b`.`casa_id` = `cf`.`casa_id`))) join `zile_economice` `z` on((`b`.`zi_economica_id` = `z`.`zi_economica_id`))) group by `p`.`denumire`,`bc`.`valoare`,`m`.`nume_mod`,`m`.`mod_plata_id`,`z`.`data`,`z`.`zi_economica_id`,`c`.`denumire_categorie`,`u`.`nume`,`u`.`user_id`,`cf`.`casa_id`,`cf`.`nume_casa`) */;
