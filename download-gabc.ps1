function Get-ScriptDirectory {
    $Invocation = (Get-Variable MyInvocation -Scope 1).Value
    Split-Path $Invocation.MyCommand.Path
}
$url = 'http://gregobase.selapa.net/download.php?format=gabc&id='
$ids = (1,8,13,17,25,39,42,43,44,47,49,57,67,68,72,77,78,79,93,99,107,113,117,132,135,143,144,150,159,167,171,172,182,191,200,202,205,210,211,217,218,222,224,230,239,241,242,260,263,265,275,284,292,294,299,308,311,318,324,325,327,331,332,335,336,338,339,349,356,361,367,372,373,388,389,391,395,396,403,404,405,423,446,455,464,479,490,501,505,512,518,522,524,529,536,538,547,551,554,564,574,577,579,580,585,591,592,595,596,614,616,626,631,633,640,645,648,650,651,652,653,668,670,675,677,691,696,697,708,709,714,715,725,726,727,735,742,745,747,760,761,766,774,782,789,794,797,798,801,811,812,813,816,820,834,838,848,850,855,860,863,865,868,874,879,886,889,890,899,912,916,917,918,923,924,926,932,933,937,952,953,962,965,966,967,979,980,986,990,993,1001,1007,1011,1022,1026,1033,1036,1040,1041,1042,1043,1044,1046,1047,1052,1056,1058,1071,1075,1077,1079,1080,1082,1086,1088,1090,1091,1097,1100,1108,1111,1115,1123,1125,1134,1136,1139,1144,1145,1147,1148,1163,1165,1168,1169,1171,1173,1175,1178,1182,1192,1194,1198,1199,1203,1205,1220,1221,1225,1226,1230,1232,1235,1245,1246,1254,1261,1264,1265,1268,1271,1274,1282,1284,1289,1290,1294,1298,1299,1303,1308,1317,1318,1328,1329,1338,1341,1343,1348,1352,1353,1355,1357,1363,1377,1380,1381,1531,1549,1624,1644);
$ids = (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,23,24,25,26,27,28,29,32,33,34,35,38,39,40,41,42,43,44,45,47,48,49,50,51,52,54,55,56,57,59,60,61,62,63,65,66,67,68,69,70,72,73,74,75,76,77,78,79,80,81,82,84,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,138,139,140,141,143,144,145,146,147,148,149,150,151,152,153,154,155,156,158,159,160,161,162,163,164,165,166,167,169,170,171,172,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,248,249,250,251,252,253,254,255,256,257,258,260,261,262,263,265,266,267,268,269,270,271,274,275,276,277,278,280,281,282,283,284,285,286,287,289,290,292,293,294,295,296,297,299,301,302,304,305,306,307,308,310,311,312,314,315,316,317,318,319,320,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,338,339,340,341,343,345,346,347,348,349,350,351,352,354,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,377,379,380,381,382,383,384,385,388,389,390,391,392,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,429,430,432,433,434,436,437,438,439,440,442,443,444,445,446,448,449,450,451,452,453,454,455,456,458,459,460,461,462,464,465,466,467,468,469,470,471,472,473,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,498,499,500,501,502,503,505,506,507,508,509,510,511,512,514,515,516,518,519,520,521,522,523,524,525,526,527,528,529,530,531,533,534,535,536,538,539,540,542,544,546,547,548,549,550,551,552,553,554,556,557,558,559,560,561,562,563,564,565,567,568,569,570,571,572,573,574,575,576,577,579,580,581,582,583,584,585,586,588,589,590,591,592,593,594,595,596,597,598,599,600,601,603,604,605,607,608,609,610,611,613,614,615,616,617,618,619,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,639,640,641,642,643,644,645,646,647,648,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,695,696,697,698,699,700,701,702,703,704,705,706,708,709,710,711,712,713,714,715,717,718,719,720,722,723,724,725,726,727,728,729,730,731,732,733,734,735,737,738,739,740,741,742,744,745,746,747,748,750,751,752,754,755,756,757,758,760,761,762,763,764,765,766,767,768,769,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,796,797,798,799,800,801,802,803,805,806,807,808,809,810,811,812,813,814,815,816,818,819,820,821,822,824,826,827,828,829,830,831,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,857,858,859,860,861,863,864,865,866,867,868,869,870,872,873,874,875,876,877,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,902,903,904,906,907,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,936,937,938,939,941,942,944,945,946,947,948,949,950,951,952,953,954,956,957,960,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1007,1008,1009,1010,1011,1012,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023,1024,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1052,1053,1054,1055,1056,1057,1058,1059,1060,1063,1064,1066,1069,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,1080,1082,1083,1084,1085,1086,1087,1088,1090,1091,1093,1094,1095,1096,1097,1098,1099,1100,1101,1102,1103,1104,1105,1107,1108,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121,1122,1123,1124,1125,1126,1127,1129,1130,1131,1132,1133,1134,1135,1136,1138,1139,1140,1141,1142,1144,1145,1146,1147,1148,1149,1150,1151,1153,1154,1156,1157,1158,1159,1161,1162,1163,1164,1165,1166,1167,1168,1169,1170,1171,1172,1173,1174,1175,1176,1177,1178,1179,1180,1181,1182,1183,1185,1186,1187,1188,1189,1190,1191,1192,1193,1194,1195,1196,1197,1198,1199,1200,1201,1202,1203,1205,1206,1207,1209,1210,1211,1212,1213,1214,1216,1217,1218,1219,1220,1221,1222,1223,1224,1225,1226,1228,1229,1230,1231,1232,1233,1234,1235,1236,1237,1239,1240,1244,1245,1246,1247,1248,1249,1250,1251,1253,1254,1255,1256,1257,1258,1259,1260,1261,1263,1264,1265,1266,1267,1268,1269,1270,1271,1272,1273,1274,1275,1276,1277,1278,1281,1282,1283,1284,1285,1286,1287,1289,1290,1291,1292,1293,1294,1295,1296,1297,1298,1299,1300,1301,1302,1303,1304,1305,1306,1307,1308,1309,1313,1314,1315,1316,1317,1318,1319,1320,1321,1322,1323,1324,1325,1326,1327,1328,1329,1330,1331,1332,1333,1334,1337,1338,1339,1340,1341,1342,1343,1344,1345,1346,1347,1348,1349,1350,1351,1352,1353,1354,1355,1356,1357,1359,1360,1361,1362,1363,1364,1365,1366,1367,1368,1369,1370,1371,1372,1373,1374,1375,1376,1377,1378,1379,1380,1381,1382,1383,1388,1395,1407,1412,1437,1456,1499,1500,1505,1531,1535,1549,1552,1561,1597,1624,1638,1644,1648,1661,1667,1678,1689,1763,1769,1815,1816,2028,2441,3025,3028,3032,3040,3266)
$count = $ids.length;
$path = Join-Path (Get-ScriptDirectory) 'gabc';
foreach($id in $ids) {
    echo "$count ($id)";
    $gabc = (New-Object System.Net.WebClient).DownloadString("$url$id");
    set-content -Path "$path\$id.gabc" -Value $gabc; # -Encoding UTF8;
    $count--;
}