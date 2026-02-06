---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 627
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                                                                                                                                                                                            IF v_Processo = 627
                                                                                                                                                                                                                                                                                                                                                                                                                                            THEN --OR pNrProcesso = 0
                                                                                                                                                                                                                                                                                                                                                                                                                                                THEN
                                                                                                                                                                                                                                                                                                                                                                                                                                                    v_Sql_Cursor := Null;

                                                                                                                                                                                                                                                                                                                                                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                                                                                                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                                                                                                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                                                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                                                                                                                                                                                                    THEN

                                                                                                                                                                                                                                                                                                                                                                                                                                                        BEGIN v_Sql_Cursor := '
                                                                                                                                                                                                                                                                                                                                                                                                                                                            INSERT
                                                                                                                                                                                                                                                                                                                                                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico

                                                                                                                                                                                                                                                                                                                                                                                                                                                            SELECT '||v_Processo||' Nr_Processo
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Tp_Categoria
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Cd_Atendimento
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Cd_paciente
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Cd_Prestador
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Tp_Diagnostico
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Nm_Indicador
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Nm_Grupo
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Estabelecimento.Cd_Mvcc_Empresa Cd_Multi_Empresa
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Cen_Cir.Cd_Cen_Cir Cd_Departamento
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Cen_Cir.Ds_Cen_Cir Ds_Departamento
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Nvl(Movimento.data_mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY")) Data_Mes
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Nm_Processo
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Cen_Cir.Ds_Cen_Cir||", QTDE DE CIRURGIAS: "||Sum(Movimento.Qtde_Cirurgia)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            ||", QTDE DE CANCELADAS: "||Sum(Movimento.Qtde_Cancelada)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            ||", TAXA DE CANCELAMENTO: "||Avg(Movimento.Vl_Taxa_Cancelada)||" %"
                                                                                                                                                                                                                                                                                                                                                                                                                                                            ||", QTDE DE CIRURGIAS NO DIA: "||Sum(Movimento.Qtde_Cirurgia_Dia)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            ||", QTDE DE CANCELADAS NO DIA: "||Sum(Movimento.Qtde_Cancelada_Dia)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            ||", TAXA DE CANCELAMENTO NO DIA: "||Avg(Movimento.Vl_Taxa_Cancelada_Dia)||" %" Ds_Item_Nao_Conforme
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , '||vEmpresa.Cd_Cliente||' Cd_Cliente
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Estabelecimento.Nr_Cnpj
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dh_Geracao
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Qtde_Naoconforme
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Qtde_Instalada
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , "AVISO_CIRURGIA" Nm_Tabela_Chave
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , '||v_Processo||' Cd_Coluna_Chave
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dt_Coluna_Chave
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Dh_Proxima_Geracao
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Trunc(Avg(Movimento.Vl_Taxa_Cancelada),2) Qtde_Conforme
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Qtde_Total
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Dt_Finalizacao
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Qtde_NaoConforme_Dia
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Trunc(Avg(Movimento.Vl_Taxa_Cancelada_Dia),2) Qtde_Conforme_Dia
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Qtde_Total_Dia, 1 Nr_Notificacao

                                                                                                                                                                                                                                                                                                                                                                                                                                                            FROM (--MOVIMENTO CIRURGIA--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                SELECT Mov.Cd_Multi_Empresa
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Mov.Cd_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Mov.Data_Mes
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Nvl(Mov.Qtde_Cancelada,0) Qtde_Cancelada
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Nvl(Mov.Qtde_Cancelada_Dia,0) Qtde_Cancelada_Dia
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Nvl(Mov.Qtde_Cirurgia,0) Qtde_Cirurgia
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Nvl(Mov.Qtde_Cirurgia_Dia,0) Qtde_Cirurgia_Dia
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , (Case
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    WHEN Nvl(Mov.Qtde_Cirurgia,0) = 0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    THEN 0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ELSE Trunc((Mov.Qtde_Cancelada/Mov.Qtde_Cirurgia)*100,2)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                END) Vl_Taxa_Cancelada
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , (Case
                                                                                                                                                                                                                                                                                                                                                                                                                                                                WHEN Nvl(Mov.Qtde_Cirurgia_Dia,0) = 0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                THEN 0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                ELSE Trunc((Mov.Qtde_Cancelada_Dia/Mov.Qtde_Cirurgia_Dia)*100,2)
                                                                                                                                                                                                                                                                                                                                                                                                                                                            END) Vl_Taxa_Cancelada_Dia

                                                                                                                                                                                                                                                                                                                                                                                                                                                        FROM (
                                                                                                                                                                                                                                                                                                                                                                                                                                                            SELECT Mov.Cd_Multi_Empresa
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Mov.Cd_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Mov.Data_Mes
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Sum(Mov.Qtde_Realizada)+Sum(Mov.Qtde_Cancelada) Qtde_Cirurgia
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Sum(Mov.Qtde_Realizada_Dia)+Sum(Mov.Qtde_Cancelada_Dia) Qtde_Cirurgia_Dia
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Sum(Mov.Qtde_Cancelada) Qtde_Cancelada
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Sum(Mov.Qtde_Cancelada_Dia) Qtde_Cancelada_Dia

                                                                                                                                                                                                                                                                                                                                                                                                                                                            FROM (---CIRURGIAS CANCELADAS/SUSPENSAS---

                                                                                                                                                                                                                                                                                                                                                                                                                                                                SELECT Mov.Cd_Multi_Empresa
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Mov.Cd_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , To_Char(Mov.dt_cancelamento,"MM/YYYY") data_mes
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Mov.Tp_Situacao
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Mov.Sn_Suspensao
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Mov.Qtde_Cancelada
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Mov.Qtde_Cancelada_Dia
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Mov.Sn_Inclui_Cir_Cancelada
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Null Qtde_Realizada
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Null Qtde_Realizada_Dia

                                                                                                                                                                                                                                                                                                                                                                                                                                                                FROM (
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    SELECT Avi.Cd_Multi_Empresa
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    , Avi.Cd_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    , Avi.dt_cancelamento
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    , Avi.Tp_Situacao
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    , Avi.Sn_Suspensao
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    , 1 Qtde_Cancelada
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    , (Case
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        WHEN Avi.dt_cancelamento Between Trunc(Sysdate) And Sysdate
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        THEN 1
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ELSE 0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    END) Qtde_Cancelada_Dia
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Nvl((
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        SELECT Min(Vcc.Cd_Campo_Chave)
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        FROM MvccAdmin.v_Campo_Chave Vcc

                                                                                                                                                                                                                                                                                                                                                                                                                                                                        WHERE Vcc.Nr_Processo = '||v_Processo||'
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        And Vcc.Cd_Tipo_Campo_Chave = 158 --INCLUI
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        AS CIRURGIAS CANCELADAS
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            And Vcc.Nr_Cnpj = '||vEmpresa.Nr_Cnpj||'
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            And Vcc.Cd_Multi_Empresa = '||vEmpresa.Cd_Mvcc_Empresa||'),"N") Sn_Inclui_Cir_Cancelada

                                                                                                                                                                                                                                                                                                                                                                                                                                                                    FROM Dbamv.Aviso_Cirurgia Avi
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    , Dbamv.Cirurgia_Aviso Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    , Dbamv.Convenio Con

                                                                                                                                                                                                                                                                                                                                                                                                                                                                    WHERE Avi.Cd_Aviso_Cirurgia = Cir.Cd_Aviso_Cirurgia
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    And Cir.Cd_Convenio = Con.Cd_Convenio
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    And Exists (
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        SELECT 1
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        FROM Dbamv.Mot_Canc Mot
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        WHERE Avi.Cd_Mot_Canc = Mot.cd_Mot_Canc and mot.tp_mot_canc In ("P","A","M","C","E","T")) --MOTIVOS DE CANCELAMENTO DA ORGANIZACAO
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    And Cir.Sn_Principal = "S"
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    And (Avi.Tp_Situacao = "C" Or Avi.Sn_Suspensao = "S")
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    And Avi.dt_cancelamento Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    And Avi.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ) Mov

                                                                                                                                                                                                                                                                                                                                                                                                                                                                WHERE (Mov.Sn_Suspensao = "S" Or (Mov.Sn_Inclui_Cir_Cancelada = "S" And Mov.Tp_Situacao = "C"))

                                                                                                                                                                                                                                                                                                                                                                                                                                                                UNION ALL
                                                                                                                                                                                                                                                                                                                                                                                                                                                                ---CIRURGIAS REALIZADAS---

                                                                                                                                                                                                                                                                                                                                                                                                                                                                SELECT Avi.Cd_Multi_Empresa
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Avi.Cd_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , To_Char(Avi.Dt_Realizacao,"MM/YYYY") data_mes
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Null Tp_Situacao
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Null Sn_Suspensao
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , 0 Qtde_Cancelada
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , 0 Qtde_Cancelada_Dia
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , Null Sn_Inclui_Cir_Cancelada
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , 1 Qtde_Realizada
                                                                                                                                                                                                                                                                                                                                                                                                                                                                , (Case
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    WHEN Avi.Dt_Realizacao Between Trunc(Sysdate) And Sysdate
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    THEN 1
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ELSE 0
                                                                                                                                                                                                                                                                                                                                                                                                                                                                END) Qtde_Realizada_Dia

                                                                                                                                                                                                                                                                                                                                                                                                                                                            FROM Dbamv.Aviso_Cirurgia Avi
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Dbamv.Cirurgia_Aviso Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                                            , Dbamv.Convenio Con

                                                                                                                                                                                                                                                                                                                                                                                                                                                            WHERE Avi.Cd_Aviso_Cirurgia = Cir.Cd_Aviso_Cirurgia
                                                                                                                                                                                                                                                                                                                                                                                                                                                            And Cir.Cd_Convenio = Con.Cd_Convenio
                                                                                                                                                                                                                                                                                                                                                                                                                                                            And Cir.Sn_Principal = "S"
                                                                                                                                                                                                                                                                                                                                                                                                                                                            And Avi.Tp_Situacao = "R"
                                                                                                                                                                                                                                                                                                                                                                                                                                                            And Avi.Dt_Realizacao Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                                                                                                                                                                                                                                                                                                                                                                                                                                                            And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                                                                                                                                                                                                                                                                                                                                                                                                                                                            And Avi.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                                                                                                                                                                                                                                                                                                                                                                                                                                                            ) Mov

                                                                                                                                                                                                                                                                                                                                                                                                                                                        GROUP BY Mov.Cd_Multi_Empresa
                                                                                                                                                                                                                                                                                                                                                                                                                                                        , Mov.Cd_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                                        , Mov.Data_Mes
                                                                                                                                                                                                                                                                                                                                                                                                                                                        ) Mov
                                                                                                                                                                                                                                                                                                                                                                                                                                                    ) Movimento
                                                                                                                                                                                                                                                                                                                                                                                                                                                , Dbamv.Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                                , MvccAdmin.Estabelecimento

                                                                                                                                                                                                                                                                                                                                                                                                                                                WHERE Cen_Cir.Cd_Cen_Cir = Movimento.Cd_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                                And Estabelecimento.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                                                                                                                                                                                                                                                                                                                                                                                                                                                And Exists (
                                                                                                                                                                                                                                                                                                                                                                                                                                                    SELECT 1
                                                                                                                                                                                                                                                                                                                                                                                                                                                    FROM Dbamv.Setor Str, Dbamv.Sal_Cir Sal
                                                                                                                                                                                                                                                                                                                                                                                                                                                    WHERE Str.Cd_Setor = Sal.Cd_Setor And Cen_Cir.Cd_Cen_Cir = Sal.Cd_Cen_Cir And Str.Cd_Multi_Empresa = '||pCdMultiEmpresa||')

                                                                                                                                                                                                                                                                                                                                                                                                                                                GROUP BY Estabelecimento.Cd_Mvcc_Empresa
                                                                                                                                                                                                                                                                                                                                                                                                                                                , Nvl(Movimento.data_mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY"))
                                                                                                                                                                                                                                                                                                                                                                                                                                                , Cen_Cir.Cd_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                                , Cen_Cir.Ds_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                                , Estabelecimento.Nr_Cnpj';
                                                                                                                                                                                                                                                                                                                                                                                                                                                v_Sql_Cursor := REPLACE(v_Sql_Cursor,'"','''');
                                                                                                                                                                                                                                                                                                                                                                                                                                                EXECUTE IMMEDIATE v_Sql_Cursor;

                                                                                                                                                                                                                                                                                                                                                                                                                                                EXCEPTION

                                                                                                                                                                                                                                                                                                                                                                                                                                                WHEN OTHERS
                                                                                                                                                                                                                                                                                                                                                                                                                                                THEN
                                                                                                                                                                                                                                                                                                                                                                                                                                                    v_Error := SQLERRM;
                                                                                                                                                                                                                                                                                                                                                                                                                                                    vLineErrors := DBMS_UTILITY.format_error_backtrace;

                                                                                                                                                                                                                                                                                                                                                                                                                                                    INSERT
                                                                                                                                                                                                                                                                                                                                                                                                                                                    INTO MvccAdmin.Log_Geral (cd_log_geral, dt_inicio, dt_fim, nm_owner, nm_tabela, nm_rotina, ds_valor, ds_msg, cd_log_geral_pai, cd_scheduling_process, cd_queue_execution, cd_evento, cd_multi_empresa)
                                                                                                                                                                                                                                                                                                                                                                                                                                                    VALUES (Seq_Log_Geral.Nextval, Sysdate, Sysdate, 'MVBIKE','LOG_GERAL','PRC_DIAG_ECONOMICO_C_ANALITICO(Processo:'||v_Processo||',Empresa: '||pCdMultiEmpresa||')',v_Sql_Cursor,'ERRO: '||v_Error, Null,pCdSchedulingProcess, pCdQueueExecution, v_Processo, pCdMultiEmpresa);

                                                                                                                                                                                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                                                                                                                                                                                END;
                                                                                                                                                                                                                                                                                                                                                                                                                                            -----------------------------------------------
                                                                                                                                                                                                                                                                                                                                                                                                                                            ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                                                                                                                                                                            -----------------------------------------------

                                                                                                                                                                                                                                                                                                                                                                                                                                            BEGIN
                                                                                                                                                                                                                                                                                                                                                                                                                                                MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                                                                                                                                                                            END;

                                                                                                                                                                                                                                                                                                                                                                                                                                        COMMIT;

                                                                                                                                                                                                                                                                                                                                                                                                                                    END
                                                                                                                                                                                                                                                                                                                                                                                                                                IF;

                                                                                                                                                                                                                                                                                                                                                                                                                            END
                                                                                                                                                                                                                                                                                                                                                                                                                        IF;
                                                                                                                                                                                                                                                                                                                                                                                                                        --Processo cProcesso_00628 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 628
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                                                                                                                                                                        IF v_Processo = 628
                                                                                                                                                                                                                                                                                                                                                                                                                        THEN --OR pNrProcesso = 0
                                                                                                                                                                                                                                                                                                                                                                                                                            THEN
                                                                                                                                                                                                                                                                                                                                                                                                                                v_Sql_Cursor := Null;

                                                                                                                                                                                                                                                                                                                                                                                                                                OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                                                                                                                                                                                FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                                                                                                                                                                                INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                                                                                                                CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                                                                                                                IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                                                                                                                                                                                THEN

                                                                                                                                                                                                                                                                                                                                                                                                                                    BEGIN v_Sql_Cursor := '
                                                                                                                                                                                                                                                                                                                                                                                                                                        INSERT
                                                                                                                                                                                                                                                                                                                                                                                                                                        INTO MvccAdmin.Diag_Processo_Carga_Analitico

                                                                                                                                                                                                                                                                                                                                                                                                                                        SELECT '||v_Processo||' Nr_Processo
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Null Tp_Categoria
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Null Cd_Atendimento
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Null Cd_paciente
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Null Cd_Prestador
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Null Tp_Diagnostico
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Null Nm_Indicador
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Null Nm_Grupo
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Estabelecimento.Cd_Mvcc_Empresa Cd_Multi_Empresa
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Cen_Cir.Cd_Cen_Cir Cd_Departamento
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Cen_Cir.Ds_Cen_Cir Ds_Departamento
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Nvl(Movimento.data_mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY")) Data_Mes
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Null Nm_Processo
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Cen_Cir.Ds_Cen_Cir||", QTDE DE CIRURGIAS: "||Sum(Movimento.Qtde_Cirurgia)
                                                                                                                                                                                                                                                                                                                                                                                                                                        ||", QTDE DE CANCELADAS: "||Sum(Movimento.Qtde_Cancelada)
                                                                                                                                                                                                                                                                                                                                                                                                                                        ||", TAXA DE CANCELAMENTO: "||Avg(Movimento.Vl_Taxa_Cancelada)||" %"
                                                                                                                                                                                                                                                                                                                                                                                                                                        ||", QTDE DE CIRURGIAS NO DIA: "||Sum(Movimento.Qtde_Cirurgia_Dia)
                                                                                                                                                                                                                                                                                                                                                                                                                                        ||", QTDE DE CANCELADAS NO DIA: "||Sum(Movimento.Qtde_Cancelada_Dia)
                                                                                                                                                                                                                                                                                                                                                                                                                                        ||", TAXA DE CANCELAMENTO NO DIA: "||Avg(Movimento.Vl_Taxa_Cancelada_Dia)||" %" Ds_Item_Nao_Conforme
                                                                                                                                                                                                                                                                                                                                                                                                                                        , '||vEmpresa.Cd_Cliente||' Cd_Cliente
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Estabelecimento.Nr_Cnpj
                                                                                                                                                                                                                                                                                                                                                                                                                                        , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dh_Geracao
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Null Qtde_Naoconforme
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Null Qtde_Instalada
                                                                                                                                                                                                                                                                                                                                                                                                                                        , "AVISO_CIRURGIA" Nm_Tabela_Chave
                                                                                                                                                                                                                                                                                                                                                                                                                                        , '||v_Processo||' Cd_Coluna_Chave
                                                                                                                                                                                                                                                                                                                                                                                                                                        , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dt_Coluna_Chave
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Null Dh_Proxima_Geracao
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Trunc(Avg(Movimento.Vl_Taxa_Cancelada),2) Qtde_Conforme
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Null Qtde_Total
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Null Dt_Finalizacao
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Null Qtde_NaoConforme_Dia
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Trunc(Avg(Movimento.Vl_Taxa_Cancelada_Dia),2) Qtde_Conforme_Dia
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Null Qtde_Total_Dia, 1 Nr_Notificacao

                                                                                                                                                                                                                                                                                                                                                                                                                                        FROM (--MOVIMENTO CIRURGIA--

                                                                                                                                                                                                                                                                                                                                                                                                                                            SELECT Mov.Cd_Multi_Empresa
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Mov.Cd_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Mov.Data_Mes
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Nvl(Mov.Qtde_Cancelada,0) Qtde_Cancelada
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Nvl(Mov.Qtde_Cancelada_Dia,0) Qtde_Cancelada_Dia
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Nvl(Mov.Qtde_Cirurgia,0) Qtde_Cirurgia
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Nvl(Mov.Qtde_Cirurgia_Dia,0) Qtde_Cirurgia_Dia
                                                                                                                                                                                                                                                                                                                                                                                                                                            , (Case
                                                                                                                                                                                                                                                                                                                                                                                                                                                WHEN Nvl(Mov.Qtde_Cirurgia,0) = 0
                                                                                                                                                                                                                                                                                                                                                                                                                                                THEN 0
                                                                                                                                                                                                                                                                                                                                                                                                                                                ELSE Trunc((Mov.Qtde_Cancelada/Mov.Qtde_Cirurgia)*100,2)
                                                                                                                                                                                                                                                                                                                                                                                                                                            END) Vl_Taxa_Cancelada
                                                                                                                                                                                                                                                                                                                                                                                                                                        , (Case
                                                                                                                                                                                                                                                                                                                                                                                                                                            WHEN Nvl(Mov.Qtde_Cirurgia_Dia,0) = 0
                                                                                                                                                                                                                                                                                                                                                                                                                                            THEN 0
                                                                                                                                                                                                                                                                                                                                                                                                                                            ELSE Trunc((Mov.Qtde_Cancelada_Dia/Mov.Qtde_Cirurgia_Dia)*100,2)
                                                                                                                                                                                                                                                                                                                                                                                                                                        END) Vl_Taxa_Cancelada_Dia

                                                                                                                                                                                                                                                                                                                                                                                                                                    FROM (
                                                                                                                                                                                                                                                                                                                                                                                                                                        SELECT Mov.Cd_Multi_Empresa
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Mov.Cd_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Mov.Data_Mes
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Sum(Mov.Qtde_Realizada)+Sum(Mov.Qtde_Cancelada) Qtde_Cirurgia
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Sum(Mov.Qtde_Realizada_Dia)+Sum(Mov.Qtde_Cancelada_Dia) Qtde_Cirurgia_Dia
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Sum(Mov.Qtde_Cancelada) Qtde_Cancelada
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Sum(Mov.Qtde_Cancelada_Dia) Qtde_Cancelada_Dia

                                                                                                                                                                                                                                                                                                                                                                                                                                        FROM (---CIRURGIAS CANCELADAS/SUSPENSAS---

                                                                                                                                                                                                                                                                                                                                                                                                                                            SELECT Mov.Cd_Multi_Empresa
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Mov.Cd_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                            , To_Char(Mov.dt_cancelamento,"MM/YYYY") data_mes
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Mov.Tp_Situacao
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Mov.Sn_Suspensao
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Mov.Qtde_Cancelada
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Mov.Qtde_Cancelada_Dia
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Mov.Sn_Inclui_Cir_Cancelada
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Qtde_Realizada
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Qtde_Realizada_Dia

                                                                                                                                                                                                                                                                                                                                                                                                                                            FROM (
                                                                                                                                                                                                                                                                                                                                                                                                                                                SELECT Avi.Cd_Multi_Empresa
                                                                                                                                                                                                                                                                                                                                                                                                                                                , Avi.Cd_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                                , Avi.dt_cancelamento
                                                                                                                                                                                                                                                                                                                                                                                                                                                , Avi.Tp_Situacao
                                                                                                                                                                                                                                                                                                                                                                                                                                                , Avi.Sn_Suspensao
                                                                                                                                                                                                                                                                                                                                                                                                                                                , 1 Qtde_Cancelada
                                                                                                                                                                                                                                                                                                                                                                                                                                                , (Case
                                                                                                                                                                                                                                                                                                                                                                                                                                                    WHEN Avi.dt_cancelamento Between Trunc(Sysdate) And Sysdate
                                                                                                                                                                                                                                                                                                                                                                                                                                                    THEN 1
                                                                                                                                                                                                                                                                                                                                                                                                                                                    ELSE 0
                                                                                                                                                                                                                                                                                                                                                                                                                                                END) Qtde_Cancelada_Dia
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Nvl((
                                                                                                                                                                                                                                                                                                                                                                                                                                                    SELECT Min(Vcc.Cd_Campo_Chave)
                                                                                                                                                                                                                                                                                                                                                                                                                                                    FROM MvccAdmin.v_Campo_Chave Vcc

                                                                                                                                                                                                                                                                                                                                                                                                                                                    WHERE Vcc.Nr_Processo = '||v_Processo||'
                                                                                                                                                                                                                                                                                                                                                                                                                                                    And Vcc.Cd_Tipo_Campo_Chave = 158 --INCLUI
                                                                                                                                                                                                                                                                                                                                                                                                                                                    AS CIRURGIAS CANCELADAS
                                                                                                                                                                                                                                                                                                                                                                                                                                                        And Vcc.Nr_Cnpj = '||vEmpresa.Nr_Cnpj||'
                                                                                                                                                                                                                                                                                                                                                                                                                                                        And Vcc.Cd_Multi_Empresa = '||vEmpresa.Cd_Mvcc_Empresa||'),"N") Sn_Inclui_Cir_Cancelada

                                                                                                                                                                                                                                                                                                                                                                                                                                                FROM Dbamv.Aviso_Cirurgia Avi
                                                                                                                                                                                                                                                                                                                                                                                                                                                , Dbamv.Cirurgia_Aviso Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                                , Dbamv.Convenio Con

                                                                                                                                                                                                                                                                                                                                                                                                                                                WHERE Avi.Cd_Aviso_Cirurgia = Cir.Cd_Aviso_Cirurgia
                                                                                                                                                                                                                                                                                                                                                                                                                                                And Cir.Cd_Convenio = Con.Cd_Convenio
                                                                                                                                                                                                                                                                                                                                                                                                                                                And Exists (
                                                                                                                                                                                                                                                                                                                                                                                                                                                    SELECT 1
                                                                                                                                                                                                                                                                                                                                                                                                                                                    FROM Dbamv.Mot_Canc Mot
                                                                                                                                                                                                                                                                                                                                                                                                                                                    WHERE Avi.Cd_Mot_Canc = Mot.cd_Mot_Canc and mot.tp_mot_canc = "P") --MOTIVOS DE CANCELAMENTO DO PACIENTE
                                                                                                                                                                                                                                                                                                                                                                                                                                                And Cir.Sn_Principal = "S"
                                                                                                                                                                                                                                                                                                                                                                                                                                                And (Avi.Tp_Situacao = "C" Or Avi.Sn_Suspensao = "S")
                                                                                                                                                                                                                                                                                                                                                                                                                                                And Avi.dt_cancelamento Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                                                                                                                                                                                                                                                                                                                                                                                                                                                And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                                                                                                                                                                                                                                                                                                                                                                                                                                                And Avi.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                                                                                                                                                                                                                                                                                                                                                                                                                                                ) Mov

                                                                                                                                                                                                                                                                                                                                                                                                                                            WHERE (Mov.Sn_Suspensao = "S" Or (Mov.Sn_Inclui_Cir_Cancelada = "S" And Mov.Tp_Situacao = "C"))

                                                                                                                                                                                                                                                                                                                                                                                                                                            UNION ALL
                                                                                                                                                                                                                                                                                                                                                                                                                                            ---CIRURGIAS REALIZADAS---

                                                                                                                                                                                                                                                                                                                                                                                                                                            SELECT Avi.Cd_Multi_Empresa
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Avi.Cd_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                            , To_Char(Avi.Dt_Realizacao,"MM/YYYY") data_mes
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Tp_Situacao
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Sn_Suspensao
                                                                                                                                                                                                                                                                                                                                                                                                                                            , 0 Qtde_Cancelada
                                                                                                                                                                                                                                                                                                                                                                                                                                            , 0 Qtde_Cancelada_Dia
                                                                                                                                                                                                                                                                                                                                                                                                                                            , Null Sn_Inclui_Cir_Cancelada
                                                                                                                                                                                                                                                                                                                                                                                                                                            , 1 Qtde_Realizada
                                                                                                                                                                                                                                                                                                                                                                                                                                            , (Case
                                                                                                                                                                                                                                                                                                                                                                                                                                                WHEN Avi.Dt_Realizacao Between Trunc(Sysdate) And Sysdate
                                                                                                                                                                                                                                                                                                                                                                                                                                                THEN 1
                                                                                                                                                                                                                                                                                                                                                                                                                                                ELSE 0
                                                                                                                                                                                                                                                                                                                                                                                                                                            END) Qtde_Realizada_Dia

                                                                                                                                                                                                                                                                                                                                                                                                                                        FROM Dbamv.Aviso_Cirurgia Avi
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Dbamv.Cirurgia_Aviso Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                        , Dbamv.Convenio Con

                                                                                                                                                                                                                                                                                                                                                                                                                                        WHERE Avi.Cd_Aviso_Cirurgia = Cir.Cd_Aviso_Cirurgia
                                                                                                                                                                                                                                                                                                                                                                                                                                        And Cir.Cd_Convenio = Con.Cd_Convenio
                                                                                                                                                                                                                                                                                                                                                                                                                                        And Cir.Sn_Principal = "S"
                                                                                                                                                                                                                                                                                                                                                                                                                                        And Avi.Tp_Situacao = "R"
                                                                                                                                                                                                                                                                                                                                                                                                                                        And Avi.Dt_Realizacao Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                                                                                                                                                                                                                                                                                                                                                                                                                                        And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                                                                                                                                                                                                                                                                                                                                                                                                                                        And Avi.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                                                                                                                                                                                                                                                                                                                                                                                                                                        ) Mov

                                                                                                                                                                                                                                                                                                                                                                                                                                    GROUP BY Mov.Cd_Multi_Empresa
                                                                                                                                                                                                                                                                                                                                                                                                                                    , Mov.Cd_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                    , Mov.Data_Mes
                                                                                                                                                                                                                                                                                                                                                                                                                                    ) Mov
                                                                                                                                                                                                                                                                                                                                                                                                                                ) Movimento
                                                                                                                                                                                                                                                                                                                                                                                                                            , Dbamv.Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                            , MvccAdmin.Estabelecimento

                                                                                                                                                                                                                                                                                                                                                                                                                            WHERE Cen_Cir.Cd_Cen_Cir = Movimento.Cd_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                            And Estabelecimento.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                                                                                                                                                                                                                                                                                                                                                                                                                            And Exists (
                                                                                                                                                                                                                                                                                                                                                                                                                                SELECT 1
                                                                                                                                                                                                                                                                                                                                                                                                                                FROM Dbamv.Setor Str, Dbamv.Sal_Cir Sal
                                                                                                                                                                                                                                                                                                                                                                                                                                WHERE Str.Cd_Setor = Sal.Cd_Setor And Cen_Cir.Cd_Cen_Cir = Sal.Cd_Cen_Cir And Str.Cd_Multi_Empresa = '||pCdMultiEmpresa||')

                                                                                                                                                                                                                                                                                                                                                                                                                            GROUP BY Estabelecimento.Cd_Mvcc_Empresa
                                                                                                                                                                                                                                                                                                                                                                                                                            , Nvl(Movimento.data_mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY"))
                                                                                                                                                                                                                                                                                                                                                                                                                            , Cen_Cir.Cd_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                            , Cen_Cir.Ds_Cen_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                            , Estabelecimento.Nr_Cnpj';
                                                                                                                                                                                                                                                                                                                                                                                                                            v_Sql_Cursor := REPLACE(v_Sql_Cursor,'"','''');
                                                                                                                                                                                                                                                                                                                                                                                                                            EXECUTE IMMEDIATE v_Sql_Cursor;

                                                                                                                                                                                                                                                                                                                                                                                                                            EXCEPTION

                                                                                                                                                                                                                                                                                                                                                                                                                            WHEN OTHERS
                                                                                                                                                                                                                                                                                                                                                                                                                            THEN
                                                                                                                                                                                                                                                                                                                                                                                                                                v_Error := SQLERRM;
                                                                                                                                                                                                                                                                                                                                                                                                                                vLineErrors := DBMS_UTILITY.format_error_backtrace;

                                                                                                                                                                                                                                                                                                                                                                                                                                INSERT
                                                                                                                                                                                                                                                                                                                                                                                                                                INTO MvccAdmin.Log_Geral (cd_log_geral, dt_inicio, dt_fim, nm_owner, nm_tabela, nm_rotina, ds_valor, ds_msg, cd_log_geral_pai, cd_scheduling_process, cd_queue_execution, cd_evento, cd_multi_empresa)
                                                                                                                                                                                                                                                                                                                                                                                                                                VALUES (Seq_Log_Geral.Nextval, Sysdate, Sysdate, 'MVBIKE','LOG_GERAL','PRC_DIAG_ECONOMICO_C_ANALITICO(Processo:'||v_Processo||',Empresa: '||pCdMultiEmpresa||')',v_Sql_Cursor,'ERRO: '||v_Error, Null,pCdSchedulingProcess, pCdQueueExecution, v_Processo, pCdMultiEmpresa);

                                                                                                                                                                                                                                                                                                                                                                                                                                COMMIT;

                                                                                                                                                                                                                                                                                                                                                                                                                            END;
                                                                                                                                                                                                                                                                                                                                                                                                                        -----------------------------------------------
                                                                                                                                                                                                                                                                                                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                                                                                                                                                        -----------------------------------------------

                                                                                                                                                                                                                                                                                                                                                                                                                        BEGIN
                                                                                                                                                                                                                                                                                                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                                                                                                                                                        END;

                                                                                                                                                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                                                                                                                            IF;

                                                                                                                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 629
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                                                                                                                                                    IF v_Processo = 629
                                                                                                                                                                                                                                                                                                                                                                                                    THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                                                                                                                                                                        THEN

                                                                                                                                                                                                                                                                                                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                                                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                                                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                                                                                                                                                            THEN

                                                                                                                                                                                                                                                                                                                                                                                                                OPEN cProcesso_00629(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                                                                                                                                                                                LOOP

                                                                                                                                                                                                                                                                                                                                                                                                                    FETCH cProcesso_00629 BULK COLLECT
                                                                                                                                                                                                                                                                                                                                                                                                                    INTO v_Dados
                                                                                                                                                                                                                                                                                                                                                                                                                    LIMIT 3000;

                                                                                                                                                                                                                                                                                                                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                                                                                                                                                                                    INSERT
                                                                                                                                                                                                                                                                                                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                                                                                                                                                                                    COMMIT;
                                                                                                                                                                                                                                                                                                                                                                                                                    --
                                                                                                                                                                                                                                                                                                                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                                                                                                                                                                                    EXIT
                                                                                                                                                                                                                                                                                                                                                                                                                    WHEN cProcesso_00629%NOTFOUND;

                                                                                                                                                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                                                                                                                            LOOP;

                                                                                                                                                                                                                                                                                                                                                                                                                CLOSE cProcesso_00629;
                                                                                                                                                                                                                                                                                                                                                                                                                -----------------------------------------------
                                                                                                                                                                                                                                                                                                                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                                                                                                                                                -----------------------------------------------

                                                                                                                                                                                                                                                                                                                                                                                                                BEGIN
                                                                                                                                                                                                                                                                                                                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                                                                                                                                                END;

                                                                                                                                                                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                                                                                                                    IF;

                                                                                                                                                                                                                                                                                                                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 635
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                                                                                                                                            IF v_Processo = 635
                                                                                                                                                                                                                                                                                                                                                                                            THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                                                                                                                                                                THEN

                                                                                                                                                                                                                                                                                                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                                                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                                                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                                                                                                                                                    THEN

                                                                                                                                                                                                                                                                                                                                                                                                        OPEN cProcesso_00635(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                                                                                                                                                                        LOOP

                                                                                                                                                                                                                                                                                                                                                                                                            FETCH cProcesso_00635 BULK COLLECT
                                                                                                                                                                                                                                                                                                                                                                                                            INTO v_Dados
                                                                                                                                                                                                                                                                                                                                                                                                            LIMIT 3000;

                                                                                                                                                                                                                                                                                                                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                                                                                                                                                                            INSERT
                                                                                                                                                                                                                                                                                                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                                                                                                                                                                            COMMIT;
                                                                                                                                                                                                                                                                                                                                                                                                            --
                                                                                                                                                                                                                                                                                                                                                                                                            COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                                                                                                                                                                            EXIT
                                                                                                                                                                                                                                                                                                                                                                                                            WHEN cProcesso_00635%NOTFOUND;

                                                                                                                                                                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                                                                                                                    LOOP;

                                                                                                                                                                                                                                                                                                                                                                                                        CLOSE cProcesso_00635;
                                                                                                                                                                                                                                                                                                                                                                                                        -----------------------------------------------
                                                                                                                                                                                                                                                                                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                                                                                                                                        -----------------------------------------------

                                                                                                                                                                                                                                                                                                                                                                                                        BEGIN
                                                                                                                                                                                                                                                                                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                                                                                                                                        END;

                                                                                                                                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                                                                                                            IF;

                                                                                                                                                                                                                                                                                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                                                                                                    IF;
                                                                                                                                                                                                                                                                                                                                                                                    --Processo cProcesso_00636 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 636
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                                                                                                                                    IF v_Processo = 636
                                                                                                                                                                                                                                                                                                                                                                                    THEN --OR pNrProcesso = 0
                                                                                                                                                                                                                                                                                                                                                                                        THEN
                                                                                                                                                                                                                                                                                                                                                                                            v_Sql_Cursor := Null;

                                                                                                                                                                                                                                                                                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                                                                                                                                            THEN

                                                                                                                                                                                                                                                                                                                                                                                                BEGIN v_Sql_Cursor := '
                                                                                                                                                                                                                                                                                                                                                                                                    INSERT
                                                                                                                                                                                                                                                                                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico

                                                                                                                                                                                                                                                                                                                                                                                                    SELECT '||v_Processo||' Nr_Processo
                                                                                                                                                                                                                                                                                                                                                                                                    , Null Tp_Categoria
                                                                                                                                                                                                                                                                                                                                                                                                    , NULL Cd_Atendimento
                                                                                                                                                                                                                                                                                                                                                                                                    , NULL Cd_Paciente
                                                                                                                                                                                                                                                                                                                                                                                                    , NULL Cd_Prestador
                                                                                                                                                                                                                                                                                                                                                                                                    , NUll Tp_Diagnostico
                                                                                                                                                                                                                                                                                                                                                                                                    , NUll Nm_Indicador
                                                                                                                                                                                                                                                                                                                                                                                                    , NUll Nm_Grupo
                                                                                                                                                                                                                                                                                                                                                                                                    , Estabelecimento.Cd_Mvcc_Empresa Cd_Multi_Empresa
                                                                                                                                                                                                                                                                                                                                                                                                    , 1 Cd_Departamento
                                                                                                                                                                                                                                                                                                                                                                                                    , "PERC. DE EFICIÊNCIA DO BLOCO CIRÚRGICO" Ds_Departamento
                                                                                                                                                                                                                                                                                                                                                                                                    , To_Char(To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY") Data_Mes
                                                                                                                                                                                                                                                                                                                                                                                                    , NUll Nm_Processo
                                                                                                                                                                                                                                                                                                                                                                                                    , "TAXA DE UTILIZAÇÃO: "||Nvl(Movimento.Taxa_Utilizacao_Bloco,0)||"% Média Mensal"||Chr(10)||
                                                                                                                                                                                                                                                                                                                                                                                                    ", VALOR TOTAL RECEITA MÉDIA: R$ "||Nvl(Ltrim(To_Char(Nvl(Movimento.Vl_Produzido_Media,0),"999G999G999G999D99")),"0,00")||" (Média Mensal)"||Chr(10)||
                                                                                                                                                                                                                                                                                                                                                                                                    ", QTDE HORAS INSTALADAS C.C. MEDIA: "||Nvl(Movimento.Qtde_Hora_Instalada_Media,0)||" HORA(s) (Média Mensal)"||Chr(10)||
                                                                                                                                                                                                                                                                                                                                                                                                    ", QTDE HORAS UTILIZADAS C.C. MEDIA: "||Nvl(Movimento.Qtde_Hora_Utilizada_Media,0)||" HORA(s) (Média Mensal)"||Chr(10)||
                                                                                                                                                                                                                                                                                                                                                                                                    ", TAXA PREVISTA DE UTILIZAÇÃO: "||Nvl(Movimento.Taxa_Utilizacao_Prev,0)||"% Média Mensal"||Chr(10)||
                                                                                                                                                                                                                                                                                                                                                                                                    ", QTDE HORAS PERDIDAS C.C. MEDIA: "||Nvl(Movimento.Qtde_Hora_Perdida_Media,0)||" HORA(s) (Média Mensal)"||Chr(10)||
                                                                                                                                                                                                                                                                                                                                                                                                    ", VALOR MÉDIO HORAS UTILIZADAS C.C.: "||Nvl(Ltrim(To_Char(Nvl(Movimento.Valor_Hora_Utilizada_Media,0),"999G999G999G999D99")),"0,00")||" (Média Mensal)"||Chr(10)||
                                                                                                                                                                                                                                                                                                                                                                                                    ", VALOR DA INEFICIÊNCIA C.C.(PERDAS): "||Nvl(Ltrim(To_Char(Nvl(Movimento.Qtde_Hora_Perdida_Media,0)*Nvl(Movimento.Valor_Hora_Utilizada_Media,0),"999G999G999G999D99")),"0,00")||" (Média Mensal)"||Chr(10) Ds_Item_Nao_Conforme
                                                                                                                                                                                                                                                                                                                                                                                                    , '||vEmpresa.Cd_Cliente||' Cd_Cliente
                                                                                                                                                                                                                                                                                                                                                                                                    , Estabelecimento.Nr_Cnpj
                                                                                                                                                                                                                                                                                                                                                                                                    , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dh_Geracao
                                                                                                                                                                                                                                                                                                                                                                                                    , Null Qtde_Naoconforme
                                                                                                                                                                                                                                                                                                                                                                                                    , Null Qtde_Instalada
                                                                                                                                                                                                                                                                                                                                                                                                    , "PROCESSO" Nm_Tabela_Chave
                                                                                                                                                                                                                                                                                                                                                                                                    , '||v_Processo||' Cd_Coluna_Chave
                                                                                                                                                                                                                                                                                                                                                                                                    , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dt_Coluna_Chave
                                                                                                                                                                                                                                                                                                                                                                                                    , Null Dh_Proxima_Geracao
                                                                                                                                                                                                                                                                                                                                                                                                    , Nvl(Movimento.Qtde_Hora_Utilizada_Media,0) Qtde_Conforme
                                                                                                                                                                                                                                                                                                                                                                                                    , Null Qtde_Total, Null Dt_Finalizacao, Null Qtde_NaoConforme_Dia, Nvl(Movimento.Qtde_Hora_Utilizada_Media,0) Qtde_Conforme_Dia, Null Qtde_Total_Dia, 1 Nr_Notificacao

                                                                                                                                                                                                                                                                                                                                                                                                    FROM (---MOVIMENTOS---

                                                                                                                                                                                                                                                                                                                                                                                                        SELECT Mov.Qtde_Hora_Instalada_Media
                                                                                                                                                                                                                                                                                                                                                                                                        , Mov.Qtde_Hora_Utilizada_Media
                                                                                                                                                                                                                                                                                                                                                                                                        , Mov.Qtde_Hora_Perdida_Media
                                                                                                                                                                                                                                                                                                                                                                                                        , Mov.Vl_Produzido_Media
                                                                                                                                                                                                                                                                                                                                                                                                        , Mov.Valor_Hora_Utilizada_Media
                                                                                                                                                                                                                                                                                                                                                                                                        , Mov.Taxa_Utilizacao_Bloco
                                                                                                                                                                                                                                                                                                                                                                                                        , Mov.Taxa_Utilizacao_Prev

                                                                                                                                                                                                                                                                                                                                                                                                        FROM (
                                                                                                                                                                                                                                                                                                                                                                                                            SELECT Nvl(Vlr.Qtde_Hora_Instalada_Media,0) Qtde_Hora_Instalada_Media
                                                                                                                                                                                                                                                                                                                                                                                                            , Nvl(Vlr.Qtde_Hora_Utilizada_Media,0) Qtde_Hora_Utilizada_Media
                                                                                                                                                                                                                                                                                                                                                                                                            , Nvl(Vlr.Qtde_Hora_Instalada_Media,0)-Nvl(Vlr.Qtde_Hora_Utilizada_Media,0) Qtde_Hora_Perdida_Media
                                                                                                                                                                                                                                                                                                                                                                                                            , Nvl(Vlr.Vl_Produzido_Media,0) Vl_Produzido_Media
                                                                                                                                                                                                                                                                                                                                                                                                            , (Case
                                                                                                                                                                                                                                                                                                                                                                                                                WHEN Nvl(Vlr.Qtde_Hora_Utilizada_Media,0) = 0
                                                                                                                                                                                                                                                                                                                                                                                                                THEN 0
                                                                                                                                                                                                                                                                                                                                                                                                                ELSE Trunc(Nvl(Vlr.Vl_Produzido_Media,0)/Nvl(Vlr.Qtde_Hora_Utilizada_Media,0),2)
                                                                                                                                                                                                                                                                                                                                                                                                            END) Valor_Hora_Utilizada_Media
                                                                                                                                                                                                                                                                                                                                                                                                        , Nvl(Vlr.Taxa_Utilizacao_Bloco,0) Taxa_Utilizacao_Bloco
                                                                                                                                                                                                                                                                                                                                                                                                        , Nvl(Vlr.Taxa_Utilizacao_Prev,0) Taxa_Utilizacao_Prev

                                                                                                                                                                                                                                                                                                                                                                                                        FROM (
                                                                                                                                                                                                                                                                                                                                                                                                            SELECT Trunc(Nvl(Inef.Qtde_Hora_Instalada_Media,0)) Qtde_Hora_Instalada_Media
                                                                                                                                                                                                                                                                                                                                                                                                            , Trunc(Nvl(Inef.Qtde_Hora_Utilizada_Media,0)) Qtde_Hora_Utilizada_Media
                                                                                                                                                                                                                                                                                                                                                                                                            , Nvl(Inef.Vl_Produzido_Media,0) Vl_Produzido_Media
                                                                                                                                                                                                                                                                                                                                                                                                            , Nvl(Inef.Taxa_Utilizacao_Bloco,0) Taxa_Utilizacao_Bloco
                                                                                                                                                                                                                                                                                                                                                                                                            , Nvl(Inef.Taxa_Utilizacao_Prev,0) Taxa_Utilizacao_Prev

                                                                                                                                                                                                                                                                                                                                                                                                            FROM (
                                                                                                                                                                                                                                                                                                                                                                                                                SELECT Nvl(Tax.Qtde_Hora_Instalada_Media,0) Qtde_Hora_Instalada_Media
                                                                                                                                                                                                                                                                                                                                                                                                                , Nvl(Tax.Qtde_Hora_Utilizada_Media,0) Qtde_Hora_Utilizada_Media
                                                                                                                                                                                                                                                                                                                                                                                                                , Nvl(Tax.Vl_Produzido_Media,0) Vl_Produzido_Media
                                                                                                                                                                                                                                                                                                                                                                                                                , Nvl(MvccAdmin.Fnc_Departamento('||vEmpresa.Cd_Mvcc_Empresa||','||v_Processo||',1,'||vEmpresa.Nr_Cnpj||',"SLA"),0) Taxa_Utilizacao_Prev
                                                                                                                                                                                                                                                                                                                                                                                                                , Case
                                                                                                                                                                                                                                                                                                                                                                                                                WHEN Nvl(Tax.Qtde_Hora_Instalada_Media,0) = 0
                                                                                                                                                                                                                                                                                                                                                                                                                THEN 0
                                                                                                                                                                                                                                                                                                                                                                                                                ELSE Round(Nvl(Tax.Qtde_Hora_Utilizada_Media,0)/Nvl(Tax.Qtde_Hora_Instalada_Media,0)*100,2)
                                                                                                                                                                                                                                                                                                                                                                                                            END Taxa_Utilizacao_Bloco

                                                                                                                                                                                                                                                                                                                                                                                                            FROM (
                                                                                                                                                                                                                                                                                                                                                                                                                SELECT Cta.Qtde_Hora_Instalada_Media
                                                                                                                                                                                                                                                                                                                                                                                                                , Cta.Vl_Produzido_Media
                                                                                                                                                                                                                                                                                                                                                                                                                , Cta.Qtde_Hora_Utilizada_Media

                                                                                                                                                                                                                                                                                                                                                                                                                FROM (
                                                                                                                                                                                                                                                                                                                                                                                                                    SELECT ---QTDE HORAS INSTALADAS---
                                                                                                                                                                                                                                                                                                                                                                                                                    Nvl((
                                                                                                                                                                                                                                                                                                                                                                                                                            SELECT Trunc(Avg(Med_Ins.Qtde_Hora_Instalada_Media))

                                                                                                                                                                                                                                                                                                                                                                                                                            FROM (
                                                                                                                                                                                                                                                                                                                                                                                                                                SELECT Med_Ins.Dt_Mes
                                                                                                                                                                                                                                                                                                                                                                                                                                , Sum(Med_Ins.Qtde_Hora_Instalada_Media) Qtde_Hora_Instalada_Media

                                                                                                                                                                                                                                                                                                                                                                                                                                FROM (
                                                                                                                                                                                                                                                                                                                                                                                                                                    SELECT To_Char(Contador.Data,"MM/YYYY") Dt_Mes
                                                                                                                                                                                                                                                                                                                                                                                                                                    , (Trunc((To_Date(To_Char(Contador.Data,"DD/MM/YYYY")||" "||To_Char(Hrc.hr_final,"hh24:mi"),"DD/MM/YYYY HH24:MI")
                                                                                                                                                                                                                                                                                                                                                                                                                                                -To_Date(To_Char(Contador.Data,"DD/MM/YYYY")||" "||To_Char(Hrc.hr_inicial,"hh24:mi"),"DD/MM/YYYY HH24:MI"))*24)) Qtde_Hora_Instalada_Media

                                                                                                                                                                                                                                                                                                                                                                                                                                    FROM Dbamv.Sal_Cir Sal
                                                                                                                                                                                                                                                                                                                                                                                                                                    , Dbamv.Hr_Sal_Cir Hrc
                                                                                                                                                                                                                                                                                                                                                                                                                                    , (
                                                                                                                                                                                                                                                                                                                                                                                                                                        SELECT Ld.Data, To_Char(Ld.Data,"D") Tp_Dia_Semana
                                                                                                                                                                                                                                                                                                                                                                                                                                        FROM MvccAdmin.Lista_Data_06 Ld
                                                                                                                                                                                                                                                                                                                                                                                                                                        WHERE Ld.cd_multi_empresa = '||pCdMultiEmpresa||') Contador

                                                                                                                                                                                                                                                                                                                                                                                                                                    WHERE Sal.Cd_Sal_Cir = Hrc.Cd_Sal_Cir
                                                                                                                                                                                                                                                                                                                                                                                                                                    And Hrc.tp_dia_semana = Contador.tp_dia_semana
                                                                                                                                                                                                                                                                                                                                                                                                                                    And Exists (
                                                                                                                                                                                                                                                                                                                                                                                                                                        SELECT 1
                                                                                                                                                                                                                                                                                                                                                                                                                                        FROM Dbamv.Sal_Cir Sla
                                                                                                                                                                                                                                                                                                                                                                                                                                        WHERE Sla.Cd_Sal_Cir = Hrc.Cd_Sal_Cir And Exists (
                                                                                                                                                                                                                                                                                                                                                                                                                                            SELECT 1
                                                                                                                                                                                                                                                                                                                                                                                                                                            FROM Dbamv.Setor Str
                                                                                                                                                                                                                                                                                                                                                                                                                                            WHERE Str.Cd_Setor = Sla.Cd_Setor And Str.Cd_Multi_Empresa = '||pCdMultiEmpresa||'))
                                                                                                                                                                                                                                                                                                                                                                                                                                    And Contador.Data Between (Case
                                                                                                                                                                                                                                                                                                                                                                                                                                        WHEN Hrc.Dt_Vigencia_Ini
                                                                                                                                                                                                                                                                                                                                                                                                                                        IS Null
                                                                                                                                                                                                                                                                                                                                                                                                                                            THEN To_Date(To_Char(Add_Months(To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),-6),"MM/YYYY"),"MM/YYYY")
                                                                                                                                                                                                                                                                                                                                                                                                                                            ELSE Hrc.Dt_Vigencia_Ini
                                                                                                                                                                                                                                                                                                                                                                                                                                        END)
                                                                                                                                                                                                                                                                                                                                                                                                                                    And (Case
                                                                                                                                                                                                                                                                                                                                                                                                                                        WHEN Hrc.Dt_Vigencia_Fim
                                                                                                                                                                                                                                                                                                                                                                                                                                        IS Null
                                                                                                                                                                                                                                                                                                                                                                                                                                            THEN To_Date(To_Char(Add_Months(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),-1),"MM/YYYY"),"MM/YYYY")
                                                                                                                                                                                                                                                                                                                                                                                                                                            ELSE Hrc.Dt_Vigencia_Ini
                                                                                                                                                                                                                                                                                                                                                                                                                                        END)
                                                                                                                                                                                                                                                                                                                                                                                                                                    And Contador.Data Between To_Date(To_Char(Add_Months(To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),-6),"MM/YYYY"),"MM/YYYY")
                                                                                                                                                                                                                                                                                                                                                                                                                                    And Last_Day(To_Date(To_Char(Add_Months(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),-1),"MM/YYYY"),"MM/YYYY"))+.99999
                                                                                                                                                                                                                                                                                                                                                                                                                                    ) Med_Ins

                                                                                                                                                                                                                                                                                                                                                                                                                                GROUP BY Med_Ins.Dt_Mes
                                                                                                                                                                                                                                                                                                                                                                                                                                ) Med_Ins
                                                                                                                                                                                                                                                                                                                                                                                                                            ),0) Qtde_Hora_Instalada_Media
                                                                                                                                                                                                                                                                                                                                                                                                                    ---QTDE HORAS UTILIZADA---
                                                                                                                                                                                                                                                                                                                                                                                                                    , Nvl((
                                                                                                                                                                                                                                                                                                                                                                                                                            SELECT Avg(Med_Util.Qtde_Hora_Utilizada_Media)

                                                                                                                                                                                                                                                                                                                                                                                                                            FROM (
                                                                                                                                                                                                                                                                                                                                                                                                                                SELECT Med_Util.Dt_Mes
                                                                                                                                                                                                                                                                                                                                                                                                                                , Sum(Med_Util.Qtde_Hora_Utilizada_Media) Qtde_Hora_Utilizada_Media

                                                                                                                                                                                                                                                                                                                                                                                                                                FROM (
                                                                                                                                                                                                                                                                                                                                                                                                                                    SELECT To_Char(Avi.Dt_Realizacao,"MM/YYYY") Dt_Mes
                                                                                                                                                                                                                                                                                                                                                                                                                                    , Trunc((Round(Avi.dt_saida_sal_cir-Avi.dt_realizacao,1))*24) Qtde_Hora_Utilizada_Media

                                                                                                                                                                                                                                                                                                                                                                                                                                    FROM Dbamv.Aviso_Cirurgia Avi

                                                                                                                                                                                                                                                                                                                                                                                                                                    WHERE Avi.Tp_Situacao = "R"
                                                                                                                                                                                                                                                                                                                                                                                                                                    And Avi.Dt_Realizacao Between To_Date(To_Char(Add_Months(To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),-6),"MM/YYYY"),"MM/YYYY")
                                                                                                                                                                                                                                                                                                                                                                                                                                    And Last_Day(To_Date(To_Char(Add_Months(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),-1),"MM/YYYY"),"MM/YYYY"))+.99999
                                                                                                                                                                                                                                                                                                                                                                                                                                    And Avi.Cd_multi_Empresa = '||pCdMultiEmpresa||'
                                                                                                                                                                                                                                                                                                                                                                                                                                    ) Med_Util

                                                                                                                                                                                                                                                                                                                                                                                                                                GROUP BY Med_Util.Dt_Mes
                                                                                                                                                                                                                                                                                                                                                                                                                                ) Med_Util
                                                                                                                                                                                                                                                                                                                                                                                                                            ),0) Qtde_Hora_Utilizada_Media
                                                                                                                                                                                                                                                                                                                                                                                                                    ---VALOR TOTAL PRODUZIDO BLOCO CIRURGICO---
                                                                                                                                                                                                                                                                                                                                                                                                                    , Nvl((
                                                                                                                                                                                                                                                                                                                                                                                                                            SELECT Trunc(Avg(Sum(Dme.vl_pro_total_centro_cirurgico)),2)

                                                                                                                                                                                                                                                                                                                                                                                                                            FROM MvccAdmin.Fato_Valor_Economico Dme

                                                                                                                                                                                                                                                                                                                                                                                                                            WHERE Dme.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                                                                                                                                                                                                                                                                                                                                                                                                                            And Dme.Dt_Mes >= To_Date(To_Char(Add_Months(To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),-6),"MM/YYYY"),"MM/YYYY")
                                                                                                                                                                                                                                                                                                                                                                                                                            And Dme.vl_pro_total_centro_cirurgico > 0

                                                                                                                                                                                                                                                                                                                                                                                                                            GROUP BY Dme.Dt_Mes
                                                                                                                                                                                                                                                                                                                                                                                                                            ),0) Vl_Produzido_Media

                                                                                                                                                                                                                                                                                                                                                                                                                    FROM Dual
                                                                                                                                                                                                                                                                                                                                                                                                                    ) Cta
                                                                                                                                                                                                                                                                                                                                                                                                                ) Tax
                                                                                                                                                                                                                                                                                                                                                                                                            ) Inef
                                                                                                                                                                                                                                                                                                                                                                                                        ) Vlr
                                                                                                                                                                                                                                                                                                                                                                                                    ) Mov
                                                                                                                                                                                                                                                                                                                                                                                                ) Movimento
                                                                                                                                                                                                                                                                                                                                                                                            , MvccAdmin.Estabelecimento

                                                                                                                                                                                                                                                                                                                                                                                            WHERE Estabelecimento.Cd_Multi_Empresa = '||pCdMultiEmpresa;
                                                                                                                                                                                                                                                                                                                                                                                            v_Sql_Cursor := REPLACE(v_Sql_Cursor,'"','''');
                                                                                                                                                                                                                                                                                                                                                                                            EXECUTE IMMEDIATE v_Sql_Cursor;

                                                                                                                                                                                                                                                                                                                                                                                            EXCEPTION

                                                                                                                                                                                                                                                                                                                                                                                            WHEN OTHERS
                                                                                                                                                                                                                                                                                                                                                                                            THEN
                                                                                                                                                                                                                                                                                                                                                                                                v_Error := SQLERRM;
                                                                                                                                                                                                                                                                                                                                                                                                vLineErrors := DBMS_UTILITY.format_error_backtrace;

                                                                                                                                                                                                                                                                                                                                                                                                INSERT
                                                                                                                                                                                                                                                                                                                                                                                                INTO MvccAdmin.Log_Geral (cd_log_geral, dt_inicio, dt_fim, nm_owner, nm_tabela, nm_rotina, ds_valor, ds_msg, cd_log_geral_pai, cd_scheduling_process, cd_queue_execution, cd_evento, cd_multi_empresa)
                                                                                                                                                                                                                                                                                                                                                                                                VALUES (Seq_Log_Geral.Nextval, Sysdate, Sysdate, 'MVBIKE','LOG_GERAL','PRC_DIAG_ECONOMICO_C_ANALITICO(Processo:'||v_Processo||',Empresa: '||pCdMultiEmpresa||')',v_Sql_Cursor,'ERRO: '||v_Error, Null,pCdSchedulingProcess, pCdQueueExecution, v_Processo, pCdMultiEmpresa);

                                                                                                                                                                                                                                                                                                                                                                                                COMMIT;

                                                                                                                                                                                                                                                                                                                                                                                            END;
                                                                                                                                                                                                                                                                                                                                                                                        -----------------------------------------------
                                                                                                                                                                                                                                                                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                                                                                                                        -----------------------------------------------

                                                                                                                                                                                                                                                                                                                                                                                        BEGIN
                                                                                                                                                                                                                                                                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                                                                                                                        END;

                                                                                                                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                                                                                            IF;

                                                                                                                                                                                                                                                                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 637
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                                                                                                                    IF v_Processo = 637
                                                                                                                                                                                                                                                                                                                                                                    THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                                                                                                                                        THEN

                                                                                                                                                                                                                                                                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                                                                                                                            THEN

                                                                                                                                                                                                                                                                                                                                                                                OPEN cProcesso_00637(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                                                                                                                                                LOOP

                                                                                                                                                                                                                                                                                                                                                                                    FETCH cProcesso_00637 BULK COLLECT
                                                                                                                                                                                                                                                                                                                                                                                    INTO v_Dados
                                                                                                                                                                                                                                                                                                                                                                                    LIMIT 3000;

                                                                                                                                                                                                                                                                                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                                                                                                                                                    INSERT
                                                                                                                                                                                                                                                                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                                                                                                                                                    COMMIT;
                                                                                                                                                                                                                                                                                                                                                                                    --
                                                                                                                                                                                                                                                                                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                                                                                                                                                    EXIT
                                                                                                                                                                                                                                                                                                                                                                                    WHEN cProcesso_00637%NOTFOUND;

                                                                                                                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                                                                                            LOOP;

                                                                                                                                                                                                                                                                                                                                                                                CLOSE cProcesso_00637;
                                                                                                                                                                                                                                                                                                                                                                                -----------------------------------------------
                                                                                                                                                                                                                                                                                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                                                                                                                -----------------------------------------------

                                                                                                                                                                                                                                                                                                                                                                                BEGIN
                                                                                                                                                                                                                                                                                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                                                                                                                END;

                                                                                                                                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                                                                                    IF;

                                                                                                                                                                                                                                                                                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 639
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                                                                                                            IF v_Processo = 639
                                                                                                                                                                                                                                                                                                                                                            THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                                                                                                                                THEN

                                                                                                                                                                                                                                                                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                                                                                                                    THEN

                                                                                                                                                                                                                                                                                                                                                                        OPEN cProcesso_00639(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                                                                                                                                        LOOP

                                                                                                                                                                                                                                                                                                                                                                            FETCH cProcesso_00639 BULK COLLECT
                                                                                                                                                                                                                                                                                                                                                                            INTO v_Dados
                                                                                                                                                                                                                                                                                                                                                                            LIMIT 3000;

                                                                                                                                                                                                                                                                                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                                                                                                                                            INSERT
                                                                                                                                                                                                                                                                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                                                                                                                                            COMMIT;
                                                                                                                                                                                                                                                                                                                                                                            --
                                                                                                                                                                                                                                                                                                                                                                            COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                                                                                                                                            EXIT
                                                                                                                                                                                                                                                                                                                                                                            WHEN cProcesso_00639%NOTFOUND;

                                                                                                                                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                                                                                    LOOP;

                                                                                                                                                                                                                                                                                                                                                                        CLOSE cProcesso_00639;
                                                                                                                                                                                                                                                                                                                                                                        -----------------------------------------------
                                                                                                                                                                                                                                                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                                                                                                        -----------------------------------------------

                                                                                                                                                                                                                                                                                                                                                                        BEGIN
                                                                                                                                                                                                                                                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                                                                                                        END;

                                                                                                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                                                                            IF;

                                                                                                                                                                                                                                                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 640
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                                                                                                    IF v_Processo = 640
                                                                                                                                                                                                                                                                                                                                                    THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                                                                                                                        THEN

                                                                                                                                                                                                                                                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                                                                                                            THEN

                                                                                                                                                                                                                                                                                                                                                                OPEN cProcesso_00640(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                                                                                                                                LOOP

                                                                                                                                                                                                                                                                                                                                                                    FETCH cProcesso_00640 BULK COLLECT
                                                                                                                                                                                                                                                                                                                                                                    INTO v_Dados
                                                                                                                                                                                                                                                                                                                                                                    LIMIT 3000;

                                                                                                                                                                                                                                                                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                                                                                                                                    INSERT
                                                                                                                                                                                                                                                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                                                                                                                                    COMMIT;
                                                                                                                                                                                                                                                                                                                                                                    --
                                                                                                                                                                                                                                                                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                                                                                                                                    EXIT
                                                                                                                                                                                                                                                                                                                                                                    WHEN cProcesso_00640%NOTFOUND;

                                                                                                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                                                                            LOOP;

                                                                                                                                                                                                                                                                                                                                                                CLOSE cProcesso_00640;
                                                                                                                                                                                                                                                                                                                                                                -----------------------------------------------
                                                                                                                                                                                                                                                                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                                                                                                -----------------------------------------------

                                                                                                                                                                                                                                                                                                                                                                BEGIN
                                                                                                                                                                                                                                                                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                                                                                                END;

                                                                                                                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                                                                    IF;

                                                                                                                                                                                                                                                                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 641
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                                                                                            IF v_Processo = 641
                                                                                                                                                                                                                                                                                                                                            THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                                                                                                                THEN

                                                                                                                                                                                                                                                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                                                                                                    THEN

                                                                                                                                                                                                                                                                                                                                                        OPEN cProcesso_00641(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                                                                                                                        LOOP

                                                                                                                                                                                                                                                                                                                                                            FETCH cProcesso_00641 BULK COLLECT
                                                                                                                                                                                                                                                                                                                                                            INTO v_Dados
                                                                                                                                                                                                                                                                                                                                                            LIMIT 3000;

                                                                                                                                                                                                                                                                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                                                                                                                            INSERT
                                                                                                                                                                                                                                                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                                                                                                                            COMMIT;
                                                                                                                                                                                                                                                                                                                                                            --
                                                                                                                                                                                                                                                                                                                                                            COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                                                                                                                            EXIT
                                                                                                                                                                                                                                                                                                                                                            WHEN cProcesso_00641%NOTFOUND;

                                                                                                                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                                                                    LOOP;

                                                                                                                                                                                                                                                                                                                                                        CLOSE cProcesso_00641;
                                                                                                                                                                                                                                                                                                                                                        -----------------------------------------------
                                                                                                                                                                                                                                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                                                                                        -----------------------------------------------

                                                                                                                                                                                                                                                                                                                                                        BEGIN
                                                                                                                                                                                                                                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                                                                                        END;

                                                                                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                                                            IF;

                                                                                                                                                                                                                                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 642
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                                                                                    IF v_Processo = 642
                                                                                                                                                                                                                                                                                                                                    THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                                                                                                        THEN

                                                                                                                                                                                                                                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                                                                                            THEN

                                                                                                                                                                                                                                                                                                                                                OPEN cProcesso_00642(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                                                                                                                LOOP

                                                                                                                                                                                                                                                                                                                                                    FETCH cProcesso_00642 BULK COLLECT
                                                                                                                                                                                                                                                                                                                                                    INTO v_Dados
                                                                                                                                                                                                                                                                                                                                                    LIMIT 3000;

                                                                                                                                                                                                                                                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                                                                                                                    INSERT
                                                                                                                                                                                                                                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                                                                                                                    COMMIT;
                                                                                                                                                                                                                                                                                                                                                    --
                                                                                                                                                                                                                                                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                                                                                                                    EXIT
                                                                                                                                                                                                                                                                                                                                                    WHEN cProcesso_00642%NOTFOUND;

                                                                                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                                                            LOOP;

                                                                                                                                                                                                                                                                                                                                                CLOSE cProcesso_00642;
                                                                                                                                                                                                                                                                                                                                                -----------------------------------------------
                                                                                                                                                                                                                                                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                                                                                -----------------------------------------------

                                                                                                                                                                                                                                                                                                                                                BEGIN
                                                                                                                                                                                                                                                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                                                                                END;

                                                                                                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                                                    IF;

                                                                                                                                                                                                                                                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 643
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                                                                            IF v_Processo = 643
                                                                                                                                                                                                                                                                                                                            THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                                                                                                THEN

                                                                                                                                                                                                                                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                                                                                    THEN

                                                                                                                                                                                                                                                                                                                                        OPEN cProcesso_00643(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                                                                                                        LOOP

                                                                                                                                                                                                                                                                                                                                            FETCH cProcesso_00643 BULK COLLECT
                                                                                                                                                                                                                                                                                                                                            INTO v_Dados
                                                                                                                                                                                                                                                                                                                                            LIMIT 3000;

                                                                                                                                                                                                                                                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                                                                                                            INSERT
                                                                                                                                                                                                                                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                                                                                                            COMMIT;
                                                                                                                                                                                                                                                                                                                                            --
                                                                                                                                                                                                                                                                                                                                            COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                                                                                                            EXIT
                                                                                                                                                                                                                                                                                                                                            WHEN cProcesso_00643%NOTFOUND;

                                                                                                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                                                    LOOP;

                                                                                                                                                                                                                                                                                                                                        CLOSE cProcesso_00643;
                                                                                                                                                                                                                                                                                                                                        -----------------------------------------------
                                                                                                                                                                                                                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                                                                        -----------------------------------------------

                                                                                                                                                                                                                                                                                                                                        BEGIN
                                                                                                                                                                                                                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                                                                        END;

                                                                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                                            IF;

                                                                                                                                                                                                                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 644
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                                                                    IF v_Processo = 644
                                                                                                                                                                                                                                                                                                                    THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                                                                                        THEN

                                                                                                                                                                                                                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                                                                            THEN

                                                                                                                                                                                                                                                                                                                                OPEN cProcesso_00644(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                                                                                                LOOP

                                                                                                                                                                                                                                                                                                                                    FETCH cProcesso_00644 BULK COLLECT
                                                                                                                                                                                                                                                                                                                                    INTO v_Dados
                                                                                                                                                                                                                                                                                                                                    LIMIT 3000;

                                                                                                                                                                                                                                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                                                                                                    INSERT
                                                                                                                                                                                                                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                                                                                                    COMMIT;
                                                                                                                                                                                                                                                                                                                                    --
                                                                                                                                                                                                                                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                                                                                                    EXIT
                                                                                                                                                                                                                                                                                                                                    WHEN cProcesso_00644%NOTFOUND;

                                                                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                                            LOOP;

                                                                                                                                                                                                                                                                                                                                CLOSE cProcesso_00644;
                                                                                                                                                                                                                                                                                                                                -----------------------------------------------
                                                                                                                                                                                                                                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                                                                -----------------------------------------------

                                                                                                                                                                                                                                                                                                                                BEGIN
                                                                                                                                                                                                                                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                                                                END;

                                                                                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                                    IF;

                                                                                                                                                                                                                                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 645
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                                                            IF v_Processo = 645
                                                                                                                                                                                                                                                                                                            THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                                                                                THEN

                                                                                                                                                                                                                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                                                                    THEN

                                                                                                                                                                                                                                                                                                                        OPEN cProcesso_00645(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                                                                                        LOOP

                                                                                                                                                                                                                                                                                                                            FETCH cProcesso_00645 BULK COLLECT
                                                                                                                                                                                                                                                                                                                            INTO v_Dados
                                                                                                                                                                                                                                                                                                                            LIMIT 3000;

                                                                                                                                                                                                                                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                                                                                            INSERT
                                                                                                                                                                                                                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                                                                                            COMMIT;
                                                                                                                                                                                                                                                                                                                            --
                                                                                                                                                                                                                                                                                                                            COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                                                                                            EXIT
                                                                                                                                                                                                                                                                                                                            WHEN cProcesso_00645%NOTFOUND;

                                                                                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                                    LOOP;

                                                                                                                                                                                                                                                                                                                        CLOSE cProcesso_00645;
                                                                                                                                                                                                                                                                                                                        -----------------------------------------------
                                                                                                                                                                                                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                                                        -----------------------------------------------

                                                                                                                                                                                                                                                                                                                        BEGIN
                                                                                                                                                                                                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                                                        END;

                                                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                            IF;

                                                                                                                                                                                                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 646
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                                                    IF v_Processo = 646
                                                                                                                                                                                                                                                                                                    THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                                                                        THEN

                                                                                                                                                                                                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                                                            THEN

                                                                                                                                                                                                                                                                                                                OPEN cProcesso_00646(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                                                                                LOOP

                                                                                                                                                                                                                                                                                                                    FETCH cProcesso_00646 BULK COLLECT
                                                                                                                                                                                                                                                                                                                    INTO v_Dados
                                                                                                                                                                                                                                                                                                                    LIMIT 3000;

                                                                                                                                                                                                                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                                                                                    INSERT
                                                                                                                                                                                                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                                                                                    COMMIT;
                                                                                                                                                                                                                                                                                                                    --
                                                                                                                                                                                                                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                                                                                    EXIT
                                                                                                                                                                                                                                                                                                                    WHEN cProcesso_00646%NOTFOUND;

                                                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                                            LOOP;

                                                                                                                                                                                                                                                                                                                CLOSE cProcesso_00646;
                                                                                                                                                                                                                                                                                                                -----------------------------------------------
                                                                                                                                                                                                                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                                                -----------------------------------------------

                                                                                                                                                                                                                                                                                                                BEGIN
                                                                                                                                                                                                                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                                                END;

                                                                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                    IF;

                                                                                                                                                                                                                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 647
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                                            IF v_Processo = 647
                                                                                                                                                                                                                                                                                            THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                                                                THEN

                                                                                                                                                                                                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                                                    THEN

                                                                                                                                                                                                                                                                                                        OPEN cProcesso_00647(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                                                                        LOOP

                                                                                                                                                                                                                                                                                                            FETCH cProcesso_00647 BULK COLLECT
                                                                                                                                                                                                                                                                                                            INTO v_Dados
                                                                                                                                                                                                                                                                                                            LIMIT 3000;

                                                                                                                                                                                                                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                                                                            INSERT
                                                                                                                                                                                                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                                                                            COMMIT;
                                                                                                                                                                                                                                                                                                            --
                                                                                                                                                                                                                                                                                                            COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                                                                            EXIT
                                                                                                                                                                                                                                                                                                            WHEN cProcesso_00647%NOTFOUND;

                                                                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                                    LOOP;

                                                                                                                                                                                                                                                                                                        CLOSE cProcesso_00647;
                                                                                                                                                                                                                                                                                                        -----------------------------------------------
                                                                                                                                                                                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                                        -----------------------------------------------

                                                                                                                                                                                                                                                                                                        BEGIN
                                                                                                                                                                                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                                        END;

                                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                            IF;

                                                                                                                                                                                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 649
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                                    IF v_Processo = 649
                                                                                                                                                                                                                                                                                    THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                                                        THEN

                                                                                                                                                                                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                                            THEN

                                                                                                                                                                                                                                                                                                OPEN cProcesso_00649(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                                                                LOOP

                                                                                                                                                                                                                                                                                                    FETCH cProcesso_00649 BULK COLLECT
                                                                                                                                                                                                                                                                                                    INTO v_Dados
                                                                                                                                                                                                                                                                                                    LIMIT 3000;

                                                                                                                                                                                                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                                                                    INSERT
                                                                                                                                                                                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                                                                    COMMIT;
                                                                                                                                                                                                                                                                                                    --
                                                                                                                                                                                                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                                                                    EXIT
                                                                                                                                                                                                                                                                                                    WHEN cProcesso_00649%NOTFOUND;

                                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                                            LOOP;

                                                                                                                                                                                                                                                                                                CLOSE cProcesso_00649;
                                                                                                                                                                                                                                                                                                -----------------------------------------------
                                                                                                                                                                                                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                                -----------------------------------------------

                                                                                                                                                                                                                                                                                                BEGIN
                                                                                                                                                                                                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                                END;

                                                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                    IF;

                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 650
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                            IF v_Processo = 650
                                                                                                                                                                                                                                                                            THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                                                THEN

                                                                                                                                                                                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                                    THEN

                                                                                                                                                                                                                                                                                        OPEN cProcesso_00650(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                                                        LOOP

                                                                                                                                                                                                                                                                                            FETCH cProcesso_00650 BULK COLLECT
                                                                                                                                                                                                                                                                                            INTO v_Dados
                                                                                                                                                                                                                                                                                            LIMIT 3000;

                                                                                                                                                                                                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                                                            INSERT
                                                                                                                                                                                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                                                            COMMIT;
                                                                                                                                                                                                                                                                                            --
                                                                                                                                                                                                                                                                                            COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                                                            EXIT
                                                                                                                                                                                                                                                                                            WHEN cProcesso_00650%NOTFOUND;

                                                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                                    LOOP;

                                                                                                                                                                                                                                                                                        CLOSE cProcesso_00650;
                                                                                                                                                                                                                                                                                        -----------------------------------------------
                                                                                                                                                                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                        -----------------------------------------------

                                                                                                                                                                                                                                                                                        BEGIN
                                                                                                                                                                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                        END;

                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                            IF;

                                                                                                                                                                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 651
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                                    IF v_Processo = 651
                                                                                                                                                                                                                                                                    THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                                        THEN

                                                                                                                                                                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                            THEN

                                                                                                                                                                                                                                                                                OPEN cProcesso_00651(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                                                LOOP

                                                                                                                                                                                                                                                                                    FETCH cProcesso_00651 BULK COLLECT
                                                                                                                                                                                                                                                                                    INTO v_Dados
                                                                                                                                                                                                                                                                                    LIMIT 3000;

                                                                                                                                                                                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                                                    INSERT
                                                                                                                                                                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                                                    COMMIT;
                                                                                                                                                                                                                                                                                    --
                                                                                                                                                                                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                                                    EXIT
                                                                                                                                                                                                                                                                                    WHEN cProcesso_00651%NOTFOUND;

                                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                                            LOOP;

                                                                                                                                                                                                                                                                                CLOSE cProcesso_00651;
                                                                                                                                                                                                                                                                                -----------------------------------------------
                                                                                                                                                                                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                                -----------------------------------------------

                                                                                                                                                                                                                                                                                BEGIN
                                                                                                                                                                                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                                END;

                                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                    IF;

                                                                                                                                                                                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 652
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                            IF v_Processo = 652
                                                                                                                                                                                                                                                            THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                                THEN

                                                                                                                                                                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                                    THEN

                                                                                                                                                                                                                                                                        OPEN cProcesso_00652(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                                        LOOP

                                                                                                                                                                                                                                                                            FETCH cProcesso_00652 BULK COLLECT
                                                                                                                                                                                                                                                                            INTO v_Dados
                                                                                                                                                                                                                                                                            LIMIT 3000;

                                                                                                                                                                                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                                            INSERT
                                                                                                                                                                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                                            COMMIT;
                                                                                                                                                                                                                                                                            --
                                                                                                                                                                                                                                                                            COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                                            EXIT
                                                                                                                                                                                                                                                                            WHEN cProcesso_00652%NOTFOUND;

                                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                                    LOOP;

                                                                                                                                                                                                                                                                        CLOSE cProcesso_00652;
                                                                                                                                                                                                                                                                        -----------------------------------------------
                                                                                                                                                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                        -----------------------------------------------

                                                                                                                                                                                                                                                                        BEGIN
                                                                                                                                                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                        END;

                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                            IF;

                                                                                                                                                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 653
---------------------------------------------------------------------------


                                                                                                                                                                                                                                                    IF v_Processo = 653
                                                                                                                                                                                                                                                    THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                        THEN

                                                                                                                                                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                            THEN

                                                                                                                                                                                                                                                                OPEN cProcesso_00653(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                                LOOP

                                                                                                                                                                                                                                                                    FETCH cProcesso_00653 BULK COLLECT
                                                                                                                                                                                                                                                                    INTO v_Dados
                                                                                                                                                                                                                                                                    LIMIT 3000;

                                                                                                                                                                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                                    INSERT
                                                                                                                                                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                                    COMMIT;
                                                                                                                                                                                                                                                                    --
                                                                                                                                                                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                                    EXIT
                                                                                                                                                                                                                                                                    WHEN cProcesso_00653%NOTFOUND;

                                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                                            LOOP;

                                                                                                                                                                                                                                                                CLOSE cProcesso_00653;
                                                                                                                                                                                                                                                                -----------------------------------------------
                                                                                                                                                                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                                -----------------------------------------------

                                                                                                                                                                                                                                                                BEGIN
                                                                                                                                                                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                                END;

                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                    IF;

                                                                                                                                                                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 654
---------------------------------------------------------------------------


                                                                                                                                                                                                                                            IF v_Processo = 654
                                                                                                                                                                                                                                            THEN --OR v_Processo = 0
                                                                                                                                                                                                                                                THEN

                                                                                                                                                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                                    THEN

                                                                                                                                                                                                                                                        OPEN cProcesso_00654(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                        LOOP

                                                                                                                                                                                                                                                            FETCH cProcesso_00654 BULK COLLECT
                                                                                                                                                                                                                                                            INTO v_Dados
                                                                                                                                                                                                                                                            LIMIT 3000;

                                                                                                                                                                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                            INSERT
                                                                                                                                                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                            COMMIT;
                                                                                                                                                                                                                                                            --
                                                                                                                                                                                                                                                            COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                            EXIT
                                                                                                                                                                                                                                                            WHEN cProcesso_00654%NOTFOUND;

                                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                                    LOOP;

                                                                                                                                                                                                                                                        CLOSE cProcesso_00654;
                                                                                                                                                                                                                                                        -----------------------------------------------
                                                                                                                                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                        -----------------------------------------------

                                                                                                                                                                                                                                                        BEGIN
                                                                                                                                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                        END;

                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                            IF;

                                                                                                                                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 655
---------------------------------------------------------------------------


                                                                                                                                                                                                                                    IF v_Processo = 655
                                                                                                                                                                                                                                    THEN --OR v_Processo = 0
                                                                                                                                                                                                                                        THEN

                                                                                                                                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                            THEN

                                                                                                                                                                                                                                                OPEN cProcesso_00655(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                                LOOP

                                                                                                                                                                                                                                                    FETCH cProcesso_00655 BULK COLLECT
                                                                                                                                                                                                                                                    INTO v_Dados
                                                                                                                                                                                                                                                    LIMIT 3000;

                                                                                                                                                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                                    INSERT
                                                                                                                                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                                    COMMIT;
                                                                                                                                                                                                                                                    --
                                                                                                                                                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                                    EXIT
                                                                                                                                                                                                                                                    WHEN cProcesso_00655%NOTFOUND;

                                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                                END
                                                                                                                                                                                                                                            LOOP;

                                                                                                                                                                                                                                                CLOSE cProcesso_00655;
                                                                                                                                                                                                                                                -----------------------------------------------
                                                                                                                                                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                                -----------------------------------------------

                                                                                                                                                                                                                                                BEGIN
                                                                                                                                                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                                END;

                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                    IF;

                                                                                                                                                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                                END
                                                                                                                                                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 656
---------------------------------------------------------------------------


                                                                                                                                                                                                                            IF v_Processo = 656
                                                                                                                                                                                                                            THEN --OR v_Processo = 0
                                                                                                                                                                                                                                THEN

                                                                                                                                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                                    THEN

                                                                                                                                                                                                                                        OPEN cProcesso_00656(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                        LOOP

                                                                                                                                                                                                                                            FETCH cProcesso_00656 BULK COLLECT
                                                                                                                                                                                                                                            INTO v_Dados
                                                                                                                                                                                                                                            LIMIT 3000;

                                                                                                                                                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                            INSERT
                                                                                                                                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                            COMMIT;
                                                                                                                                                                                                                                            --
                                                                                                                                                                                                                                            COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                            EXIT
                                                                                                                                                                                                                                            WHEN cProcesso_00656%NOTFOUND;

                                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                                        END
                                                                                                                                                                                                                                    LOOP;

                                                                                                                                                                                                                                        CLOSE cProcesso_00656;
                                                                                                                                                                                                                                        -----------------------------------------------
                                                                                                                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                        -----------------------------------------------

                                                                                                                                                                                                                                        BEGIN
                                                                                                                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                        END;

                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                END
                                                                                                                                                                                                                            IF;

                                                                                                                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                        END
                                                                                                                                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 657
---------------------------------------------------------------------------


                                                                                                                                                                                                                    IF v_Processo = 657
                                                                                                                                                                                                                    THEN --OR v_Processo = 0
                                                                                                                                                                                                                        THEN

                                                                                                                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                            THEN

                                                                                                                                                                                                                                OPEN cProcesso_00657(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                                LOOP

                                                                                                                                                                                                                                    FETCH cProcesso_00657 BULK COLLECT
                                                                                                                                                                                                                                    INTO v_Dados
                                                                                                                                                                                                                                    LIMIT 3000;

                                                                                                                                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                                    INSERT
                                                                                                                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                                    COMMIT;
                                                                                                                                                                                                                                    --
                                                                                                                                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                                                                                                                                    EXIT
                                                                                                                                                                                                                                    WHEN cProcesso_00657%NOTFOUND;

                                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                                END
                                                                                                                                                                                                                            LOOP;

                                                                                                                                                                                                                                CLOSE cProcesso_00657;
                                                                                                                                                                                                                                -----------------------------------------------
                                                                                                                                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                                -----------------------------------------------

                                                                                                                                                                                                                                BEGIN
                                                                                                                                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                                END;

                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                        END
                                                                                                                                                                                                                    IF;

                                                                                                                                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                                END
                                                                                                                                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 658
---------------------------------------------------------------------------


                                                                                                                                                                                                            IF v_Processo = 658
                                                                                                                                                                                                            THEN --OR v_Processo = 0
                                                                                                                                                                                                                THEN

                                                                                                                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                                    THEN

                                                                                                                                                                                                                        OPEN cProcesso_00658(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                        LOOP

                                                                                                                                                                                                                            FETCH cProcesso_00658 BULK COLLECT
                                                                                                                                                                                                                            INTO v_Dados
                                                                                                                                                                                                                            LIMIT 3000;

                                                                                                                                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                            INSERT
                                                                                                                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                            COMMIT;
                                                                                                                                                                                                                            --
                                                                                                                                                                                                                            COMMIT a cada 3.000 registro
                                                                                                                                                                                                                            EXIT
                                                                                                                                                                                                                            WHEN cProcesso_00658%NOTFOUND;

                                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                                        END
                                                                                                                                                                                                                    LOOP;

                                                                                                                                                                                                                        CLOSE cProcesso_00658;
                                                                                                                                                                                                                        -----------------------------------------------
                                                                                                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                        -----------------------------------------------

                                                                                                                                                                                                                        BEGIN
                                                                                                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                        END;

                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                END
                                                                                                                                                                                                            IF;

                                                                                                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                        END
                                                                                                                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 659
---------------------------------------------------------------------------


                                                                                                                                                                                                    IF v_Processo = 659
                                                                                                                                                                                                    THEN --OR v_Processo = 0
                                                                                                                                                                                                        THEN

                                                                                                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                            THEN

                                                                                                                                                                                                                OPEN cProcesso_00659(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                                LOOP

                                                                                                                                                                                                                    FETCH cProcesso_00659 BULK COLLECT
                                                                                                                                                                                                                    INTO v_Dados
                                                                                                                                                                                                                    LIMIT 3000;

                                                                                                                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                                    INSERT
                                                                                                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                                    COMMIT;
                                                                                                                                                                                                                    --
                                                                                                                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                                                                                                                    EXIT
                                                                                                                                                                                                                    WHEN cProcesso_00659%NOTFOUND;

                                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                                END
                                                                                                                                                                                                            LOOP;

                                                                                                                                                                                                                CLOSE cProcesso_00659;
                                                                                                                                                                                                                -----------------------------------------------
                                                                                                                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                                -----------------------------------------------

                                                                                                                                                                                                                BEGIN
                                                                                                                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                                END;

                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                        END
                                                                                                                                                                                                    IF;

                                                                                                                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                                                                                                                END
                                                                                                                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 660
---------------------------------------------------------------------------


                                                                                                                                                                                            IF v_Processo = 660
                                                                                                                                                                                            THEN --OR v_Processo = 0
                                                                                                                                                                                                THEN

                                                                                                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                                    THEN

                                                                                                                                                                                                        OPEN cProcesso_00660(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                        LOOP

                                                                                                                                                                                                            FETCH cProcesso_00660 BULK COLLECT
                                                                                                                                                                                                            INTO v_Dados
                                                                                                                                                                                                            LIMIT 3000;

                                                                                                                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                            INSERT
                                                                                                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                            COMMIT;
                                                                                                                                                                                                            --
                                                                                                                                                                                                            COMMIT a cada 3.000 registro
                                                                                                                                                                                                            EXIT
                                                                                                                                                                                                            WHEN cProcesso_00660%NOTFOUND;

                                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                                        END
                                                                                                                                                                                                    LOOP;

                                                                                                                                                                                                        CLOSE cProcesso_00660;
                                                                                                                                                                                                        -----------------------------------------------
                                                                                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                        -----------------------------------------------

                                                                                                                                                                                                        BEGIN
                                                                                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                        END;

                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                END
                                                                                                                                                                                            IF;

                                                                                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                                                                                        END
                                                                                                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 661
---------------------------------------------------------------------------


                                                                                                                                                                                    IF v_Processo = 661
                                                                                                                                                                                    THEN --OR v_Processo = 0
                                                                                                                                                                                        THEN

                                                                                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                            THEN

                                                                                                                                                                                                OPEN cProcesso_00661(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                                LOOP

                                                                                                                                                                                                    FETCH cProcesso_00661 BULK COLLECT
                                                                                                                                                                                                    INTO v_Dados
                                                                                                                                                                                                    LIMIT 3000;

                                                                                                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                                    INSERT
                                                                                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                                    COMMIT;
                                                                                                                                                                                                    --
                                                                                                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                                                                                                    EXIT
                                                                                                                                                                                                    WHEN cProcesso_00661%NOTFOUND;

                                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                                END
                                                                                                                                                                                            LOOP;

                                                                                                                                                                                                CLOSE cProcesso_00661;
                                                                                                                                                                                                -----------------------------------------------
                                                                                                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                                -----------------------------------------------

                                                                                                                                                                                                BEGIN
                                                                                                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                                END;

                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                        END
                                                                                                                                                                                    IF;

                                                                                                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                                                                                                END
                                                                                                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 662
---------------------------------------------------------------------------


                                                                                                                                                                            IF v_Processo = 662
                                                                                                                                                                            THEN --OR v_Processo = 0
                                                                                                                                                                                THEN

                                                                                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                                                                                    THEN

                                                                                                                                                                                        OPEN cProcesso_00662(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                        LOOP

                                                                                                                                                                                            FETCH cProcesso_00662 BULK COLLECT
                                                                                                                                                                                            INTO v_Dados
                                                                                                                                                                                            LIMIT 3000;

                                                                                                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                            INSERT
                                                                                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                            COMMIT;
                                                                                                                                                                                            --
                                                                                                                                                                                            COMMIT a cada 3.000 registro
                                                                                                                                                                                            EXIT
                                                                                                                                                                                            WHEN cProcesso_00662%NOTFOUND;

                                                                                                                                                                                            COMMIT;

                                                                                                                                                                                        END
                                                                                                                                                                                    LOOP;

                                                                                                                                                                                        CLOSE cProcesso_00662;
                                                                                                                                                                                        -----------------------------------------------
                                                                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                        -----------------------------------------------

                                                                                                                                                                                        BEGIN
                                                                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                        END;

                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                END
                                                                                                                                                                            IF;

                                                                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                                                                        END
                                                                                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 663
---------------------------------------------------------------------------


                                                                                                                                                                    IF v_Processo = 663
                                                                                                                                                                    THEN --OR v_Processo = 0
                                                                                                                                                                        THEN

                                                                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                                                                            THEN

                                                                                                                                                                                OPEN cProcesso_00663(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                                LOOP

                                                                                                                                                                                    FETCH cProcesso_00663 BULK COLLECT
                                                                                                                                                                                    INTO v_Dados
                                                                                                                                                                                    LIMIT 3000;

                                                                                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                                    INSERT
                                                                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                                    COMMIT;
                                                                                                                                                                                    --
                                                                                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                                                                                    EXIT
                                                                                                                                                                                    WHEN cProcesso_00663%NOTFOUND;

                                                                                                                                                                                    COMMIT;

                                                                                                                                                                                END
                                                                                                                                                                            LOOP;

                                                                                                                                                                                CLOSE cProcesso_00663;
                                                                                                                                                                                -----------------------------------------------
                                                                                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                                -----------------------------------------------

                                                                                                                                                                                BEGIN
                                                                                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                                END;

                                                                                                                                                                            COMMIT;

                                                                                                                                                                        END
                                                                                                                                                                    IF;

                                                                                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                                                                                END
                                                                                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 664
---------------------------------------------------------------------------


                                                                                                                                                            IF v_Processo = 664
                                                                                                                                                            THEN --OR v_Processo = 0
                                                                                                                                                                THEN

                                                                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                                                                    THEN

                                                                                                                                                                        OPEN cProcesso_00664(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                        LOOP

                                                                                                                                                                            FETCH cProcesso_00664 BULK COLLECT
                                                                                                                                                                            INTO v_Dados
                                                                                                                                                                            LIMIT 3000;

                                                                                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                            INSERT
                                                                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                            COMMIT;
                                                                                                                                                                            --
                                                                                                                                                                            COMMIT a cada 3.000 registro
                                                                                                                                                                            EXIT
                                                                                                                                                                            WHEN cProcesso_00664%NOTFOUND;

                                                                                                                                                                            COMMIT;

                                                                                                                                                                        END
                                                                                                                                                                    LOOP;

                                                                                                                                                                        CLOSE cProcesso_00664;
                                                                                                                                                                        -----------------------------------------------
                                                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                        -----------------------------------------------

                                                                                                                                                                        BEGIN
                                                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                        END;

                                                                                                                                                                    COMMIT;

                                                                                                                                                                END
                                                                                                                                                            IF;

                                                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                                                        END
                                                                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 665
---------------------------------------------------------------------------


                                                                                                                                                    IF v_Processo = 665
                                                                                                                                                    THEN --OR v_Processo = 0
                                                                                                                                                        THEN

                                                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                                                            THEN

                                                                                                                                                                OPEN cProcesso_00665(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                                LOOP

                                                                                                                                                                    FETCH cProcesso_00665 BULK COLLECT
                                                                                                                                                                    INTO v_Dados
                                                                                                                                                                    LIMIT 3000;

                                                                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                                    INSERT
                                                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                                    COMMIT;
                                                                                                                                                                    --
                                                                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                                                                    EXIT
                                                                                                                                                                    WHEN cProcesso_00665%NOTFOUND;

                                                                                                                                                                    COMMIT;

                                                                                                                                                                END
                                                                                                                                                            LOOP;

                                                                                                                                                                CLOSE cProcesso_00665;
                                                                                                                                                                -----------------------------------------------
                                                                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                                -----------------------------------------------

                                                                                                                                                                BEGIN
                                                                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                                END;

                                                                                                                                                            COMMIT;

                                                                                                                                                        END
                                                                                                                                                    IF;

                                                                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                                                                END
                                                                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 666
---------------------------------------------------------------------------


                                                                                                                                            IF v_Processo = 666
                                                                                                                                            THEN --OR v_Processo = 0
                                                                                                                                                THEN

                                                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                                                    THEN

                                                                                                                                                        OPEN cProcesso_00666(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                        LOOP

                                                                                                                                                            FETCH cProcesso_00666 BULK COLLECT
                                                                                                                                                            INTO v_Dados
                                                                                                                                                            LIMIT 3000;

                                                                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                            INSERT
                                                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                            COMMIT;
                                                                                                                                                            --
                                                                                                                                                            COMMIT a cada 3.000 registro
                                                                                                                                                            EXIT
                                                                                                                                                            WHEN cProcesso_00666%NOTFOUND;

                                                                                                                                                            COMMIT;

                                                                                                                                                        END
                                                                                                                                                    LOOP;

                                                                                                                                                        CLOSE cProcesso_00666;
                                                                                                                                                        -----------------------------------------------
                                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                        -----------------------------------------------

                                                                                                                                                        BEGIN
                                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                        END;

                                                                                                                                                    COMMIT;

                                                                                                                                                END
                                                                                                                                            IF;

                                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                                        END
                                                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 667
---------------------------------------------------------------------------


                                                                                                                                    IF v_Processo = 667
                                                                                                                                    THEN --OR v_Processo = 0
                                                                                                                                        THEN

                                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                                            THEN

                                                                                                                                                OPEN cProcesso_00667(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                                LOOP

                                                                                                                                                    FETCH cProcesso_00667 BULK COLLECT
                                                                                                                                                    INTO v_Dados
                                                                                                                                                    LIMIT 3000;

                                                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                                                    INSERT
                                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                                    COMMIT;
                                                                                                                                                    --
                                                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                                                    EXIT
                                                                                                                                                    WHEN cProcesso_00667%NOTFOUND;

                                                                                                                                                    COMMIT;

                                                                                                                                                END
                                                                                                                                            LOOP;

                                                                                                                                                CLOSE cProcesso_00667;
                                                                                                                                                -----------------------------------------------
                                                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                                -----------------------------------------------

                                                                                                                                                BEGIN
                                                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                                END;

                                                                                                                                            COMMIT;

                                                                                                                                        END
                                                                                                                                    IF;

                                                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                                                END
                                                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 668
---------------------------------------------------------------------------


                                                                                                                            IF v_Processo = 668
                                                                                                                            THEN --OR v_Processo = 0
                                                                                                                                THEN

                                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                                    THEN

                                                                                                                                        OPEN cProcesso_00668(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                        LOOP

                                                                                                                                            FETCH cProcesso_00668 BULK COLLECT
                                                                                                                                            INTO v_Dados
                                                                                                                                            LIMIT 3000;

                                                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                                                            INSERT
                                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                            COMMIT;
                                                                                                                                            --
                                                                                                                                            COMMIT a cada 3.000 registro
                                                                                                                                            EXIT
                                                                                                                                            WHEN cProcesso_00668%NOTFOUND;

                                                                                                                                            COMMIT;

                                                                                                                                        END
                                                                                                                                    LOOP;

                                                                                                                                        CLOSE cProcesso_00668;
                                                                                                                                        -----------------------------------------------
                                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                        -----------------------------------------------

                                                                                                                                        BEGIN
                                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                        END;

                                                                                                                                    COMMIT;

                                                                                                                                END
                                                                                                                            IF;

                                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                                        END
                                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 670
---------------------------------------------------------------------------


                                                                                                                    IF v_Processo = 670
                                                                                                                    THEN --OR v_Processo = 0
                                                                                                                        THEN

                                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                            FETCH cProcessoAtualizacao
                                                                                                                            INTO vProcessoAtualizacao;

                                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                                            THEN

                                                                                                                                OPEN cProcesso_00670(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                                LOOP

                                                                                                                                    FETCH cProcesso_00670 BULK COLLECT
                                                                                                                                    INTO v_Dados
                                                                                                                                    LIMIT 3000;

                                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                                    INSERT
                                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                                    COMMIT;
                                                                                                                                    --
                                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                                    EXIT
                                                                                                                                    WHEN cProcesso_00670%NOTFOUND;

                                                                                                                                    COMMIT;

                                                                                                                                END
                                                                                                                            LOOP;

                                                                                                                                CLOSE cProcesso_00670;
                                                                                                                                -----------------------------------------------
                                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                                -----------------------------------------------

                                                                                                                                BEGIN
                                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                                END;

                                                                                                                            COMMIT;

                                                                                                                        END
                                                                                                                    IF;

                                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                                END
                                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 671
---------------------------------------------------------------------------


                                                                                                            IF v_Processo = 671
                                                                                                            THEN --OR v_Processo = 0
                                                                                                                THEN

                                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                                    FETCH cProcessoAtualizacao
                                                                                                                    INTO vProcessoAtualizacao;

                                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                                    THEN

                                                                                                                        OPEN cProcesso_00671(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                        LOOP

                                                                                                                            FETCH cProcesso_00671 BULK COLLECT
                                                                                                                            INTO v_Dados
                                                                                                                            LIMIT 3000;

                                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                                            INSERT
                                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                            COMMIT;
                                                                                                                            --
                                                                                                                            COMMIT a cada 3.000 registro
                                                                                                                            EXIT
                                                                                                                            WHEN cProcesso_00671%NOTFOUND;

                                                                                                                            COMMIT;

                                                                                                                        END
                                                                                                                    LOOP;

                                                                                                                        CLOSE cProcesso_00671;
                                                                                                                        -----------------------------------------------
                                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                        -----------------------------------------------

                                                                                                                        BEGIN
                                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                        END;

                                                                                                                    COMMIT;

                                                                                                                END
                                                                                                            IF;

                                                                                                            CLOSE cProcessoAtualizacao;

                                                                                                        END
                                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 672
---------------------------------------------------------------------------


                                                                                                    IF v_Processo = 672
                                                                                                    THEN --OR v_Processo = 0
                                                                                                        THEN

                                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                            FETCH cProcessoAtualizacao
                                                                                                            INTO vProcessoAtualizacao;

                                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                                            THEN

                                                                                                                OPEN cProcesso_00672(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                                LOOP

                                                                                                                    FETCH cProcesso_00672 BULK COLLECT
                                                                                                                    INTO v_Dados
                                                                                                                    LIMIT 3000;

                                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                                    INSERT
                                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                                    COMMIT;
                                                                                                                    --
                                                                                                                    COMMIT a cada 3.000 registro
                                                                                                                    EXIT
                                                                                                                    WHEN cProcesso_00672%NOTFOUND;

                                                                                                                    COMMIT;

                                                                                                                END
                                                                                                            LOOP;

                                                                                                                CLOSE cProcesso_00672;
                                                                                                                -----------------------------------------------
                                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                                -----------------------------------------------

                                                                                                                BEGIN
                                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                                END;

                                                                                                            COMMIT;

                                                                                                        END
                                                                                                    IF;

                                                                                                    CLOSE cProcessoAtualizacao;

                                                                                                END
                                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 673
---------------------------------------------------------------------------


                                                                                            IF v_Processo = 673
                                                                                            THEN --OR v_Processo = 0
                                                                                                THEN

                                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                                    FETCH cProcessoAtualizacao
                                                                                                    INTO vProcessoAtualizacao;

                                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                                    THEN

                                                                                                        OPEN cProcesso_00673(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                        LOOP

                                                                                                            FETCH cProcesso_00673 BULK COLLECT
                                                                                                            INTO v_Dados
                                                                                                            LIMIT 3000;

                                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                                            INSERT
                                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                            COMMIT;
                                                                                                            --
                                                                                                            COMMIT a cada 3.000 registro
                                                                                                            EXIT
                                                                                                            WHEN cProcesso_00673%NOTFOUND;

                                                                                                            COMMIT;

                                                                                                        END
                                                                                                    LOOP;

                                                                                                        CLOSE cProcesso_00673;
                                                                                                        -----------------------------------------------
                                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                        -----------------------------------------------

                                                                                                        BEGIN
                                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                        END;

                                                                                                    COMMIT;

                                                                                                END
                                                                                            IF;

                                                                                            CLOSE cProcessoAtualizacao;

                                                                                        END
                                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 674
---------------------------------------------------------------------------


                                                                                    IF v_Processo = 674
                                                                                    THEN --OR v_Processo = 0
                                                                                        THEN

                                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                            FETCH cProcessoAtualizacao
                                                                                            INTO vProcessoAtualizacao;

                                                                                            IF vProcessoAtualizacao = 'A'
                                                                                            THEN

                                                                                                OPEN cProcesso_00674(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                                LOOP

                                                                                                    FETCH cProcesso_00674 BULK COLLECT
                                                                                                    INTO v_Dados
                                                                                                    LIMIT 3000;

                                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                                    INSERT
                                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                                    COMMIT;
                                                                                                    --
                                                                                                    COMMIT a cada 3.000 registro
                                                                                                    EXIT
                                                                                                    WHEN cProcesso_00674%NOTFOUND;

                                                                                                    COMMIT;

                                                                                                END
                                                                                            LOOP;

                                                                                                CLOSE cProcesso_00674;
                                                                                                -----------------------------------------------
                                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                                -----------------------------------------------

                                                                                                BEGIN
                                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                                END;

                                                                                            COMMIT;

                                                                                        END
                                                                                    IF;

                                                                                    CLOSE cProcessoAtualizacao;

                                                                                END
                                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 675
---------------------------------------------------------------------------


                                                                            IF v_Processo = 675
                                                                            THEN --OR v_Processo = 0
                                                                                THEN

                                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                                    FETCH cProcessoAtualizacao
                                                                                    INTO vProcessoAtualizacao;

                                                                                    IF vProcessoAtualizacao = 'A'
                                                                                    THEN

                                                                                        OPEN cProcesso_00675(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                        LOOP

                                                                                            FETCH cProcesso_00675 BULK COLLECT
                                                                                            INTO v_Dados
                                                                                            LIMIT 3000;

                                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                                            INSERT
                                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                            COMMIT;
                                                                                            --
                                                                                            COMMIT a cada 3.000 registro
                                                                                            EXIT
                                                                                            WHEN cProcesso_00675%NOTFOUND;

                                                                                            COMMIT;

                                                                                        END
                                                                                    LOOP;

                                                                                        CLOSE cProcesso_00675;
                                                                                        -----------------------------------------------
                                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                        -----------------------------------------------

                                                                                        BEGIN
                                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                        END;

                                                                                    COMMIT;

                                                                                END
                                                                            IF;

                                                                            CLOSE cProcessoAtualizacao;

                                                                        END
                                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 676
---------------------------------------------------------------------------


                                                                    IF v_Processo = 676
                                                                    THEN --OR v_Processo = 0
                                                                        THEN

                                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                            FETCH cProcessoAtualizacao
                                                                            INTO vProcessoAtualizacao;

                                                                            IF vProcessoAtualizacao = 'A'
                                                                            THEN

                                                                                OPEN cProcesso_00676(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                                LOOP

                                                                                    FETCH cProcesso_00676 BULK COLLECT
                                                                                    INTO v_Dados
                                                                                    LIMIT 3000;

                                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                                    INSERT
                                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                                    COMMIT;
                                                                                    --
                                                                                    COMMIT a cada 3.000 registro
                                                                                    EXIT
                                                                                    WHEN cProcesso_00676%NOTFOUND;

                                                                                    COMMIT;

                                                                                END
                                                                            LOOP;

                                                                                CLOSE cProcesso_00676;
                                                                                -----------------------------------------------
                                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                                -----------------------------------------------

                                                                                BEGIN
                                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                                END;

                                                                            COMMIT;

                                                                        END
                                                                    IF;

                                                                    CLOSE cProcessoAtualizacao;

                                                                END
                                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 677
---------------------------------------------------------------------------


                                                            IF v_Processo = 677
                                                            THEN --OR v_Processo = 0
                                                                THEN

                                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                                    FETCH cProcessoAtualizacao
                                                                    INTO vProcessoAtualizacao;

                                                                    IF vProcessoAtualizacao = 'A'
                                                                    THEN

                                                                        OPEN cProcesso_00677(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                        LOOP

                                                                            FETCH cProcesso_00677 BULK COLLECT
                                                                            INTO v_Dados
                                                                            LIMIT 3000;

                                                                            FORALL i IN 1 .. v_Dados.Count

                                                                            INSERT
                                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                            COMMIT;
                                                                            --
                                                                            COMMIT a cada 3.000 registro
                                                                            EXIT
                                                                            WHEN cProcesso_00677%NOTFOUND;

                                                                            COMMIT;

                                                                        END
                                                                    LOOP;

                                                                        CLOSE cProcesso_00677;
                                                                        -----------------------------------------------
                                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                        -----------------------------------------------

                                                                        BEGIN
                                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                        END;

                                                                    COMMIT;

                                                                END
                                                            IF;

                                                            CLOSE cProcessoAtualizacao;

                                                        END
                                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 678
---------------------------------------------------------------------------


                                                    IF v_Processo = 678
                                                    THEN --OR v_Processo = 0
                                                        THEN

                                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                            FETCH cProcessoAtualizacao
                                                            INTO vProcessoAtualizacao;

                                                            IF vProcessoAtualizacao = 'A'
                                                            THEN

                                                                OPEN cProcesso_00678(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                                LOOP

                                                                    FETCH cProcesso_00678 BULK COLLECT
                                                                    INTO v_Dados
                                                                    LIMIT 3000;

                                                                    FORALL i IN 1 .. v_Dados.Count

                                                                    INSERT
                                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                                    COMMIT;
                                                                    --
                                                                    COMMIT a cada 3.000 registro
                                                                    EXIT
                                                                    WHEN cProcesso_00678%NOTFOUND;

                                                                    COMMIT;

                                                                END
                                                            LOOP;

                                                                CLOSE cProcesso_00678;
                                                                -----------------------------------------------
                                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                                -----------------------------------------------

                                                                BEGIN
                                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                                END;

                                                            COMMIT;

                                                        END
                                                    IF;

                                                    CLOSE cProcessoAtualizacao;

                                                END
                                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 679
---------------------------------------------------------------------------


                                            IF v_Processo = 679
                                            THEN --OR v_Processo = 0
                                                THEN

                                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                                    FETCH cProcessoAtualizacao
                                                    INTO vProcessoAtualizacao;

                                                    IF vProcessoAtualizacao = 'A'
                                                    THEN

                                                        OPEN cProcesso_00679(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                        LOOP

                                                            FETCH cProcesso_00679 BULK COLLECT
                                                            INTO v_Dados
                                                            LIMIT 3000;

                                                            FORALL i IN 1 .. v_Dados.Count

                                                            INSERT
                                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                            COMMIT;
                                                            --
                                                            COMMIT a cada 3.000 registro
                                                            EXIT
                                                            WHEN cProcesso_00679%NOTFOUND;

                                                            COMMIT;

                                                        END
                                                    LOOP;

                                                        CLOSE cProcesso_00679;
                                                        -----------------------------------------------
                                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                        -----------------------------------------------

                                                        BEGIN
                                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                        END;

                                                    COMMIT;

                                                END
                                            IF;

                                            CLOSE cProcessoAtualizacao;

                                        END
                                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 680
---------------------------------------------------------------------------


                                    IF v_Processo = 680
                                    THEN --OR v_Processo = 0
                                        THEN

                                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                            FETCH cProcessoAtualizacao
                                            INTO vProcessoAtualizacao;

                                            IF vProcessoAtualizacao = 'A'
                                            THEN

                                                OPEN cProcesso_00680(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                                LOOP

                                                    FETCH cProcesso_00680 BULK COLLECT
                                                    INTO v_Dados
                                                    LIMIT 3000;

                                                    FORALL i IN 1 .. v_Dados.Count

                                                    INSERT
                                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                                    COMMIT;
                                                    --
                                                    COMMIT a cada 3.000 registro
                                                    EXIT
                                                    WHEN cProcesso_00680%NOTFOUND;

                                                    COMMIT;

                                                END
                                            LOOP;

                                                CLOSE cProcesso_00680;
                                                -----------------------------------------------
                                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                                -----------------------------------------------

                                                BEGIN
                                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                                END;

                                            COMMIT;

                                        END
                                    IF;

                                    CLOSE cProcessoAtualizacao;

                                END
                            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 681
---------------------------------------------------------------------------


                            IF v_Processo = 681
                            THEN --OR v_Processo = 0
                                THEN

                                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                                    FETCH cProcessoAtualizacao
                                    INTO vProcessoAtualizacao;

                                    IF vProcessoAtualizacao = 'A'
                                    THEN

                                        OPEN cProcesso_00681(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                        LOOP

                                            FETCH cProcesso_00681 BULK COLLECT
                                            INTO v_Dados
                                            LIMIT 3000;

                                            FORALL i IN 1 .. v_Dados.Count

                                            INSERT
                                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                            COMMIT;
                                            --
                                            COMMIT a cada 3.000 registro
                                            EXIT
                                            WHEN cProcesso_00681%NOTFOUND;

                                            COMMIT;

                                        END
                                    LOOP;

                                        CLOSE cProcesso_00681;
                                        -----------------------------------------------
                                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                        -----------------------------------------------

                                        BEGIN
                                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                        END;

                                    COMMIT;

                                END
                            IF;

                            CLOSE cProcessoAtualizacao;

                        END
                    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 682
---------------------------------------------------------------------------


                    IF v_Processo = 682
                    THEN --OR v_Processo = 0
                        THEN

                            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                            FETCH cProcessoAtualizacao
                            INTO vProcessoAtualizacao;

                            IF vProcessoAtualizacao = 'A'
                            THEN

                                OPEN cProcesso_00682(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                                LOOP

                                    FETCH cProcesso_00682 BULK COLLECT
                                    INTO v_Dados
                                    LIMIT 3000;

                                    FORALL i IN 1 .. v_Dados.Count

                                    INSERT
                                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                                    COMMIT;
                                    --
                                    COMMIT a cada 3.000 registro
                                    EXIT
                                    WHEN cProcesso_00682%NOTFOUND;

                                    COMMIT;

                                END
                            LOOP;

                                CLOSE cProcesso_00682;
                                -----------------------------------------------
                                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                                -----------------------------------------------

                                BEGIN
                                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                                END;

                            COMMIT;

                        END
                    IF;

                    CLOSE cProcessoAtualizacao;

                END
            IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 683
---------------------------------------------------------------------------


            IF v_Processo = 683
            THEN --OR v_Processo = 0
                THEN

                    OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

                    FETCH cProcessoAtualizacao
                    INTO vProcessoAtualizacao;

                    IF vProcessoAtualizacao = 'A'
                    THEN

                        OPEN cProcesso_00683(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                        LOOP

                            FETCH cProcesso_00683 BULK COLLECT
                            INTO v_Dados
                            LIMIT 3000;

                            FORALL i IN 1 .. v_Dados.Count

                            INSERT
                            INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                            COMMIT;
                            --
                            COMMIT a cada 3.000 registro
                            EXIT
                            WHEN cProcesso_00683%NOTFOUND;

                            COMMIT;

                        END
                    LOOP;

                        CLOSE cProcesso_00683;
                        -----------------------------------------------
                        ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                        -----------------------------------------------

                        BEGIN
                            MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                        END;

                    COMMIT;

                END
            IF;

            CLOSE cProcessoAtualizacao;

        END
    IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 684
---------------------------------------------------------------------------


    IF v_Processo = 684
    THEN --OR v_Processo = 0
        THEN

            OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

            FETCH cProcessoAtualizacao
            INTO vProcessoAtualizacao;

            IF vProcessoAtualizacao = 'A'
            THEN

                OPEN cProcesso_00684(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

                LOOP

                    FETCH cProcesso_00684 BULK COLLECT
                    INTO v_Dados
                    LIMIT 3000;

                    FORALL i IN 1 .. v_Dados.Count

                    INSERT
                    INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                    COMMIT;
                    --
                    COMMIT a cada 3.000 registro
                    EXIT
                    WHEN cProcesso_00684%NOTFOUND;

                    COMMIT;

                END
            LOOP;

                CLOSE cProcesso_00684;
                -----------------------------------------------
                ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
                -----------------------------------------------

                BEGIN
                    MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

                END;

            COMMIT;

        END
    IF;

    CLOSE cProcessoAtualizacao;

END
IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 685
---------------------------------------------------------------------------


IF v_Processo = 685
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00685(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00685 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00685%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00685;
            -----------------------------------------------
            ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
            -----------------------------------------------

            BEGIN
                MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

            END;

        COMMIT;

    END
IF;

CLOSE cProcessoAtualizacao;

END
IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 686
---------------------------------------------------------------------------


IF v_Processo = 686
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00686(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00686 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00686%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00686;
            -----------------------------------------------
            ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
            -----------------------------------------------

            BEGIN
                MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

            END;

        COMMIT;

    END
IF;

CLOSE cProcessoAtualizacao;

END
IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 688
---------------------------------------------------------------------------


IF v_Processo = 688
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00688(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00688 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00688%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00688;
            -----------------------------------------------
            ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
            -----------------------------------------------

            BEGIN
                MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

            END;

        COMMIT;

    END
IF;

CLOSE cProcessoAtualizacao;

END
IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 689
---------------------------------------------------------------------------


IF v_Processo = 689
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00689(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00689 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00689%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00689;
            -----------------------------------------------
            ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
            -----------------------------------------------

            BEGIN
                MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

            END;

        COMMIT;

    END
IF;

CLOSE cProcessoAtualizacao;

END
IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 690
---------------------------------------------------------------------------


IF v_Processo = 690
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00690(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00690 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00690%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00690;
            -----------------------------------------------
            ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
            -----------------------------------------------

            BEGIN
                MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

            END;

        COMMIT;

    END
IF;

CLOSE cProcessoAtualizacao;

END
IF;
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 691
---------------------------------------------------------------------------


IF v_Processo = 691
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00691(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00691 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00691%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00691;
            -----------------------------------------------
            ---ATUALIZANDO OS VALORES E LIMPEZA DE DADOS---
            -----------------------------------------------

            BEGIN
                MvccAdmin.Prc_Diag_Economico_C_Analiti_A(v_Processo,pCdMultiEmpresa,pCdSchedulingProcess,pCdQueueExecution,v_Dt_Ini_Diagno,v_Dt_Fim_Diagno,v_Dh_Geracao,v_Dt_Ini_Limpeza);

            END;

        COMMIT;

    END
IF;

CLOSE cProcessoAtualizacao;

END
IF;