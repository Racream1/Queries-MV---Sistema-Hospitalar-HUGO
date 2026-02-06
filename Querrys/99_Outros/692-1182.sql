---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 692
---------------------------------------------------------------------------


IF v_Processo = 692
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00692(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00692 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00692%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00692;
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
-- Exemplo de bloco de execução: Processo 693
---------------------------------------------------------------------------


IF v_Processo = 693
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00693(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00693 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00693%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00693;
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
-- Exemplo de bloco de execução: Processo 694
---------------------------------------------------------------------------


IF v_Processo = 694
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00694(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00694 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00694%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00694;
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
-- Exemplo de bloco de execução: Processo 695
---------------------------------------------------------------------------


IF v_Processo = 695
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00695(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00695 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00695%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00695;
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
-- Exemplo de bloco de execução: Processo 696
---------------------------------------------------------------------------


IF v_Processo = 696
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00696(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00696 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00696%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00696;
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
-- Exemplo de bloco de execução: Processo 697
---------------------------------------------------------------------------


IF v_Processo = 697
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00697(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00697 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00697%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00697;
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
-- Exemplo de bloco de execução: Processo 699
---------------------------------------------------------------------------


IF v_Processo = 699
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00699(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00699 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00699%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00699;
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
-- Exemplo de bloco de execução: Processo 700
---------------------------------------------------------------------------


IF v_Processo = 700
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00700(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00700 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00700%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00700;
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
-- Exemplo de bloco de execução: Processo 701
---------------------------------------------------------------------------


IF v_Processo = 701
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00701(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00701 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00701%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00701;
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
-- Exemplo de bloco de execução: Processo 703
---------------------------------------------------------------------------


IF v_Processo = 703
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00703(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00703 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00703%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00703;
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
-- Exemplo de bloco de execução: Processo 704
---------------------------------------------------------------------------


IF v_Processo = 704
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00704(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00704 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00704%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00704;
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
-- Exemplo de bloco de execução: Processo 705
---------------------------------------------------------------------------


IF v_Processo = 705
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00705(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00705 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00705%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00705;
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
-- Exemplo de bloco de execução: Processo 710
---------------------------------------------------------------------------


IF v_Processo = 710
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00710(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00710 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00710%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00710;
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
-- Exemplo de bloco de execução: Processo 713
---------------------------------------------------------------------------


IF v_Processo = 713
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00713(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00713 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00713%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00713;
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
-- Exemplo de bloco de execução: Processo 714
---------------------------------------------------------------------------


IF v_Processo = 714
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00714(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00714 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00714%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00714;
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
-- Exemplo de bloco de execução: Processo 715
---------------------------------------------------------------------------


IF v_Processo = 715
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00715(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00715 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00715%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00715;
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
-- Exemplo de bloco de execução: Processo 716
---------------------------------------------------------------------------


IF v_Processo = 716
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00716(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00716 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00716%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00716;
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
-- Exemplo de bloco de execução: Processo 717
---------------------------------------------------------------------------


IF v_Processo = 717
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00717(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00717 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00717%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00717;
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
-- Exemplo de bloco de execução: Processo 718
---------------------------------------------------------------------------


IF v_Processo = 718
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00718(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00718 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00718%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00718;
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
-- Exemplo de bloco de execução: Processo 719
---------------------------------------------------------------------------


IF v_Processo = 719
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00719(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00719 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00719%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00719;
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
-- Exemplo de bloco de execução: Processo 720
---------------------------------------------------------------------------


IF v_Processo = 720
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00720(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00720 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00720%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00720;
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
-- Exemplo de bloco de execução: Processo 721
---------------------------------------------------------------------------


IF v_Processo = 721
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00721(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00721 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00721%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00721;
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
-- Exemplo de bloco de execução: Processo 722
---------------------------------------------------------------------------


IF v_Processo = 722
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00722(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00722 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00722%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00722;
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
-- Exemplo de bloco de execução: Processo 723
---------------------------------------------------------------------------


IF v_Processo = 723
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00723(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00723 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00723%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00723;
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
-- Exemplo de bloco de execução: Processo 724
---------------------------------------------------------------------------


IF v_Processo = 724
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00724(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00724 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00724%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00724;
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
-- Exemplo de bloco de execução: Processo 725
---------------------------------------------------------------------------


IF v_Processo = 725
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00725(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00725 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00725%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00725;
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
-- Exemplo de bloco de execução: Processo 726
---------------------------------------------------------------------------


IF v_Processo = 726
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00726(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00726 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00726%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00726;
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
-- Exemplo de bloco de execução: Processo 727
---------------------------------------------------------------------------


IF v_Processo = 727
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00727(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00727 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00727%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00727;
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
-- Exemplo de bloco de execução: Processo 728
---------------------------------------------------------------------------


IF v_Processo = 728
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00728(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00728 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00728%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00728;
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
-- Exemplo de bloco de execução: Processo 729
---------------------------------------------------------------------------


IF v_Processo = 729
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00729(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00729 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00729%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00729;
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
-- Exemplo de bloco de execução: Processo 730
---------------------------------------------------------------------------


IF v_Processo = 730
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00730(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00730 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00730%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00730;
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
-- Exemplo de bloco de execução: Processo 731
---------------------------------------------------------------------------


IF v_Processo = 731
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00731(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00731 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00731%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00731;
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
-- Exemplo de bloco de execução: Processo 734
---------------------------------------------------------------------------


IF v_Processo = 734
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00734(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00734 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00734%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00734;
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
-- Exemplo de bloco de execução: Processo 735
---------------------------------------------------------------------------


IF v_Processo = 735
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00735(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00735 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00735%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00735;
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
-- Exemplo de bloco de execução: Processo 736
---------------------------------------------------------------------------


IF v_Processo = 736
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00736(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00736 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00736%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00736;
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
-- Exemplo de bloco de execução: Processo 737
---------------------------------------------------------------------------


IF v_Processo = 737
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00737(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00737 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00737%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00737;
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
-- Exemplo de bloco de execução: Processo 738
---------------------------------------------------------------------------


IF v_Processo = 738
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00738(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00738 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00738%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00738;
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
-- Exemplo de bloco de execução: Processo 739
---------------------------------------------------------------------------


IF v_Processo = 739
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00739(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00739 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00739%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00739;
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
-- Exemplo de bloco de execução: Processo 740
---------------------------------------------------------------------------


IF v_Processo = 740
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00740(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00740 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00740%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00740;
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
-- Exemplo de bloco de execução: Processo 743
---------------------------------------------------------------------------


IF v_Processo = 743
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00743(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00743 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00743%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00743;
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
-- Exemplo de bloco de execução: Processo 744
---------------------------------------------------------------------------


IF v_Processo = 744
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00744(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00744 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00744%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00744;
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
--Processo cProcesso_00746 atualizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 746
---------------------------------------------------------------------------


IF v_Processo = 746
THEN --OR pNrProcesso = 0
    THEN
        v_Sql_Cursor := Null;

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN
            vCountDel := 0;
            For Vvmat In (
                SELECT Rowid Cd_Linha
                FROM MvccAdmin.Diag_Processo_Carga_Analitico
                WHERE To_Date(Data_Mes,'MM/YYYY') Between V_Dt_Ini_Diagno And V_Dt_Fim_Diagno And Nr_Processo = V_Processo And Cd_Multi_Empresa In Nvl(vEmpresa.Cd_Multi_Empresa,0))
            LOOP

                DELETE
                FROM MvccAdmin.Diag_Processo_Carga_Analitico
                WHERE Rowid = Vvmat.Cd_Linha;
                vCountDel := vCountDel + 1;

                IF vCountDel = 3000
                THEN

                    COMMIT;
                    vCountDel := 0;

                END
            IF;

            COMMIT;

        END
    LOOP;

        BEGIN
            v_Sql_Cursor := '
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
            , "VALOR TOTAL À RECEBER VS RECEITA DO MÊS" Ds_Departamento
            , Nvl(Movimento.Data_Mes,To_Char(To_Date("'||v_Dt_Ini_Diagno||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY")) Data_Mes
            , Null Nm_Processo
            , "RESULTADO: "||Avg(Nvl(Movimento.Vl_Fracao_Razao_Proj,0))||" ("||Avg(Nvl(Movimento.Vl_Perc_Fracao_Razao_Proj,0))||"%) "||Chr(10)||
            ", VALOR TOTAL À RECEBER: R$ "||Nvl(Ltrim(To_Char((Nvl(Sum(Movimento.Vl_A_Receber),0)-Nvl(Sum(Movimento.Vl_Saldo_A_Conciliar),0)),"999G999G999G999D99")),"0,00")||Chr(10)||
            ", VALOR DA RECEITA MÉDIA: R$ "||Nvl(Ltrim(To_Char(Nvl(Sum(Movimento.Vl_Produzido_Medio),0),"999G999G999G999D99")),"0,00")||" (Média Mensal) "||Chr(10)||
            ", VALOR DA RECEITA DO MÊS: R$ "||Nvl(Ltrim(To_Char(Nvl(Sum(Movimento.Vl_Produzido_Mes_Atual),0),"999G999G999G999D99")),"0,00")||" (Mês Corrente) "||Chr(10)||
            ", VALOR DA RECEITA DO MÊS (PROJETADA): R$ "||Nvl(Ltrim(To_Char(Nvl(Sum(Movimento.Vl_Produzido_Mes_Atual_Proj),0),"999G999G999G999D99")),"0,00")||" (Mês Corrente) "||Chr(10)||
            ". CONSIDERE TAMBÉM: "||Chr(10)||
            ", VALOR DA A VENCER: R$ "||Nvl(Ltrim(To_Char(Nvl(Sum(Movimento.Vl_A_Vencer),0),"999G999G999G999D99")),"0,00")||Chr(10)||
            ", VALOR DA VENCIDAS: R$ "||Nvl(Ltrim(To_Char(Nvl(Sum(Movimento.Vl_Vencidas),0),"999G999G999G999D99")),"0,00")||Chr(10)||
            ", VALOR DA VENCIDAS (30 DIAS): R$ "||Nvl(Ltrim(To_Char(Nvl(Sum(Movimento.Vl_Vencidas_30),0),"999G999G999G999D99")),"0,00")||Chr(10)||
            ", VALOR DA VENCIDAS (60 DIAS): R$ "||Nvl(Ltrim(To_Char(Nvl(Sum(Movimento.Vl_Vencidas_60),0),"999G999G999G999D99")),"0,00")||Chr(10)||
            ", VALOR DA VENCIDAS (90 DIAS): R$ "||Nvl(Ltrim(To_Char(Nvl(Sum(Movimento.Vl_Vencidas_90),0),"999G999G999G999D99")),"0,00")||Chr(10)||
            ", VALOR DA VENCIDAS (180 DIAS): R$ "||Nvl(Ltrim(To_Char(Nvl(Sum(Movimento.Vl_Vencidas_180),0),"999G999G999G999D99")),"0,00")||Chr(10)||
            ", VALOR DA VENCIDAS (360 DIAS): R$ "||Nvl(Ltrim(To_Char(Nvl(Sum(Movimento.Vl_Vencidas_360),0),"999G999G999G999D99")),"0,00")||Chr(10)||
            ", VALOR DA VENCIDAS (>360 DIAS): R$ "||Nvl(Ltrim(To_Char(Nvl(Sum(Movimento.Vl_Vencidas_360_Mais),0),"999G999G999G999D99")),"0,00")||Chr(10)||
            ", VALOR SALDO A CONCILIAR: R$ "||Nvl(Ltrim(To_Char(Nvl(Sum(Movimento.Vl_Saldo_A_Conciliar),0),"999G999G999G999D99")),"0,00") Ds_Item_Nao_Conforme
            , '||vEmpresa.Cd_Cliente||' Cd_Cliente
            , Estabelecimento.Nr_Cnpj
            , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dh_Geracao
            , Null Qtde_Naoconforme
            , Null Qtde_Instalada
            , "PROCESSO" Nm_Tabela_Chave
            , '||v_Processo||' Cd_Coluna_Chave
            , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dt_Coluna_Chave
            , Null Dh_Proxima_Geracao
            , Avg(Nvl(Movimento.Vl_Fracao_Razao,0)) Qtde_Conforme
            , Null Qtde_Total, Null Dt_Finalizacao, Null Qtde_NaoConforme_Dia, Avg(Nvl(Movimento.Vl_Fracao_Razao,0)) Qtde_Conforme_Dia, Null Qtde_Total_Dia, 1 Nr_Notificacao

            FROM (---MOVIMENTOS---

                SELECT To_Char(To_Date("'||v_Dt_Ini_Diagno||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY") Data_Mes
                , Nvl(Mov.Vl_A_Receber,0) Vl_A_Receber
                , (Nvl(Mov.Vl_A_Receber,0)-Nvl(Mov.Vl_Saldo_A_Conciliar,0))-Nvl(Mov.Vl_Vencidas,0) Vl_A_Vencer
                , Nvl(Mov.Vl_Vencidas,0) Vl_Vencidas
                , Nvl(Mov.Vl_Vencidas_30,0) Vl_Vencidas_30
                , Nvl(Mov.Vl_Vencidas_60,0) Vl_Vencidas_60
                , Nvl(Mov.Vl_Vencidas_90,0) Vl_Vencidas_90
                , Nvl(Mov.Vl_Vencidas_180,0) Vl_Vencidas_180
                , Nvl(Mov.Vl_Vencidas_360,0) Vl_Vencidas_360
                , Nvl(Mov.Vl_Vencidas_360_mais,0) Vl_Vencidas_360_mais
                , Nvl(Mov.Vl_Saldo_A_Conciliar,0) Vl_Saldo_A_Conciliar
                , Nvl(Mov.Vl_Produzido_Medio,0) Vl_Produzido_Medio
                , Nvl(Mov.Vl_Produzido_Mes_Atual,0) Vl_Produzido_Mes_Atual
                , Nvl(Mov.Vl_Produzido_Mes_Atual_Proj,0) Vl_Produzido_Mes_Atual_Proj
                , Case
                WHEN Nvl(Mov.Vl_Produzido_Medio,0) = 0
                THEN 0
                ELSE Trunc((Nvl(Mov.Vl_A_Receber,0)-Nvl(Mov.Vl_Saldo_A_Conciliar,0))/Nvl(Mov.Vl_Produzido_Medio,0),2)
            END Vl_Fracao_Razao
            , Case
            WHEN Nvl(Mov.Vl_Produzido_Medio,0) = 0
            THEN 0
            ELSE Trunc((Nvl(Mov.Vl_A_Receber,0)-Nvl(Mov.Vl_Saldo_A_Conciliar,0))/Nvl(Mov.Vl_Produzido_Medio,0)*100,2)
        END Vl_Perc_Fracao_Razao
        , Case
        WHEN Nvl(Mov.Vl_Produzido_Mes_Atual_Proj,0) = 0
        THEN 0
        ELSE Trunc((Nvl(Mov.Vl_A_Receber,0)-Nvl(Mov.Vl_Saldo_A_Conciliar,0))/Nvl(Mov.Vl_Produzido_Mes_Atual_Proj,0),2)
    END Vl_Fracao_Razao_Proj
    , Case
    WHEN Nvl(Mov.Vl_Produzido_Mes_Atual_Proj,0) = 0
    THEN 0
    ELSE Trunc((Nvl(Mov.Vl_A_Receber,0)-Nvl(Mov.Vl_Saldo_A_Conciliar,0))/Nvl(Mov.Vl_Produzido_Mes_Atual_Proj,0)*100,2)
END Vl_Perc_Fracao_Razao_Proj

FROM (
    SELECT Nvl(Sum(Mov.Vl_A_Receber),0)-Nvl(Sum(Mov.Vl_Saldo_A_Conciliar),0) Vl_A_Receber
    , Nvl(Sum(Mov.Vl_Vencidas),0) Vl_Vencidas
    , Nvl(Sum(Mov.Vl_Vencidas_30),0) Vl_Vencidas_30
    , Nvl(Sum(Mov.Vl_Vencidas_60),0) Vl_Vencidas_60
    , Nvl(Sum(Mov.Vl_Vencidas_90),0) Vl_Vencidas_90
    , Nvl(Sum(Mov.Vl_Vencidas_180),0) Vl_Vencidas_180
    , Nvl(Sum(Mov.Vl_Vencidas_360),0) Vl_Vencidas_360
    , Nvl(Sum(Mov.Vl_Vencidas_360_mais),0) Vl_Vencidas_360_mais
    , Nvl(Sum(Mov.Vl_Saldo_A_Conciliar),0) Vl_Saldo_A_Conciliar
    , Nvl(Sum(Mov.Vl_Produzido_Medio),0) Vl_Produzido_Medio
    , Nvl(Sum(Mov.Vl_Produzido_Mes_Atual),0) Vl_Produzido_Mes_Atual
    , MvccAdmin.Fnc_Valor_Perspectiva_Mensal(Sum(Mov.Vl_Produzido_Mes_Atual),To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")) Vl_Produzido_Mes_Atual_Proj

    FROM (
        SELECT ---VALOR TOTAL A RECEBER---
        Nvl((
                SELECT Sum(Dme.Vl_A_Receber)

                FROM MvccAdmin.Fato_Valor_Economico Dme

                WHERE Dme.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                ),0) Vl_A_Receber
        ---VALOR SALDO A CONCILIAR---
        , Nvl((
                SELECT Sum(Vl_Saldo_A_Conciliar)

                FROM MvccAdmin.Fato_Valor_Economico Dme

                WHERE Dme.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                ),0) Vl_Saldo_A_Conciliar
        ---VALOR VENCIDAS---
        , Nvl((
                SELECT Sum(Dme.Vl_A_Receber_Vencidas)

                FROM MvccAdmin.Fato_Valor_Economico Dme

                WHERE Dme.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                ),0) Vl_Vencidas
        ---VALOR VENCIDAS 30---
        , Nvl((
                SELECT Sum(Dme.Vl_A_Receber_Vencidas)

                FROM MvccAdmin.Fato_Valor_Economico Dme

                WHERE Dme.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                And Trunc(Sysdate)-Dme.Dt_Mes Between 0 And 30 --Vencidas
                ),0) Vl_Vencidas_30
        ---VALOR VENCIDAS 60---
        , Nvl((
                SELECT Sum(Dme.Vl_A_Receber_Vencidas)

                FROM MvccAdmin.Fato_Valor_Economico Dme

                WHERE Dme.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                And Trunc(Sysdate)-Dme.Dt_Mes Between 31 And 60 --Vencidas
                ),0) Vl_Vencidas_60
        ---VALOR VENCIDAS 90---
        , Nvl((
                SELECT Sum(Dme.Vl_A_Receber_Vencidas)

                FROM MvccAdmin.Fato_Valor_Economico Dme

                WHERE Dme.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                And Trunc(Sysdate)-Dme.Dt_Mes Between 61 And 90 --Vencidas
                ),0) Vl_Vencidas_90
        ---VALOR VENCIDAS 180---
        , Nvl((
                SELECT Sum(Dme.Vl_A_Receber_Vencidas)

                FROM MvccAdmin.Fato_Valor_Economico Dme

                WHERE Dme.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                And Trunc(Sysdate)-Dme.Dt_Mes Between 91 And 180 --Vencidas
                ),0) Vl_Vencidas_180
        ---VALOR VENCIDAS 360---
        , Nvl((
                SELECT Sum(Dme.Vl_A_Receber_Vencidas)

                FROM MvccAdmin.Fato_Valor_Economico Dme

                WHERE Dme.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                And Trunc(Sysdate)-Dme.Dt_Mes Between 181 And 360 --Vencidas
                ),0) Vl_Vencidas_360
        ---VALOR VENCIDAS 360 MAIS---
        , Nvl((
                SELECT Sum(Dme.Vl_A_Receber_Vencidas)

                FROM MvccAdmin.Fato_Valor_Economico Dme

                WHERE Dme.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                And Trunc(Sysdate)-Dme.Dt_Mes >= 361 --Vencidas
                ),0) Vl_Vencidas_360_Mais
        ---VALOR TOTAL PRODUZIDO MEDIA ANO ATUAL---
        , Nvl((
                SELECT Trunc(Avg(Dme.Valor),2)

                FROM (
                    SELECT Dme.Dt_Mes
                    , Sum(Nvl(Dme.Vl_Pro_Total_Convenio_Interno,0))+Sum(Nvl(Dme.Vl_Pro_Total_Convenio_Externo,0))
                    + Sum(Nvl(Dme.Vl_Pro_Total_SUS_Interno,0))+Sum(Nvl(Dme.Vl_Pro_Total_SUS_Externo,0))
                    + Sum(Nvl(Dme.vl_outras_receitas,0)) Valor

                    FROM MvccAdmin.Fato_Valor_Economico Dme

                    WHERE Dme.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                    And Dme.Dt_Mes >= To_Date(To_Char(Add_Months(To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),-12),"MM/YYYY"),"MM/YYYY")

                    GROUP BY Dme.Dt_Mes
                    ) Dme
                ),0) Vl_Produzido_Medio
        ---VALOR TOTAL PRODUZIDO MES/ANO CORRENTE---
        , Nvl((
                SELECT Trunc(Avg(Dme.Valor),2)

                FROM (
                    SELECT Dme.Dt_Mes
                    , Sum(Nvl(Dme.Vl_Pro_Total_Convenio_Interno,0))+Sum(Nvl(Dme.Vl_Pro_Total_Convenio_Externo,0))
                    + Sum(Nvl(Dme.Vl_Pro_Total_SUS_Interno,0))+Sum(Nvl(Dme.Vl_Pro_Total_SUS_Externo,0))
                    + Sum(Nvl(Dme.vl_outras_receitas,0)) Valor

                    FROM MvccAdmin.Fato_Valor_Economico Dme

                    WHERE Dme.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                    And Dme.Dt_Mes Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                    And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")

                    GROUP BY Dme.Dt_Mes
                    ) Dme
                ),0) Vl_Produzido_Mes_Atual

        FROM Dual
        ) Mov
    ) Mov
) Movimento
, MvccAdmin.Estabelecimento

WHERE Estabelecimento.Cd_Multi_Empresa = '||pCdMultiEmpresa||'

GROUP BY Estabelecimento.Cd_Mvcc_Empresa
, Nvl(Movimento.Data_Mes,To_Char(To_Date("'||v_Dt_Ini_Diagno||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY"))
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
-- Exemplo de bloco de execução: Processo 747
---------------------------------------------------------------------------


IF v_Processo = 747
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00747(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00747 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00747%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00747;
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
-- Exemplo de bloco de execução: Processo 748
---------------------------------------------------------------------------


IF v_Processo = 748
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00748(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00748 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00748%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00748;
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
-- Exemplo de bloco de execução: Processo 749
---------------------------------------------------------------------------


IF v_Processo = 749
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00749(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00749 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00749%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00749;
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
-- Exemplo de bloco de execução: Processo 750
---------------------------------------------------------------------------


IF v_Processo = 750
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00750(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00750 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00750%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00750;
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
-- Exemplo de bloco de execução: Processo 751
---------------------------------------------------------------------------


IF v_Processo = 751
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00751(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00751 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00751%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00751;
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
-- Exemplo de bloco de execução: Processo 752
---------------------------------------------------------------------------


IF v_Processo = 752
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00752(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00752 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00752%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00752;
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
-- Exemplo de bloco de execução: Processo 753
---------------------------------------------------------------------------


IF v_Processo = 753
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00753(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00753 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00753%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00753;
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
-- Exemplo de bloco de execução: Processo 754
---------------------------------------------------------------------------


IF v_Processo = 754
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00754(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00754 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00754%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00754;
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
-- Exemplo de bloco de execução: Processo 755
---------------------------------------------------------------------------


IF v_Processo = 755
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00755(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00755 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00755%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00755;
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
-- Exemplo de bloco de execução: Processo 756
---------------------------------------------------------------------------


IF v_Processo = 756
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00756(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00756 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00756%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00756;
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
-- Exemplo de bloco de execução: Processo 757
---------------------------------------------------------------------------


IF v_Processo = 757
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00757(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00757 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00757%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00757;
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
-- Exemplo de bloco de execução: Processo 758
---------------------------------------------------------------------------


IF v_Processo = 758
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00758(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00758 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00758%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00758;
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
-- Exemplo de bloco de execução: Processo 759
---------------------------------------------------------------------------


IF v_Processo = 759
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00759(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00759 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00759%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00759;
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
-- Exemplo de bloco de execução: Processo 760
---------------------------------------------------------------------------


IF v_Processo = 760
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00760(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00760 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00760%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00760;
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
-- Exemplo de bloco de execução: Processo 761
---------------------------------------------------------------------------


IF v_Processo = 761
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00761(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00761 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00761%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00761;
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
-- Exemplo de bloco de execução: Processo 763
---------------------------------------------------------------------------


IF v_Processo = 763
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00763(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00763 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00763%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00763;
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
-- Exemplo de bloco de execução: Processo 764
---------------------------------------------------------------------------


IF v_Processo = 764
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00764(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00764 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00764%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00764;
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
-- Exemplo de bloco de execução: Processo 767
---------------------------------------------------------------------------


IF v_Processo = 767
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00767(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00767 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00767%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00767;
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
-- Exemplo de bloco de execução: Processo 768
---------------------------------------------------------------------------


IF v_Processo = 768
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00768(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00768 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00768%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00768;
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
-- Exemplo de bloco de execução: Processo 769
---------------------------------------------------------------------------


IF v_Processo = 769
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00769(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00769 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00769%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00769;
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
-- Exemplo de bloco de execução: Processo 770
---------------------------------------------------------------------------


IF v_Processo = 770
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00770(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00770 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00770%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00770;
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
-- Exemplo de bloco de execução: Processo 771
---------------------------------------------------------------------------


IF v_Processo = 771
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00771(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00771 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00771%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00771;
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
-- Exemplo de bloco de execução: Processo 772
---------------------------------------------------------------------------


IF v_Processo = 772
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00772(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00772 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00772%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00772;
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
-- Exemplo de bloco de execução: Processo 773
---------------------------------------------------------------------------


IF v_Processo = 773
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00773(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00773 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00773%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00773;
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
-- Exemplo de bloco de execução: Processo 774
---------------------------------------------------------------------------


IF v_Processo = 774
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00774(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00774 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00774%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00774;
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
-- Exemplo de bloco de execução: Processo 775
---------------------------------------------------------------------------


IF v_Processo = 775
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00775(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00775 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00775%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00775;
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
-- Exemplo de bloco de execução: Processo 776
---------------------------------------------------------------------------


IF v_Processo = 776
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00776(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00776 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00776%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00776;
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
-- Exemplo de bloco de execução: Processo 777
---------------------------------------------------------------------------


IF v_Processo = 777
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00777(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00777 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00777%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00777;
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
-- Exemplo de bloco de execução: Processo 778
---------------------------------------------------------------------------


IF v_Processo = 778
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00778(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00778 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00778%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00778;
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
-- Exemplo de bloco de execução: Processo 779
---------------------------------------------------------------------------


IF v_Processo = 779
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00779(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00779 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00779%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00779;
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
-- Exemplo de bloco de execução: Processo 785
---------------------------------------------------------------------------


IF v_Processo = 785
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00785(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00785 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00785%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00785;
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
-- Exemplo de bloco de execução: Processo 787
---------------------------------------------------------------------------


IF v_Processo = 787
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00787(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00787 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00787%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00787;
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
-- Exemplo de bloco de execução: Processo 788
---------------------------------------------------------------------------


IF v_Processo = 788
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00788(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00788 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00788%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00788;
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
-- Exemplo de bloco de execução: Processo 803
---------------------------------------------------------------------------


IF v_Processo = 803
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00803(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00803 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00803%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00803;
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
-- Exemplo de bloco de execução: Processo 804
---------------------------------------------------------------------------


IF v_Processo = 804
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00804(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00804 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00804%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00804;
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
-- Exemplo de bloco de execução: Processo 804
---------------------------------------------------------------------------


IF v_Processo = 804
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00804(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00804 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00804%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00804;
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
-- Exemplo de bloco de execução: Processo 805
---------------------------------------------------------------------------


IF v_Processo = 805
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00805(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00805 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00805%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00805;
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
-- Exemplo de bloco de execução: Processo 806
---------------------------------------------------------------------------


IF v_Processo = 806
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00806(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00806 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00806%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00806;
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
-- Exemplo de bloco de execução: Processo 807
---------------------------------------------------------------------------


IF v_Processo = 807
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00807(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00807 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00807%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00807;
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
-- Exemplo de bloco de execução: Processo 808
---------------------------------------------------------------------------


IF v_Processo = 808
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00808(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00808 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00808%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00808;
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
-- Exemplo de bloco de execução: Processo 809
---------------------------------------------------------------------------


IF v_Processo = 809
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00809(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00809 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00809%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00809;
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
-- Exemplo de bloco de execução: Processo 810
---------------------------------------------------------------------------


IF v_Processo = 810
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00810(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00810 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00810%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00810;
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
-- Exemplo de bloco de execução: Processo 811
---------------------------------------------------------------------------


IF v_Processo = 811
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00811(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00811 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00811%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00811;
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
-- Exemplo de bloco de execução: Processo 812
---------------------------------------------------------------------------


IF v_Processo = 812
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00812(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00812 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00812%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00812;
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
-- Exemplo de bloco de execução: Processo 813
---------------------------------------------------------------------------


IF v_Processo = 813
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00813(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00813 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00813%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00813;
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
-- Exemplo de bloco de execução: Processo 814
---------------------------------------------------------------------------


IF v_Processo = 814
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00814(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00814 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00814%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00814;
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
-- Exemplo de bloco de execução: Processo 815
---------------------------------------------------------------------------


IF v_Processo = 815
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00815(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00815 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00815%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00815;
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
-- Exemplo de bloco de execução: Processo 816
---------------------------------------------------------------------------


IF v_Processo = 816
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00816(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00816 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00816%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00816;
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
-- Exemplo de bloco de execução: Processo 817
---------------------------------------------------------------------------


IF v_Processo = 817
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00817(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00817 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00817%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00817;
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
-- Exemplo de bloco de execução: Processo 818
---------------------------------------------------------------------------


IF v_Processo = 818
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00818(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00818 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00818%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00818;
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
-- Exemplo de bloco de execução: Processo 819
---------------------------------------------------------------------------


IF v_Processo = 819
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00819(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00819 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00819%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00819;
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
--Processo cProcesso_00830 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 830
---------------------------------------------------------------------------


IF v_Processo = 830
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
                , Null Cd_Atendimento
                , Null Cd_paciente
                , Null Cd_prestador
                , Null Tp_Diagnostico
                , Null Nm_Indicador
                , Null Nm_Grupo
                , Estabelecimento.Cd_Mvcc_Empresa Cd_Multi_Empresa
                , Estoque.Cd_Estoque Cd_Departamento
                , Estoque.Ds_Estoque Ds_Departamento
                , Nvl(Movimento.Data_Mes,To_Char(To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY")) Data_Mes
                , Null Nm_Processo
                , Estoque.Ds_Estoque||", QTDE DE ITENS CONTADOS: "||Movimento.Qtde_Total||Chr(10)
                ||", QTDE DE ITENS CONVERGENTES: "||Movimento.Qtde_Conforme||Chr(10)
                ||", QTDE DE ITENS DIVERGENTES: "||Movimento.Qtde_NaoConforme||Chr(10)
                ||", TAXA DE ACURACIDADE DO ESTOQUE: "||Movimento.Vl_Taxa_Acuracidade||"%" Ds_Item_Nao_Conforme
                , '||vEmpresa.Cd_Cliente||' Cd_Cliente
                , Estabelecimento.Nr_Cnpj
                , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dh_Geracao
                , Null Qtde_Naoconforme
                , Movimento.Qtde_Total Qtde_Instalada
                , "CONTAGEM" Nm_Tabela_Chave
                , '||v_Processo||' Cd_Coluna_Chave
                , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dt_Coluna_Chave
                , Null Dh_Proxima_Geracao
                , Movimento.Vl_Taxa_Acuracidade Qtde_Conforme
                , Null Qtde_Total, Null Dt_Finalizacao, Null Qtde_NaoConforme_Dia, Movimento.Vl_Taxa_Acuracidade Qtde_Conforme_Dia, Null Qtde_Total_Dia, 1 Nr_Notificacao

                FROM (---MOVIMENTO---

                    SELECT Mov.Cd_Estoque
                    , To_Char(Mov.Dt_Geracao,"MM/YYYY") data_mes
                    --NÃO FOI POSSIVEL ESTABELECER VALORES DIARIOS---
                    , Sum(Mov.Qtde_Conforme) Qtde_Conforme
                    , Sum(Mov.Qtde_NaoConforme) Qtde_NaoConforme
                    , Sum(Mov.Qtde_Conforme)+Sum(Mov.Qtde_NaoConforme) Qtde_Total
                    , (Case
                        WHEN (Sum(Mov.Qtde_Conforme)+Sum(Mov.Qtde_NaoConforme)) = 0
                        THEN 0
                        ELSE (Sum(Mov.Qtde_Conforme)/(Sum(Mov.Qtde_Conforme)+Sum(Mov.Qtde_NaoConforme)))*100
                    END) Vl_Taxa_Acuracidade

                FROM (
                    SELECT Con.Cd_Estoque
                    , Con.Dt_Geracao
                    , Con.Qt_Estoque_Antes
                    , Con.Qt_Estoque
                    , (Case
                        WHEN Con.Qt_Estoque_Antes = Con.Qt_Estoque
                        THEN 1
                        ELSE 0
                    END) Qtde_Conforme
                , (Case
                    WHEN Con.Qt_Estoque_Antes = Con.Qt_Estoque
                    THEN 0
                    ELSE 1
                END) Qtde_NaoConforme

            FROM (
                SELECT Ctg.Cd_Estoque
                , Ctg.Dt_Geracao
                , ItC.Qt_Estoque
                , Nvl((
                        SELECT Cop.Qt_Estoque
                        FROM MvccAdmin.Fato_Copia_Estoque Cop

                        WHERE Ctg.cd_estoque = Cop.cd_estoque
                        And Ctg.cd_contagem = Cop.cd_contagem
                        And ItC.cd_produto = Cop.cd_produto
                        And (Case
                            WHEN Cop.Cd_Lote
                            IS Null
                                THEN "-Xz"
                                ELSE Cop.Cd_Lote
                            END) = (Case
                            WHEN Itc.Cd_Lote
                            IS Null
                                THEN "-Xz"
                                ELSE Itc.Cd_Lote
                            END)
                        And (Case
                            WHEN cop.dt_validade
                            IS Null
                                THEN Sysdate
                                ELSE cop.dt_validade
                            END) = (Case
                            WHEN itc.dt_validade
                            IS Null
                                THEN Sysdate
                                ELSE itc.dt_validade
                            END)
                        And Cop.Dt_Mes Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And Cop.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                        ),0) Qt_Estoque_Antes

                FROM Dbamv.Contagem Ctg
                , Dbamv.ItContagem ItC
                , Dbamv.Estoque Est

                WHERE Ctg.Cd_Contagem = ItC.Cd_Contagem
                And Exists (
                    SELECT 1
                    FROM MvccAdmin.v_Campo_Chave Vcc
                    WHERE Vcc.Nr_Processo = '||v_Processo||'
                    And Vcc.Cd_Campo_Chave = Ctg.Cd_Motivo_Contagem_Estoque
                    And Vcc.Cd_Tipo_Campo_Chave = 103 --MOTIVO DE CONTAGEM CORRESPONDENTE A AVALIAÇÃO DE ACURACIDADE
                    And Vcc.Nr_Cnpj = '||vEmpresa.Nr_Cnpj||'
                    And (Vcc.Cd_Departamento = Ctg.Cd_Estoque Or Vcc.Cd_Departamento
                        IS Null)
                        And Vcc.Cd_Multi_Empresa = '||pCdMultiEmpresa||')
                    And Est.Cd_Estoque = Ctg.Cd_EStoque
                    And Est.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                    And Ctg.Dt_Geracao Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                    And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                    ) Con
                ) Mov

            GROUP BY Mov.Cd_Estoque
            , To_Char(Mov.Dt_Geracao,"MM/YYYY")
            ) Movimento
        , Dbamv.Estoque
        , MvccAdmin.Estabelecimento

        WHERE Estoque.Cd_Estoque = Movimento.Cd_Estoque(+)
        And Estoque.Cd_Multi_Empresa = Estabelecimento.Cd_Multi_Empresa
        AND Estabelecimento.Cd_Multi_Empresa = '||pCdMultiEmpresa;
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
--Processo cProcesso_00875 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 875
---------------------------------------------------------------------------


IF v_Processo = 875
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
                , Null Cd_prestador
                , Null Tp_Diagnostico
                , Null Nm_Indicador
                , Null Nm_Grupo
                , Estabelecimento.Cd_Mvcc_Empresa Cd_Multi_Empresa
                , Estoque.Cd_Estoque Cd_Departamento
                , Estoque.Ds_Estoque Ds_Departamento
                , Nvl(Movimento.data_mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY")) Data_Mes
                , Null Nm_Processo
                , Estoque.Ds_Estoque||", QTDE DE ITENS MOVIMENTADOS: "||Nvl(Ltrim(To_Char(Nvl(Movimento.Qtde_Movimentada,0),"999G999G999G999")),"0")||Chr(10)
                ||", QTDE DE ITENS DE PERDAS: "||Nvl(Ltrim(To_Char(Nvl(Movimento.Qtde_Baixada,0),"999G999G999G999")),"0")||Chr(10)
                ||", VALOR DAS MOVIMENTAÕES R$: "||Nvl(Ltrim(To_Char(Nvl(Movimento.Vl_Movimentado,0),"999G999G999G999D99")),"0,00")||Chr(10)
                ||", VALOR DAS PERDAS R$: "||Nvl(Ltrim(To_Char(Nvl(Movimento.Vl_Baixado,0),"999G999G999G999D99")),"0,00")||Chr(10)
                ||", TAXA DE PERDAS: "||Movimento.Vl_Taxa_Qtde_Baixada||"%"||Chr(10)
                ||", TAXA DE PERDAS (VALOR): "||Movimento.Vl_Taxa_Valor_Baixada||"%"||Chr(10)
                ||", QTDE DE ITENS MOVIMENTADOS NO DIA: "||Nvl(Ltrim(To_Char(Nvl(Movimento.Qtde_Movimentada_Dia,0),"999G999G999G999")),"0")||Chr(10)
                ||", QTDE DE ITENS DE PERDAS NO DIA: "||Nvl(Ltrim(To_Char(Nvl(Movimento.Qtde_Baixada_Dia,0),"999G999G999G999")),"0")||Chr(10)
                ||", TAXA DE PERDAS NO DIA: "||Movimento.Vl_Taxa_Qtde_Baixada||"%"
                Ds_Item_Nao_Conforme
                , '||vEmpresa.Cd_Cliente||' Cd_Cliente
                , Estabelecimento.Nr_Cnpj
                , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dh_Geracao
                , Null Qtde_Naoconforme
                , Movimento.Qtde_Movimentada Qtde_Instalada
                , "CONTAGEM" Nm_Tabela_Chave
                , '||v_Processo||' Cd_Coluna_Chave
                , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dt_Coluna_Chave
                , Null Dh_Proxima_Geracao
                , Movimento.Vl_Taxa_Qtde_Baixada Qtde_Conforme
                , Null Qtde_Total, Null Dt_Finalizacao, Null Qtde_NaoConforme_Dia, Movimento.Vl_Taxa_Qtde_Baixada_Dia Qtde_Conforme_Dia, Null Qtde_Total_Dia, 1 Nr_Notificacao

                FROM (---MOVIMENTO---

                    SELECT Mov.Cd_Estoque
                    , To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY") data_mes
                    , Trunc(Mov.Qtde_Movimentada) Qtde_Movimentada
                    , Trunc(Mov.Qtde_Baixada) Qtde_Baixada
                    , Trunc(Mov.Qtde_Movimentada_Dia) Qtde_Movimentada_Dia
                    , Trunc(Mov.Qtde_Baixada_Dia) Qtde_Baixada_Dia
                    , Mov.Vl_Movimentado
                    , Mov.Vl_Baixado
                    , (Case
                        WHEN Mov.Qtde_Movimentada = 0
                        THEN 0
                        ELSE Trunc((Mov.Qtde_Baixada/Mov.Qtde_Movimentada)*100,2)
                    END) Vl_Taxa_Qtde_Baixada
                , (Case
                    WHEN Mov.Qtde_Movimentada_Dia = 0
                    THEN 0
                    ELSE Trunc((Mov.Qtde_Baixada_Dia/Mov.Qtde_Movimentada_Dia)*100,2)
                END) Vl_Taxa_Qtde_Baixada_Dia
            , (Case
                WHEN Mov.Vl_Movimentado = 0
                THEN 0
                ELSE Trunc((Mov.Vl_Baixado/Mov.Vl_Movimentado)*100,2)
            END) Vl_Taxa_Valor_Baixada

        FROM (
            SELECT Est.Cd_Estoque
            --- QTDE DAS MOVIMENTAÇÕES ---
            , (
                SELECT Sum(ItMv.qt_movimentacao)/Max((
                        SELECT Unp.vl_fator
                        FROM Dbamv.Uni_Pro Unp
                        WHERE Unp.Tp_Relatorios = "R" And Unp.cd_uni_pro = ItMv.cd_uni_pro And Unp.cd_produto = ItMv.cd_produto))

                FROM Dbamv.Mvto_Estoque Mvto
                , Dbamv.ItMvto_Estoque ItMv

                WHERE Mvto.Cd_Mvto_Estoque = ItMv.Cd_Mvto_Estoque
                And Mvto.Cd_Estoque = Est.Cd_Estoque
                And Mvto.Tp_Mvto_Estoque In ("S","P","X")
                And Mvto.dt_mvto_estoque Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                And Mvto.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                ) Qtde_Movimentada
            --- QTDE BAIXADA ---
            , (
                SELECT Sum(ItMv.qt_movimentacao)/Max((
                        SELECT unp.vl_fator
                        FROM Dbamv.Uni_Pro Unp
                        WHERE Unp.Tp_Relatorios = "R" And Unp.cd_uni_pro = ItMv.cd_uni_pro And Unp.cd_produto = ItMv.cd_produto))

                FROM Dbamv.Mvto_Estoque Mvto
                , Dbamv.ItMvto_Estoque ItMv

                WHERE Mvto.Cd_Mvto_Estoque = ItMv.Cd_Mvto_Estoque
                And Mvto.Cd_Estoque = Est.Cd_Estoque
                And Mvto.Tp_Mvto_Estoque In ("X")
                And Mvto.dt_mvto_estoque Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                And Mvto.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                ) Qtde_Baixada
            , (
                SELECT Sum(ItMv.qt_movimentacao)/Max((
                        SELECT Unp.vl_fator
                        FROM Dbamv.Uni_Pro Unp
                        WHERE Unp.Tp_Relatorios = "R" And Unp.cd_uni_pro = ItMv.cd_uni_pro And Unp.cd_produto = ItMv.cd_produto))

                FROM Dbamv.Mvto_Estoque Mvto
                , Dbamv.ItMvto_Estoque ItMv

                WHERE Mvto.Cd_Mvto_Estoque = ItMv.Cd_Mvto_Estoque
                And Mvto.Cd_Estoque = Est.Cd_Estoque
                And Mvto.Tp_Mvto_Estoque In ("S","P","X")
                And Mvto.dt_mvto_estoque Between Trunc(Sysdate)
                And Trunc(Sysdate)+.99999
                And Mvto.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                ) Qtde_Movimentada_Dia
            --- QTDE BAIXADA ---
            , (
                SELECT Sum(ItMv.qt_movimentacao)/Max((
                        SELECT unp.vl_fator
                        FROM Dbamv.Uni_Pro Unp
                        WHERE Unp.Tp_Relatorios = "R" And Unp.cd_uni_pro = ItMv.cd_uni_pro And Unp.cd_produto = ItMv.cd_produto))

                FROM Dbamv.Mvto_Estoque Mvto
                , Dbamv.ItMvto_Estoque ItMv

                WHERE Mvto.Cd_Mvto_Estoque = ItMv.Cd_Mvto_Estoque
                And Mvto.Cd_Estoque = Est.Cd_Estoque
                And Mvto.Tp_Mvto_Estoque In ("X")
                And Mvto.dt_mvto_estoque Between Trunc(Sysdate)
                And Trunc(Sysdate)+.99999
                And Mvto.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                ) Qtde_Baixada_Dia
            --- VALOR DAS MOVIMENTAÇÕES ---
            , Trunc((
                    SELECT Sum(Mvto.Qt_Movimentacao*Dbamv.Verif_Vl_Custo_Medio(Mvto.Cd_Produto,Mvto.Dt_Mvto_Estoque,"H",Null,Mvto.Dt_Mvto_Estoque,Mvto.Cd_Multi_Empresa)) Vl_Custo_medio

                    FROM (
                        SELECT Mvto.Cd_Multi_Empresa, Mvto.Cd_Estoque, ItMv.Cd_produto, Max(Mvto.Dt_Mvto_Estoque) Dt_Mvto_Estoque, Sum(ItMv.Qt_Movimentacao) Qt_Movimentacao

                        FROM Dbamv.Mvto_Estoque Mvto, Dbamv.ItMvto_Estoque ItMv

                        WHERE Mvto.Cd_Mvto_Estoque = ItMv.Cd_Mvto_Estoque
                        And Mvto.Tp_Mvto_Estoque In ("S","P","X")
                        And Mvto.dt_mvto_estoque Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                        And Mvto.Cd_Multi_Empresa = '||pCdMultiEmpresa||'

                        GROUP BY Mvto.Cd_Multi_Empresa
                        , Mvto.Cd_Estoque
                        , ItMv.Cd_produto
                        ) Mvto

                    WHERE Mvto.Cd_Estoque = Est.Cd_Estoque
                    ),2) Vl_Movimentado
            --- VALOR DAS BAIXAS ---
            , Trunc((
                    SELECT Sum(ItMv.Qt_Movimentacao*Dbamv.Verif_Vl_Custo_Medio(ItMv.Cd_Produto,Mvto.Dt_Mvto_Estoque,"H",Null,Mvto.Dt_Mvto_Estoque,Mvto.Cd_Multi_Empresa)) Vl_Custo_medio

                    FROM Dbamv.Mvto_Estoque Mvto
                    , Dbamv.ItMvto_Estoque ItMv

                    WHERE Mvto.Cd_Mvto_Estoque = ItMv.Cd_Mvto_Estoque
                    And Mvto.Cd_Estoque = Est.Cd_Estoque
                    And Mvto.Tp_Mvto_Estoque In ("X")
                    And Mvto.dt_mvto_estoque Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                    And To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                    And Mvto.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                    ),2) Vl_Baixado

            FROM Dbamv.Estoque Est

            WHERE Est.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
            ) Mov
        ) Movimento
    , Dbamv.Estoque
    , MvccAdmin.Estabelecimento

    WHERE Estoque.Cd_Estoque = Movimento.Cd_Estoque
    And Estoque.Cd_Multi_Empresa = Estabelecimento.Cd_Multi_Empresa
    AND Estabelecimento.Cd_Multi_Empresa = '||pCdMultiEmpresa;
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
-- Exemplo de bloco de execução: Processo 895
---------------------------------------------------------------------------


IF v_Processo = 895
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00895(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00895 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00895%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00895;
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
-- Exemplo de bloco de execução: Processo 901
---------------------------------------------------------------------------


IF v_Processo = 901
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00901(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00901 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00901%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00901;
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
-- Exemplo de bloco de execução: Processo 908
---------------------------------------------------------------------------


IF v_Processo = 908
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00908(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00908 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00908%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00908;
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
--Processo cProcesso_00923 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 923
---------------------------------------------------------------------------


IF v_Processo = 923
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
                            WHERE Avi.Cd_Mot_Canc = Mot.cd_Mot_Canc and mot.tp_mot_canc = "M") --MOTIVOS DE CANCELAMENTO DE MÉDICO
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
--Processo cProcesso_00924 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 924
---------------------------------------------------------------------------


IF v_Processo = 924
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
                            WHERE Avi.Cd_Mot_Canc = Mot.cd_Mot_Canc and mot.tp_mot_canc = "A") --MOTIVOS DE CANCELAMENTO DE ADMINISTRATIVO
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
--Processo cProcesso_00925 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 925
---------------------------------------------------------------------------


IF v_Processo = 925
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
                            WHERE Avi.Cd_Mot_Canc = Mot.cd_Mot_Canc and mot.tp_mot_canc = "T") --MOTIVOS DE CANCELAMENTO DE TRANSFERENCIA
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
-- Exemplo de bloco de execução: Processo 939
---------------------------------------------------------------------------


IF v_Processo = 939
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00939(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00939 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00939%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00939;
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
-- Exemplo de bloco de execução: Processo 929
---------------------------------------------------------------------------


IF v_Processo = 929
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00929(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00929 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00929%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00929;
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
-- Exemplo de bloco de execução: Processo 945
---------------------------------------------------------------------------


IF v_Processo = 945
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00945(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00945 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00945%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00945;
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
-- Exemplo de bloco de execução: Processo 953
---------------------------------------------------------------------------


IF v_Processo = 953
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00953(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00953 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00953%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00953;
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
-- Exemplo de bloco de execução: Processo 951
---------------------------------------------------------------------------


IF v_Processo = 951
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00951(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00951 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00951%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00951;
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
--Processo cProcesso_00946 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 946
---------------------------------------------------------------------------


IF v_Processo = 946
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
                , NULL Cd_Atendimento
                , NULL Cd_Paciente
                , NULL Cd_Prestador
                , NULL Tp_Diagnostico
                , NULL Nm_Indicador
                , NULL Nm_Grupo
                , Estabelecimento.Cd_Mvcc_Empresa Cd_Multi_Empresa
                , 1 Cd_Departamento
                , "VALOR CUSTO C/PESSOAL (MEDIA MENSAL)" Ds_Departamento
                , Nvl(Movimento.data_mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY")) Data_Mes
                , Null Nm_Processo
                , "VALOR CUSTO C/PESSOAL: R$ "||Nvl(Ltrim(To_Char(Nvl(Sum(Movimento.vl_despesas_pessoal),0),"999G999G999G999D99")),"0,00")||" (Média Mensal)"||Chr(10)||
                "VALOR CUSTO C/PESSOAL PREVISTO: R$ "||Nvl(Ltrim(To_Char(Nvl(Sum(Movimento.vl_despesas_pessoal_prevista),0),"999G999G999G999D99")),"0,00")||" (Média Mensal)"||Chr(10)||
                "PERC. ALCANÇADO: R$ "||Nvl(Ltrim(To_Char(Nvl(Sum(Movimento.Vl_Taxa_Conforme),0),"999G999G999G999D99")),"0,00")||"%" Ds_Item_Nao_Conforme
                , '||vEmpresa.Cd_Cliente||' Cd_Cliente
                , Estabelecimento.Nr_Cnpj
                , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dh_Geracao
                , Null Qtde_Naoconforme
                , Null Qtde_Instalada
                , "PROCESSO" Nm_Tabela_Chave
                , '||v_Processo||' Cd_Coluna_Chave
                , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dt_Coluna_Chave
                , Null Dh_Proxima_Geracao
                , Avg(Nvl(Movimento.vl_despesas_pessoal,0)) Qtde_Conforme
                , Null Qtde_Total, Null Dt_Finalizacao, Null Qtde_NaoConforme_Dia, Avg(Nvl(Movimento.vl_despesas_pessoal,0)) Qtde_Conforme_Dia, Null Qtde_Total_Dia, 1 Nr_Notificacao

                FROM (---MOVIMENTOS---

                    SELECT To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY") Data_Mes
                    , Nvl(Mov.vl_despesas_pessoal,0) vl_despesas_pessoal
                    , Nvl(Mov.vl_despesas_pessoal,0)/To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"DD") vl_despesas_pessoal_dia
                    , Nvl(Mov.Vl_despesas_pessoal_Prevista,0) Vl_despesas_pessoal_Prevista
                    , Case
                    WHEN Nvl(Mov.Vl_despesas_pessoal_Prevista,0) = 0
                    THEN 0
                    ELSE Trunc((Nvl(Mov.vl_despesas_pessoal,0))/Nvl(Mov.Vl_despesas_pessoal_Prevista,0)*100,2)
                END Vl_Taxa_Conforme

                FROM (
                    SELECT Nvl(Cta.vl_despesas_pessoal,0) vl_despesas_pessoal
                    , MvccAdmin.Fnc_Departamento('||vEmpresa.Cd_Mvcc_Empresa||','||v_Processo||',1,'||vEmpresa.Nr_Cnpj||',"SLA") Vl_despesas_pessoal_Prevista

                    FROM (
                        SELECT ---VALOR TOTAL DESPESAS FIXAS---
                        Nvl((
                                SELECT Trunc(Avg(Dme.vl_despesas_pessoal),2)

                                FROM MvccAdmin.Fato_Valor_Economico Dme

                                WHERE Dme.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                                And Dme.Dt_Mes Between To_Date(To_Char(Add_Months(To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),-13),"MM/YYYY"),"MM/YYYY")
                                And To_Date(To_Char(Add_Months(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),-1),"MM/YYYY"),"MM/YYYY")
                                And Dme.vl_despesas_pessoal > 0
                                ),0) vl_despesas_pessoal

                        FROM Dual
                        ) Cta
                    ) Mov

                WHERE Mov.Vl_Despesas_Pessoal > 0
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
-- Exemplo de bloco de execução: Processo 947
---------------------------------------------------------------------------


IF v_Processo = 947
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00947(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00947 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00947%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00947;
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
-- Exemplo de bloco de execução: Processo 948
---------------------------------------------------------------------------


IF v_Processo = 948
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00948(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00948 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00948%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00948;
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
-- Exemplo de bloco de execução: Processo 949
---------------------------------------------------------------------------


IF v_Processo = 949
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00949(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00949 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00949%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00949;
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
-- Exemplo de bloco de execução: Processo 950
---------------------------------------------------------------------------


IF v_Processo = 950
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00950(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00950 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00950%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00950;
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
-- Exemplo de bloco de execução: Processo 952
---------------------------------------------------------------------------


IF v_Processo = 952
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00952(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00952 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00952%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00952;
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
-- Exemplo de bloco de execução: Processo 954
---------------------------------------------------------------------------


IF v_Processo = 954
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00954(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00954 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00954%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00954;
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
-- Exemplo de bloco de execução: Processo 955
---------------------------------------------------------------------------


IF v_Processo = 955
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00955(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00955 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00955%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00955;
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
-- Exemplo de bloco de execução: Processo 956
---------------------------------------------------------------------------


IF v_Processo = 956
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00956(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00956 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00956%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00956;
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
-- Exemplo de bloco de execução: Processo 957
---------------------------------------------------------------------------


IF v_Processo = 957
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00957(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00957 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00957%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00957;
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
-- Exemplo de bloco de execução: Processo 958
---------------------------------------------------------------------------


IF v_Processo = 958
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00958(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00958 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00958%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00958;
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
-- Exemplo de bloco de execução: Processo 959
---------------------------------------------------------------------------


IF v_Processo = 959
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00959(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00959 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00959%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00959;
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
-- Exemplo de bloco de execução: Processo 960
---------------------------------------------------------------------------


IF v_Processo = 960
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00960(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00960 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00960%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00960;
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
-- Exemplo de bloco de execução: Processo 961
---------------------------------------------------------------------------


IF v_Processo = 961
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00961(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00961 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00961%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00961;
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
-- Exemplo de bloco de execução: Processo 962
---------------------------------------------------------------------------


IF v_Processo = 962
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00962(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00962 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00962%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00962;
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
-- Exemplo de bloco de execução: Processo 963
---------------------------------------------------------------------------


IF v_Processo = 963
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00963(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00963 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00963%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00963;
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
-- Exemplo de bloco de execução: Processo 964
---------------------------------------------------------------------------


IF v_Processo = 964
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00964(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00964 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00964%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00964;
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
-- Exemplo de bloco de execução: Processo 965
---------------------------------------------------------------------------


IF v_Processo = 965
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00965(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00965 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00965%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00965;
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
-- Exemplo de bloco de execução: Processo 966
---------------------------------------------------------------------------


IF v_Processo = 966
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00966(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00966 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00966%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00966;
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
-- Exemplo de bloco de execução: Processo 967
---------------------------------------------------------------------------


IF v_Processo = 967
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00967(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00967 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00967%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00967;
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
-- Exemplo de bloco de execução: Processo 968
---------------------------------------------------------------------------


IF v_Processo = 968
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00968(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00968 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00968%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00968;
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
-- Exemplo de bloco de execução: Processo 969
---------------------------------------------------------------------------


IF v_Processo = 969
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00969(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00969 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00969%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00969;
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
-- Exemplo de bloco de execução: Processo 970
---------------------------------------------------------------------------


IF v_Processo = 970
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00970(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00970 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00970%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00970;
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
-- Exemplo de bloco de execução: Processo 971
---------------------------------------------------------------------------


IF v_Processo = 971
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00971(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00971 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00971%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00971;
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
-- Exemplo de bloco de execução: Processo 972
---------------------------------------------------------------------------


IF v_Processo = 972
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00972(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00972 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00972%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00972;
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
-- Exemplo de bloco de execução: Processo 973
---------------------------------------------------------------------------


IF v_Processo = 973
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00973(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00973 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00973%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00973;
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
-- Exemplo de bloco de execução: Processo 974
---------------------------------------------------------------------------


IF v_Processo = 974
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00974(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00974 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00974%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00974;
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
-- Exemplo de bloco de execução: Processo 975
---------------------------------------------------------------------------


IF v_Processo = 975
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00975(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00975 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00975%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00975;
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
-- Exemplo de bloco de execução: Processo 976
---------------------------------------------------------------------------


IF v_Processo = 976
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00976(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00976 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00976%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00976;
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
-- Exemplo de bloco de execução: Processo 977
---------------------------------------------------------------------------


IF v_Processo = 977
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00977(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00977 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00977%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00977;
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
-- Exemplo de bloco de execução: Processo 978
---------------------------------------------------------------------------


IF v_Processo = 978
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00978(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00978 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00978%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00978;
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
-- Exemplo de bloco de execução: Processo 979
---------------------------------------------------------------------------


IF v_Processo = 979
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00979(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00979 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00979%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00979;
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
-- Exemplo de bloco de execução: Processo 980
---------------------------------------------------------------------------


IF v_Processo = 980
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00980(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00980 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00980%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00980;
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
-- Exemplo de bloco de execução: Processo 981
---------------------------------------------------------------------------


IF v_Processo = 981
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00981(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00981 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00981%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00981;
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
-- Exemplo de bloco de execução: Processo 982
---------------------------------------------------------------------------


IF v_Processo = 982
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00982(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00982 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00982%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00982;
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
-- Exemplo de bloco de execução: Processo 983
---------------------------------------------------------------------------


IF v_Processo = 983
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00983(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00983 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00983%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00983;
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
-- Exemplo de bloco de execução: Processo 984
---------------------------------------------------------------------------


IF v_Processo = 984
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00984(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00984 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00984%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00984;
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
-- Exemplo de bloco de execução: Processo 985
---------------------------------------------------------------------------


IF v_Processo = 985
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00985(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00985 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00985%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00985;
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
-- Exemplo de bloco de execução: Processo 986
---------------------------------------------------------------------------


IF v_Processo = 986
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00986(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00986 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00986%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00986;
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
-- Exemplo de bloco de execução: Processo 987
---------------------------------------------------------------------------


IF v_Processo = 987
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00987(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00987 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00987%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00987;
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
-- Exemplo de bloco de execução: Processo 988
---------------------------------------------------------------------------


IF v_Processo = 988
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00988(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00988 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00988%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00988;
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
-- Exemplo de bloco de execução: Processo 989
---------------------------------------------------------------------------


IF v_Processo = 989
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00989(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00989 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00989%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00989;
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
-- Exemplo de bloco de execução: Processo 990
---------------------------------------------------------------------------


IF v_Processo = 990
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00990(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00990 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00990%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00990;
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
-- Exemplo de bloco de execução: Processo 991
---------------------------------------------------------------------------


IF v_Processo = 991
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00991(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00991 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00991%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00991;
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
-- Exemplo de bloco de execução: Processo 992
---------------------------------------------------------------------------


IF v_Processo = 992
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00992(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00992 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00992%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00992;
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
-- Exemplo de bloco de execução: Processo 993
---------------------------------------------------------------------------


IF v_Processo = 993
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00993(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00993 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00993%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00993;
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
-- Exemplo de bloco de execução: Processo 994
---------------------------------------------------------------------------


IF v_Processo = 994
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00994(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00994 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00994%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00994;
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
-- Exemplo de bloco de execução: Processo 997
---------------------------------------------------------------------------


IF v_Processo = 997
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00997(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00997 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00997%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00997;
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
-- Exemplo de bloco de execução: Processo 998
---------------------------------------------------------------------------


IF v_Processo = 998
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00998(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00998 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00998%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00998;
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
-- Exemplo de bloco de execução: Processo 999
---------------------------------------------------------------------------


IF v_Processo = 999
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_00999(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_00999 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_00999%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_00999;
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
-- Exemplo de bloco de execução: Processo 1000
---------------------------------------------------------------------------


IF v_Processo = 1000
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01000(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01000 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01000%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01000;
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
-- Exemplo de bloco de execução: Processo 1001
---------------------------------------------------------------------------


IF v_Processo = 1001
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01001(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01001 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01001%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01001;
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
-- Exemplo de bloco de execução: Processo 1002
---------------------------------------------------------------------------


IF v_Processo = 1002
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01002(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01002 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01002%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01002;
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
-- Exemplo de bloco de execução: Processo 1003
---------------------------------------------------------------------------


IF v_Processo = 1003
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01003(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01003 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01003%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01003;
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
-- Exemplo de bloco de execução: Processo 1010
---------------------------------------------------------------------------


IF v_Processo = 1010
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01010(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01010 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01010%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01010;
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
-- Exemplo de bloco de execução: Processo 1011
---------------------------------------------------------------------------


IF v_Processo = 1011
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01011(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01011 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01011%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01011;
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
-- Exemplo de bloco de execução: Processo 1012
---------------------------------------------------------------------------


IF v_Processo = 1012
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01012(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01012 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01012%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01012;
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
-- Exemplo de bloco de execução: Processo 1013
---------------------------------------------------------------------------


IF v_Processo = 1013
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01013(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01013 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01013%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01013;
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
-- Exemplo de bloco de execução: Processo 1014
---------------------------------------------------------------------------


IF v_Processo = 1014
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01014(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01014 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01014%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01014;
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
-- Exemplo de bloco de execução: Processo 1015
---------------------------------------------------------------------------


IF v_Processo = 1015
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01015(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01015 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01015%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01015;
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
-- Exemplo de bloco de execução: Processo 1016
---------------------------------------------------------------------------


IF v_Processo = 1016
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01016(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01016 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01016%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01016;
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
-- Exemplo de bloco de execução: Processo 1017
---------------------------------------------------------------------------


IF v_Processo = 1017
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01017(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01017 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01017%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01017;
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
-- Exemplo de bloco de execução: Processo 1018
---------------------------------------------------------------------------


IF v_Processo = 1018
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01018(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01018 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01018%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01018;
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
-- Exemplo de bloco de execução: Processo 1019
---------------------------------------------------------------------------


IF v_Processo = 1019
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01019(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01019 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01019%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01019;
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
-- Exemplo de bloco de execução: Processo 1020
---------------------------------------------------------------------------


IF v_Processo = 1020
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01020(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01020 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01020%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01020;
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
-- Exemplo de bloco de execução: Processo 1021
---------------------------------------------------------------------------


IF v_Processo = 1021
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01021(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01021 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01021%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01021;
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
-- Exemplo de bloco de execução: Processo 1022
---------------------------------------------------------------------------


IF v_Processo = 1022
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01022(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01022 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01022%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01022;
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
-- Exemplo de bloco de execução: Processo 1023
---------------------------------------------------------------------------


IF v_Processo = 1023
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01023(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01023 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01023%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01023;
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
-- Exemplo de bloco de execução: Processo 1024
---------------------------------------------------------------------------


IF v_Processo = 1024
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01024(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01024 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01024%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01024;
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
-- Exemplo de bloco de execução: Processo 1025
---------------------------------------------------------------------------


IF v_Processo = 1025
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01025(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01025 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01025%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01025;
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
-- Exemplo de bloco de execução: Processo 1026
---------------------------------------------------------------------------


IF v_Processo = 1026
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01026(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01026 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01026%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01026;
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
-- Exemplo de bloco de execução: Processo 1027
---------------------------------------------------------------------------


IF v_Processo = 1027
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01027(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01027 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01027%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01027;
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
-- Exemplo de bloco de execução: Processo 1028
---------------------------------------------------------------------------


IF v_Processo = 1028
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01028(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01028 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01028%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01028;
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
-- Exemplo de bloco de execução: Processo 1029
---------------------------------------------------------------------------


IF v_Processo = 1029
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01029(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01029 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01029%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01029;
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
-- Exemplo de bloco de execução: Processo 1030
---------------------------------------------------------------------------


IF v_Processo = 1030
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01030(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01030 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01030%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01030;
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
-- Exemplo de bloco de execução: Processo 1031
---------------------------------------------------------------------------


IF v_Processo = 1031
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01031(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01031 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01031%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01031;
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
-- Exemplo de bloco de execução: Processo 1032
---------------------------------------------------------------------------


IF v_Processo = 1032
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01032(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01032 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01032%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01032;
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
-- Exemplo de bloco de execução: Processo 1064
---------------------------------------------------------------------------


IF v_Processo = 1064
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01064(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01064 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01064%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01064;
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
-- Exemplo de bloco de execução: Processo 1065
---------------------------------------------------------------------------


IF v_Processo = 1065
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01065(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01065 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01065%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01065;
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
-- Exemplo de bloco de execução: Processo 1104
---------------------------------------------------------------------------


IF v_Processo = 1104
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01104(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01104 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01104%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01104;
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
-- Exemplo de bloco de execução: Processo 1107
---------------------------------------------------------------------------


IF v_Processo = 1107
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01107(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01107 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01107%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01107;
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
-- Exemplo de bloco de execução: Processo 1108
---------------------------------------------------------------------------


IF v_Processo = 1108
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01108(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01108 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01108%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01108;
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
-- Exemplo de bloco de execução: Processo 1109
---------------------------------------------------------------------------


IF v_Processo = 1109
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01109(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01109 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01109%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01109;
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
-- Exemplo de bloco de execução: Processo 1110
---------------------------------------------------------------------------


IF v_Processo = 1110
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01110(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01110 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01110%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01110;
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
-- Exemplo de bloco de execução: Processo 1111
---------------------------------------------------------------------------


IF v_Processo = 1111
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01111(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01111 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01111%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01111;
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
-- Exemplo de bloco de execução: Processo 1112
---------------------------------------------------------------------------


IF v_Processo = 1112
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01112(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01112 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01112%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01112;
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
-- Exemplo de bloco de execução: Processo 1113
---------------------------------------------------------------------------


IF v_Processo = 1113
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01113(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01113 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01113%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01113;
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
-- Exemplo de bloco de execução: Processo 1115
---------------------------------------------------------------------------


IF v_Processo = 1115
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01115(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01115 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01115%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01115;
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
-- Exemplo de bloco de execução: Processo 1116
---------------------------------------------------------------------------


IF v_Processo = 1116
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01116(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01116 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01116%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01116;
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
-- Exemplo de bloco de execução: Processo 1118
---------------------------------------------------------------------------


IF v_Processo = 1118
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01118(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01118 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01118%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01118;
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
-- Exemplo de bloco de execução: Processo 1121
---------------------------------------------------------------------------


IF v_Processo = 1121
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01121(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01121 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01121%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01121;
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
-- Exemplo de bloco de execução: Processo 1122
---------------------------------------------------------------------------


IF v_Processo = 1122
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01122(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01122 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01122%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01122;
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
-- Exemplo de bloco de execução: Processo 1129
---------------------------------------------------------------------------


IF v_Processo = 1129
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01129(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01129 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01129%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01129;
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
-- Exemplo de bloco de execução: Processo 1145
---------------------------------------------------------------------------


IF v_Processo = 1145
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01145(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01145 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01145%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01145;
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
-- Exemplo de bloco de execução: Processo 1146
---------------------------------------------------------------------------


IF v_Processo = 1146
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01146(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01146 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01146%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01146;
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
-- Exemplo de bloco de execução: Processo 1147
---------------------------------------------------------------------------


IF v_Processo = 1147
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01147(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01147 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01147%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01147;
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
-- Exemplo de bloco de execução: Processo 1149
---------------------------------------------------------------------------


IF v_Processo = 1149
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

            OPEN cProcesso_01149(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01149 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01149%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01149;
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
-- Exemplo de bloco de execução: Processo 1150
---------------------------------------------------------------------------


IF v_Processo = 1150
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

            OPEN cProcesso_01150(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01150 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01150%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01150;
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
-- Exemplo de bloco de execução: Processo 1151
---------------------------------------------------------------------------


IF v_Processo = 1151
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01151(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01151 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01151%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01151;
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
-- Exemplo de bloco de execução: Processo 1152
---------------------------------------------------------------------------


IF v_Processo = 1152
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01152(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01152 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01152%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01152;
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
-- Exemplo de bloco de execução: Processo 1157
---------------------------------------------------------------------------


IF v_Processo = 1157
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01157(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01157 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01157%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01157;
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
-- Exemplo de bloco de execução: Processo 1158
---------------------------------------------------------------------------


IF v_Processo = 1158
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01158(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01158 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01158%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01158;
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
-- Exemplo de bloco de execução: Processo 1163
---------------------------------------------------------------------------


IF v_Processo = 1163
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01163(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01163 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01163%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01163;
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
-- Exemplo de bloco de execução: Processo 1164
---------------------------------------------------------------------------


IF v_Processo = 1164
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01164(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01164 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01164%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01164;
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
--Processo cProcesso_01168 Anonimizado
---------------------------------------------------------------------------
-- Exemplo de bloco de execução: Processo 1168
---------------------------------------------------------------------------


IF v_Processo = 1168
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
                , Null Cd_Atendimento
                , Null Cd_Paciente
                , Null Cd_Prestador
                , Null Tp_Diagnostico
                , Null Nm_Indicador
                , Null Nm_Grupo
                , Estabelecimento.Cd_Mvcc_Empresa Cd_Multi_Empresa
                , 1 Cd_Departamento
                , "QTDE DE AUDITORIA DA PRECAUÇÃO" Ds_Departamento
                , Nvl(Movimento.Data_Mes,To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY")) Data_Mes
                , Null Nm_Processo
                , "AUDITORIA DA PRECAUÇÃO, QTDE REALIZADA: "||Sum(Movimento.Qtde_Conforme)
                ||", QTDE REALIZADA NO DIA: "||Sum(Movimento.Qtde_Conforme_Dia) Ds_Item_Nao_Conforme
                , '||vEmpresa.Cd_Cliente||' Cd_Cliente
                , Estabelecimento.Nr_Cnpj
                , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dh_Geracao
                , 1 Qtde_Naoconforme
                , Null Qtde_Instalada
                , "REG_FAT" Nm_Tabela_Chave
                , '||v_Processo||' Cd_Coluna_Chave
                , To_Date("'||v_Dh_Geracao||'","DD/MM/YYYY HH24:MI:SS") Dt_Coluna_Chave
                , Null Dh_Proxima_Geracao
                , Sum(Movimento.Qtde_Conforme) Qtde_Conforme
                , Null Qtde_Total
                , Null Dt_Finalizacao
                , Null Qtde_NaoConforme_Dia
                , Sum(Movimento.Qtde_Conforme_Dia) Qtde_Conforme_Dia
                , Null Qtde_Total_Dia
                , 1 Nr_Notificacao

                FROM (--MOVIMENTO--

                    SELECT To_Char(Mov.Dt_Pre_Med,"MM/YYYY") Data_Mes
                    , Count(1) Qtde_Conforme
                    , Sum(Case
                        WHEN Mov.Dt_Pre_Med Between Trunc(Sysdate) And Sysdate
                        THEN 1
                        ELSE 0
                    END) Qtde_Conforme_Dia

                FROM (
                    SELECT Pre.Cd_Unid_Int
                    , Pre.Cd_Atendimento
                    , Itp.Dh_Inicial
                    , Pre.Dt_Pre_Med
                    , Itp.Cd_itPre_Med
                    , Itp.Cd_Tip_Presc
                    , Itp.Dh_Registro
                    , Itp.dh_inicial+MvccAdmin.Fnc_Departamento('||vEmpresa.Cd_Mvcc_Empresa||','||v_Processo||',Pre.Cd_Unid_Int,'||vEmpresa.Nr_Cnpj||',"SLA") Dt_Prev_Auditoria

                    FROM Dbamv.Pre_Med Pre
                    , Dbamv.Itpre_Med Itp

                    WHERE Pre.Cd_Pre_Med = Itp.Cd_Pre_Med
                    And Pre.Tp_Pre_Med = "M"
                    And Exists (
                        SELECT 1
                        FROM Dbamv.Pw_Documento_Clinico Pdc
                        WHERE Pdc.Cd_Documento_Clinico = Pre.Cd_Documento_Clinico And Pdc.Tp_Status In ("FECHADO","ASSINADO"))
                    And Pre.Dt_Pre_Med Between To_Date("'||To_Char(v_Dt_Ini_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                    and To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS")
                    And Exists (
                        SELECT 1
                        FROM Dbamv.Item_Precaucao ItPrc
                        WHERE ItPrc.Cd_Tip_Presc = Itp.Cd_Tip_Presc And ItPrc.Cd_Multi_Empresa = '||pCdMultiEmpresa||')
                    And Itp.Tp_Situacao = "N"
                    And Itp.dh_inicial
                    IS Not Null
                        And Exists (
                            SELECT 1
                            FROM MvccAdmin.Fato_Atendime_Internado Ate
                            WHERE Ate.Cd_Atendimento = Pre.Cd_Atendimento And Ate.Cd_Movimentacao = 1 And Ate.Cd_Multi_Empresa = '||pCdMultiEmpresa||')
                        --- PACIENTES AUDITADOS COM PRECAUÇÃO ---
                        And Exists (
                            SELECT 1
                            FROM Dbamv.Atendimento_Tipo_Audit_Isolamt Aud
                            WHERE Aud.Cd_Itpre_Med = Itp.Cd_Itpre_Med
                            And Aud.Sn_Ativo = "S"
                            And Aud.Cd_Atendimento = Pre.Cd_Atendimento)
                        ) Mov

                    GROUP BY To_Char(Mov.Dt_Pre_Med,"MM/YYYY")
                    ) Movimento
                , Dbamv.Unid_Int
                , MvccAdmin.Estabelecimento

                WHERE Unid_Int.Cd_Unid_Int = Movimento.Cd_Unid_Int
                And Exists (
                    SELECT 1
                    FROM Dbamv.Setor
                    WHERE Setor.Cd_Setor = Unid_Int.Cd_Setor And Setor.Sn_Ativo = "S" And Setor.cd_multi_Empresa = '||pCdMultiEmpresa||')
                AND Estabelecimento.Cd_Multi_Empresa = '||pCdMultiEmpresa||'
                And Unid_Int.Sn_Ativo = "S"

                GROUP BY Estabelecimento.Cd_Mvcc_Empresa
                , Nvl(Movimento.Data_Mes, To_Char(To_Date("'||To_Char(v_Dt_Fim_Diagno,'DD/MM/YYYY HH24:MI:SS')||'","DD/MM/YYYY HH24:MI:SS"),"MM/YYYY"))
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
                    VALUES (Seq_Log_Geral.Nextval, Sysdate, Sysdate, 'MVBIKE','LOG_GERAL','PRC_DIAG_TEMPOS_C_ANALITICO(Processo:'||v_Processo||',Empresa: '||pCdMultiEmpresa||')',v_Sql_Cursor,'ERRO: '||v_Error, Null,pCdSchedulingProcess, pCdQueueExecution, v_Processo, pCdMultiEmpresa);

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
-- Exemplo de bloco de execução: Processo 1170
---------------------------------------------------------------------------


IF v_Processo = 1170
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01170(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01170 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01170%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01170;
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
-- Exemplo de bloco de execução: Processo 1171
---------------------------------------------------------------------------


IF v_Processo = 1171
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01171(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01171 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01171%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01171;
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
-- Exemplo de bloco de execução: Processo 1172
---------------------------------------------------------------------------


IF v_Processo = 1172
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01172(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01172 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01172%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01172;
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
-- Exemplo de bloco de execução: Processo 1173
---------------------------------------------------------------------------


IF v_Processo = 1173
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01173(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01173 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01173%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01173;
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
-- Exemplo de bloco de execução: Processo 1174
---------------------------------------------------------------------------


IF v_Processo = 1174
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01174(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01174 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01174%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01174;
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
-- Exemplo de bloco de execução: Processo 1175
---------------------------------------------------------------------------


IF v_Processo = 1175
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01175(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01175 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01175%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01175;
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
-- Exemplo de bloco de execução: Processo 1176
---------------------------------------------------------------------------


IF v_Processo = 1176
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01176(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01176 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01176%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01176;
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
-- Exemplo de bloco de execução: Processo 1177
---------------------------------------------------------------------------


IF v_Processo = 1177
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01177(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01177 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01177%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01177;
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
-- Exemplo de bloco de execução: Processo 1178
---------------------------------------------------------------------------


IF v_Processo = 1178
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01178(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01178 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01178%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01178;
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
-- Exemplo de bloco de execução: Processo 1179
---------------------------------------------------------------------------


IF v_Processo = 1179
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01179(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01179 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01179%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01179;
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
-- Exemplo de bloco de execução: Processo 1180
---------------------------------------------------------------------------


IF v_Processo = 1180
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01180(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01180 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01180%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01180;
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
-- Exemplo de bloco de execução: Processo 1181
---------------------------------------------------------------------------


IF v_Processo = 1181
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01181(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01181 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01181%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01181;
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
-- Exemplo de bloco de execução: Processo 1182
---------------------------------------------------------------------------


IF v_Processo = 1182
THEN --OR v_Processo = 0
    THEN

        OPEN cProcessoAtualizacao(vEmpresa.Cd_Mvcc_Empresa, v_Processo, vEmpresa.Nr_Cnpj);

        FETCH cProcessoAtualizacao
        INTO vProcessoAtualizacao;

        CLOSE cProcessoAtualizacao;

        IF vProcessoAtualizacao = 'A'
        THEN

            OPEN cProcesso_01182(vEmpresa.Cd_Multi_Empresa, pProcesso, vEmpresa.Nr_Cnpj, vEmpresa.Cd_Cliente, vEmpresa.Cd_Mvcc_Empresa);

            LOOP

                FETCH cProcesso_01182 BULK COLLECT
                INTO v_Dados
                LIMIT 3000;

                FORALL i IN 1 .. v_Dados.Count

                INSERT
                INTO MvccAdmin.Diag_Processo_Carga_Analitico VALUES v_Dados(i);

                COMMIT;
                --
                COMMIT a cada 3.000 registro
                EXIT
                WHEN cProcesso_01182%NOTFOUND;

                COMMIT;

            END
        LOOP;

            CLOSE cProcesso_01182;
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
