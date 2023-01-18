## Huggingface download statistics

This repo tracks monthly downloads of KBLab's models on Huggingface. It tracks models published both under the KB and the KBLab organization names. 

Script is run monthly, and a monthly `csv`-file outputted to `/data` folder.

## Plots

!["Total downloads of KB:s models on Huggingface."](https://github.com/kb-labb/huggingface_stats/blob/main/plots/downloads_total.jpg)

!["Huggingface downloads by model plot."](https://github.com/kb-labb/huggingface_stats/blob/main/plots/downloads_by_model.jpg)

## Table of downloads

|model_name                                      | 2022-02| 2022-03| 2022-04| 2022-05| 2022-06| 2022-07| 2022-08| 2022-09| 2022-10| 2022-11| 2022-12| 2023-01|
|:-----------------------------------------------|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|-------:|
|albert-base-swedish-cased-alpha                 |     126|     252|      61|      52|      52|      28|      31|      17|      30|      64|     229|      37|
|asr-voxrex-bart-base                            |      11|      10|      19|       5|       2|       1|       1|       3|       2|       3|       2|       4|
|bart-base-swedish-cased                         |      74|      12|     116|     126|      32|      18|      41|      56|      81|       6|       9|      18|
|bert-base-swedish-cased                         |   16509|   25080|   49286|   82528|   38802|   29511|   17012|   25106|   36702|   92636|   44016|   28164|
|bert-base-swedish-cased-alpha                   |      22|      24|    1362|      34|       8|      73|       7|      14|      14|      14|      10|     160|
|bert-base-swedish-cased-ner                     |   19891|    3353|    4783|    4221|   12487|   17406|   24290|   20200|   14852|   11251|   10014|    9759|
|bert-base-swedish-cased-neriob                  |       8|      87|      34|      25|       4|      44|       2|       1|      62|      10|       5|      31|
|bert-base-swedish-cased-new                     |      NA|       0|     377|    1069|     786|      10|     238|      69|     225|     168|     163|      46|
|bert-base-swedish-cased-pos                     |     428|     179|     107|     104|     168|     310|       2|       2|     467|    7959|    2083|   21410|
|bert-base-swedish-cased-reallysimple-ner        |       6|      32|       9|       7|      11|      10|       3|       8|      10|      17|       4|      16|
|bert-base-swedish-cased-squad-experimental      |     323|     136|      45|      23|      40|     182|      25|      27|     101|      10|      22|      62|
|bert-base-swedish-lowermix-reallysimple-ner     |       6|     453|     248|     312|     901|     991|     930|     871|    2274|    3958|    1963|    3010|
|electra-base-swedish-cased-discriminator        |     317|     143|     149|    1404|       2|       3|       3|       3|       2|       5|       0|       7|
|electra-base-swedish-cased-generator            |       9|      15|      26|      31|       2|      19|       1|      18|       1|       9|       4|      10|
|electra-small-swedish-cased-discriminator       |      12|       5|    1467|    3804|      10|       5|       2|       2|       2|      10|       8|      12|
|electra-small-swedish-cased-generator           |      NA|       3|     138|      14|       4|      19|       2|       3|       4|       8|       6|      11|
|megatron-bert-base-swedish-cased-125k           |      NA|       0|     353|       0|       2|       8|       1|       3|     131|      55|     158|      27|
|megatron-bert-base-swedish-cased-600k           |      NA|      10|     288|      87|      30|      16|      16|      17|     111|      12|      20|     194|
|megatron-bert-large-swedish-cased-110k          |      NA|       0|     346|      77|       4|       4|       0|       1|       1|     171|     160|      15|
|megatron-bert-large-swedish-cased-165-zero-shot |      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|      NA|       5|      55|
|megatron-bert-large-swedish-cased-165k          |      NA|      NA|       9|      13|      40|      19|      53|       2|      18|     336|     327|      21|
|roberta-base-swedish-cased                      |       7|       7|     471|       8|      78|       5|      67|       2|       0|       5|       5|      37|
|sentence-bert-swedish-cased                     |    2033|    1988|    2079|    8110|     721|    1299|     304|    1157|     597|    1008|     887|    1441|
|swedish-spacy-pipeline                          |      65|      22|       5|       2|       5|       9|       1|       2|       0|       1|       3|       4|
|wav2vec2-base-voxpopuli-sv-swedish              |      NA|      21|      19|       7|       1|      NA|       1|       5|      99|       6|       2|      13|
|wav2vec2-large-voxpopuli-sv-swedish             |      58|      32|      73|      57|      24|       5|       5|      11|      59|      15|       7|      23|
|wav2vec2-large-voxrex                           |     780|     609|     996|      57|     102|      55|      13|      34|      74|       4|       0|      56|
|wav2vec2-large-voxrex-swedish                   |    1356|    1151|    1534|    2331|    1277|     334|     361|     611|     531|   10157|     146|     770|
|wav2vec2-large-xlsr-53-swedish                  |      NA|     112|      55|      32|     259|      91|      19|       9|      61|      26|     307|      71|