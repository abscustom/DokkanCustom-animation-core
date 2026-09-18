-- 4030490:LR_超サイヤ人孫悟空(天使)+超サイヤ人ベジータ(天使)_アクティブ必殺技：フュージョン失敗！？
-- sp_effect_b1_00304
-- ut0082

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01  = 163485;  --   ef_001 フュ〜ジョン〜ベック〜ずっこけパンチ
SP_01b = 163487;  --   ef_001b フュ〜ジョン〜ベック〜ずっこけパンチ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);

setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;---記載するspepの数に要注意

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 1290 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 1218 -1);  -- スキップ先フレーム指定

           --こける
           SE054 = playSeVer2( spep_0 + 1218, 1415, "", 0, 0, 0, -1);
           SE055 = playSeVer2( spep_0 + 1218, 38, "", 0, 0, 0, -1);

       end
    else end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- フュ〜ジョン〜ベック〜ずっこけパンチ
------------------------------------------------------
MAX_FRAME_0 = 1482;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- フュ〜ジョン〜ベック〜ずっこけパンチ(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- フュ〜ジョン〜ベック〜ずっこけパンチ(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

shuchusen_wh = entryEffectLife( spep_0 + 1320, 906, 22, 0x100, -1, 0, 0, 0 );  --集中線 白
setEffShake( spep_0 + 1320, shuchusen_N, 22, 20 );
setEffMoveKey( spep_0 + 1320, shuchusen_wh, 0, 0, 0 );
setEffMoveKey( spep_0 + 1344, shuchusen_wh, 0, 0, 0 );
setEffScaleKey( spep_0 + 1320, shuchusen_wh, 1.6, 1.6 );
setEffScaleKey( spep_0 + 1344, shuchusen_wh, 1.6, 1.6 );
setEffRotateKey( spep_0 + 1320, shuchusen_wh, 0 );
setEffRotateKey( spep_0 + 1344, shuchusen_wh, 0 );
setEffAlphaKey( spep_0 + 1320, shuchusen_wh, 255 );
setEffAlphaKey( spep_0 + 1344, shuchusen_wh, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 690 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 824 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 690 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 690 + OFFSET_X, 1, 162.1, 57.3 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, 162.1, 57.3 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 162.1, 33.5 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, 162.1, 33.5 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 169.7, 69.2 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, 169.7, 69.2 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 162.1, 33.1 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, 162.1, 33.1 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, 169.7, 69.2 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 169.7, 69.2 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 162.1, 33.1 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, 162.1, 33.1 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 169.7, 69.2 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 169.7, 69.2 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 162.1, 33.1 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 162.1, 33.1 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 169.7, 69.2 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 169.7, 69.2 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 162.1, 33.1 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, 162.1, 33.1 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 167, 63.6 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 167, 63.6 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 161.9, 40.6 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 161.9, 40.6 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 165.5, 62.5 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 165.5, 62.5 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 162.1, 57.3 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, 162.1, 57.3 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, 162.1, 73.3 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, 162.1, 73.3 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, 162.1, 41.3 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, 162.1, 41.3 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, 162.1, 57.3 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, 162.1, 57.3 , 0 );

setScaleKey( spep_0 + 690 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 824 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_0 + 690 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 824 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 1266 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1374 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1266 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 1320 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 1266 + OFFSET_X, 1, 160.4, -21.8 , 0 );
setMoveKey( spep_0 + 1267 + OFFSET_X, 1, 160.4, -21.8 , 0 );
setMoveKey( spep_0 + 1268 + OFFSET_X, 1, 160.4, -13.8 , 0 );
setMoveKey( spep_0 + 1269 + OFFSET_X, 1, 160.4, -13.8 , 0 );
setMoveKey( spep_0 + 1270 + OFFSET_X, 1, 160.4, -29.8 , 0 );
setMoveKey( spep_0 + 1271 + OFFSET_X, 1, 160.4, -29.8 , 0 );
setMoveKey( spep_0 + 1272 + OFFSET_X, 1, 152.4, -21.8 , 0 );
setMoveKey( spep_0 + 1273 + OFFSET_X, 1, 152.4, -21.8 , 0 );
setMoveKey( spep_0 + 1274 + OFFSET_X, 1, 168.4, -21.8 , 0 );
setMoveKey( spep_0 + 1275 + OFFSET_X, 1, 168.4, -21.8 , 0 );
setMoveKey( spep_0 + 1276 + OFFSET_X, 1, 160.4, -13.8 , 0 );
setMoveKey( spep_0 + 1277 + OFFSET_X, 1, 160.4, -13.8 , 0 );
setMoveKey( spep_0 + 1278 + OFFSET_X, 1, 160.4, -29.8 , 0 );
setMoveKey( spep_0 + 1279 + OFFSET_X, 1, 160.4, -29.8 , 0 );
setMoveKey( spep_0 + 1280 + OFFSET_X, 1, 152.4, -21.8 , 0 );
setMoveKey( spep_0 + 1281 + OFFSET_X, 1, 152.4, -21.8 , 0 );
setMoveKey( spep_0 + 1282 + OFFSET_X, 1, 168.4, -21.8 , 0 );
setMoveKey( spep_0 + 1283 + OFFSET_X, 1, 168.4, -21.8 , 0 );
setMoveKey( spep_0 + 1284 + OFFSET_X, 1, 160.4, -13.8 , 0 );
setMoveKey( spep_0 + 1285 + OFFSET_X, 1, 160.4, -13.8 , 0 );
setMoveKey( spep_0 + 1286 + OFFSET_X, 1, 160.4, -29.8 , 0 );
setMoveKey( spep_0 + 1287 + OFFSET_X, 1, 160.4, -29.8 , 0 );
setMoveKey( spep_0 + 1288 + OFFSET_X, 1, 152.4, -21.8 , 0 );
setMoveKey( spep_0 + 1289 + OFFSET_X, 1, 152.4, -21.8 , 0 );
setMoveKey( spep_0 + 1290 + OFFSET_X, 1, 168.4, -21.8 , 0 );
setMoveKey( spep_0 + 1291 + OFFSET_X, 1, 168.4, -21.8 , 0 );
setMoveKey( spep_0 + 1292 + OFFSET_X, 1, 160.4, -17.8 , 0 );
setMoveKey( spep_0 + 1293 + OFFSET_X, 1, 160.4, -17.8 , 0 );
setMoveKey( spep_0 + 1294 + OFFSET_X, 1, 160.4, -25.8 , 0 );
setMoveKey( spep_0 + 1295 + OFFSET_X, 1, 160.4, -25.8 , 0 );
setMoveKey( spep_0 + 1296 + OFFSET_X, 1, 156.4, -21.8 , 0 );
setMoveKey( spep_0 + 1297 + OFFSET_X, 1, 156.4, -21.8 , 0 );
setMoveKey( spep_0 + 1298 + OFFSET_X, 1, 164.4, -21.8 , 0 );
setMoveKey( spep_0 + 1299 + OFFSET_X, 1, 164.4, -21.8 , 0 );
setMoveKey( spep_0 + 1300 + OFFSET_X, 1, 160.4, -17.8 , 0 );
setMoveKey( spep_0 + 1301 + OFFSET_X, 1, 160.4, -17.8 , 0 );
setMoveKey( spep_0 + 1302 + OFFSET_X, 1, 160.4, -25.8 , 0 );
setMoveKey( spep_0 + 1303 + OFFSET_X, 1, 160.4, -25.8 , 0 );
setMoveKey( spep_0 + 1304 + OFFSET_X, 1, 156.4, -21.8 , 0 );
setMoveKey( spep_0 + 1305 + OFFSET_X, 1, 156.4, -21.8 , 0 );
setMoveKey( spep_0 + 1306 + OFFSET_X, 1, -0.1, -130.3 , 0 );
setMoveKey( spep_0 + 1319 + OFFSET_X, 1, -0.1, -130.3 , 0 );
setMoveKey( spep_0 + 1320 + OFFSET_X, 1, 171.9, -71.2 , 0 );
setMoveKey( spep_0 + 1321 + OFFSET_X, 1, 171.9, -71.2 , 0 );
setMoveKey( spep_0 + 1322 + OFFSET_X, 1, 171.9, -59.2 , 0 );
setMoveKey( spep_0 + 1323 + OFFSET_X, 1, 171.9, -59.2 , 0 );
setMoveKey( spep_0 + 1324 + OFFSET_X, 1, 171.9, 29.5 , 0 );
setMoveKey( spep_0 + 1325 + OFFSET_X, 1, 171.9, 29.5 , 0 );
setMoveKey( spep_0 + 1326 + OFFSET_X, 1, 146.9, -162.1 , 0 );
setMoveKey( spep_0 + 1327 + OFFSET_X, 1, 146.9, -162.1 , 0 );
setMoveKey( spep_0 + 1328 + OFFSET_X, 1, 111.3, -46.2 , 0 );
setMoveKey( spep_0 + 1329 + OFFSET_X, 1, 111.3, -46.2 , 0 );
setMoveKey( spep_0 + 1330 + OFFSET_X, 1, 247.6, -46.2 , 0 );
setMoveKey( spep_0 + 1331 + OFFSET_X, 1, 247.6, -46.2 , 0 );
setMoveKey( spep_0 + 1332 + OFFSET_X, 1, 174.6, 24.8 , 0 );
setMoveKey( spep_0 + 1333 + OFFSET_X, 1, 174.6, 24.8 , 0 );
setMoveKey( spep_0 + 1334 + OFFSET_X, 1, 177.2, -86 , 0 );
setMoveKey( spep_0 + 1335 + OFFSET_X, 1, 177.2, -86 , 0 );
setMoveKey( spep_0 + 1336 + OFFSET_X, 1, 179.9, -15 , 0 );
setMoveKey( spep_0 + 1337 + OFFSET_X, 1, 179.9, -15 , 0 );
setMoveKey( spep_0 + 1338 + OFFSET_X, 1, 182.6, -4.6 , 0 );
setMoveKey( spep_0 + 1339 + OFFSET_X, 1, 182.6, -4.6 , 0 );
setMoveKey( spep_0 + 1340 + OFFSET_X, 1, 185.2, 5.7 , 0 );
setMoveKey( spep_0 + 1341 + OFFSET_X, 1, 185.2, 5.7 , 0 );
setMoveKey( spep_0 + 1342 + OFFSET_X, 1, 187.9, 16.1 , 0 );
setMoveKey( spep_0 + 1343 + OFFSET_X, 1, 187.9, 16.1 , 0 );
setMoveKey( spep_0 + 1344 + OFFSET_X, 1, 190.6, 26.5 , 0 );
setMoveKey( spep_0 + 1345 + OFFSET_X, 1, 190.6, 26.5 , 0 );
setMoveKey( spep_0 + 1346 + OFFSET_X, 1, 104.4, -107.2 , 0 );
setMoveKey( spep_0 + 1347 + OFFSET_X, 1, 104.4, -107.2 , 0 );
setMoveKey( spep_0 + 1348 + OFFSET_X, 1, 110.4, -83.4 , 0 );
setMoveKey( spep_0 + 1349 + OFFSET_X, 1, 110.4, -83.4 , 0 );
setMoveKey( spep_0 + 1350 + OFFSET_X, 1, 116.3, -59.5 , 0 );
setMoveKey( spep_0 + 1351 + OFFSET_X, 1, 116.3, -59.5 , 0 );
setMoveKey( spep_0 + 1352 + OFFSET_X, 1, 121.7, -35.4 , 0 );
setMoveKey( spep_0 + 1353 + OFFSET_X, 1, 121.7, -35.4 , 0 );
setMoveKey( spep_0 + 1354 + OFFSET_X, 1, 127.2, -11.4 , 0 );
setMoveKey( spep_0 + 1355 + OFFSET_X, 1, 127.2, -11.4 , 0 );
setMoveKey( spep_0 + 1356 + OFFSET_X, 1, 132.8, 12.7 , 0 );
setMoveKey( spep_0 + 1357 + OFFSET_X, 1, 132.8, 12.7 , 0 );
setMoveKey( spep_0 + 1358 + OFFSET_X, 1, 138.6, 36.7 , 0 );
setMoveKey( spep_0 + 1359 + OFFSET_X, 1, 138.6, 36.7 , 0 );
setMoveKey( spep_0 + 1360 + OFFSET_X, 1, 144.4, 60.6 , 0 );
setMoveKey( spep_0 + 1361 + OFFSET_X, 1, 144.4, 60.6 , 0 );
setMoveKey( spep_0 + 1362 + OFFSET_X, 1, 150.3, 84.5 , 0 );
setMoveKey( spep_0 + 1363 + OFFSET_X, 1, 150.3, 84.5 , 0 );
setMoveKey( spep_0 + 1364 + OFFSET_X, 1, 156.4, 108.3 , 0 );
setMoveKey( spep_0 + 1365 + OFFSET_X, 1, 156.4, 108.3 , 0 );
setMoveKey( spep_0 + 1366 + OFFSET_X, 1, 162.5, 132.1 , 0 );
setMoveKey( spep_0 + 1367 + OFFSET_X, 1, 162.5, 132.1 , 0 );
setMoveKey( spep_0 + 1368 + OFFSET_X, 1, 168.8, 155.8 , 0 );
setMoveKey( spep_0 + 1369 + OFFSET_X, 1, 168.8, 155.8 , 0 );
setMoveKey( spep_0 + 1370 + OFFSET_X, 1, 175.1, 179.4 , 0 );
setMoveKey( spep_0 + 1371 + OFFSET_X, 1, 175.1, 179.4 , 0 );
setMoveKey( spep_0 + 1372 + OFFSET_X, 1, 181.6, 202.9 , 0 );
setMoveKey( spep_0 + 1374 + OFFSET_X, 1, 181.6, 202.9 , 0 );

setScaleKey( spep_0 + 1266 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 1305 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 1306 + OFFSET_X, 1, 16.51, 16.51 );
setScaleKey( spep_0 + 1319 + OFFSET_X, 1, 16.51, 16.51 );
setScaleKey( spep_0 + 1320 + OFFSET_X, 1, 15.58, 15.58 );
setScaleKey( spep_0 + 1331 + OFFSET_X, 1, 15.58, 15.58 );
setScaleKey( spep_0 + 1332 + OFFSET_X, 1, 15.43, 15.43 );
setScaleKey( spep_0 + 1333 + OFFSET_X, 1, 15.43, 15.43 );
setScaleKey( spep_0 + 1334 + OFFSET_X, 1, 15.28, 15.28 );
setScaleKey( spep_0 + 1335 + OFFSET_X, 1, 15.28, 15.28 );
setScaleKey( spep_0 + 1336 + OFFSET_X, 1, 15.13, 15.13 );
setScaleKey( spep_0 + 1337 + OFFSET_X, 1, 15.13, 15.13 );
setScaleKey( spep_0 + 1338 + OFFSET_X, 1, 14.99, 14.99 );
setScaleKey( spep_0 + 1339 + OFFSET_X, 1, 14.99, 14.99 );
setScaleKey( spep_0 + 1340 + OFFSET_X, 1, 14.84, 14.84 );
setScaleKey( spep_0 + 1341 + OFFSET_X, 1, 14.84, 14.84 );
setScaleKey( spep_0 + 1342 + OFFSET_X, 1, 14.69, 14.69 );
setScaleKey( spep_0 + 1343 + OFFSET_X, 1, 14.69, 14.69 );
setScaleKey( spep_0 + 1344 + OFFSET_X, 1, 14.54, 14.54 );
setScaleKey( spep_0 + 1345 + OFFSET_X, 1, 14.54, 14.54 );
setScaleKey( spep_0 + 1346 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 1347 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 1348 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 1349 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 1350 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 1351 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 1352 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 1353 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 1354 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 1355 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 1356 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 1357 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 1358 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 1359 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 1360 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 1361 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 1362 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 1363 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 1364 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 1365 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 1366 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 1367 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 1368 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 1369 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 1370 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 1371 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 1372 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 1374 + OFFSET_X, 1, 0.07, 0.07 );

setRotateKey( spep_0 + 1266 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1319 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1320 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 1333 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 1334 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_0 + 1339 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_0 + 1340 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_0 + 1345 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_0 + 1346 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1347 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1348 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 1349 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 1350 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_0 + 1351 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_0 + 1352 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_0 + 1353 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_0 + 1354 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_0 + 1355 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_0 + 1356 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_0 + 1357 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_0 + 1358 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_0 + 1359 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_0 + 1360 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_0 + 1361 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_0 + 1362 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_0 + 1363 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_0 + 1364 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_0 + 1365 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_0 + 1366 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_0 + 1367 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_0 + 1368 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_0 + 1369 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_0 + 1370 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_0 + 1371 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_0 + 1372 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_0 + 1374 + OFFSET_X, 1, 12.5 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 374, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--悟空腕まわす
SE002 = playSeVer2( spep_0 + 4, 1004, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 4, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 62 );

--ベジータ踏み出す
SE004 = playSeVer2( spep_0 + 74, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE004, 141 );
SE005 = playSeVer2( spep_0 + 74, 1192, "",spep_0 + 100, 0, 8, -1);
SE006 = playSeVer2( spep_0 + 100, 1301, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 104, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE007, 141 );

--二人歩み寄る
SE008 = playSeVer2( spep_0 + 122, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE008, 129 );
SE009 = playSeVer2( spep_0 + 122, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE009, 126 );
SE010 = playSeVer2( spep_0 + 132, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE010, 130 );
SE011 = playSeVer2( spep_0 + 132, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE011, 148 );
SE012 = playSeVer2( spep_0 + 142, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE012, 140 );
SE013 = playSeVer2( spep_0 + 144, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE013, 158 );
SE014 = playSeVer2( spep_0 + 150, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE014, 160 );
SE015 = playSeVer2( spep_0 + 152, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE015, 130 );

--足あげる
SE016 = playSeVer2( spep_0 + 186, 1189, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 186, 1003, "", 0, 0, 0, -1);

--体寄せる
SE018 = playSeVer2( spep_0 + 226, 1004, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 226, 1117, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 258, 1004, "", 0, 0, 0, -1);

--指とぐー合わせる
SE021 = playSeVer2( spep_0 + 300, 1233, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE021, 72 );
setStartTimeMs( SE021,  167 );
SE022 = playSeVer2( spep_0 + 296, 1189, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 296, 37, "", 0, 0, 0, -1);

--光る
SE024 = playSeVer2( spep_0 + 328, 1145, "",spep_0 + 412, 10, 32, -1);
setSeVolumeByWorkId( spep_0 + 328, SE024, 120 );
setStartTimeMs( SE024,  400 );
setPitch( spep_0 + 328, SE024, 500 );
setTimeStretch( SE024, 1.33, 30, 4 );
SE025 = playSeVer2( spep_0 + 330, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE025, 111 );
setPitch( spep_0 + 330, SE025, 200 );
setTimeStretch( SE025, 1.13, 30, 4 );
SE026 = playSeVer2( spep_0 + 330, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE026, 150 );
setPitch( spep_0 + 330, SE026, 300 );
setTimeStretch( SE026, 1.2, 30, 4 );

--光溢れる
SE027 = playSeVer2( spep_0 + 376, 1311, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE027, 144 );
SE028 = playSeVer2( spep_0 + 376, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE028, 137 );
SE029 = playSeVer2( spep_0 + 376, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE029, 144 );

--光爆発する
SE030 = playSeVer2( spep_0 + 450, 1284, "",spep_0 + 660, 0, 62, -1);
SE031 = playSeVer2( spep_0 + 450, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE031, 126 );
SE032 = playSeVer2( spep_0 + 450, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE032, 79 );

--白い円出てくる
SE033 = playSeVer2( spep_0 + 468, 1175, "",spep_0 + 748, 0, 78, -1);
setSeVolumeByWorkId( spep_0 + 468, SE033, 54 );
SE034 = playSeVer2( spep_0 + 482, 1305, "",spep_0 + 686, 0, 72, -1);
SE035 = playSeVer2( spep_0 + 534, 1275, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 534, SE035, 150 );
SE036 = playSeVer2( spep_0 + 544, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE036, 71 );
setPitch( spep_0 + 544, SE036, -500 );
setTimeStretch( SE036, 0.67, 30, 4 );

--落ちる
SE037 = playSeVer2( spep_0 + 648, 1004, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 656, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 656, SE038, 71 );

--風圧
SE039 = playSeVer2( spep_0 + 692, 1258, "",spep_0 + 808, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 692, SE039, 68 );

--着地
SE040 = playSeVer2( spep_0 + 730, 63, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 806, 1395, "",spep_0 + 882, 0, 30, -1);

--画面遷移
SE042 = playSeVer2( spep_0 + 824, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 824, SE042, 63 );

--指さす
SE043 = playSeVer2( spep_0 + 898, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 898, SE043, 158 );

--向かっていく
SE044 = playSeVer2( spep_0 + 1036, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1036, SE044, 77 );
SE045 = playSeVer2( spep_0 + 1036, 1116, "", 0, 0, 0, -1);

--走っていく
SE046 = playSeVer2( spep_0 + 1064, 1044, "",spep_0 + 1180, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 1064, SE046, 63 );
SE047 = playSeVer2( spep_0 + 1076, 1395, "",spep_0 + 1122, 0, 16, -1);
SE048 = playSeVer2( spep_0 + 1096, 1395, "",spep_0 + 1142, 0, 16, -1);
SE049 = playSeVer2( spep_0 + 1118, 1395, "",spep_0 + 1162, 0, 16, -1);
SE050 = playSeVer2( spep_0 + 1134, 1395, "", 0, 0, 0, -1);

--足絡まる
SE051 = playSeVer2( spep_0 + 1148, 31, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_0 + 1162, 1112, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 1178, 1112, "", 0, 0, 0, -1);

--こける
SE054 = playSeVer2( spep_0 + 1210, 1415, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 1210, 38, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_0 + 1234, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1234, SE056, 74 );
SE057 = playSeVer2( spep_0 + 1234, 31, "", 0, 0, 0, -1);

--スライディング
SE058 = playSeVer2( spep_0 + 1240, 1326, "",spep_0 + 1340, 0, 18, -1);
SE059 = playSeVer2( spep_0 + 1244, 1044, "",spep_0 + 1338, 0, 14, -1);
SE060 = playSeVer2( spep_0 + 1276, 1323, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1276, SE060, 71 );

-- ** ボイス ** --
--「フュー…ジョン！！」
playVoice( spep_0 + 102, 924 );
setVoiceVolume( spep_0 + 102, 924, 130 );

--「はっ！！」
playVoice( spep_0 + 230, 925 );
setVoiceVolume( spep_0 + 230, 925, 130 );

--「キサマを地獄に送ってやるぜ！！」
playVoice( spep_0 + 902, 928 );
setVoiceVolume( spep_0 + 902, 928, 120 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 1290; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE056, 0);
stopSe( SP_dodge - 12, SE057, 0);
stopSe( SP_dodge - 12, SE058, 0);
stopSe( SP_dodge - 12, SE059, 0);
stopSe( SP_dodge - 8, SE060, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge + 10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--パンチ
SE061 = playSeVer2( spep_0 + 1318, 1187, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_0 + 1318, 1120, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE063 = playSeVer2( spep_0 + 1342, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1342, SE063, 67 );

--敵星になる
SE065 = playSeVer2( spep_0 + 1364, 1042, "", 0, 0, 0, -1);
setPitch( spep_0 + 1364, SE065, 400 );
setTimeStretch( SE065, 1.27, 30, 4 );

--環境音
SE066 = playSeVer2( spep_0 + 1364, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1364, SE066, 25 );

--ラスト決め
SE067 = playSeVer2( spep_0 + 1426, 1291, "", 0, 0, 0, -1);

-- ** おわり ** --
-- hideKoScreen();
dealDamage( spep_0 + 1364 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 終了フレーム 1482f

else end
