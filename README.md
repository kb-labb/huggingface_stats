## Huggingface download statistics

This repo tracks monthly downloads of KBLab's models on Huggingface. It tracks models published both under the KB and the KBLab organization names. 

Script is run monthly, and a monthly `csv`-file outputted to `/data` folder.

## Plots

!["Total downloads of KB:s models on Huggingface."](https://github.com/kb-labb/huggingface_stats/blob/main/plots/downloads_total.jpg)

!["Huggingface downloads by model plot."](https://github.com/kb-labb/huggingface_stats/blob/main/plots/downloads_by_model.jpg)

## Table of downloads

|model_name                                           | 2022-02| 2022-03| 2022-04| 2022-05| 2022-06| 2022-07| 2022-08| 2022-09| 2022-10| 2022-11| 2022-12| 2023-01| 2023-02| 2023-03| 2023-04| 2023-05| 2023-06| 2023-07| 2023-08| 2023-09| 2023-10| 2023-11| 2023-12| 2024-01| 2024-02| 2024-03| 2024-04| 2024-05| 2024-06| 2024-07| 2024-08| 2024-09| 2024-10| 2024-11|
|:----------------------------------------------------|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|
|albert-base-swedish-cased-alpha                      |     126|     252|      61|      52|      52|      28|      31|      17|      30|      64|     229|      37|      32|      75|      13|      17|      24|      39|      14|      18|       4|      71|      75|      74|      20|      27|     100|     220|      31|      19|      19|     116|      14|      22|
|asr-voxrex-bart-base                                 |      11|      10|      19|       5|       2|       1|       1|       3|       2|       3|       2|       4|       9|      15|       7|       2|       4|       7|       4|       3|       8|       2|       5|       1|       6|       8|       5|       8|       8|      50|       6|      20|      12|      29|
|bart-base-swedish-cased                              |      74|      12|     116|     126|      32|      18|      41|      56|      81|       6|       9|      18|      41|      70|     110|      60|      50|      40|      23|       9|      63|      44|      42|      11|     129|      14|     119|      14|      56|      32|     288|      19|      42|     265|
|bert-base-swedish-cased                              |   16509|   25080|   49286|   82528|   38802|   29511|   17012|   25106|   36702|   92636|   44016|   28164|   47819|   28864|   17684|   28878|   16390|   24502|   16303|   54271|   29238|    6625|    7620|   17149|    8106|    6290|   10094|    6253|   21139|   15689|    4996|    7660|    8387|   16895|
|bert-base-swedish-cased-alpha                        |      22|      24|    1362|      34|       8|      73|       7|      14|      14|      14|      10|     160|     151|       6|       9|       5|       6|       9|       2|      12|       3|       4|       5|       3|       5|      11|      15|       2|       9|       8|       7|      14|      14|       8|
|bert-base-swedish-cased-ner                          |   19891|    3353|    4783|    4221|   12487|   17406|   24290|   20200|   14852|   11251|   10014|    9759|    9957|   14508|    9834|   12293|    9868|    9701|    8258|    8767|   14214|   10149|  117977|  143050|  139912|  131659|  148695|  144309|  149658|  100264|   93427|  159109|  144069|  124514|
|bert-base-swedish-cased-neriob                       |       8|      87|      34|      25|       4|      44|       2|       1|      62|      10|       5|      31|       5|       8|       6|       6|       9|      18|       2|       1|       0|      19|       8|       5|       5|      11|      15|       3|      22|       7|      10|      26|      17|      22|
|bert-base-swedish-cased-new                          |      NA|       0|     377|    1069|     786|      10|     238|      69|     225|     168|     163|      46|      44|     352|     303|      33|      52|      69|      73|     211|      96|      84|      30|      34|       5|      53|      59|     279|      76|      27|       8|     750|    1045|     421|
|bert-base-swedish-cased-pos                          |     428|     179|     107|     104|     168|     310|       2|       2|     467|    7959|    2083|   21410|    1713|     300|      15|      28|      58|      64|       9|      75|      28|     312|     159|     166|     239|      33|      20|      12|      80|      32|      15|      47|     104|      43|
|bert-base-swedish-cased-reallysimple-ner             |       6|      32|       9|       7|      11|      10|       3|       8|      10|      17|       4|      16|     159|     401|     211|     334|     327|     326|      74|     152|     341|     304|     274|       3|       7|      14|      14|       4|      12|       6|      11|      35|      17|      10|
|bert-base-swedish-cased-squad-experimental           |     323|     136|      45|      23|      40|     182|      25|      27|     101|      10|      22|      62|      56|     643|     130|   16262|      29|      29|       4|      16|      10|     280|      64|      34|     275|      30|      44|       4|      13|      36|      47|      46|      15|      18|
|bert-base-swedish-lowermix-reallysimple-ner          |       6|     453|     248|     312|     901|     991|     930|     871|    2274|    3958|    1963|    3010|    2567|    2485|    3919|    6258|    2875|     121|      53|     417|    4874|     769|     327|     713|      81|     111|     696|     104|     623|      31|      33|     261|      40|      38|
|electra-base-swedish-cased-discriminator             |     317|     143|     149|    1404|       2|       3|       3|       3|       2|       5|       0|       7|       2|       0|       6|       7|       4|       8|       0|       1|       0|       4|       0|       1|       4|       5|      15|       2|       5|       4|       4|       4|       3|       2|
|electra-base-swedish-cased-generator                 |       9|      15|      26|      31|       2|      19|       1|      18|       1|       9|       4|      10|       4|      14|      88|      78|     107|      72|       3|      15|      39|      12|       7|      11|       8|      52|      53|       6|      27|       2|       5|       5|       2|       4|
|electra-small-swedish-cased-discriminator            |      12|       5|    1467|    3804|      10|       5|       2|       2|       2|      10|       8|      12|     153|       1|       9|       2|       6|       4|      18|       6|       0|       3|       0|       7|      11|      13|       9|       4|       9|       7|      14|       8|      10|       7|
|electra-small-swedish-cased-generator                |      NA|       3|     138|      14|       4|      19|       2|       3|       4|       8|       6|      11|       4|       3|       6|      14|       4|       9|       0|       1|       0|     131|       5|       3|       5|       9|      13|       2|      10|       4|       9|       8|       3|       3|
|emotional-classification                             |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|     155|       3|       1|       2|      27|       9|       0|       0|      13|      63|       1|       8|       2|       8|     597|      33|      20|
|megatron-bert-base-swedish-cased-125k                |      NA|       0|     353|       0|       2|       8|       1|       3|     131|      55|     158|      27|      21|      19|       7|       6|      10|      10|       4|       2|       0|       4|      29|      22|       5|       3|       4|      67|       8|       2|       6|      32|      17|      27|
|megatron-bert-base-swedish-cased-600k                |      NA|      10|     288|      87|      30|      16|      16|      17|     111|      12|      20|     194|      27|      49|      13|      15|     100|      22|       2|       2|      15|      12|      41|      21|       5|      67|       6|      71|      30|       6|      13|      19|      18|      27|
|megatron-bert-large-swedish-cased-110k               |      NA|       0|     346|      77|       4|       4|       0|       1|       1|     171|     160|      15|       8|      23|       4|       2|       4|       3|       0|   33671|   14716|      38|      63|     106|      29|      70|      79|      43|      31|      24|      23|       8|      15|      21|
|megatron-bert-large-swedish-cased-165-zero-shot      |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       5|      55|      26|      63|      20|     621|      69|     135|      58|     170|      48|     243|     123|      40|     127|     147|      56|     123|     119|       7|      27|      40|      98|     217|
|megatron-bert-large-swedish-cased-165k               |      NA|      NA|       9|      13|      40|      19|      53|       2|      18|     336|     327|      21|      34|      67|      43|      56|      36|      52|      13|      86|      37|      12|     343|     153|      24|      18|      24|      15|      15|       3|       5|       9|      39|     342|
|megatron.bert-base.bpe-32k-no_pretok.25k-steps       |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       2|       4|       4|       5|       6|       2|
|megatron.bert-base.bpe-64k-no_pretok.25k-steps       |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       3|       3|       5|       4|       3|       2|
|megatron.bert-base.spe-bpe-32k-no_pretok.25k-steps   |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       3|       3|       4|       4|       6|       4|
|megatron.bert-base.spe-bpe-32k-pretok.25k-steps      |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       3|       3|       4|       4|       4|       2|
|megatron.bert-base.spe-bpe-64k-no_pretok.25k-steps   |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       3|       4|       4|       4|       0|       2|
|megatron.bert-base.spe-bpe-64k-pretok.25k-steps      |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       3|       2|       4|       5|       2|       2|
|megatron.bert-base.unigram-32k-no_pretok.25k-steps   |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       3|       3|       4|       4|       7|       0|
|megatron.bert-base.unigram-32k-pretok.25k-steps      |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       3|       3|       4|       3|       3|       2|
|megatron.bert-base.unigram-64k-no_pretok.25k-steps   |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       3|       3|       5|       4|       4|       0|
|megatron.bert-base.unigram-64k-pretok.25k-steps      |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       4|       3|       4|       4|       8|       2|
|megatron.bert-base.wordpiece-32k-no_pretok.25k-steps |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       3|       3|       4|       4|      15|       1|
|megatron.bert-base.wordpiece-32k-pretok.25k-steps    |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       9|       3|       3|       5|       5|       7|       3|
|megatron.bert-base.wordpiece-64k-no_pretok.25k-steps |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       3|       3|       5|       6|       5|       2|
|megatron.bert-base.wordpiece-64k-pretok.25k-steps    |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       3|       2|       4|      13|       4|       2|
|megatron.bert-large.bpe-64k-no_pretok.25k-steps      |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       3|       3|       4|       6|       4|       3|
|megatron.bert-large.spe-bpe-32k-pretok.25k-steps     |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       3|       3|       4|       7|      13|       3|
|megatron.bert-large.unigram-32k-pretok.25k-steps     |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       3|       2|       4|       5|       7|       4|
|megatron.bert-large.unigram-64k-pretok.25k-steps     |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       3|       3|       5|       7|       2|       3|
|megatron.bert-large.unigram-64k-pretok.500k-steps    |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|     310|      11|       1|       1|       2|       4|       5|       7|       0|
|megatron.bert-large.wordpiece-32k-pretok.25k-steps   |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       3|       3|       5|       6|       6|       3|
|megatron.bert-large.wordpiece-64k-pretok.25k-steps   |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       9|       4|       3|       5|       5|       7|       2|
|piper-tts-nst-swedish                                |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       1|       8|       3|       0|       0|       0|       1|       0|       0|       0|       3|       7|      11|       3|       1|       6|       1|       8|       6|
|roberta-base-swedish-cased                           |       7|       7|     471|       8|      78|       5|      67|       2|       0|       5|       5|      37|     150|       3|       6|     204|      10|       9|       1|       2|       2|       2|       3|       3|      30|      15|       9|       3|      10|       3|       8|       7|       8|       3|
|robust-swedish-sentiment-multiclass                  |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      12|     296|       8|      58|     119|    1505|    2263|    2206|    2178|    2895|    7783|    2968|    5544|   36910|    5320|   10749|    5771|    7277|
|sentence-bert-swedish-cased                          |    2033|    1988|    2079|    8110|     721|    1299|     304|    1157|     597|    1008|     887|    1441|     546|    3499|     955|     970|     327|     328|    2135|    2841|    1071|    1067|    1258|     383|    1733|    6143|  101722|    8376|   15360|    1376|    1874|   23133|    6131|    4970|
|swedish-ocr-correction                               |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      16|      17|
|swedish-spacy-pipeline                               |      65|      22|       5|       2|       5|       9|       1|       2|       0|       1|       3|       4|       6|      90|       3|       1|       0|       1|       3|       9|       5|       5|       5|       3|      56|       5|       4|       2|       2|       8|       9|       5|      28|       8|
|wav2vec2-base-voxpopuli-sv-swedish                   |      NA|      21|      19|       7|       1|      NA|       1|       5|      99|       6|       2|      13|      57|      12|      56|       4|      26|       9|       0|       1|       7|       4|       2|     113|       5|       6|      12|       4|       9|       6|      14|      27|      20|      23|
|wav2vec2-large-voxpopuli-sv-swedish                  |      58|      32|      73|      57|      24|       5|       5|      11|      59|      15|       7|      23|       9|      10|      13|      10|       7|      14|       4|       1|       5|      26|       2|       3|      12|     117|      14|      13|       2|      19|      12|      14|      41|      23|
|wav2vec2-large-voxrex                                |     780|     609|     996|      57|     102|      55|      13|      34|      74|       4|       0|      56|      17|      11|       8|      17|       4|      15|       2|       1|      13|       6|       3|       1|      12|      10|      10|      20|      18|       8|      13|      94|      35|      53|
|wav2vec2-large-voxrex-swedish                        |    1356|    1151|    1534|    2331|    1277|     334|     361|     611|     531|   10157|     146|     770|     411|     732|     290|     225|      65|     330|     217|     624|     752|     769|     829|     392|    3000|    2389|    3129|    4330|    5762|    7066|   20122|    7507|   38441|   39341|
|wav2vec2-large-xlsr-53-swedish                       |      NA|     112|      55|      32|     259|      91|      19|       9|      61|      26|     307|      71|      32|      76|      26|      31|      45|      65|      50|      77|     126|     586|     188|    2766|    8897|    8785|    2962|   24811|   12976|    4572|    8654|   19055|   30321|   39315|
|whisper-large-rixvox                                 |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|     113|      56|       8|       9|      12|       9|       6|       0|      16|       0|       2|      19|      38|      18|      12|      11|      31|       8|      28|      57|      44|
|whisper-small-rixvox                                 |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       3|       1|       6|       2|       7|       0|       0|       0|       1|       0|       0|       0|      13|       2|       1|       7|       1|       6|       4|       3|       8|
|whisper-tiny-rixvox                                  |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       9|       1|       5|       4|       7|       3|       0|       0|       1|       0|       0|       2|      12|       6|       1|       7|       1|       5|       3|       9|       7|