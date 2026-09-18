--1029120:UR_ヒット_回避カウンター
--sp_effect_a9_00131
--c0025

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162966; --気だめから攻撃 ef_001 ef_001
SP_01b = 162968; --気だめから攻撃 ef_001b
SP_02 = 162969; --「ガッ」追加素材    ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
 
setVisibleUI( 0, 0);
 
changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);
 
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
 
------------------------------------------------------------------------------------------------------------
-- カウンター
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 28; --冒頭顔カットイン入るため28F固定
 
 
------------------------------------------------------
-- 気だめから攻撃
------------------------------------------------------
 
MAX_FRAME_0 = 158;
 
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 気だめから攻撃 ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
 
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 気だめから攻撃 ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- 白フェード
entryFade( spep_0 + 68, 0, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
entryFade( spep_0 + 158, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade

-- ** 敵キャラクター ** --
setDisp( spep_0 + 70 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 158 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 70 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 104 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 70 + OFFSET_X, 1, -67.4, 37.4 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -67.4, 37.4 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -124.4, 33.1 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -124.4, 33.1 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -174.7, 26.7 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -174.7, 26.7 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -168.4, 18 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -168.4, 18 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -97.3, -8.4 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -97.3, -8.4 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -99.3, -20.4 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -99.3, -20.4 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -101.3, -32.4 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -101.3, -32.4 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -103.3, -44.4 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -103.3, -44.4 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -93.3, -8.4 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -93.3, -8.4 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -95.4, -48.4 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -95.4, -48.4 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -94.7, -35.1 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -94.7, -35.1 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -94.1, -21.8 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -94.1, -21.8 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -93.4, -8.4 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -93.4, -8.4 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -93.5, -17.4 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -93.5, -17.4 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -93.5, -26.4 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -93.5, -26.4 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -93.5, -35.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -93.5, -35.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -93.5, -44.4 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -93.5, -44.4 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -93.5, -42.9 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -93.5, -42.9 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -93.6, -41.4 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -93.6, -41.4 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -93.6, -39.9 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -93.6, -39.9 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -93.6, -38.4 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -93.6, -38.4 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -93.6, -36.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -93.6, -36.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -380.5, -35.5 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -380.5, -35.5 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -667.4, -34.1 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -667.4, -34.1 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -954.4, -32.6 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -954.4, -32.6 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -1243.3, -32.6 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -1243.3, -32.6 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -1532.2, -32.7 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -1532.2, -32.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -1821.1, -32.8 , 0 );

setScaleKey( spep_0 + 70 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 2.64, 2.64 );

setRotateKey( spep_0 + 70 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, -73.6 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, -73.6 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, -102.2 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, -102.2 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, -130.9 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, -130.9 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, -159.5 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, -159.5 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -188.1 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, -188.1 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -216.7 );

-- ** 音 ** --
--異空間に包まれる
SE001 = playSeVer2( spep_0 + 6, 1329, "",spep_0 + 90, 10, 32, -1);
setStartTimeMs( SE001,  683 );
SE002 = playSeVer2( spep_0 + 4, 1264, "",spep_0 + 122, 0, 64, -1);
setPitch( spep_0 + 4, SE002, 300 );
setTimeStretch( SE002, 1.2, 30, 4 );
setBandpassFilter  ( spep_0 + 4, SE002, 800, 24000 );
SE003 = playSeVer2( spep_0 + 4, 1059, "",spep_0 + 98, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 59 );
setPitch( spep_0 + 4, SE003, 300 );
setTimeStretch( SE003, 1.2, 30, 4 );
--後回り込む
SE004 = playSeVer2( spep_0 + 46, 1116, "",spep_0 + 90, 0, 12, -1);
SE005 = playSeVer2( spep_0 + 46, 1025, "", 0, 14, 0, -1);
SE006 = playSeVer2( spep_0 + 46, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE006, 85 );
setPitch( spep_0 + 46, SE006, -400 );
setTimeStretch( SE006, 0.73, 30, 4 );


------------------------------------------------------
-- 回避
------------------------------------------------------
 
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 60; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge -12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    pauseAll( SP_dodge, 67 );
 
    speff = entryEffectUnpausable( SP_dodge -12, 1504, 0x100, -1, 0, 0, -350 ); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 ); -- カットイン差し替え
     
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350 ); -- 回避の文字表示
 
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    endPhase( SP_dodge + 10 );
 
do return end
else end
 
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** 
--パンチ
SE007 = playSeVer2( spep_0 + 96, 1011, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 96, 1027, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 96, 1017, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 104, 1109, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 104, 1026, "", 0, 0, 0, -1);
--敵吹き飛ぶ
SE012 = playSeVer2( spep_0 + 144, 1027, "", 0, 0, 0, -1);

------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if ( _IS_DEAD_ == 1 ) then

    stopSe( spep_0 + 120, SE007, 0 );
    stopSe( spep_0 + 120, SE008, 0 );
    stopSe( spep_0 + 120, SE009, 0 );
    stopSe( spep_0 + 120, SE010, 0 );
    stopSe( spep_0 + 120, SE011, 0 );

    setDisp( spep_0 + 128, 1, 1 );
    endPhase( spep_0 + 130 );
     
else
------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------
---------------------------------------------------------------------------------------------------
-- ガッの背景爆発
---------------------------------------------------------------------------------------------------
spep_N = spep_0 + MAX_FRAME_0; --　274

-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 8, 1692, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 8, finish_1f, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 0, 0 , 0 );
setEffScaleKey( spep_N + 8, finish_1f, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1f, 1.0, 1.0 );
setEffRotateKey( spep_N + 8, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 8, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

finish_1b = entryEffectLife( spep_N + 0, SP_02, spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_005)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
 
-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9） 
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );
 
shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );
 
-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );  
 
  -- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 107 );
 
--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );

-- ** 音 ** --
--爆発
SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);
 
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_N + 4, SE0N2, 80 );
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_N + 4, SE0N3, 110 );
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

end