---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 1183
---------------------------------------------------------------------------


IF v_Processo = 1183
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01183(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01183 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01183%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01183;
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
-- Exemplo de bloco de execução: Processo 1184
---------------------------------------------------------------------------


IF v_Processo = 1184
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01184(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01184 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01184%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01184;
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
-- Exemplo de bloco de execução: Processo 1185
---------------------------------------------------------------------------


IF v_Processo = 1185
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01185(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01185 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01185%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01185;
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
-- Exemplo de bloco de execução: Processo 1186
---------------------------------------------------------------------------


IF v_Processo = 1186
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01186(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01186 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01186%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01186;
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
-- Exemplo de bloco de execução: Processo 1187
---------------------------------------------------------------------------


IF v_Processo = 1187
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01187(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01187 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01187%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01187;
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
-- Exemplo de bloco de execução: Processo 1188
---------------------------------------------------------------------------


IF v_Processo = 1188
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01188(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01188 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01188%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01188;
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
-- Exemplo de bloco de execução: Processo 1189
---------------------------------------------------------------------------


IF v_Processo = 1189
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01189(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01189 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01189%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01189;
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
-- Exemplo de bloco de execução: Processo 1190
---------------------------------------------------------------------------


IF v_Processo = 1190
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01190(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01190 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01190%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01190;
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
-- Exemplo de bloco de execução: Processo 1191
---------------------------------------------------------------------------


IF v_Processo = 1191
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01191(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01191 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01191%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01191;
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
-- Exemplo de bloco de execução: Processo 1198
---------------------------------------------------------------------------


IF v_Processo = 1198
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01198(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01198 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01198%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01198;
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
-- Exemplo de bloco de execução: Processo 1199
---------------------------------------------------------------------------


IF v_Processo = 1199
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01199(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01199 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01199%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01199;
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
-- Exemplo de bloco de execução: Processo 1264
---------------------------------------------------------------------------


IF v_Processo = 1264
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01264(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01264 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01264%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01264;
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
-- Exemplo de bloco de execução: Processo 1274
---------------------------------------------------------------------------


IF v_Processo = 1274
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01274(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01274 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01274%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01274;
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
-- Exemplo de bloco de execução: Processo 1285
---------------------------------------------------------------------------


IF v_Processo = 1285
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01285(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01285 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01285%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01285;
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
-- Exemplo de bloco de execução: Processo 1286
---------------------------------------------------------------------------


IF v_Processo = 1286
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01286(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01286 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01286%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01286;
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
-- Exemplo de bloco de execução: Processo 1287
---------------------------------------------------------------------------


IF v_Processo = 1287
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01287(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01287 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01287%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01287;
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
-- Exemplo de bloco de execução: Processo 1288
---------------------------------------------------------------------------


IF v_Processo = 1288
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01288(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01288 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01288%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01288;
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
-- Exemplo de bloco de execução: Processo 1289
---------------------------------------------------------------------------


IF v_Processo = 1289
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01289(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01289 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01289%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01289;
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
-- Exemplo de bloco de execução: Processo 1290
---------------------------------------------------------------------------


IF v_Processo = 1290
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01290(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01290 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01290%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01290;
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
-- Exemplo de bloco de execução: Processo 1291
---------------------------------------------------------------------------


IF v_Processo = 1291
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01291(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01291 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01291%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01291;
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
-- Exemplo de bloco de execução: Processo 1292
---------------------------------------------------------------------------


IF v_Processo = 1292
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01292(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01292 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01292%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01292;
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
-- Exemplo de bloco de execução: Processo 1293
---------------------------------------------------------------------------


IF v_Processo = 1293
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01293(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01293 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01293%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01293;
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
-- Exemplo de bloco de execução: Processo 1294
---------------------------------------------------------------------------


IF v_Processo = 1294
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01294(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01294 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01294%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01294;
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
-- Exemplo de bloco de execução: Processo 1295
---------------------------------------------------------------------------


IF v_Processo = 1295
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01295(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01295 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01295%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01295;
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
-- Exemplo de bloco de execução: Processo 1296
---------------------------------------------------------------------------


IF v_Processo = 1296
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01296(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01296 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01296%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01296;
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
-- Exemplo de bloco de execução: Processo 1297
---------------------------------------------------------------------------


IF v_Processo = 1297
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01297(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01297 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01297%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01297;
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
-- Exemplo de bloco de execução: Processo 1298
---------------------------------------------------------------------------


IF v_Processo = 1298
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01298(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01298 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01298%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01298;
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
-- Exemplo de bloco de execução: Processo 1299
---------------------------------------------------------------------------


IF v_Processo = 1299
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01299(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01299 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01299%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01299;
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
-- Exemplo de bloco de execução: Processo 1300
---------------------------------------------------------------------------


IF v_Processo = 1300
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01300(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01300 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01300%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01300;
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
-- Exemplo de bloco de execução: Processo 1301
---------------------------------------------------------------------------


IF v_Processo = 1301
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01301(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01301 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01301%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01301;
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
-- Exemplo de bloco de execução: Processo 1302
---------------------------------------------------------------------------


IF v_Processo = 1302
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01302(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01302 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01302%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01302;
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
-- Exemplo de bloco de execução: Processo 1303
---------------------------------------------------------------------------


IF v_Processo = 1303
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01303(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01303 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01303%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01303;
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
-- Exemplo de bloco de execução: Processo 1304
---------------------------------------------------------------------------


IF v_Processo = 1304
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01304(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01304 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01304%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01304;
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
-- Exemplo de bloco de execução: Processo 1305
---------------------------------------------------------------------------


IF v_Processo = 1305
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01305(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01305 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01305%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01305;
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
-- Exemplo de bloco de execução: Processo 1308
---------------------------------------------------------------------------


IF v_Processo = 1308
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01308(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01308 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01308%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01308;
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
-- Exemplo de bloco de execução: Processo 1325
---------------------------------------------------------------------------


IF v_Processo = 1325
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01325(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01325 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01325%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01325;
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
-- Exemplo de bloco de execução: Processo 1326
---------------------------------------------------------------------------


IF v_Processo = 1326
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01326(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01326 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01326%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01326;
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
-- Exemplo de bloco de execução: Processo 1327
---------------------------------------------------------------------------


IF v_Processo = 1327
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01327(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01327 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01327%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01327;
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
-- Exemplo de bloco de execução: Processo 1328
---------------------------------------------------------------------------


IF v_Processo = 1328
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01328(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01328 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01328%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01328;
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
-- Exemplo de bloco de execução: Processo 1329
---------------------------------------------------------------------------


IF v_Processo = 1329
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01329(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01329 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01329%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01329;
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
-- Exemplo de bloco de execução: Processo 1330
---------------------------------------------------------------------------


IF v_Processo = 1330
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01330(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01330 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01330%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01330;
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
-- Exemplo de bloco de execução: Processo 1331
---------------------------------------------------------------------------


IF v_Processo = 1331
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01331(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01331 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01331%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01331;
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
-- Exemplo de bloco de execução: Processo 1332
---------------------------------------------------------------------------


IF v_Processo = 1332
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01332(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01332 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01332%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01332;
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
-- Exemplo de bloco de execução: Processo 1333
---------------------------------------------------------------------------


IF v_Processo = 1333
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01333(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01333 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01333%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01333;
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
-- Exemplo de bloco de execução: Processo 1334
---------------------------------------------------------------------------


IF v_Processo = 1334
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01334(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01334 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01334%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01334;
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
-- Exemplo de bloco de execução: Processo 1335
---------------------------------------------------------------------------


IF v_Processo = 1335
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01335(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01335 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01335%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01335;
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
-- Exemplo de bloco de execução: Processo 1336
---------------------------------------------------------------------------


IF v_Processo = 1336
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01336(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01336 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01336%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01336;
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
--Processo cProcesso_01337 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 1337
---------------------------------------------------------------------------


IF v_Processo = 1337
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
                , Null Cd_Paciente
                , Null Cd_Prestador
                , Null Tp_diagnostico
                , NUll nm_indicador
                , NUll nm_grupo
                , Estabelecimento.Cd_Mvcc_Empresa Cd_Multi_Empresa
                , Porte_Cirurgia.Cd_Porte_Cirurgia Cd_Departamento
                , Porte_Cirurgia.Ds_Porte_Cirurgia Ds_Departamento
                , Nvl(Movimento.data_mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY")) Data_Mes
                , Null Nm_Processo
                , Porte_Cirurgia.Ds_Porte_Cirurgia||", QTDE PRODUZIDA: "||Sum(Movimento.Qtde_Utilizada)||Chr(10)
                ||", QTDE PRODUZIDA NO DIA: "||Sum(Movimento.Qtde_Utilizada_Dia)||Chr(10)
                ||", QTDE PROJETADA: "||Sum(Movimento.Qtde_Projetada) Ds_Item_Nao_Conforme
                , '||vEmpresa.Cd_Cliente||' Cd_Cliente
                , Estabelecimento.Nr_Cnpj
                , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dh_Geracao
                , Null Qtde_Naoconforme
                , Null Qtde_Instalada
                , "AVISO_CIRURGIA" Nm_Tabela_Chave
                , '||v_Processo||' Cd_Coluna_Chave
                , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dt_Coluna_Chave
                , Null Dh_Proxima_Geracao
                , Sum(Movimento.Qtde_Utilizada) Qtde_Conforme
                , Null Qtde_Total, Null Dt_Finalizacao, Null Qtde_NaoConforme_Dia, Sum(Movimento.Qtde_Utilizada_Dia) Qtde_Conforme_Dia, Null Qtde_Total_Dia, 1 Nr_Notificacao

                FROM (---MOVIMENTO CIRURGICO---

                    SELECT Mov.Cd_Multi_Empresa
                    , Mov.Data_Mes
                    , Mov.Cd_Porte_Cirurgia
                    , Mov.Tp_Porte_Cirurgia
                    , Nvl(Mov.Qtde_Utilizada,0) Qtde_Utilizada
                    , Nvl(Mov.Qtde_Utilizada_Dia,0) Qtde_Utilizada_Dia
                    , Nvl(Mov.Qtde_Projetada,0) Qtde_Projetada
                    , Nvl(Mov.Qtde_Projetada,0)/To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"DD") Qtde_Projetada_Dia

                    FROM (
                        SELECT Mov.Cd_Multi_Empresa
                        , Mov.Data_Mes
                        , Mov.Cd_Porte_Cirurgia
                        , Mov.Tp_Porte_Cirurgia
                        , Sum(Mov.Qtde_Utilizada) Qtde_Utilizada
                        , Sum(Mov.Qtde_Utilizada_Dia) Qtde_Utilizada_Dia
                        , MvccAdmin.Fnc_Valor_Perspectiva_Mensal(Sum(Mov.Qtde_Utilizada),To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")) Qtde_Projetada

                        FROM (
                            SELECT Avi.Cd_Multi_Empresa
                            , Avi.Data_Mes
                            , Avi.Cd_Porte_Cirurgia
                            , Avi.Tp_Porte_Cirurgia
                            , Avi.Qtde_Utilizada
                            , Avi.Qtde_Utilizada_Dia

                            FROM (---PORTE CIRURGICO AGRUPADO---

                                SELECT Avi.Cd_Multi_Empresa
                                , To_Char(Avi.Dt_Realizacao,"MM/YYYY") data_mes
                                , Cir.Cd_Porte_Cirurgia
                                , 1 Qtde_Utilizada
                                , (Case
                                    WHEN Avi.Dt_Realizacao Between Trunc(Sysdate) And Sysdate
                                    THEN 1
                                    ELSE 0
                                END) Qtde_Utilizada_Dia
                            , "DESAGRUPADO" Tp_Porte_Cirurgia

                            FROM Dbamv.Aviso_Cirurgia Avi
                            , Dbamv.Cirurgia_Aviso Cir
                            , Dbamv.Cirurgia Cia
                            , Dbamv.Convenio Con

                            WHERE Avi.Cd_Aviso_Cirurgia = Cir.Cd_Aviso_Cirurgia
                            And Cir.Cd_Cirurgia = Cia.Cd_Cirurgia
                            And Cir.Cd_Convenio = Con.Cd_Convenio
                            And Cir.Sn_Principal = "S"
                            And Avi.Tp_Situacao = "R" --Qtde_Realizada
                            And Exists (
                                SELECT 1
                                FROM MvccAdmin.v_Campo_Chave Vcc

                                WHERE Vcc.Nr_Processo = '||v_Processo||'
                                And Vcc.Cd_Tipo_Campo_Chave = 159 --TIPO DE PORTE CIRURGICO (GRUPADO ou DESAGRUPADO)
                                And Vcc.Cd_Campo_Chave = "DESAGRUPADO"
                                And Vcc.Nr_Cnpj = '||vEmpresa.Nr_Cnpj||'
                                And Vcc.Cd_Multi_Empresa = '||vEmpresa.Cd_Mvcc_Empresa||')
                            And Avi.Dt_Realizacao Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                            And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                            And Avi.Cd_Multi_Empresa = '||pCdMultiEmpresa||'

                            UNION ALL
                            ---PORTE CIRURGICO DESAGRUPADO---

                            SELECT Avi.Cd_Multi_Empresa
                            , To_Char(Avi.Dt_Realizacao,"MM/YYYY") data_mes
                            , (Case
                                WHEN Cia.Tp_Cirurgia = "P"
                                THEN 1

                                    WHEN Cia.Tp_Cirurgia = "M"
                                    THEN 2

                                        WHEN Cia.Tp_Cirurgia = "G"
                                        THEN 3

                                            WHEN Cia.Tp_Cirurgia = "E"
                                            THEN 4

                                            END) Cd_Porte_Cirurgia
                                        , 1 Qtde_Utilizada
                                        , (Case
                                            WHEN Avi.Dt_Realizacao Between Trunc(Sysdate) And Sysdate
                                            THEN 1
                                            ELSE 0
                                        END) Qtde_Utilizada_Dia
                                    , "AGRUPADO" Tp_Porte_Cirurgia

                                    FROM Dbamv.Aviso_Cirurgia Avi
                                    , Dbamv.Cirurgia_Aviso Cir
                                    , Dbamv.Cirurgia Cia
                                    , Dbamv.Convenio Con

                                    WHERE Avi.Cd_Aviso_Cirurgia = Cir.Cd_Aviso_Cirurgia
                                    And Cir.Cd_Cirurgia = Cia.Cd_Cirurgia
                                    And Cir.Cd_Convenio = Con.Cd_Convenio
                                    And Cir.Sn_Principal = "S"
                                    And Avi.Tp_Situacao = "R" --Qtde_Realizada
                                    And Exists (
                                        SELECT 1
                                        FROM MvccAdmin.v_Campo_Chave Vcc

                                        WHERE Vcc.Nr_Processo = '||v_Processo||'
                                        And Vcc.Cd_Tipo_Campo_Chave = 159 --TIPO DE PORTE CIRURGICO (GRUPADO ou DESAGRUPADO)
                                        And Vcc.Cd_Campo_Chave = "AGRUPADO"
                                        And Vcc.Nr_Cnpj = '||vEmpresa.Nr_Cnpj||'
                                        And Vcc.Cd_Multi_Empresa = '||vEmpresa.Cd_Mvcc_Empresa||')
                                    And Avi.Dt_Realizacao Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                                    And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                                    And Avi.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                                    ) Avi
                                ) Mov

                            GROUP BY Mov.Cd_Multi_Empresa
                            , Mov.cd_porte_cirurgia
                            , Mov.Tp_Porte_Cirurgia
                            , Mov.Data_Mes
                            ) Mov
                        ) Movimento
                    , (
                        SELECT Por.cd_porte_cirurgia, Por.ds_porte_cirurgia, "DESAGRUPADO" Tp_Porte_Cirurgia
                        FROM Dbamv.Porte_Cirurgia Por
                        WHERE Por.sn_ativo = "S"

                        UNION ALL

                        SELECT 1 cd_porte_cirurgia, "PEQUENO PORTE" ds_porte_cirurgia, "AGRUPADO" Tp_Porte_Cirurgia
                        FROM Dual

                        UNION ALL

                        SELECT 2 cd_porte_cirurgia, "MEDIO PORTE" ds_porte_cirurgia, "AGRUPADO" Tp_Porte_Cirurgia
                        FROM Dual

                        UNION ALL

                        SELECT 3 cd_porte_cirurgia, "GRANDE PORTE" ds_porte_cirurgia, "AGRUPADO" Tp_Porte_Cirurgia
                        FROM Dual

                        UNION ALL

                        SELECT 4 cd_porte_cirurgia, "PORTE ESPECIAL" ds_porte_cirurgia, "AGRUPADO" Tp_Porte_Cirurgia
                        FROM Dual
                        ) Porte_Cirurgia
                    , MvccAdmin.Estabelecimento

                    WHERE Porte_cirurgia.cd_porte_cirurgia = Movimento.cd_porte_cirurgia
                    And Movimento.Tp_Porte_Cirurgia = Porte_Cirurgia.Tp_Porte_Cirurgia
                    And Estabelecimento.Cd_Multi_Empresa = '||pCdMultiEmpresa||'

                    GROUP BY Estabelecimento.Cd_Mvcc_Empresa
                    , Nvl(Movimento.data_mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY"))
                    , porte_cirurgia.cd_porte_cirurgia
                    , porte_cirurgia.ds_porte_cirurgia
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
-- Exemplo de bloco de execução: Processo 1338
---------------------------------------------------------------------------


IF v_Processo = 1338
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01338(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01338 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01338%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01338;
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
--Processo cProcesso_01339 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 1339
---------------------------------------------------------------------------


IF v_Processo = 1339
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
                , 1 Cd_departamento
                , "QTDE DE CIRURGIAS CANCELADA/SUSPENSAS" Ds_departamento
                , Nvl(Movimento.data_mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY")) Data_Mes
                , Null Nm_Processo
                , "QTDE DE CIRURGIAS CANCELADA/SUSPENSAS"||", QTDE DE CIRURGIAS: "||Sum(Movimento.Qtde_Cirurgia)
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
            , Mov.Data_Mes
            ) Mov
        ) Movimento
    , MvccAdmin.Estabelecimento

    WHERE Estabelecimento.Cd_Multi_Empresa = '||pCdMultiEmpresa||'

    GROUP BY Estabelecimento.Cd_Mvcc_Empresa
    , Nvl(Movimento.data_mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY"))
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
--Processo cProcesso_01340 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 1340
---------------------------------------------------------------------------


IF v_Processo = 1340
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
                , 1 Cd_departamento
                , "PERC. DE CIRURGIAS CANCELADA/SUSPENSAS" Ds_departamento
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
            , Mov.Data_Mes
            ) Mov
        ) Movimento
    , MvccAdmin.Estabelecimento

    WHERE Estabelecimento.Cd_Multi_Empresa = '||pCdMultiEmpresa||'

    GROUP BY Estabelecimento.Cd_Mvcc_Empresa
    , Nvl(Movimento.data_mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY"))
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
-- Exemplo de bloco de execução: Processo 1341
---------------------------------------------------------------------------


IF v_Processo = 1341
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01341(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01341 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01341%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01341;
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
-- Exemplo de bloco de execução: Processo 1342
---------------------------------------------------------------------------


IF v_Processo = 1342
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01342(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01342 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01342%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01342;
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
-- Exemplo de bloco de execução: Processo 1343
---------------------------------------------------------------------------


IF v_Processo = 1343
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01343(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01343 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01343%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01343;
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
-- Exemplo de bloco de execução: Processo 1344
---------------------------------------------------------------------------


IF v_Processo = 1344
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01344(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01344 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01344%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01344;
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
-- Exemplo de bloco de execução: Processo 1345
---------------------------------------------------------------------------


IF v_Processo = 1345
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01345(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01345 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01345%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01345;
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
-- Exemplo de bloco de execução: Processo 1346
---------------------------------------------------------------------------


IF v_Processo = 1346
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01346(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01346 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01346%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01346;
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
-- Exemplo de bloco de execução: Processo 1347
---------------------------------------------------------------------------


IF v_Processo = 1347
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01347(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01347 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01347%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01347;
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
-- Exemplo de bloco de execução: Processo 1348
---------------------------------------------------------------------------


IF v_Processo = 1348
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01348(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01348 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01348%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01348;
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
-- Exemplo de bloco de execução: Processo 1349
---------------------------------------------------------------------------


IF v_Processo = 1349
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01349(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01349 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01349%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01349;
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
-- Exemplo de bloco de execução: Processo 1350
---------------------------------------------------------------------------


IF v_Processo = 1350
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01350(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01350 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01350%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01350;
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
-- Exemplo de bloco de execução: Processo 1351
---------------------------------------------------------------------------


IF v_Processo = 1351
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01351(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01351 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01351%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01351;
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
-- Exemplo de bloco de execução: Processo 1352
---------------------------------------------------------------------------


IF v_Processo = 1352
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01352(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01352 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01352%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01352;
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
-- Exemplo de bloco de execução: Processo 1353
---------------------------------------------------------------------------


IF v_Processo = 1353
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01353(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01353 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01353%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01353;
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
-- Exemplo de bloco de execução: Processo 1354
---------------------------------------------------------------------------


IF v_Processo = 1354
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01354(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01354 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01354%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01354;
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
-- Exemplo de bloco de execução: Processo 1355
---------------------------------------------------------------------------


IF v_Processo = 1355
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01355(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01355 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01355%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01355;
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
-- Exemplo de bloco de execução: Processo 1356
---------------------------------------------------------------------------


IF v_Processo = 1356
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01356(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01356 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01356%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01356;
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
-- Exemplo de bloco de execução: Processo 1357
---------------------------------------------------------------------------


IF v_Processo = 1357
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01357(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01357 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01357%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01357;
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
-- Exemplo de bloco de execução: Processo 1358
---------------------------------------------------------------------------


IF v_Processo = 1358
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01358(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01358 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01358%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01358;
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
-- Exemplo de bloco de execução: Processo 1359
---------------------------------------------------------------------------


IF v_Processo = 1359
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01359(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01359 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01359%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01359;
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
-- Exemplo de bloco de execução: Processo 1360
---------------------------------------------------------------------------


IF v_Processo = 1360
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01360(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01360 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01360%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01360;
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
-- Exemplo de bloco de execução: Processo 1361
---------------------------------------------------------------------------


IF v_Processo = 1361
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01361(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01361 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01361%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01361;
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
-- Exemplo de bloco de execução: Processo 1362
---------------------------------------------------------------------------


IF v_Processo = 1362
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01362(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01362 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01362%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01362;
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
-- Exemplo de bloco de execução: Processo 1363
---------------------------------------------------------------------------


IF v_Processo = 1363
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01363(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01363 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01363%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01363;
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
-- Exemplo de bloco de execução: Processo 1422
---------------------------------------------------------------------------


IF v_Processo = 1422
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01422(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01422 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01422%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01422;
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
-- Exemplo de bloco de execução: Processo 1423
---------------------------------------------------------------------------


IF v_Processo = 1423
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01423(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01423 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01423%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01423;
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
-- Exemplo de bloco de execução: Processo 1424
---------------------------------------------------------------------------


IF v_Processo = 1424
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01424(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01424 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01424%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01424;
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
-- Exemplo de bloco de execução: Processo 1425
---------------------------------------------------------------------------


IF v_Processo = 1425
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01425(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01425 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01425%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01425;
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
-- Exemplo de bloco de execução: Processo 1426
---------------------------------------------------------------------------


IF v_Processo = 1426
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01426(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01426 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01426%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01426;
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
-- Exemplo de bloco de execução: Processo 1427
---------------------------------------------------------------------------


IF v_Processo = 1427
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01427(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01427 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01427%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01427;
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
-- Exemplo de bloco de execução: Processo 1428
---------------------------------------------------------------------------


IF v_Processo = 1428
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01428(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01428 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01428%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01428;
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
-- Exemplo de bloco de execução: Processo 1429
---------------------------------------------------------------------------


IF v_Processo = 1429
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01429(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01429 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01429%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01429;
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
-- Exemplo de bloco de execução: Processo 1430
---------------------------------------------------------------------------


IF v_Processo = 1430
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01430(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01430 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01430%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01430;
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
-- Exemplo de bloco de execução: Processo 1431
---------------------------------------------------------------------------


IF v_Processo = 1431
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01431(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01431 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01431%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01431;
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
-- Exemplo de bloco de execução: Processo 1432
---------------------------------------------------------------------------


IF v_Processo = 1432
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01432(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01432 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01432%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01432;
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
-- Exemplo de bloco de execução: Processo 1433
---------------------------------------------------------------------------


IF v_Processo = 1433
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01433(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01433 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01433%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01433;
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
-- Exemplo de bloco de execução: Processo 1434
---------------------------------------------------------------------------


IF v_Processo = 1434
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01434(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01434 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01434%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01434;
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
-- Exemplo de bloco de execução: Processo 1435
---------------------------------------------------------------------------


IF v_Processo = 1435
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01435(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01435 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01435%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01435;
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
-- Exemplo de bloco de execução: Processo 1436
---------------------------------------------------------------------------


IF v_Processo = 1436
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01436(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01436 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01436%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01436;
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
-- Exemplo de bloco de execução: Processo 1437
---------------------------------------------------------------------------


IF v_Processo = 1437
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01437(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01437 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01437%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01437;
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
-- Exemplo de bloco de execução: Processo 1438
---------------------------------------------------------------------------


IF v_Processo = 1438
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01438(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01438 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01438%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01438;
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
-- Exemplo de bloco de execução: Processo 1439
---------------------------------------------------------------------------


IF v_Processo = 1439
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01439(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01439 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01439%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01439;
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
-- Exemplo de bloco de execução: Processo 1440
---------------------------------------------------------------------------


IF v_Processo = 1440
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01440(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01440 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01440%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01440;
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
-- Exemplo de bloco de execução: Processo 1441
---------------------------------------------------------------------------


IF v_Processo = 1441
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01441(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01441 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01441%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01441;
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
-- Exemplo de bloco de execução: Processo 1442
---------------------------------------------------------------------------


IF v_Processo = 1442
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01442(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01442 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01442%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01442;
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
-- Exemplo de bloco de execução: Processo 1443
---------------------------------------------------------------------------


IF v_Processo = 1443
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01443(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01443 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01443%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01443;
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
-- Exemplo de bloco de execução: Processo 1444
---------------------------------------------------------------------------


IF v_Processo = 1444
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01444(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01444 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01444%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01444;
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
-- Exemplo de bloco de execução: Processo 1445
---------------------------------------------------------------------------


IF v_Processo = 1445
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01445(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01445 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01445%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01445;
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
-- Exemplo de bloco de execução: Processo 1446
---------------------------------------------------------------------------


IF v_Processo = 1446
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01446(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01446 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01446%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01446;
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
-- Exemplo de bloco de execução: Processo 1447
---------------------------------------------------------------------------


IF v_Processo = 1447
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01447(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01447 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01447%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01447;
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
-- Exemplo de bloco de execução: Processo 1448
---------------------------------------------------------------------------


IF v_Processo = 1448
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01448(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01448 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01448%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01448;
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
-- Exemplo de bloco de execução: Processo 1471
---------------------------------------------------------------------------


IF v_Processo = 1471
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01471(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01471 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01471%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01471;
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
-- Exemplo de bloco de execução: Processo 1472
---------------------------------------------------------------------------


IF v_Processo = 1472
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01472(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01472 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01472%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01472;
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
-- Exemplo de bloco de execução: Processo 1476
---------------------------------------------------------------------------


IF v_Processo = 1476
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01476(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01476 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01476%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01476;
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
-- Exemplo de bloco de execução: Processo 1477
---------------------------------------------------------------------------


IF v_Processo = 1477
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01477(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01477 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01477%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01477;
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
-- Exemplo de bloco de execução: Processo 1478
---------------------------------------------------------------------------


IF v_Processo = 1478
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cChaveIniProcesso(vEmpresa.Cd_Mvcc_Empresa, pProcesso, vEmpresa.Nr_Cnpj);

            FETCH cChaveIniProcesso
            INTO vChaveIniProcesso;

            CLOSE cChaveIniProcesso;

            OPEN cChaveFimProcesso(vEmpresa.Cd_Mvcc_Empresa, pProcesso, vEmpresa.Nr_Cnpj);

            FETCH cChaveFimProcesso
            INTO vChaveFimProcesso;

            CLOSE cChaveFimProcesso;

            OPEN cProcesso_01478(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01478 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01478%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01478;
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
-- Exemplo de bloco de execução: Processo 1479
---------------------------------------------------------------------------


IF v_Processo = 1479
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01479(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01479 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01479%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01479;
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
-- Exemplo de bloco de execução: Processo 1480
---------------------------------------------------------------------------


IF v_Processo = 1480
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01480(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01480 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01480%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01480;
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
--Processo cProcesso_01481 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 1481
---------------------------------------------------------------------------


IF v_Processo = 1481
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
                    , Mov.Qtde_Cancelada
                    , Mov.Qtde_Cancelada_Dia
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
                            And Vcc.Cd_Tipo_Campo_Chave = 189 --INCLUI
                            AS CIRURGIAS SUSPENSAS
                                And Vcc.Nr_Cnpj = '||vEmpresa.Nr_Cnpj||'
                                And Vcc.Cd_Multi_Empresa = '||vEmpresa.Cd_Mvcc_Empresa||'),"N") Sn_Inclui_Cir_Suspensas

                        FROM Dbamv.Aviso_Cirurgia Avi
                        , Dbamv.Cirurgia_Aviso Cir
                        , Dbamv.Convenio Con

                        WHERE Avi.Cd_Aviso_Cirurgia = Cir.Cd_Aviso_Cirurgia
                        And Cir.Cd_Convenio = Con.Cd_Convenio
                        And Exists (
                            SELECT 1
                            FROM Dbamv.Mot_Canc Mot
                            WHERE Avi.Cd_Mot_Canc = Mot.cd_Mot_Canc and mot.tp_mot_canc = "C") --MOTIVOS DE CANCELAMENTO DO AGENDAMENTO
                        And Cir.Sn_Principal = "S"
                        And (Avi.Tp_Situacao = "C" Or Avi.Sn_Suspensao = "S")
                        And Avi.dt_cancelamento Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And Avi.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                        ) Mov

                    WHERE (Mov.Tp_Situacao = "C" Or (Mov.Sn_Inclui_Cir_Suspensas = "S" And Mov.Sn_Suspensao = "S"))

                    UNION ALL
                    ---CIRURGIAS REALIZADAS---

                    SELECT Avi.Cd_Multi_Empresa
                    , Avi.Cd_Cen_Cir
                    , To_Char(Avi.Dt_Realizacao,"MM/YYYY") data_mes
                    , Null Tp_Situacao
                    , 0 Qtde_Cancelada
                    , 0 Qtde_Cancelada_Dia
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
--Processo cProcesso_01484 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 1484
---------------------------------------------------------------------------


IF v_Processo = 1484
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
                    , Mov.Qtde_Cancelada
                    , Mov.Qtde_Cancelada_Dia
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
                            And Vcc.Cd_Tipo_Campo_Chave = 189 --INCLUI
                            AS CIRURGIAS SUSPENSAS
                                And Vcc.Nr_Cnpj = '||vEmpresa.Nr_Cnpj||'
                                And Vcc.Cd_Multi_Empresa = '||vEmpresa.Cd_Mvcc_Empresa||'),"N") Sn_Inclui_Cir_Suspensas

                        FROM Dbamv.Aviso_Cirurgia Avi
                        , Dbamv.Cirurgia_Aviso Cir
                        , Dbamv.Convenio Con

                        WHERE Avi.Cd_Aviso_Cirurgia = Cir.Cd_Aviso_Cirurgia
                        And Cir.Cd_Convenio = Con.Cd_Convenio
                        And Exists (
                            SELECT 1
                            FROM Dbamv.Mot_Canc Mot
                            WHERE Avi.Cd_Mot_Canc = Mot.cd_Mot_Canc and mot.tp_mot_canc = "E") --MOTIVOS DE CANCELAMENTO DO PRE-AGENDAMENTO
                        And Cir.Sn_Principal = "S"
                        And (Avi.Tp_Situacao = "C" Or Avi.Sn_Suspensao = "S")
                        And Avi.dt_cancelamento Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And Avi.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                        ) Mov

                    WHERE (Mov.Tp_Situacao = "C" Or (Mov.Sn_Inclui_Cir_Suspensas = "S" And Mov.Sn_Suspensao = "S"))

                    UNION ALL
                    ---CIRURGIAS REALIZADAS---

                    SELECT Avi.Cd_Multi_Empresa
                    , Avi.Cd_Cen_Cir
                    , To_Char(Avi.Dt_Realizacao,"MM/YYYY") data_mes
                    , Null Tp_Situacao
                    , 0 Qtde_Cancelada
                    , 0 Qtde_Cancelada_Dia
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
--Processo cProcesso_01485 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 1485
---------------------------------------------------------------------------


IF v_Processo = 1485
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
                    , Mov.Qtde_Cancelada
                    , Mov.Qtde_Cancelada_Dia
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
                            And Vcc.Cd_Tipo_Campo_Chave = 189 --INCLUI
                            AS CIRURGIAS SUSPENSAS
                                And Vcc.Nr_Cnpj = '||vEmpresa.Nr_Cnpj||'
                                And Vcc.Cd_Multi_Empresa = '||vEmpresa.Cd_Mvcc_Empresa||'),"N") Sn_Inclui_Cir_Suspensas

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

                    WHERE (Mov.Tp_Situacao = "C" Or (Mov.Sn_Inclui_Cir_Suspensas = "S" And Mov.Sn_Suspensao = "S"))

                    UNION ALL
                    ---CIRURGIAS REALIZADAS---

                    SELECT Avi.Cd_Multi_Empresa
                    , Avi.Cd_Cen_Cir
                    , To_Char(Avi.Dt_Realizacao,"MM/YYYY") data_mes
                    , Null Tp_Situacao
                    , 0 Qtde_Cancelada
                    , 0 Qtde_Cancelada_Dia
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
--Processo cProcesso_01486 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 1486
---------------------------------------------------------------------------


IF v_Processo = 1486
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
                    , Mov.Qtde_Cancelada
                    , Mov.Qtde_Cancelada_Dia
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
                            And Vcc.Cd_Tipo_Campo_Chave = 189 --INCLUI
                            AS CIRURGIAS SUSPENSAS
                                And Vcc.Nr_Cnpj = '||vEmpresa.Nr_Cnpj||'
                                And Vcc.Cd_Multi_Empresa = '||vEmpresa.Cd_Mvcc_Empresa||'),"N") Sn_Inclui_Cir_Suspensas

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

                    WHERE (Mov.Tp_Situacao = "C" Or (Mov.Sn_Inclui_Cir_Suspensas = "S" And Mov.Sn_Suspensao = "S"))

                    UNION ALL
                    ---CIRURGIAS REALIZADAS---

                    SELECT Avi.Cd_Multi_Empresa
                    , Avi.Cd_Cen_Cir
                    , To_Char(Avi.Dt_Realizacao,"MM/YYYY") data_mes
                    , Null Tp_Situacao
                    , 0 Qtde_Cancelada
                    , 0 Qtde_Cancelada_Dia
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
--Processo cProcesso_01487 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 1487
---------------------------------------------------------------------------


IF v_Processo = 1487
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
                    , Mov.Qtde_Cancelada
                    , Mov.Qtde_Cancelada_Dia
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
                            And Vcc.Cd_Tipo_Campo_Chave = 189 --INCLUI
                            AS CIRURGIAS SUSPENSAS
                                And Vcc.Nr_Cnpj = '||vEmpresa.Nr_Cnpj||'
                                And Vcc.Cd_Multi_Empresa = '||vEmpresa.Cd_Mvcc_Empresa||'),"N") Sn_Inclui_Cir_Suspensas

                        FROM Dbamv.Aviso_Cirurgia Avi
                        , Dbamv.Cirurgia_Aviso Cir
                        , Dbamv.Convenio Con

                        WHERE Avi.Cd_Aviso_Cirurgia = Cir.Cd_Aviso_Cirurgia
                        And Cir.Cd_Convenio = Con.Cd_Convenio
                        And Exists (
                            SELECT 1
                            FROM Dbamv.Mot_Canc Mot
                            WHERE Avi.Cd_Mot_Canc = Mot.cd_Mot_Canc and mot.tp_mot_canc = "M") --MOTIVOS DE CANCELAMENTO DE MÉDICO
                        And Cir.Sn_Principal = "S"
                        And (Avi.Tp_Situacao = "C" Or Avi.Sn_Suspensao = "S")
                        And Avi.dt_cancelamento Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And Avi.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                        ) Mov

                    WHERE (Mov.Tp_Situacao = "C" Or (Mov.Sn_Inclui_Cir_Suspensas = "S" And Mov.Sn_Suspensao = "S"))

                    UNION ALL
                    ---CIRURGIAS REALIZADAS---

                    SELECT Avi.Cd_Multi_Empresa
                    , Avi.Cd_Cen_Cir
                    , To_Char(Avi.Dt_Realizacao,"MM/YYYY") data_mes
                    , Null Tp_Situacao
                    , 0 Qtde_Cancelada
                    , 0 Qtde_Cancelada_Dia
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
--Processo cProcesso_01488 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 1488
---------------------------------------------------------------------------


IF v_Processo = 1488
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
                    , Mov.Qtde_Cancelada
                    , Mov.Qtde_Cancelada_Dia
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
                            And Vcc.Cd_Tipo_Campo_Chave = 189 --INCLUI
                            AS CIRURGIAS SUSPENSAS
                                And Vcc.Nr_Cnpj = '||vEmpresa.Nr_Cnpj||'
                                And Vcc.Cd_Multi_Empresa = '||vEmpresa.Cd_Mvcc_Empresa||'),"N") Sn_Inclui_Cir_Suspensas

                        FROM Dbamv.Aviso_Cirurgia Avi
                        , Dbamv.Cirurgia_Aviso Cir
                        , Dbamv.Convenio Con

                        WHERE Avi.Cd_Aviso_Cirurgia = Cir.Cd_Aviso_Cirurgia
                        And Cir.Cd_Convenio = Con.Cd_Convenio
                        And Exists (
                            SELECT 1
                            FROM Dbamv.Mot_Canc Mot
                            WHERE Avi.Cd_Mot_Canc = Mot.cd_Mot_Canc and mot.tp_mot_canc = "A") --MOTIVOS DE CANCELAMENTO DE ADMINISTRATIVO
                        And Cir.Sn_Principal = "S"
                        And (Avi.Tp_Situacao = "C" Or Avi.Sn_Suspensao = "S")
                        And Avi.dt_cancelamento Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And Avi.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                        ) Mov

                    WHERE (Mov.Tp_Situacao = "C" Or (Mov.Sn_Inclui_Cir_Suspensas = "S" And Mov.Sn_Suspensao = "S"))

                    UNION ALL
                    ---CIRURGIAS REALIZADAS---

                    SELECT Avi.Cd_Multi_Empresa
                    , Avi.Cd_Cen_Cir
                    , To_Char(Avi.Dt_Realizacao,"MM/YYYY") data_mes
                    , Null Tp_Situacao
                    , 0 Qtde_Cancelada
                    , 0 Qtde_Cancelada_Dia
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
--Processo cProcesso_01489 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 1489
---------------------------------------------------------------------------


IF v_Processo = 1489
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
                    , Mov.Qtde_Cancelada
                    , Mov.Qtde_Cancelada_Dia
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
                            And Vcc.Cd_Tipo_Campo_Chave = 189 --INCLUI
                            AS CIRURGIAS SUSPENSAS
                                And Vcc.Nr_Cnpj = '||vEmpresa.Nr_Cnpj||'
                                And Vcc.Cd_Multi_Empresa = '||vEmpresa.Cd_Mvcc_Empresa||'),"N") Sn_Inclui_Cir_Suspensas

                        FROM Dbamv.Aviso_Cirurgia Avi
                        , Dbamv.Cirurgia_Aviso Cir
                        , Dbamv.Convenio Con

                        WHERE Avi.Cd_Aviso_Cirurgia = Cir.Cd_Aviso_Cirurgia
                        And Cir.Cd_Convenio = Con.Cd_Convenio
                        And Exists (
                            SELECT 1
                            FROM Dbamv.Mot_Canc Mot
                            WHERE Avi.Cd_Mot_Canc = Mot.cd_Mot_Canc and mot.tp_mot_canc = "T") --MOTIVOS DE CANCELAMENTO DE TRANSFERENCIA
                        And Cir.Sn_Principal = "S"
                        And (Avi.Tp_Situacao = "C" Or Avi.Sn_Suspensao = "S")
                        And Avi.dt_cancelamento Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And Avi.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                        ) Mov

                    WHERE (Mov.Tp_Situacao = "C" Or (Mov.Sn_Inclui_Cir_Suspensas = "S" And Mov.Sn_Suspensao = "S"))

                    UNION ALL
                    ---CIRURGIAS REALIZADAS---

                    SELECT Avi.Cd_Multi_Empresa
                    , Avi.Cd_Cen_Cir
                    , To_Char(Avi.Dt_Realizacao,"MM/YYYY") data_mes
                    , Null Tp_Situacao
                    , 0 Qtde_Cancelada
                    , 0 Qtde_Cancelada_Dia
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
--Processo cProcesso_01490 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 1490
---------------------------------------------------------------------------


IF v_Processo = 1490
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
                , 1 Cd_departamento
                , "QTDE DE CIRURGIAS CANCELADA/SUSPENSAS" Ds_departamento
                , Nvl(Movimento.data_mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY")) Data_Mes
                , Null Nm_Processo
                , "QTDE DE CIRURGIAS CANCELADA/SUSPENSAS"||", QTDE DE CIRURGIAS: "||Sum(Movimento.Qtde_Cirurgia)
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
                    , Mov.Qtde_Cancelada
                    , Mov.Qtde_Cancelada_Dia
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
                            And Vcc.Cd_Tipo_Campo_Chave = 189 --INCLUI
                            AS CIRURGIAS SUSPENSAS
                                And Vcc.Nr_Cnpj = '||vEmpresa.Nr_Cnpj||'
                                And Vcc.Cd_Multi_Empresa = '||vEmpresa.Cd_Mvcc_Empresa||'),"N") Sn_Inclui_Cir_Suspensas

                        FROM Dbamv.Aviso_Cirurgia Avi
                        , Dbamv.Cirurgia_Aviso Cir
                        , Dbamv.Convenio Con

                        WHERE Avi.Cd_Aviso_Cirurgia = Cir.Cd_Aviso_Cirurgia
                        And Cir.Cd_Convenio = Con.Cd_Convenio
                        And Cir.Sn_Principal = "S"
                        And (Avi.Tp_Situacao = "C" Or Avi.Sn_Suspensao = "S")
                        And Avi.dt_cancelamento Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And Avi.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                        ) Mov

                    WHERE (Mov.Tp_Situacao = "C" Or (Mov.Sn_Inclui_Cir_Suspensas = "S" And Mov.Sn_Suspensao = "S"))

                    UNION ALL
                    ---CIRURGIAS REALIZADAS---

                    SELECT Avi.Cd_Multi_Empresa
                    , Avi.Cd_Cen_Cir
                    , To_Char(Avi.Dt_Realizacao,"MM/YYYY") data_mes
                    , Null Tp_Situacao
                    , 0 Qtde_Cancelada
                    , 0 Qtde_Cancelada_Dia
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
            , Mov.Data_Mes
            ) Mov
        ) Movimento
    , MvccAdmin.Estabelecimento

    WHERE Estabelecimento.Cd_Multi_Empresa = '||pCdMultiEmpresa||'

    GROUP BY Estabelecimento.Cd_Mvcc_Empresa
    , Nvl(Movimento.data_mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY"))
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
--Processo cProcesso_01491 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 1491
---------------------------------------------------------------------------


IF v_Processo = 1491
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
                , 1 Cd_departamento
                , "PERC. DE CIRURGIAS CANCELADA/SUSPENSAS" Ds_departamento
                , Nvl(Movimento.data_mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY")) Data_Mes
                , Null Nm_Processo
                , "PERC. DE CIRURGIAS CANCELADA/SUSPENSAS"||", QTDE DE CIRURGIAS: "||Sum(Movimento.Qtde_Cirurgia)
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
                    , Mov.Qtde_Cancelada
                    , Mov.Qtde_Cancelada_Dia
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
                            And Vcc.Cd_Tipo_Campo_Chave = 189 --INCLUI
                            AS CIRURGIAS SUSPENSAS
                                And Vcc.Nr_Cnpj = '||vEmpresa.Nr_Cnpj||'
                                And Vcc.Cd_Multi_Empresa = '||vEmpresa.Cd_Mvcc_Empresa||'),"N") Sn_Inclui_Cir_Suspensas

                        FROM Dbamv.Aviso_Cirurgia Avi
                        , Dbamv.Cirurgia_Aviso Cir
                        , Dbamv.Convenio Con

                        WHERE Avi.Cd_Aviso_Cirurgia = Cir.Cd_Aviso_Cirurgia
                        And Cir.Cd_Convenio = Con.Cd_Convenio
                        And Cir.Sn_Principal = "S"
                        And (Avi.Tp_Situacao = "C" Or Avi.Sn_Suspensao = "S")
                        And Avi.dt_cancelamento Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And Avi.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                        ) Mov

                    WHERE (Mov.Tp_Situacao = "C" Or (Mov.Sn_Inclui_Cir_Suspensas = "S" And Mov.Sn_Suspensao = "S"))

                    UNION ALL
                    ---CIRURGIAS REALIZADAS---

                    SELECT Avi.Cd_Multi_Empresa
                    , Avi.Cd_Cen_Cir
                    , To_Char(Avi.Dt_Realizacao,"MM/YYYY") data_mes
                    , Null Tp_Situacao
                    , 0 Qtde_Cancelada
                    , 0 Qtde_Cancelada_Dia
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
            , Mov.Data_Mes
            ) Mov
        ) Movimento
    , MvccAdmin.Estabelecimento

    WHERE Estabelecimento.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
    And Exists (
        SELECT 1
        FROM Dbamv.Setor Str, Dbamv.Sal_Cir Sal
        WHERE Str.Cd_Setor = Sal.Cd_Setor And Cen_Cir.Cd_Cen_Cir = Sal.Cd_Cen_Cir And Str.Cd_Multi_Empresa = '||pCdMultiEmpresa||')

    GROUP BY Estabelecimento.Cd_Mvcc_Empresa
    , Nvl(Movimento.data_mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY"))
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
-- Exemplo de bloco de execução: Processo 1530
---------------------------------------------------------------------------


IF v_Processo = 1530
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01530(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01530 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01530%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01530;
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
-- Exemplo de bloco de execução: Processo 1531
---------------------------------------------------------------------------


IF v_Processo = 1531
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01531(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01531 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01531%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01531;
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
-- Exemplo de bloco de execução: Processo 1533
---------------------------------------------------------------------------


IF v_Processo = 1533
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01533(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01533 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01533%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01533;
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
-- Exemplo de bloco de execução: Processo 1534
---------------------------------------------------------------------------


IF v_Processo = 1534
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01534(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01534 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01534%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01534;
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
-- Exemplo de bloco de execução: Processo 1535
---------------------------------------------------------------------------


IF v_Processo = 1535
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01535(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01535 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01535%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01535;
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
-- Exemplo de bloco de execução: Processo 1545
---------------------------------------------------------------------------


IF v_Processo = 1545
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01545(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01545 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01545%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01545;
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
-- Exemplo de bloco de execução: Processo 1551
---------------------------------------------------------------------------


IF v_Processo = 1551
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01551(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01551 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01551%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01551;
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
-- Exemplo de bloco de execução: Processo 1552
---------------------------------------------------------------------------


IF v_Processo = 1552
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01552(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01552 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01552%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01552;
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
-- Exemplo de bloco de execução: Processo 1553
---------------------------------------------------------------------------


IF v_Processo = 1553
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01553(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01553 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01553%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01553;
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
-- Exemplo de bloco de execução: Processo 1554
---------------------------------------------------------------------------


IF v_Processo = 1554
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01554(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01554 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01554%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01554;
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
-- Exemplo de bloco de execução: Processo 1555
---------------------------------------------------------------------------


IF v_Processo = 1555
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01555(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01555 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01555%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01555;
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
-- Exemplo de bloco de execução: Processo 1556
---------------------------------------------------------------------------


IF v_Processo = 1556
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01556(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01556 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01556%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01556;
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
-- Exemplo de bloco de execução: Processo 1557
---------------------------------------------------------------------------


IF v_Processo = 1557
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01557(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01557 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01557%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01557;
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
-- Exemplo de bloco de execução: Processo 1558
---------------------------------------------------------------------------


IF v_Processo = 1558
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01558(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01558 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01558%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01558;
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
-- Exemplo de bloco de execução: Processo 1559
---------------------------------------------------------------------------


IF v_Processo = 1559
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01559(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01559 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01559%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01559;
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
-- Exemplo de bloco de execução: Processo 1560
---------------------------------------------------------------------------


IF v_Processo = 1560
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01560(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01560 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01560%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01560;
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
-- Exemplo de bloco de execução: Processo 1561
---------------------------------------------------------------------------


IF v_Processo = 1561
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01561(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01561 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01561%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01561;
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
-- Exemplo de bloco de execução: Processo 1562
---------------------------------------------------------------------------


IF v_Processo = 1562
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01562(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01562 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01562%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01562;
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
-- Exemplo de bloco de execução: Processo 1563
---------------------------------------------------------------------------


IF v_Processo = 1563
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01563(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01563 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01563%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01563;
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
-- Exemplo de bloco de execução: Processo 1564
---------------------------------------------------------------------------


IF v_Processo = 1564
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01564(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01564 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01564%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01564;
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
-- Exemplo de bloco de execução: Processo 1565
---------------------------------------------------------------------------


IF v_Processo = 1565
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01565(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01565 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01565%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01565;
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
-- Exemplo de bloco de execução: Processo 1566
---------------------------------------------------------------------------


IF v_Processo = 1566
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01566(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01566 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01566%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01566;
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
-- Exemplo de bloco de execução: Processo 1567
---------------------------------------------------------------------------


IF v_Processo = 1567
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01567(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01567 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01567%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01567;
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
-- Exemplo de bloco de execução: Processo 1568
---------------------------------------------------------------------------


IF v_Processo = 1568
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01568(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01568 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01568%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01568;
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
-- Exemplo de bloco de execução: Processo 1569
---------------------------------------------------------------------------


IF v_Processo = 1569
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01569(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01569 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01569%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01569;
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
-- Exemplo de bloco de execução: Processo 1570
---------------------------------------------------------------------------


IF v_Processo = 1570
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01570(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01570 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01570%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01570;
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
-- Exemplo de bloco de execução: Processo 1571
---------------------------------------------------------------------------


IF v_Processo = 1571
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01571(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01571 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01571%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01571;
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
-- Exemplo de bloco de execução: Processo 1572
---------------------------------------------------------------------------


IF v_Processo = 1572
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01572(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01572 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01572%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01572;
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
-- Exemplo de bloco de execução: Processo 1584
---------------------------------------------------------------------------


IF v_Processo = 1584
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01584(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01584 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01584%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01584;
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
-- Exemplo de bloco de execução: Processo 1585
---------------------------------------------------------------------------


IF v_Processo = 1585
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01585(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01585 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01585%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01585;
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
-- Exemplo de bloco de execução: Processo 1586
---------------------------------------------------------------------------


IF v_Processo = 1586
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01586(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01586 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01586%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01586;
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
-- Exemplo de bloco de execução: Processo 1589
---------------------------------------------------------------------------


IF v_Processo = 1589
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01589(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01589 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01589%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01589;
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
-- Exemplo de bloco de execução: Processo 1590
---------------------------------------------------------------------------


IF v_Processo = 1590
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01590(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01590 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01590%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01590;
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
-- Exemplo de bloco de execução: Processo 1591
---------------------------------------------------------------------------


IF v_Processo = 1591
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01591(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01591 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01591%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01591;
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
-- Exemplo de bloco de execução: Processo 1592
---------------------------------------------------------------------------


IF v_Processo = 1592
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01592(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01592 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01592%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01592;
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
-- Exemplo de bloco de execução: Processo 1593
---------------------------------------------------------------------------


IF v_Processo = 1593
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01593(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01593 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01593%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01593;
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
-- Exemplo de bloco de execução: Processo 1595
---------------------------------------------------------------------------


IF v_Processo = 1595
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01595(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01595 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01595%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01595;
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
-- Exemplo de bloco de execução: Processo 1596
---------------------------------------------------------------------------


IF v_Processo = 1596
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01596(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01596 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01596%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01596;
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
-- Exemplo de bloco de execução: Processo 1597
---------------------------------------------------------------------------


IF v_Processo = 1597
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01597(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01597 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01597%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01597;
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
-- Exemplo de bloco de execução: Processo 1598
---------------------------------------------------------------------------


IF v_Processo = 1598
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01598(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01598 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01598%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01598;
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
-- Exemplo de bloco de execução: Processo 1599
---------------------------------------------------------------------------


IF v_Processo = 1599
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01599(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01599 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01599%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01599;
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
-- Exemplo de bloco de execução: Processo 1600
---------------------------------------------------------------------------


IF v_Processo = 1600
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01600(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01600 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01600%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01600;
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
-- Exemplo de bloco de execução: Processo 1601
---------------------------------------------------------------------------


IF v_Processo = 1601
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01601(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01601 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01601%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01601;
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
-- Exemplo de bloco de execução: Processo 1602
---------------------------------------------------------------------------


IF v_Processo = 1602
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01602(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01602 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01602%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01602;
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
-- Exemplo de bloco de execução: Processo 1605
---------------------------------------------------------------------------


IF v_Processo = 1605
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01605(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01605 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01605%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01605;
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
-- Exemplo de bloco de execução: Processo 1607
---------------------------------------------------------------------------


IF v_Processo = 1607
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01607(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01607 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01607%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01607;
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
-- Exemplo de bloco de execução: Processo 1608
---------------------------------------------------------------------------


IF v_Processo = 1608
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01608(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01608 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01608%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01608;
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
-- Exemplo de bloco de execução: Processo 1609
---------------------------------------------------------------------------


IF v_Processo = 1609
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01609(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01609 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01609%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01609;
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
-- Exemplo de bloco de execução: Processo 1610
---------------------------------------------------------------------------


IF v_Processo = 1610
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01610(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01610 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01610%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01610;
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
-- Exemplo de bloco de execução: Processo 1611
---------------------------------------------------------------------------


IF v_Processo = 1611
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01611(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01611 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01611%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01611;
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
-- Exemplo de bloco de execução: Processo 1612
---------------------------------------------------------------------------


IF v_Processo = 1612
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01612(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01612 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01612%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01612;
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
-- Exemplo de bloco de execução: Processo 1613
---------------------------------------------------------------------------


IF v_Processo = 1613
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01613(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01613 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01613%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01613;
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
-- Exemplo de bloco de execução: Processo 1614
---------------------------------------------------------------------------


IF v_Processo = 1614
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01614(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01614 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01614%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01614;
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
-- Exemplo de bloco de execução: Processo 1615
---------------------------------------------------------------------------


IF v_Processo = 1615
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01615(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01615 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01615%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01615;
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
-- Exemplo de bloco de execução: Processo 1616
---------------------------------------------------------------------------


IF v_Processo = 1616
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01616(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01616 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01616%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01616;
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
-- Exemplo de bloco de execução: Processo 1619
---------------------------------------------------------------------------


IF v_Processo = 1619
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01619(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01619 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01619%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01619;
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
-- Exemplo de bloco de execução: Processo 1625
---------------------------------------------------------------------------


IF v_Processo = 1625
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01625(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01625 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01625%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01625;
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
-- Exemplo de bloco de execução: Processo 1629
---------------------------------------------------------------------------


IF v_Processo = 1629
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01629(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01629 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01629%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01629;
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
-- Exemplo de bloco de execução: Processo 1634
---------------------------------------------------------------------------


IF v_Processo = 1634
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01634(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01634 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01634%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01634;
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
-- Exemplo de bloco de execução: Processo 1635
---------------------------------------------------------------------------


IF v_Processo = 1635
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01635(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01635 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01635%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01635;
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
--Processo cProcesso_01636 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 1636
---------------------------------------------------------------------------


IF v_Processo = 1636
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
                , Null Cd_Paciente
                , Null Cd_Prestador
                , Null Tp_Diagnostico
                , Null Nm_Indicador
                , Null Nm_Grupo
                , Estabelecimento.Cd_Mvcc_Empresa Cd_Multi_Empresa
                , 1 Cd_Departamento
                , "PERC DE REALIZAÇÃO DOS PROC. NO TEMPO PADRÃO" Ds_Departamento
                , Nvl(Movimento.data_mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY")) data_mes
                , Null Nm_Processo
                , "PERC DE REALIZAÇÃO DOS PROC. NO TEMPO PADRÃO"||Chr(10)||", QTDE DE PROCEDIMENTOS: "||Sum(Nvl(Movimento.Qtde_Total,0))||Chr(10)
                ||", QTDE DE PROCEDIMENTOS NO TEMPO: "||Sum(Nvl(Movimento.Qtde_Conforme,0))||Chr(10)
                ||", PERC. REALIZADO NO TEMPO: "||Sum(Nvl(Movimento.Vl_Perc_Conforme,0))||" %"||Chr(10)
                ||", QTDE DE PROCEDIMENTOS NO DIA: "||Sum(Nvl(Movimento.Qtde_Total_Dia,0))||Chr(10)
                ||", QTDE DE PROCEDIMENTOS NO TEMPO NO DIA: "||Sum(Nvl(Movimento.Qtde_Conforme_Dia,0))||Chr(10)
                ||", PERC. REALIZADO NO TEMPO NO DIA: "||Sum(Nvl(Movimento.Vl_Perc_Conforme_Dia,0))||" %"||Chr(10) Ds_Item_Nao_Conforme
                , '||vEmpresa.Cd_Cliente||' Cd_Cliente
                , Estabelecimento.Nr_Cnpj
                , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dh_Geracao
                , Null Qtde_Naoconforme
                , Null Qtde_Instalada
                , "REG_FAT" Nm_Tabela_Chave
                , '||v_Processo||' Cd_Coluna_Chave
                , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dt_Coluna_Chave
                , Null Dh_Proxima_Geracao
                , Sum(Movimento.Vl_Perc_Conforme) Qtde_Conforme
                , Null Qtde_Total, Null Dt_Finalizacao, Null Qtde_NaoConforme_Dia, Sum(Movimento.Vl_Perc_Conforme_Dia) Qtde_Conforme_Dia, Null Qtde_Total_Dia, 1 Nr_Notificacao

                FROM (---MOVIMENTO---

                    SELECT Mov.Cd_Multi_Empresa
                    , Mov.Data_Mes
                    , Mov.Qtde_Total
                    , Mov.Qtde_Total_dia
                    , Mov.Qtde_Conforme
                    , Mov.Qtde_Conforme_Dia
                    , (Case
                        WHEN Mov.Qtde_Total = 0
                        THEN 0
                        ELSE Trunc(Mov.Qtde_Conforme/Mov.Qtde_Total*100,2)
                    END) Vl_Perc_Conforme
                , (Case
                    WHEN Mov.Qtde_Total_Dia = 0
                    THEN 0
                    ELSE Trunc(Mov.Qtde_Conforme_Dia/Mov.Qtde_Total_Dia*100,2)
                END) Vl_Perc_Conforme_Dia

            FROM (
                SELECT Mov.Cd_Multi_Empresa
                , Mov.Data_Mes
                , Mov.Dt_realizacao
                , Count(1) Qtde_Total
                , Sum(Case
                    WHEN Mov.Dt_realizacao Between Trunc(Sysdate) And Sysdate
                    THEN 1
                    ELSE 0
                END) Qtde_Total_dia
            , Sum(Case
                WHEN Mov.Nr_Tempo_Real_Min <= Mov.Nr_Tempo_Prev_Min
                THEN 1
                ELSE 0
            END) Qtde_Conforme
        , Sum(Case
            WHEN Mov.Dt_realizacao Between Trunc(Sysdate) And Sysdate And Mov.Nr_Tempo_Real_Min <= Mov.Nr_Tempo_Prev_Min
            THEN 1
            ELSE 0
        END) Qtde_Conforme_Dia

    FROM (
        SELECT Mov.Cd_Multi_Empresa
        , Mov.Cd_Cen_Cir
        , Mov.Cd_Atendimento
        , Mov.Cd_Aviso_Cirurgia
        , Mov.Cd_Cirurgia
        , Mov.Ds_Cirurgia
        , Mov.Cd_Pro_Fat
        , Mov.Cd_Setor
        , Mov.dt_fim_cirurgia
        , Mov.dt_inicio_cirurgia
        , Mov.Dt_realizacao
        , Mov.Data_Mes
        , Round(To_Number(To_Char(Mov.nr_horas_padrao,"hh24"))*60+To_Number(To_Char(Mov.nr_horas_padrao,"mi")),0) Nr_Tempo_Prev_Min
        , Round((Mov.dt_fim_cirurgia-Mov.dt_inicio_cirurgia)*24*60,0) Nr_Tempo_Real_Min
        , Mov.Nr_Horas_Padrao

        FROM (
            SELECT Aviso_Cirurgia.Cd_Multi_Empresa
            , Aviso_Cirurgia.Cd_Cen_Cir
            , Aviso_Cirurgia.Cd_Atendimento
            , Aviso_Cirurgia.Cd_Aviso_Cirurgia
            , Cirurgia.Cd_Cirurgia
            , Cirurgia.Ds_Cirurgia
            , Cirurgia.Cd_Pro_Fat
            , Aviso_Cirurgia.Dt_Fim_Cirurgia
            , Aviso_Cirurgia.Dt_Inicio_Cirurgia
            , Sal_Cir.Cd_Setor
            , Aviso_Cirurgia.Dt_Realizacao
            , To_Char(Aviso_Cirurgia.Dt_Realizacao,"MM/YYYY") Data_Mes
            , Nvl((
                    SELECT Min(Nr_Horas_Padrao)
                    FROM Dbamv.Cirurgia_Empresa

                    WHERE Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                    And Cirurgia_Empresa.Cd_Cirurgia = Cirurgia.Cd_Cirurgia),Cirurgia.Nr_Horas_Padrao) Nr_Horas_Padrao

            FROM (
                SELECT *
                FROM Dbamv.Aviso_Cirurgia

                WHERE Aviso_Cirurgia.Dt_Realizacao Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                And Aviso_Cirurgia.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                And Aviso_Cirurgia.Tp_Situacao = "R") Aviso_Cirurgia
            , Dbamv.Sal_Cir
            , Dbamv.Cirurgia_Aviso
            , Dbamv.Cirurgia

            WHERE Aviso_Cirurgia.Cd_Cen_Cir = Sal_Cir.Cd_Cen_Cir
            AND Aviso_Cirurgia.Cd_Sal_Cir = Sal_Cir.Cd_Sal_Cir
            And Aviso_Cirurgia.Cd_Aviso_Cirurgia = Cirurgia_Aviso.Cd_Aviso_Cirurgia
            And Cirurgia_Aviso.Cd_Cirurgia = Cirurgia.Cd_Cirurgia
            ---DESCONSIDERA OS AVISO COM MAIS DE UMA CIRURGIA NO MESMO ATO
            And Not Exists (
                SELECT 1
                FROM Dbamv.Aviso_Cirurgia Avc
                , Dbamv.Cirurgia_Aviso Cav

                WHERE Avc.Cd_Aviso_Cirurgia = Cav.Cd_Aviso_Cirurgia
                And Avc.Dt_Realizacao Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                And Aviso_Cirurgia.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                And Cav.cd_aviso_cirurgia = Aviso_Cirurgia.cd_aviso_cirurgia

                GROUP BY Cav.cd_aviso_cirurgia

                HAVING Count(1) > 1)
            And Cirurgia_Aviso.Sn_Principal = "S"
            And Aviso_Cirurgia.Tp_Situacao = "R" --Qtde_Realizada
            And Aviso_Cirurgia.Dt_Realizacao Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
            AND To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
            And Nvl(Aviso_Cirurgia.Dt_Fim_Cirurgia,Aviso_Cirurgia.Dt_Inicio_Cirurgia)
            IS Not Null
                And Aviso_Cirurgia.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                ) Mov
            ) Mov

        GROUP BY Mov.Cd_Multi_Empresa
        , Mov.Data_Mes
        , Mov.Dt_realizacao
        ) Mov
    ) Movimento
, MvccAdmin.Estabelecimento

WHERE Estabelecimento.Cd_Multi_Empresa = '||pCdMultiEmpresa||'

GROUP BY Estabelecimento.Cd_Mvcc_Empresa
, Nvl(Movimento.data_mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY"))
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
-- Exemplo de bloco de execução: Processo 1639
---------------------------------------------------------------------------


IF v_Processo = 1639
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01639(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01639 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01639%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01639;
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
-- Exemplo de bloco de execução: Processo 1641
---------------------------------------------------------------------------


IF v_Processo = 1641
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01641(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01641 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01641%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01641;
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
-- Exemplo de bloco de execução: Processo 1642
---------------------------------------------------------------------------


IF v_Processo = 1642
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01642(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01642 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01642%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01642;
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
-- Exemplo de bloco de execução: Processo 1643
---------------------------------------------------------------------------


IF v_Processo = 1643
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01643(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01643 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01643%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01643;
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
-- Exemplo de bloco de execução: Processo 1644
---------------------------------------------------------------------------


IF v_Processo = 1644
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01644(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01644 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01644%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01644;
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
-- Exemplo de bloco de execução: Processo 1647
---------------------------------------------------------------------------


IF v_Processo = 1647
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01647(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01647 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01647%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01647;
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
-- Exemplo de bloco de execução: Processo 1649
---------------------------------------------------------------------------


IF v_Processo = 1649
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01649(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01649 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01649%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01649;
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
-- Exemplo de bloco de execução: Processo 1650
---------------------------------------------------------------------------


IF v_Processo = 1650
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01650(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01650 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01650%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01650;
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
-- Exemplo de bloco de execução: Processo 1651
---------------------------------------------------------------------------


IF v_Processo = 1651
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01651(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01651 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01651%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01651;
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
-- Exemplo de bloco de execução: Processo 1652
---------------------------------------------------------------------------


IF v_Processo = 1652
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01652(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01652 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01652%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01652;
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
-- Exemplo de bloco de execução: Processo 1653
---------------------------------------------------------------------------


IF v_Processo = 1653
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01653(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01653 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01653%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01653;
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
-- Exemplo de bloco de execução: Processo 1654
---------------------------------------------------------------------------


IF v_Processo = 1654
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01654(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01654 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01654%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01654;
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
-- Exemplo de bloco de execução: Processo 1655
---------------------------------------------------------------------------


IF v_Processo = 1655
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01655(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01655 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01655%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01655;
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
-- Exemplo de bloco de execução: Processo 1656
---------------------------------------------------------------------------


IF v_Processo = 1656
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01656(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01656 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01656%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01656;
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
-- Exemplo de bloco de execução: Processo 1657
---------------------------------------------------------------------------


IF v_Processo = 1657
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01657(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01657 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01657%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01657;
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
-- Exemplo de bloco de execução: Processo 1658
---------------------------------------------------------------------------


IF v_Processo = 1658
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01658(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01658 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01658%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01658;
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
-- Exemplo de bloco de execução: Processo 1659
---------------------------------------------------------------------------


IF v_Processo = 1659
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01659(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01659 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01659%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01659;
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
-- Exemplo de bloco de execução: Processo 1660
---------------------------------------------------------------------------


IF v_Processo = 1660
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01660(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01660 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01660%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01660;
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
-- Exemplo de bloco de execução: Processo 1661
---------------------------------------------------------------------------


IF v_Processo = 1661
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01661(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01661 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01661%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01661;
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
-- Exemplo de bloco de execução: Processo 1662
---------------------------------------------------------------------------


IF v_Processo = 1662
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01662(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01662 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01662%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01662;
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
-- Exemplo de bloco de execução: Processo 1663
---------------------------------------------------------------------------


IF v_Processo = 1663
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01663(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01663 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01663%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01663;
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
-- Exemplo de bloco de execução: Processo 1669
---------------------------------------------------------------------------


IF v_Processo = 1669
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01669(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01669 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01669%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01669;
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
-- Exemplo de bloco de execução: Processo 1670
---------------------------------------------------------------------------


IF v_Processo = 1670
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01670(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01670 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01670%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01670;
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
-- Exemplo de bloco de execução: Processo 1671
---------------------------------------------------------------------------


IF v_Processo = 1671
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01671(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01671 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01671%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01671;
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
-- Exemplo de bloco de execução: Processo 1672
---------------------------------------------------------------------------


IF v_Processo = 1672
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01672(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01672 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01672%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01672;
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
-- Exemplo de bloco de execução: Processo 1673
---------------------------------------------------------------------------


IF v_Processo = 1673
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01673(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01673 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01673%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01673;
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
-- Exemplo de bloco de execução: Processo 1674
---------------------------------------------------------------------------


IF v_Processo = 1674
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01674(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01674 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01674%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01674;
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
--##################################---
--*FIM DO PROCESSAMENTO DOS EVENTOS*---
--##################################---

END
LOOP;

END;
