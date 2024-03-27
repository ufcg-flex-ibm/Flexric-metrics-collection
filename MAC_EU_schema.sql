CREATE TABLE MAC_UE(
    tstamp INT CHECK(tstamp > 0),
    ngran_node INT CHECK(
        ngran_node >= 0
        AND ngran_node < 9
    ),
    mcc INT,
    mnc INT,
    mnc_digit_len INT,
    nb_id INT,
    cu_du_id TEXT,
    frame INT,
    slot INT,
    dl_aggr_tbs INT CHECK(
        dl_aggr_tbs >= 0
        AND dl_aggr_tbs < 18446744073709551615
    ),
    ul_aggr_tbs INT CHECK(
        ul_aggr_tbs >= 0
        AND ul_aggr_tbs < 18446744073709551615
    ),
    dl_aggr_bytes_sdus INT CHECK(
        dl_aggr_bytes_sdus >= 0
        AND dl_aggr_bytes_sdus < 18446744073709551615
    ),
    ul_aggr_bytes_sdus INT CHECK(
        ul_aggr_bytes_sdus >= 0
        AND ul_aggr_bytes_sdus < 18446744073709551615
    ),
    dl_curr_tbs INT CHECK(
        dl_curr_tbs >= 0
        AND dl_curr_tbs < 18446744073709551615
    ),
    ul_curr_tbs INT CHECK(
        ul_curr_tbs >= 0
        AND ul_curr_tbs < 18446744073709551615
    ),
    dl_sched_rb INT CHECK(
        dl_sched_rb >= 0
        AND dl_sched_rb < 18446744073709551615
    ),
    ul_sched_rb INT CHECK(
        ul_sched_rb >= 0
        AND ul_sched_rb < 18446744073709551615
    ),
    pusch_snr REAL CHECK(
        pusch_snr == NULL
        OR (
            pusch_snr >= 0
            AND pusch_snr < 4294967296
        )
    ),
    pucch_snr REAL CHECK(
        pucch_snr == NULL
        OR (
            pucch_snr >= 0
            AND pucch_snr < 4294967296
        )
    ),
    rnti INT CHECK(
        rnti >= 0
        AND rnti < 4294967296
    ),
    dl_aggr_prb INT CHECK(
        dl_aggr_prb >= 0
        AND dl_aggr_prb < 4294967296
    ),
    ul_aggr_prb INT CHECK(
        ul_aggr_prb >= 0
        AND ul_aggr_prb < 4294967296
    ),
    dl_aggr_sdus INT CHECK(
        dl_aggr_sdus >= 0
        AND dl_aggr_sdus < 4294967296
    ),
    ul_aggr_sdus INT CHECK(
        ul_aggr_sdus >= 0
        AND ul_aggr_sdus < 4294967296
    ),
    dl_aggr_retx_prb INT CHECK(
        dl_aggr_retx_prb >= 0
        AND dl_aggr_retx_prb < 4294967296
    ),
    ul_aggr_retx_prb INT CHECK(
        ul_aggr_retx_prb >= 0
        AND ul_aggr_retx_prb < 4294967296
    ),
    wb_cqi INT CHECK(
        wb_cqi >= 0
        AND wb_cqi < 256
    ),
    dl_mcs1 INT CHECK(
        dl_mcs1 >= 0
        AND dl_mcs1 < 256
    ),
    ul_mcs1 INT CHECK(
        ul_mcs1 >= 0
        AND ul_mcs1 < 256
    ),
    dl_mcs2 INT CHECK(
        dl_mcs2 >= 0
        AND dl_mcs2 < 256
    ),
    ul_mcs2 INT CHECK(
        ul_mcs2 >= 0
        AND ul_mcs2 < 256
    ),
    phr INT CHECK(
        phr > -24
        AND phr < 41
    ),
    bsr INT CHECK(
        bsr >= 0
        AND bsr < 4294967296
    ),
    dl_bler REAL CHECK(
        dl_bler >= 0
        AND dl_bler < 4294967296
    ),
    ul_bler REAL CHECK(
        ul_bler >= 0
        AND ul_bler < 4294967296
    ),
    dl_num_harq INT CHECK(
        dl_num_harq >= 0
        AND dl_num_harq < 5
    ),
    dl_harq_round0 INT CHECK(
        dl_harq_round0 >= 0
        AND dl_harq_round0 < 4294967296
    ),
    dl_harq_round1 INT CHECK(
        dl_harq_round1 >= 0
        AND dl_harq_round1 < 4294967296
    ),
    dl_harq_round2 INT CHECK(
        dl_harq_round2 >= 0
        AND dl_harq_round2 < 4294967296
    ),
    dl_harq_round3 INT CHECK(
        dl_harq_round3 >= 0
        AND dl_harq_round3 < 4294967296
    ),
    dlsch_errors INT CHECK(
        dlsch_errors >= 0
        AND dlsch_errors < 4294967296
    ),
    ul_num_harq INT CHECK(
        ul_num_harq >= 0
        AND ul_num_harq < 5
    ),
    ul_harq_round0 INT CHECK(
        ul_harq_round0 >= 0
        AND ul_harq_round0 < 4294967296
    ),
    ul_harq_round1 INT CHECK(
        ul_harq_round1 >= 0
        AND ul_harq_round1 < 4294967296
    ),
    ul_harq_round2 INT CHECK(
        ul_harq_round2 >= 0
        AND ul_harq_round2 < 4294967296
    ),
    ul_harq_round3 INT CHECK(
        ul_harq_round3 >= 0
        AND ul_harq_round3 < 4294967296
    ),
    ulsch_errors INT CHECK(
        ulsch_errors >= 0
        AND ulsch_errors < 4294967296
    )
);