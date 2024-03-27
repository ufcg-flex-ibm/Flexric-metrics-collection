# Flexric-metrics-collection

Este repositório tem como objetivo documentar um xApp de monitoramento que utiliza o FlexRIC (v1.0.0) em conjunto com a infraestrutura do OAI (CORE, gNodeB, UE), por meio dos protocolos MAC, RLC e PDCP.


## Como funciona um xApp

Um xApp é uma aplicação externa projetada para oferecer serviços ou funcionalidades específicas em uma rede de telecomunicações, como monitoramento, controle, otimização ou o acionamento de recursos externos. Essas aplicações são vitais para o funcionamento das redes 5G, pois são programáveis e enxutas, o que permite a integração de modelos de inteligência artificial, programas ou serviços de análise de dados em tempo realtimos 

## Como executar

Substitua o arquivo **"collect_metrics.c"** para algum arquivo presente em **"../flexric/examples/xApp/c/..."** mantendo o nome do arquivo destindo. Assim, será possível executar o xApp após compilar o projeto novamente, seguindo os passos:

```bash
    # Exemplo - Substituindo o arquivo
    mv collect_metrics.c flexric/exemples/xApp/c/monitor/xapp_gtp_mac_rlc_pdcp_moni

    # Compilar o projeto
    cd ~/flexric/ && cmake
    cd ~/flexric/build/ && make

    # Executar o xApp
    cd flexric/build/examples/xApp/c/monitor
    ./xapp_mac_rlc_pdcp_moni

```

## Outras informações 

### Executando com FlexRIC 2.0

Houve uma atualização nas interfaces do projeto FlexRIC, tornando necessário algumas adaptações no nosso código fonte para a sua execução.

```c
    // Código fonte de um xApp de monitoramento

    if(cnt_mac % 1024 == 0) { // controla o número de execuções do programa
        printf("MAC ind_msg latency = %ld μs\n", now - rd->ind.mac.msg.tstamp);
        assert(rd->ind.mac.msg.ue_stats != NULL);
    
        for (size_t i = 0; i < rd->ind.mac.msg.len_ue_stats; i++) { 
            printf("-------------\n");
            printf("ul-aggr-tbs: %ld\n", rd->ind.mac.msg.ue_stats[i].ul_aggr_tbs);
            printf("dl-aggr-prb: %d\n", rd->ind.mac.msg.ue_stats[i].dl_aggr_prb);
            printf("ul-aggr-prb: %d\n", rd->ind.mac.msg.ue_stats[i].ul_aggr_prb);
            printf("frame: %d\n", rd->ind.mac.msg.ue_stats[i].frame);
        }
    
        sleep(1); 
    }

    cnt_mac++;

```

