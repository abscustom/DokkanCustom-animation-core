--1021970:タピオン&ミノシア_ブレイブヒートフラッシュ_sp2180
--sp_effect_b2_00039

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 157182;	 --タピオン、ミノシア敵に突撃〜ミノシア気溜め	ef_001
SP_02 = 157183;	 --タピオン、ミノシア敵に突撃〜ミノシア気溜め	ef_002
SP_03 = 157184;	 --ミノシア気弾発射〜フィニッシュ	ef_003
SP_04 = 157185;	 --ミノシア気弾発射〜フィニッシュ	ef_004

--敵側
SP_01r = 157186;  --※敵用　タピオン、ミノシア敵に突撃〜ミノシア気溜め	ef_001r
SP_02r = 157187;  --※敵用　タピオン、ミノシア敵に突撃〜ミノシア気溜め	ef_002r
SP_03r = 157188;  --※敵用　ミノシア気弾発射〜フィニッシュ	ef_003r
SP_04r = 157189;  --※敵用　ミノシア気弾発射〜フィニッシュ	ef_004r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- タピオン、ミノシア敵に突撃(354F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 354, 0x100, -1, 0, 0, 0 );  --タピオン、ミノシア敵に突撃〜ミノシア気溜め	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 354, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 354, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 354, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 354 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 354, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 354, 0x80, -1, 0, 0, 0 );  --タピオン、ミノシア敵に突撃〜ミノシア気溜め	ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 354, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 354, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 354, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 354 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 354, first_b, 0 );

-- ** 音 ** --
--2人ダッシュ
SE001 = playSe( spep_0 + 0, 1182 );

--2人ダッシュ
SE002 = playSe( spep_0 + 0, 9 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 75 );

--2人ダッシュ
SE003 = playSe( spep_0 + 0, 1314 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 66 );
stopSe( spep_0 + 88, SE003, 32 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 12 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

ctgyun = entryEffectLife( spep_0 -3 + 144,  10007, 24, 0x100, -1, 0, -33.2, 151.3 ); --ギュン
setEffMoveKey( spep_0 -3 + 144, ctgyun, -33.2, 151.3 , 0 );
setEffMoveKey( spep_0 -3 + 146, ctgyun, -36.2, 166 , 0 );
setEffMoveKey( spep_0 -3 + 148, ctgyun, -54.9, 198 , 0 );
setEffMoveKey( spep_0 -3 + 150, ctgyun, -77.1, 259.4 , 0 );
setEffMoveKey( spep_0 -3 + 152, ctgyun, -74.9, 270 , 0 );
setEffMoveKey( spep_0 -3 + 154, ctgyun, -83.2, 266.7 , 0 );
setEffMoveKey( spep_0 -3 + 156, ctgyun, -81.5, 275.2 , 0 );
setEffMoveKey( spep_0 -3 + 158, ctgyun, -79.5, 271.1 , 0 );
setEffMoveKey( spep_0 -3 + 160, ctgyun, -81.4, 273.8 , 0 );
setEffMoveKey( spep_0 -3 + 162, ctgyun, -78.5, 282 , 0 );
setEffMoveKey( spep_0 -3 + 164, ctgyun, -88.7, 282 , 0 );
setEffMoveKey( spep_0 -3 + 166, ctgyun, -88.9, 295.6 , 0 );
setEffMoveKey( spep_0 -3 + 168, ctgyun, -89.8, 298.2 , 0 );

setEffScaleKey( spep_0 -3 + 144, ctgyun, 1.13, 1.06 );
setEffScaleKey( spep_0 -3 + 146, ctgyun, 1.28, 1.2 );
setEffScaleKey( spep_0 -3 + 148, ctgyun, 1.73, 1.63 );
setEffScaleKey( spep_0 -3 + 150, ctgyun, 2.49, 2.35 );
setEffScaleKey( spep_0 -3 + 152, ctgyun, 2.54, 2.4 );
setEffScaleKey( spep_0 -3 + 154, ctgyun, 2.58, 2.43 );
setEffScaleKey( spep_0 -3 + 156, ctgyun, 2.61, 2.46 );
setEffScaleKey( spep_0 -3 + 158, ctgyun, 2.63, 2.48 );
setEffScaleKey( spep_0 -3 + 160, ctgyun, 2.63, 2.48 );
setEffScaleKey( spep_0 -3 + 162, ctgyun, 2.66, 2.51 );
setEffScaleKey( spep_0 -3 + 164, ctgyun, 2.75, 2.59 );
setEffScaleKey( spep_0 -3 + 166, ctgyun, 2.84, 2.67 );
setEffScaleKey( spep_0 -3 + 168, ctgyun, 2.87, 2.7 );

setEffRotateKey( spep_0 -3 + 144, ctgyun, 0 );
setEffRotateKey( spep_0 -3 + 168, ctgyun, 0 );

setEffAlphaKey( spep_0 -3 + 144, ctgyun, 255 );
setEffAlphaKey( spep_0 -3 + 160, ctgyun, 255 );
setEffAlphaKey( spep_0 -3 + 162, ctgyun, 223 );
setEffAlphaKey( spep_0 -3 + 164, ctgyun, 128 );
setEffAlphaKey( spep_0 -3 + 166, ctgyun, 32 );
setEffAlphaKey( spep_0 -3 + 168, ctgyun, 0 );

ctzan = entryEffectLife( spep_0 -3 + 252,  10010, 22, 0x100, -1, 0, -10.7, 131.7 );  --ザンッ
setEffMoveKey( spep_0 -3 + 252, ctzan, -10.7, 131.7 , 0 );
setEffMoveKey( spep_0 -3 + 254, ctzan, -1.1, 141 , 0 );
setEffMoveKey( spep_0 -3 + 256, ctzan, 8.4, 164.5 , 0 );
setEffMoveKey( spep_0 -3 + 258, ctzan, 37.8, 205.4 , 0 );
setEffMoveKey( spep_0 -3 + 260, ctzan, 48.1, 218 , 0 );
setEffMoveKey( spep_0 -3 + 262, ctzan, 57.8, 215.8 , 0 );
setEffMoveKey( spep_0 -3 + 264, ctzan, 57.2, 221.6 , 0 );
setEffMoveKey( spep_0 -3 + 266, ctzan, 64.8, 225.9 , 0 );
setEffMoveKey( spep_0 -3 + 268, ctzan, 59.3, 224.7 , 0 );
setEffMoveKey( spep_0 -3 + 270, ctzan, 68.2, 230.4 , 0 );
setEffMoveKey( spep_0 -3 + 272, ctzan, 59.7, 237.6 , 0 );
setEffMoveKey( spep_0 -3 + 274, ctzan, 62.3, 241.4 , 0 );

setEffScaleKey( spep_0 -3 + 252, ctzan, 1.23, 1.23 );
setEffScaleKey( spep_0 -3 + 254, ctzan, 1.34, 1.34 );
setEffScaleKey( spep_0 -3 + 256, ctzan, 1.66, 1.66 );
setEffScaleKey( spep_0 -3 + 258, ctzan, 2.21, 2.21 );
setEffScaleKey( spep_0 -3 + 260, ctzan, 2.29, 2.29 );
setEffScaleKey( spep_0 -3 + 262, ctzan, 2.35, 2.35 );
setEffScaleKey( spep_0 -3 + 264, ctzan, 2.39, 2.39 );
setEffScaleKey( spep_0 -3 + 266, ctzan, 2.42, 2.42 );
setEffScaleKey( spep_0 -3 + 268, ctzan, 2.42, 2.42 );
setEffScaleKey( spep_0 -3 + 270, ctzan, 2.47, 2.47 );
setEffScaleKey( spep_0 -3 + 272, ctzan, 2.59, 2.59 );
setEffScaleKey( spep_0 -3 + 274, ctzan, 2.64, 2.64 );

setEffRotateKey( spep_0 -3 + 252, ctzan, 20 );
setEffRotateKey( spep_0 -3 + 274, ctzan, 20 );

setEffAlphaKey( spep_0 -3 + 252, ctzan, 255 );
setEffAlphaKey( spep_0 -3 + 268, ctzan, 255 );
setEffAlphaKey( spep_0 -3 + 270, ctzan, 198 );
setEffAlphaKey( spep_0 -3 + 272, ctzan, 57 );
setEffAlphaKey( spep_0 -3 + 274, ctzan, 0 );

ctbuun = entryEffectLife( spep_0 -3 + 324,  10028, 33, 0x100, -1, 0, -20.6, -104.2 );  --ブゥ…ン
setEffMoveKey( spep_0 -3 + 324, ctbuun, -20.6, -104.2 , 0 );
setEffMoveKey( spep_0 -3 + 326, ctbuun, -16.4, -116.2 , 0 );
setEffMoveKey( spep_0 -3 + 328, ctbuun, -9.3, -136.1 , 0 );
setEffMoveKey( spep_0 -3 + 330, ctbuun, 0, -162 , 0 );
setEffMoveKey( spep_0 -3 + 332, ctbuun, 7.1, -181.9 , 0 );
setEffMoveKey( spep_0 -3 + 334, ctbuun, 11.4, -193.8 , 0 );
setEffMoveKey( spep_0 -3 + 336, ctbuun, 12.8, -197.8 , 0 );
setEffMoveKey( spep_0 -3 + 338, ctbuun, 14.1, -201.6 , 0 );
setEffMoveKey( spep_0 -3 + 340, ctbuun, 15.5, -205.4 , 0 );
setEffMoveKey( spep_0 -3 + 342, ctbuun, 16.9, -209.1 , 0 );
setEffMoveKey( spep_0 -3 + 344, ctbuun, 18.2, -212.9 , 0 );
setEffMoveKey( spep_0 -3 + 346, ctbuun, 18.7, -214.2 , 0 );
setEffMoveKey( spep_0 -3 + 348, ctbuun, 19.1, -215.4 , 0 );
setEffMoveKey( spep_0 -3 + 350, ctbuun, 19.6, -216.7 , 0 );
setEffMoveKey( spep_0 -3 + 352, ctbuun, 20, -218 , 0 );
setEffMoveKey( spep_0 -3 + 354, ctbuun, 20.5, -219.2 , 0 );
setEffMoveKey( spep_0 -3 + 356, ctbuun, 20.9, -220.5 , 0 );
setEffMoveKey( spep_0 -3 + 357, ctbuun, 20.9, -220.5 , 0 );

setEffScaleKey( spep_0 -3 + 324, ctbuun, 1.06, 1.06 );
setEffScaleKey( spep_0 -3 + 326, ctbuun, 1.22, 1.22 );
setEffScaleKey( spep_0 -3 + 328, ctbuun, 1.5, 1.5 );
setEffScaleKey( spep_0 -3 + 330, ctbuun, 1.87, 1.87 );
setEffScaleKey( spep_0 -3 + 332, ctbuun, 2.15, 2.15 );
setEffScaleKey( spep_0 -3 + 334, ctbuun, 2.31, 2.31 );
setEffScaleKey( spep_0 -3 + 336, ctbuun, 2.37, 2.37 );
setEffScaleKey( spep_0 -3 + 338, ctbuun, 2.42, 2.42 );
setEffScaleKey( spep_0 -3 + 340, ctbuun, 2.47, 2.47 );
setEffScaleKey( spep_0 -3 + 342, ctbuun, 2.52, 2.52 );
setEffScaleKey( spep_0 -3 + 344, ctbuun, 2.57, 2.57 );
setEffScaleKey( spep_0 -3 + 346, ctbuun, 2.59, 2.59 );
setEffScaleKey( spep_0 -3 + 348, ctbuun, 2.6, 2.6 );
setEffScaleKey( spep_0 -3 + 350, ctbuun, 2.62, 2.62 );
setEffScaleKey( spep_0 -3 + 352, ctbuun, 2.64, 2.64 );
setEffScaleKey( spep_0 -3 + 354, ctbuun, 2.65, 2.65 );
setEffScaleKey( spep_0 -3 + 356, ctbuun, 2.67, 2.67 );
setEffScaleKey( spep_0 -3 + 357, ctbuun, 2.67, 2.67 );

setEffRotateKey( spep_0 -3 + 324, ctbuun, 0 );
setEffRotateKey( spep_0 -3 + 357, ctbuun, 0 );

setEffAlphaKey( spep_0 -3 + 324, ctbuun, 10 );
setEffAlphaKey( spep_0 -3 + 326, ctbuun, 42 );
setEffAlphaKey( spep_0 -3 + 328, ctbuun, 94 );
setEffAlphaKey( spep_0 -3 + 330, ctbuun, 161 );
setEffAlphaKey( spep_0 -3 + 332, ctbuun, 213 );
setEffAlphaKey( spep_0 -3 + 334, ctbuun, 245 );
setEffAlphaKey( spep_0 -3 + 336, ctbuun, 255 );
setEffAlphaKey( spep_0 -3 + 344, ctbuun, 255 );
setEffAlphaKey( spep_0 -3 + 346, ctbuun, 213 );
setEffAlphaKey( spep_0 -3 + 348, ctbuun, 170 );
setEffAlphaKey( spep_0 -3 + 350, ctbuun, 128 );
setEffAlphaKey( spep_0 -3 + 352, ctbuun, 85 );
setEffAlphaKey( spep_0 -3 + 354, ctbuun, 42 );
setEffAlphaKey( spep_0 -3 + 357, ctbuun, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 90, 1, 1 );
setDisp( spep_0 -3 + 180, 1, 0 );

setDisp( spep_0 -3 + 252, 1, 1 );
setDisp( spep_0 -3 + 300, 1, 0 );
changeAnime( spep_0 -3 + 90, 1, 100 );
changeAnime( spep_0 -3 + 142, 1, 5 );
changeAnime( spep_0 -3 + 252, 1, 107 );

setMoveKey( spep_0 -3 + 90, 1, 202.4, 132.9 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 202.3, 132.8 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 202, 132.5 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 201.5, 132 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 200.7, 131.2 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 199.7, 130.1 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 198.3, 128.7 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 196.5, 126.9 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 194.3, 124.6 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 191.6, 121.8 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 188.2, 118.3 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 184, 114.1 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 178.9, 108.9 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 172.9, 102.7 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 165.9, 95.5 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 158.1, 87.6 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 150.3, 79.6 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 143.1, 72.2 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 137, 66 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 132.1, 61 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 128.4, 57.2 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 125.5, 54.3 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 123.5, 52.1 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 122, 50.7 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 121.1, 49.7 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 120.5, 49.2 , 0 );
setMoveKey( spep_0 -3 + 141, 1, 120.5, 49.2 , 0 );--
setMoveKey( spep_0 -3 + 142, 1, 19.4, -11.8 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 15.4, -16 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 16.1, -15.6 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 12.5, -22 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 14, -22.1 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 9, -27.8 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 10.5, -27.5 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 8.1, -33.9 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 6.9, -31.8 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 2.4, -37.6 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 5.6, -40.2 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 2.2, -41.1 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 0.9, -43.2 , 0 );
setMoveKey( spep_0 -3 + 168, 1, -0.2, -45.2 , 0 );
setMoveKey( spep_0 -3 + 170, 1, -1.4, -47.1 , 0 );
setMoveKey( spep_0 -3 + 172, 1, -2.4, -48.9 , 0 );
setMoveKey( spep_0 -3 + 174, 1, -3.4, -50.6 , 0 );
setMoveKey( spep_0 -3 + 176, 1, -4.4, -52.2 , 0 );
setMoveKey( spep_0 -3 + 178, 1, -5.2, -53.7 , 0 );
setMoveKey( spep_0 -3 + 180, 1, -5.2, -53.7 , 0 );
--
setMoveKey( spep_0 -3 + 252, 1, 133.8, -62 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 146.8, -55.4 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 177.7, -50.7 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 234.5, -35.5 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 312.7, -21.6 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 409, 3.4 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 534.4, 30.9 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 674.5, 60.8 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 841.5, 101.7 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 1027.1, 140.9 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 1237.4, 189.5 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 1468.9, 241.9 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 1722.3, 299.2 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 1997.7, 361.5 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 2273.1, 423.7 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 2526.4, 481 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 2757.6, 533.2 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 2966.8, 580.4 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 3153.9, 622.7 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 3319.1, 660 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 3462.1, 692.3 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 3583.2, 719.6 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 3682.2, 741.9 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 3759.3, 759.3 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 3759.3, 759.3 , 0 );

s1 = 0.4;
s2 = 0.6;
setScaleKey( spep_0 -3 + 90, 1, 0.8 +s1, 0.8 +s1 );
setScaleKey( spep_0 -3 + 92, 1, 0.8 +s1, 0.8 +s1 );
setScaleKey( spep_0 -3 + 94, 1, 0.81 +s1, 0.81 +s1 );
setScaleKey( spep_0 -3 + 96, 1, 0.82 +s1, 0.82 +s1 );
setScaleKey( spep_0 -3 + 98, 1, 0.83 +s1, 0.83 +s1 );
setScaleKey( spep_0 -3 + 100, 1, 0.85 +s1, 0.85 +s1 );
setScaleKey( spep_0 -3 + 102, 1, 0.88 +s1, 0.88 +s1 );
setScaleKey( spep_0 -3 + 104, 1, 0.92 +s1, 0.92 +s1 );
setScaleKey( spep_0 -3 + 106, 1, 0.96 +s1, 0.96 +s1 );
setScaleKey( spep_0 -3 + 108, 1, 1.02 +s1, 1.02 +s1 );
setScaleKey( spep_0 -3 + 110, 1, 1.08 +s1, 1.08 +s1 );
setScaleKey( spep_0 -3 + 112, 1, 1.17 +s1, 1.17 +s1 );
setScaleKey( spep_0 -3 + 114, 1, 1.27 +s1, 1.27 +s1 );
setScaleKey( spep_0 -3 + 116, 1, 1.39 +s1, 1.39 +s1 );
setScaleKey( spep_0 -3 + 118, 1, 1.53 +s1, 1.53 +s1 );
setScaleKey( spep_0 -3 + 120, 1, 1.68 +s1, 1.68 +s1 );
setScaleKey( spep_0 -3 + 122, 1, 1.83 +s1, 1.83 +s1 );
setScaleKey( spep_0 -3 + 124, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_0 -3 + 126, 1, 2.1 +s1, 2.1 +s1 );
setScaleKey( spep_0 -3 + 128, 1, 2.19 +s1, 2.19 +s1 );
setScaleKey( spep_0 -3 + 130, 1, 2.27 +s1, 2.27 +s1 );
setScaleKey( spep_0 -3 + 132, 1, 2.32 +s1, 2.32 +s1 );
setScaleKey( spep_0 -3 + 134, 1, 2.37 +s1, 2.37 +s1 );
setScaleKey( spep_0 -3 + 136, 1, 2.39 +s1, 2.39 +s1 );
setScaleKey( spep_0 -3 + 138, 1, 2.41 +s1, 2.41 +s1 );
setScaleKey( spep_0 -3 + 140, 1, 2.42 +s1, 2.42 +s1 );
setScaleKey( spep_0 -3 + 141, 1, 2.42 +s1, 2.42 +s1 );--
setScaleKey( spep_0 -3 + 142, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_0 -3 + 180, 1, 2 +s2, 2 +s2 );
--
setScaleKey( spep_0 -3 + 252, 1, 1, 1 );
setScaleKey( spep_0 -3 + 254, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 256, 1, 1.16, 1.16 );
setScaleKey( spep_0 -3 + 258, 1, 1.37, 1.37 );
setScaleKey( spep_0 -3 + 260, 1, 1.65, 1.65 );
setScaleKey( spep_0 -3 + 262, 1, 2.02, 2.02 );
setScaleKey( spep_0 -3 + 264, 1, 2.47, 2.47 );
setScaleKey( spep_0 -3 + 266, 1, 3, 3 );
setScaleKey( spep_0 -3 + 268, 1, 3.62, 3.62 );
setScaleKey( spep_0 -3 + 270, 1, 4.31, 4.31 );
setScaleKey( spep_0 -3 + 272, 1, 5.09, 5.09 );
setScaleKey( spep_0 -3 + 274, 1, 5.95, 5.95 );
setScaleKey( spep_0 -3 + 276, 1, 6.89, 6.89 );
setScaleKey( spep_0 -3 + 278, 1, 7.91, 7.91 );
setScaleKey( spep_0 -3 + 280, 1, 8.94, 8.94 );
setScaleKey( spep_0 -3 + 282, 1, 9.88, 9.88 );
setScaleKey( spep_0 -3 + 284, 1, 10.74, 10.74 );
setScaleKey( spep_0 -3 + 286, 1, 11.51, 11.51 );
setScaleKey( spep_0 -3 + 288, 1, 12.21, 12.21 );
setScaleKey( spep_0 -3 + 290, 1, 12.82, 12.82 );
setScaleKey( spep_0 -3 + 292, 1, 13.35, 13.35 );
setScaleKey( spep_0 -3 + 294, 1, 13.8, 13.8 );
setScaleKey( spep_0 -3 + 296, 1, 14.17, 14.17 );
setScaleKey( spep_0 -3 + 298, 1, 14.46, 14.46 );
setScaleKey( spep_0 -3 + 300, 1, 14.46, 14.46 );


setRotateKey( spep_0 -3 + 90, 1, 0 );
setRotateKey( spep_0 -3 + 141, 1, 0 );--
setRotateKey( spep_0 -3 + 142, 1, 0 );
setRotateKey( spep_0 -3 + 144, 1, 0.2 );
setRotateKey( spep_0 -3 + 146, 1, 0.3 );
setRotateKey( spep_0 -3 + 148, 1, 0.5 );
setRotateKey( spep_0 -3 + 150, 1, 0.6 );
setRotateKey( spep_0 -3 + 152, 1, 0.8 );
setRotateKey( spep_0 -3 + 154, 1, 0.9 );
setRotateKey( spep_0 -3 + 156, 1, 1.1 );
setRotateKey( spep_0 -3 + 158, 1, 1.2 );
setRotateKey( spep_0 -3 + 160, 1, 1.4 );
setRotateKey( spep_0 -3 + 162, 1, 1.5 );
setRotateKey( spep_0 -3 + 164, 1, 1.7 );
setRotateKey( spep_0 -3 + 166, 1, 1.8 );
setRotateKey( spep_0 -3 + 168, 1, 2 );
setRotateKey( spep_0 -3 + 170, 1, 2.1 );
setRotateKey( spep_0 -3 + 172, 1, 2.3 );
setRotateKey( spep_0 -3 + 174, 1, 2.4 );
setRotateKey( spep_0 -3 + 176, 1, 2.6 );
setRotateKey( spep_0 -3 + 178, 1, 2.7 );
setRotateKey( spep_0 -3 + 180, 1, 2.7 );
--
setRotateKey( spep_0 -3 + 252, 1, -75 );
setRotateKey( spep_0 -3 + 254, 1, -73.8 );
setRotateKey( spep_0 -3 + 256, 1, -72.6 );
setRotateKey( spep_0 -3 + 258, 1, -71.5 );
setRotateKey( spep_0 -3 + 260, 1, -70.4 );
setRotateKey( spep_0 -3 + 262, 1, -69.4 );
setRotateKey( spep_0 -3 + 264, 1, -68.4 );
setRotateKey( spep_0 -3 + 266, 1, -67.5 );
setRotateKey( spep_0 -3 + 268, 1, -66.7 );
setRotateKey( spep_0 -3 + 270, 1, -65.9 );
setRotateKey( spep_0 -3 + 272, 1, -65.1 );
setRotateKey( spep_0 -3 + 274, 1, -64.4 );
setRotateKey( spep_0 -3 + 276, 1, -63.7 );
setRotateKey( spep_0 -3 + 278, 1, -63.2 );
setRotateKey( spep_0 -3 + 280, 1, -62.6 );
setRotateKey( spep_0 -3 + 282, 1, -62.1 );
setRotateKey( spep_0 -3 + 284, 1, -61.7 );
setRotateKey( spep_0 -3 + 286, 1, -61.3 );
setRotateKey( spep_0 -3 + 288, 1, -60.9 );
setRotateKey( spep_0 -3 + 290, 1, -60.7 );
setRotateKey( spep_0 -3 + 292, 1, -60.4 );
setRotateKey( spep_0 -3 + 294, 1, -60.2 );
setRotateKey( spep_0 -3 + 296, 1, -60.1 );
setRotateKey( spep_0 -3 + 298, 1, -60 );
setRotateKey( spep_0 -3 + 300, 1, -60 );

-- ** 音 ** --
--顔カットイン
SE004 = playSe( spep_0 + 2, 1018 );

--カメラズーム
SE005 = playSe( spep_0 + 48, 1072 );

--ミノシア向かっていく
SE006 = playSe( spep_0 + 98, 1182 );

--ミノシア向かっていく
SE007 = playSe( spep_0 + 98, 1117 );
stopSe( spep_0 + 130, SE007, 28 );

--ミノシア斬る
SE008 = playSe( spep_0 + 128, 1141 );
setSeVolumeByWorkId( spep_0 + 128, SE008, 85 );

--ミノシア斬る
SE009 = playSe( spep_0 + 128, 1032 );
setSeVolumeByWorkId( spep_0 + 128, SE009, 86 );

--ミノシア斬る
SE010 = playSe( spep_0 + 130, 1142 );
setSeVolumeByWorkId( spep_0 + 130, SE010, 87 );

--タピオンジャンプ
SE011 = playSe( spep_0 + 176, 1116 );
stopSe( spep_0 + 218, SE011, 18 );

--タピオン斬る
SE012 = playSe( spep_0 + 222, 1004 );

--タピオン斬る
SE013 = playSe( spep_0 + 230, 1061 );
setSeVolumeByWorkId( spep_0 + 230, SE013, 66 );

--タピオン斬る
SE014 = playSe( spep_0 + 232, 1032 );

--タピオン斬る
SE015 = playSe( spep_0 + 232, 1172 );
setSeVolumeByWorkId( spep_0 + 232, SE015, 64 );
stopSe( spep_0 + 254, SE015, 16 );

--タピオン斬る
SE016 = playSe( spep_0 + 236, 1319,"",0.6 );
setSeVolumeByWorkId( spep_0 + 236, SE016, 63 );
stopSe( spep_0 + 304, SE016, 20 );
setTimeStretch( SE016, 0.67, 10, 1 );

--タピオン斬る
SE017 = playSe( spep_0 + 236, 1031 );

--ミノシア気弾溜め
SE018 = playSe( spep_0 + 300, 1265 );
setSeVolumeByWorkId( spep_0 + 300, SE018, 60 );
setSeVolumeByWorkId( spep_0 + 301, SE018, 75 );
setSeVolumeByWorkId( spep_0 + 302, SE018, 80 );
setSeVolumeByWorkId( spep_0 + 303, SE018, 90 );
setSeVolumeByWorkId( spep_0 + 304, SE018, 100 );
stopSe( spep_0 +350 + 10, SE018, 0 );
setStartTimeMs( SE018,  317 );

--ミノシア気弾溜め
SE019 = playSe( spep_0 + 302, 1295 );
setSeVolumeByWorkId( spep_0 + 302, SE019, 71 );
stopSe( spep_0 +350 + 10, SE019, 0 );

--ミノシア気弾溜め
SE020 = playSe( spep_0 + 302, 1262 );
stopSe( spep_0 +350 + 10, SE020, 0 );
setPitch( spep_0 + 302, SE020, 400 );
setTimeStretch( SE020, 1.27, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 354 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 354;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--気弾発射
SE022 = playSe( spep_1 + 90, 1027 );
setSeVolumeByWorkId( spep_1 + 90, SE022, 68 ); 

--気弾発射
SE023 = playSe( spep_1 + 92, 1021 );

--気弾発射
SE024 = playSe( spep_1 + 92, 1312 );

--気弾発射
SE025 = playSe( spep_1 + 92, 1177 );
setSeVolumeByWorkId( spep_1 + 92, SE025, 81 );
stopSe( spep_1 +94 + 56, SE025, 20 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- ミノシア気弾発射〜フィニッシュ(626F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ミノシア気弾発射〜フィニッシュ	ef_003
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 626, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 626, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 626, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 626, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ミノシア気弾発射〜フィニッシュ	ef_004
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 626, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 626, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 626, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 626, finish_b, 255 );

-- ** 書き文字エントリー ** --
ctgogogo = entryEffectLife( spep_2 -3 + 220,  10008, 77, 0x100, -1, 0, 88.8, 186.2 );  --ゴゴゴゴ…
setEffMoveKey( spep_2 -3 + 220, ctgogogo, 88.8, 186.2 , 0 );
setEffMoveKey( spep_2 -3 + 222, ctgogogo, 94.1, 179.6 , 0 );
setEffMoveKey( spep_2 -3 + 224, ctgogogo, 96.2, 196.2 , 0 );
setEffMoveKey( spep_2 -3 + 226, ctgogogo, 100.4, 197.7 , 0 );
setEffMoveKey( spep_2 -3 + 228, ctgogogo, 109.7, 222.1 , 0 );
setEffMoveKey( spep_2 -3 + 230, ctgogogo, 107.1, 233.5 , 0 );
setEffMoveKey( spep_2 -3 + 232, ctgogogo, 124.6, 247.8 , 0 );
setEffMoveKey( spep_2 -3 + 234, ctgogogo, 115.2, 247.6 , 0 );
setEffMoveKey( spep_2 -3 + 236, ctgogogo, 125.8, 252.2 , 0 );
setEffMoveKey( spep_2 -3 + 238, ctgogogo, 120.7, 252.2 , 0 );
setEffMoveKey( spep_2 -3 + 240, ctgogogo, 117.4, 256.6 , 0 );
setEffMoveKey( spep_2 -3 + 242, ctgogogo, 124.6, 246.6 , 0 );
setEffMoveKey( spep_2 -3 + 244, ctgogogo, 125.2, 263.8 , 0 );
setEffMoveKey( spep_2 -3 + 246, ctgogogo, 125.8, 253.9 , 0 );
setEffMoveKey( spep_2 -3 + 248, ctgogogo, 129.2, 265 , 0 );
setEffMoveKey( spep_2 -3 + 250, ctgogogo, 119, 260.3 , 0 );
setEffMoveKey( spep_2 -3 + 252, ctgogogo, 134.1, 266.3 , 0 );
setEffMoveKey( spep_2 -3 + 254, ctgogogo, 122.5, 261.8 , 0 );
setEffMoveKey( spep_2 -3 + 256, ctgogogo, 133.5, 265.9 , 0 );
setEffMoveKey( spep_2 -3 + 258, ctgogogo, 128.7, 266.9 , 0 );
setEffMoveKey( spep_2 -3 + 260, ctgogogo, 124.7, 270.7 , 0 );
setEffMoveKey( spep_2 -3 + 262, ctgogogo, 131.9, 259.5 , 0 );
setEffMoveKey( spep_2 -3 + 264, ctgogogo, 132.2, 276.9 , 0 );
setEffMoveKey( spep_2 -3 + 266, ctgogogo, 132.5, 265.9 , 0 );
setEffMoveKey( spep_2 -3 + 268, ctgogogo, 135.6, 276.8 , 0 );
setEffMoveKey( spep_2 -3 + 270, ctgogogo, 124.7, 271.2 , 0 );
setEffMoveKey( spep_2 -3 + 272, ctgogogo, 140, 276.8 , 0 );
setEffMoveKey( spep_2 -3 + 274, ctgogogo, 127.6, 271.5 , 0 );
setEffMoveKey( spep_2 -3 + 276, ctgogogo, 138.7, 275.1 , 0 );
setEffMoveKey( spep_2 -3 + 278, ctgogogo, 133.3, 275.4 , 0 );
setEffMoveKey( spep_2 -3 + 280, ctgogogo, 128.9, 278.8 , 0 );
setEffMoveKey( spep_2 -3 + 282, ctgogogo, 136, 266.6 , 0 );
setEffMoveKey( spep_2 -3 + 284, ctgogogo, 135.9, 283.8 , 0 );
setEffMoveKey( spep_2 -3 + 286, ctgogogo, 135.8, 271.9 , 0 );
setEffMoveKey( spep_2 -3 + 288, ctgogogo, 138.7, 282.4 , 0 );
setEffMoveKey( spep_2 -3 + 290, ctgogogo, 127.2, 276.1 , 0 );
setEffMoveKey( spep_2 -3 + 292, ctgogogo, 142.5, 281.1 , 0 );
setEffMoveKey( spep_2 -3 + 294, ctgogogo, 129.5, 275.1 , 0 );
setEffMoveKey( spep_2 -3 + 296, ctgogogo, 136.3, 272.6 , 0 );
setEffMoveKey( spep_2 -3 + 297, ctgogogo, 136.3, 272.6 , 0 );

setEffScaleKey( spep_2 -3 + 220, ctgogogo, 1.79, 1.79 );
setEffScaleKey( spep_2 -3 + 222, ctgogogo, 1.81, 1.81 );
setEffScaleKey( spep_2 -3 + 224, ctgogogo, 1.86, 1.86 );
setEffScaleKey( spep_2 -3 + 226, ctgogogo, 1.96, 1.96 );
setEffScaleKey( spep_2 -3 + 228, ctgogogo, 2.12, 2.12 );
setEffScaleKey( spep_2 -3 + 230, ctgogogo, 2.28, 2.28 );
setEffScaleKey( spep_2 -3 + 232, ctgogogo, 2.38, 2.38 );
setEffScaleKey( spep_2 -3 + 234, ctgogogo, 2.43, 2.43 );
setEffScaleKey( spep_2 -3 + 236, ctgogogo, 2.45, 2.45 );
setEffScaleKey( spep_2 -3 + 238, ctgogogo, 2.45, 2.45 );
setEffScaleKey( spep_2 -3 + 240, ctgogogo, 2.47, 2.47 );
setEffScaleKey( spep_2 -3 + 242, ctgogogo, 2.48, 2.48 );
setEffScaleKey( spep_2 -3 + 244, ctgogogo, 2.5, 2.5 );
setEffScaleKey( spep_2 -3 + 246, ctgogogo, 2.51, 2.51 );
setEffScaleKey( spep_2 -3 + 248, ctgogogo, 2.53, 2.53 );
setEffScaleKey( spep_2 -3 + 250, ctgogogo, 2.54, 2.54 );
setEffScaleKey( spep_2 -3 + 252, ctgogogo, 2.55, 2.55 );
setEffScaleKey( spep_2 -3 + 254, ctgogogo, 2.57, 2.57 );
setEffScaleKey( spep_2 -3 + 256, ctgogogo, 2.58, 2.58 );
setEffScaleKey( spep_2 -3 + 258, ctgogogo, 2.59, 2.59 );
setEffScaleKey( spep_2 -3 + 260, ctgogogo, 2.6, 2.6 );
setEffScaleKey( spep_2 -3 + 262, ctgogogo, 2.61, 2.61 );
setEffScaleKey( spep_2 -3 + 264, ctgogogo, 2.62, 2.62 );
setEffScaleKey( spep_2 -3 + 266, ctgogogo, 2.63, 2.63 );
setEffScaleKey( spep_2 -3 + 268, ctgogogo, 2.64, 2.64 );
setEffScaleKey( spep_2 -3 + 270, ctgogogo, 2.65, 2.65 );
setEffScaleKey( spep_2 -3 + 272, ctgogogo, 2.65, 2.65 );
setEffScaleKey( spep_2 -3 + 274, ctgogogo, 2.66, 2.66 );
setEffScaleKey( spep_2 -3 + 276, ctgogogo, 2.67, 2.67 );
setEffScaleKey( spep_2 -3 + 278, ctgogogo, 2.67, 2.67 );
setEffScaleKey( spep_2 -3 + 280, ctgogogo, 2.68, 2.68 );
setEffScaleKey( spep_2 -3 + 282, ctgogogo, 2.68, 2.68 );
setEffScaleKey( spep_2 -3 + 284, ctgogogo, 2.69, 2.69 );
setEffScaleKey( spep_2 -3 + 290, ctgogogo, 2.69, 2.69 );
setEffScaleKey( spep_2 -3 + 292, ctgogogo, 2.7, 2.7 );
setEffScaleKey( spep_2 -3 + 297, ctgogogo, 2.7, 2.7 );

setEffRotateKey( spep_2 -3 + 220, ctgogogo, 13.9 );
setEffRotateKey( spep_2 -3 + 297, ctgogogo, 13.9 );

setEffAlphaKey( spep_2 -3 + 220, ctgogogo, 1 );
setEffAlphaKey( spep_2 -3 + 222, ctgogogo, 8 );
setEffAlphaKey( spep_2 -3 + 224, ctgogogo, 28 );
setEffAlphaKey( spep_2 -3 + 226, ctgogogo, 65 );
setEffAlphaKey( spep_2 -3 + 228, ctgogogo, 128 );
setEffAlphaKey( spep_2 -3 + 230, ctgogogo, 190 );
setEffAlphaKey( spep_2 -3 + 232, ctgogogo, 227 );
setEffAlphaKey( spep_2 -3 + 234, ctgogogo, 247 );
setEffAlphaKey( spep_2 -3 + 236, ctgogogo, 254 );
setEffAlphaKey( spep_2 -3 + 238, ctgogogo, 255 );
setEffAlphaKey( spep_2 -3 + 297, ctgogogo, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 124, 1, 0 );

setDisp( spep_2 -3 + 376, 1, 1 );
setDisp( spep_2 -3 + 506, 1, 0 );
changeAnime( spep_2 + 0, 1, 5 );
changeAnime( spep_2 -3 + 66, 1, 106 );
changeAnime( spep_2 -3 + 376, 1, 106 );

setBlendColor( spep_2 -3 + 460, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 -3 + 505, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 -3 + 506, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_2 -3 + 0, 1, 230.2, 4 , 0 );
setMoveKey( spep_2 -3 + 2, 1, 229.2, 4.3 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 229.8, 4.2 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 238.8, 7.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 241.8, 14.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 226.2, -7 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 228.1, 4.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 226.9, 3.9 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 226, 4.7 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 225.3, 3.8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 224.3, 4.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 222.3, 4.1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 221.9, 4.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 219, 4.1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 218, 4.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 214.4, 4.3 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 212.4, 5.5 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 208.2, 4.4 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 205.2, 6.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 200.7, 4.7 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 195.1, 7 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 189.7, 5.6 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 180.3, 6.9 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 173.9, 7.3 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 159.9, 6.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 145.2, 9.7 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 128.3, 4.8 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 102.3, 15.8 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 55.6, 9.4 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 51.1, 16.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 60.5, 12.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 49.2, 11.6 , 0 );
setMoveKey( spep_2 -3 + 65, 1, 58.3, 13 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 61.9, -6.7 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 80.3, -16 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 90.8, -14.5 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 110.8, -21.8 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 118.5, -20 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 135.2, -25.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 141.2, -26.2 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 152.6, -33.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 156.1, -31 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 169.3, -31.3 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 168.9, -33.2 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 178.4, -33.9 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 179.1, -36.1 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 180.9, -36.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 181.5, -36.7 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 182.8, -36.5 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 184.1, -36.3 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 185.4, -36 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 186.6, -35.8 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 187.9, -35.6 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 189.2, -35.4 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 190.5, -35.2 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 191.7, -34.8 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 193.2, -34.2 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 194.9, -32.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 197.2, -30.3 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 200.4, -25.2 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 205.8, -14.7 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 216.7, 9.8 , 0 );
setMoveKey( spep_2 -3 + 125, 1, 240.7, 66.6 , 0 );
--
setMoveKey( spep_2 -3 + 376, 1, 172.6, 337.8 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 172.5, 337.5 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 172.3, 337.2 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 172, 336.7 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 171.8, 336.3 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 171.5, 335.6 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 171.2, 334.8 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 170.7, 334 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 170.2, 333 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 169.6, 331.7 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 168.9, 330.3 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 168, 328.7 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 167.1, 326.8 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 166, 324.6 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 164.7, 322 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 163.2, 318.8 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 161.4, 315.2 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 159.2, 310.8 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 156.6, 305.5 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 153.3, 298.9 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 149.1, 290.5 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 143.6, 279.5 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 135.8, 263.7 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 123, 237.9 , 0 );
setMoveKey( spep_2 -3 + 423, 1, 123, 237.9 , 0 );--
setMoveKey( spep_2 -3 + 424, 1, 85.4, 167 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 87, 162.5 , 0 );
setMoveKey( spep_2 -3 + 428, 1, 92.6, 170.5 , 0 );
setMoveKey( spep_2 -3 + 430, 1, 88.8, 171.5 , 0 );
setMoveKey( spep_2 -3 + 432, 1, 95.8, 174.4 , 0 );
setMoveKey( spep_2 -3 + 434, 1, 83.5, 169.6 , 0 );
setMoveKey( spep_2 -3 + 436, 1, 96.2, 179.1 , 0 );
setMoveKey( spep_2 -3 + 438, 1, 83.7, 169.8 , 0 );
setMoveKey( spep_2 -3 + 440, 1, 99.8, 184 , 0 );
setMoveKey( spep_2 -3 + 442, 1, 89.2, 171.9 , 0 );
setMoveKey( spep_2 -3 + 444, 1, 97.6, 187.4 , 0 );
setMoveKey( spep_2 -3 + 446, 1, 95.3, 173.6 , 0 );
setMoveKey( spep_2 -3 + 448, 1, 93.8, 184 , 0 );
setMoveKey( spep_2 -3 + 450, 1, 107.6, 177 , 0 );
setMoveKey( spep_2 -3 + 452, 1, 92.1, 184.4 , 0 );
setMoveKey( spep_2 -3 + 453, 1, 92.1, 184.4 , 0 );--
setMoveKey( spep_2 -3 + 454, 1, 101.9, 181.1 , 0 );
setMoveKey( spep_2 -3 + 456, 1, 100.5, 185.3 , 0 );
setMoveKey( spep_2 -3 + 457, 1, 100.5, 185.3 , 0 );--
--setMoveKey( spep_2 -3 + 458, 1, 98.8, 180.5 , 0 );
setMoveKey( spep_2 -3 + 458, 1, 100.4, 188.4 , 0 );
setMoveKey( spep_2 -3 + 460, 1, 107.5, 191.9 , 0 );
setMoveKey( spep_2 -3 + 462, 1, 97.2, 192.9 , 0 );
setMoveKey( spep_2 -3 + 464, 1, 108.8, 192.7 , 0 );
setMoveKey( spep_2 -3 + 466, 1, 97.4, 192.4 , 0 );
setMoveKey( spep_2 -3 + 467, 1, 97.4, 192.4 , 0 );--
setMoveKey( spep_2 -3 + 468, 1, 104.7, 181.9 , 0 );
setMoveKey( spep_2 -3 + 470, 1, 94, 187.7 , 0 );
setMoveKey( spep_2 -3 + 472, 1, 110.5, 182.7 , 0 );
setMoveKey( spep_2 -3 + 474, 1, 100.7, 188.2 , 0 );
setMoveKey( spep_2 -3 + 476, 1, 106.4, 176.8 , 0 );
setMoveKey( spep_2 -3 + 478, 1, 101, 191.7 , 0 );
setMoveKey( spep_2 -3 + 480, 1, 94.4, 179.6 , 0 );
setMoveKey( spep_2 -3 + 482, 1, 105.7, 190.6 , 0 );
setMoveKey( spep_2 -3 + 484, 1, 100.6, 176.7 , 0 );
setMoveKey( spep_2 -3 + 486, 1, 102.5, 190.1 , 0 );
setMoveKey( spep_2 -3 + 488, 1, 104.2, 176.1 , 0 );
setMoveKey( spep_2 -3 + 490, 1, 97.7, 191.6 , 0 );
setMoveKey( spep_2 -3 + 492, 1, 109, 181.9 , 0 );
setMoveKey( spep_2 -3 + 494, 1, 98.8, 189.7 , 0 );
setMoveKey( spep_2 -3 + 496, 1, 98, 187.2 , 0 );
setMoveKey( spep_2 -3 + 498, 1, 106.6, 178 , 0 );
setMoveKey( spep_2 -3 + 500, 1, 97.9, 191.2 , 0 );
setMoveKey( spep_2 -3 + 502, 1, 106.7, 181.1 , 0 );
setMoveKey( spep_2 -3 + 504, 1, 100.3, 188.4 , 0 );
setMoveKey( spep_2 -3 + 506, 1, 100.5, 182.1 , 0 );


setScaleKey( spep_2 -3 + 0, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 4, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 6, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 12, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 14, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 16, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 18, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 20, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 22, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 24, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 26, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 28, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 30, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 32, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 34, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 36, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 38, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 40, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 42, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 44, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 46, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 48, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 50, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 52, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 54, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 56, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 65, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 66, 1, 1, 1 );
setScaleKey( spep_2 -3 + 125, 1, 1, 1 );
--
setScaleKey( spep_2 -3 + 376, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 380, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 382, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 386, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 388, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 390, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 392, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 394, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 396, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 398, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 400, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 402, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 404, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 406, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 408, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 410, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 412, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 414, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 416, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 418, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 420, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 422, 1, 0.78, 0.78 );
setScaleKey( spep_2 -3 + 423, 1, 0.78, 0.78 );--
setScaleKey( spep_2 -3 + 424, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 506, 1, 1.23, 1.23 );

setRotateKey( spep_2 -3 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 66, 1, 0 );
setRotateKey( spep_2 -3 + 68, 1, 1.4 );
setRotateKey( spep_2 -3 + 70, 1, 2.7 );
setRotateKey( spep_2 -3 + 72, 1, 3.8 );
setRotateKey( spep_2 -3 + 74, 1, 4.9 );
setRotateKey( spep_2 -3 + 76, 1, 5.9 );
setRotateKey( spep_2 -3 + 78, 1, 6.7 );
setRotateKey( spep_2 -3 + 80, 1, 7.5 );
setRotateKey( spep_2 -3 + 82, 1, 8.2 );
setRotateKey( spep_2 -3 + 84, 1, 8.7 );
setRotateKey( spep_2 -3 + 86, 1, 9.2 );
setRotateKey( spep_2 -3 + 88, 1, 9.5 );
setRotateKey( spep_2 -3 + 90, 1, 9.8 );
setRotateKey( spep_2 -3 + 92, 1, 9.9 );
setRotateKey( spep_2 -3 + 94, 1, 10 );
setRotateKey( spep_2 -3 + 96, 1, 10.2 );
setRotateKey( spep_2 -3 + 98, 1, 10.4 );
setRotateKey( spep_2 -3 + 100, 1, 10.6 );
setRotateKey( spep_2 -3 + 102, 1, 10.8 );
setRotateKey( spep_2 -3 + 104, 1, 11 );
setRotateKey( spep_2 -3 + 106, 1, 11.2 );
setRotateKey( spep_2 -3 + 108, 1, 11.4 );
setRotateKey( spep_2 -3 + 110, 1, 11.6 );
setRotateKey( spep_2 -3 + 112, 1, 11.8 );
setRotateKey( spep_2 -3 + 114, 1, 12 );
setRotateKey( spep_2 -3 + 116, 1, 12.2 );
setRotateKey( spep_2 -3 + 118, 1, 12.4 );
setRotateKey( spep_2 -3 + 120, 1, 12.6 );
setRotateKey( spep_2 -3 + 122, 1, 12.8 );
setRotateKey( spep_2 -3 + 125, 1, 13 );
--
setRotateKey( spep_2 -3 + 376, 1, 10 );
setRotateKey( spep_2 -3 + 506, 1, 10 );

-- ** 音 ** --
--気弾ヒット
SE026 = playSe( spep_2 + 54, 1023 );

--気弾ヒット
SE027 = playSe( spep_2 + 56, 1011 );

--画面遷移
SE028 = playSe( spep_2 + 116, 44 );

--腕あげる
SE029 = playSe( spep_2 + 186, 1004 );

--腕あげる
SE030 = playSe( spep_2 + 190, 1013 );

--背景の炎大きくなる
SE031 = playSe( spep_2 + 208, 1268 );
setSeVolumeByWorkId( spep_2 + 208, SE031, 9 );
setSeVolumeByWorkId( spep_2 + 212, SE031, 18 );
setSeVolumeByWorkId( spep_2 + 216, SE031, 27 );
setSeVolumeByWorkId( spep_2 + 220, SE031, 36 );
setSeVolumeByWorkId( spep_2 + 224, SE031, 45 );
setSeVolumeByWorkId( spep_2 + 228, SE031, 54 );
setSeVolumeByWorkId( spep_2 + 232, SE031, 63 );
setSeVolumeByWorkId( spep_2 + 236, SE031, 72 );
setSeVolumeByWorkId( spep_2 + 240, SE031, 81 );
setSeVolumeByWorkId( spep_2 + 244, SE031, 90 );
setSeVolumeByWorkId( spep_2 + 248, SE031, 95 );
setSeVolumeByWorkId( spep_2 + 252, SE031, 100 );
stopSe( spep_2 + 356, SE031, 42 );          

--背景の炎大きくなる
SE032 = playSe( spep_2 + 208, 1226 );
setSeVolumeByWorkId( spep_2 + 208, SE032, 9 );
setSeVolumeByWorkId( spep_2 + 212, SE032, 18 );
setSeVolumeByWorkId( spep_2 + 216, SE032, 27 );
setSeVolumeByWorkId( spep_2 + 220, SE032, 36 );
setSeVolumeByWorkId( spep_2 + 224, SE032, 45 );
setSeVolumeByWorkId( spep_2 + 228, SE032, 54 );
setSeVolumeByWorkId( spep_2 + 232, SE032, 63 );
setSeVolumeByWorkId( spep_2 + 236, SE032, 72 );
setSeVolumeByWorkId( spep_2 + 240, SE032, 81 );
setSeVolumeByWorkId( spep_2 + 244, SE032, 90 );
setSeVolumeByWorkId( spep_2 + 248, SE032, 95 );
setSeVolumeByWorkId( spep_2 + 252, SE032, 100 );
stopSe( spep_2 + 368, SE032, 34 );

--背景の炎大きくなる
SE033 = playSe( spep_2 + 218, 1264 );
setSeVolumeByWorkId( spep_2 + 218, SE033, 10 );
setSeVolumeByWorkId( spep_2 + 222, SE033, 20 );
setSeVolumeByWorkId( spep_2 + 226, SE033, 40 );
setSeVolumeByWorkId( spep_2 + 230, SE033, 60 );
setSeVolumeByWorkId( spep_2 + 234, SE033, 79 );
setPitch( spep_2 + 218, SE033, -600 );
setTimeStretch( SE033, 0.6, 10, 1 );

--炎発射
SE034 = playSe( spep_2 + 296, 1188 );
setSeVolumeByWorkId( spep_2 + 296, SE034, 22.4 );
setSeVolumeByWorkId( spep_2 + 297, SE034, 44.8 );
setSeVolumeByWorkId( spep_2 + 298, SE034, 67.2 );
setSeVolumeByWorkId( spep_2 + 299, SE034, 89.6 );
setSeVolumeByWorkId( spep_2 + 300, SE034, 112 );
setStartTimeMs( SE034,  183 );

--炎発射
SE035 = playSe( spep_2 + 296, 1258 );
setSeVolumeByWorkId( spep_2 + 296, SE035, 71 );

--炎発射
SE036 = playSe( spep_2 + 296, 1022 );

--炎発射
SE037 = playSe( spep_2 + 322, 1278 );
stopSe( spep_2 + 380, SE037, 28 );

--炎発射
SE038 = playSe( spep_2 + 322, 1193 );
stopSe( spep_2 + 428, SE038, 40 );

--炎発射
SE039 = playSe( spep_2 + 322, 1215 );
stopSe( spep_2 + 442, SE039, 36 );

--炎ヒット
SE040 = playSe( spep_2 + 424, 1159 );
setSeVolumeByWorkId( spep_2 + 428, SE040, 78 );

--炎ヒット
SE041 = playSe( spep_2 + 424, 1188 );

--炎ヒット
SE042 = playSe( spep_2 + 450, 1258 );
setSeVolumeByWorkId( spep_2 + 450, SE042, 60 );

--炎ヒット
SE043 = playSe( spep_2 + 450, 1307 );
setSeVolumeByWorkId( spep_2 + 450, SE043, 229 );

--ラスト爆発
SE044 = playSe( spep_2 + 540, 1137 );
setSeVolumeByWorkId( spep_2 + 540, SE044, 71 );

--ラスト爆発
SE045 = playSe( spep_2 + 540, 1145 );
setSeVolumeByWorkId( spep_2 + 540, SE045, 74 );

--ラスト爆発
SE046 = playSe( spep_2 + 542, 1024 );
setSeVolumeByWorkId( spep_2 + 542, SE046, 81 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 626 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 516 );
endPhase( spep_2 + 616 +10 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- タピオン、ミノシア敵に突撃(354F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 354, 0x100, -1, 0, 0, 0 );  --タピオン、ミノシア敵に突撃〜ミノシア気溜め   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 354, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 354, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 354, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 354 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 354, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02r, 354, 0x80, -1, 0, 0, 0 );  --タピオン、ミノシア敵に突撃〜ミノシア気溜め    ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 354, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 354, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 354, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 354 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 354, first_b, 0 );

-- ** 音 ** --
--2人ダッシュ
SE001 = playSe( spep_0 + 0, 1182 );

--2人ダッシュ
SE002 = playSe( spep_0 + 0, 9 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 75 );

--2人ダッシュ
SE003 = playSe( spep_0 + 0, 1314 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 66 );
stopSe( spep_0 + 88, SE003, 32 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 12 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

ctgyun = entryEffectLife( spep_0 -3 + 144,  10007, 24, 0x100, -1, 0, -33.2, 151.3 ); --ギュン
setEffMoveKey( spep_0 -3 + 144, ctgyun, -33.2, 151.3 , 0 );
setEffMoveKey( spep_0 -3 + 146, ctgyun, -36.2, 166 , 0 );
setEffMoveKey( spep_0 -3 + 148, ctgyun, -54.9, 198 , 0 );
setEffMoveKey( spep_0 -3 + 150, ctgyun, -77.1, 259.4 , 0 );
setEffMoveKey( spep_0 -3 + 152, ctgyun, -74.9, 270 , 0 );
setEffMoveKey( spep_0 -3 + 154, ctgyun, -83.2, 266.7 , 0 );
setEffMoveKey( spep_0 -3 + 156, ctgyun, -81.5, 275.2 , 0 );
setEffMoveKey( spep_0 -3 + 158, ctgyun, -79.5, 271.1 , 0 );
setEffMoveKey( spep_0 -3 + 160, ctgyun, -81.4, 273.8 , 0 );
setEffMoveKey( spep_0 -3 + 162, ctgyun, -78.5, 282 , 0 );
setEffMoveKey( spep_0 -3 + 164, ctgyun, -88.7, 282 , 0 );
setEffMoveKey( spep_0 -3 + 166, ctgyun, -88.9, 295.6 , 0 );
setEffMoveKey( spep_0 -3 + 168, ctgyun, -89.8, 298.2 , 0 );

setEffScaleKey( spep_0 -3 + 144, ctgyun, 1.13, 1.06 );
setEffScaleKey( spep_0 -3 + 146, ctgyun, 1.28, 1.2 );
setEffScaleKey( spep_0 -3 + 148, ctgyun, 1.73, 1.63 );
setEffScaleKey( spep_0 -3 + 150, ctgyun, 2.49, 2.35 );
setEffScaleKey( spep_0 -3 + 152, ctgyun, 2.54, 2.4 );
setEffScaleKey( spep_0 -3 + 154, ctgyun, 2.58, 2.43 );
setEffScaleKey( spep_0 -3 + 156, ctgyun, 2.61, 2.46 );
setEffScaleKey( spep_0 -3 + 158, ctgyun, 2.63, 2.48 );
setEffScaleKey( spep_0 -3 + 160, ctgyun, 2.63, 2.48 );
setEffScaleKey( spep_0 -3 + 162, ctgyun, 2.66, 2.51 );
setEffScaleKey( spep_0 -3 + 164, ctgyun, 2.75, 2.59 );
setEffScaleKey( spep_0 -3 + 166, ctgyun, 2.84, 2.67 );
setEffScaleKey( spep_0 -3 + 168, ctgyun, 2.87, 2.7 );

setEffRotateKey( spep_0 -3 + 144, ctgyun, 0 );
setEffRotateKey( spep_0 -3 + 168, ctgyun, 0 );

setEffAlphaKey( spep_0 -3 + 144, ctgyun, 255 );
setEffAlphaKey( spep_0 -3 + 160, ctgyun, 255 );
setEffAlphaKey( spep_0 -3 + 162, ctgyun, 223 );
setEffAlphaKey( spep_0 -3 + 164, ctgyun, 128 );
setEffAlphaKey( spep_0 -3 + 166, ctgyun, 32 );
setEffAlphaKey( spep_0 -3 + 168, ctgyun, 0 );

ctzan = entryEffectLife( spep_0 -3 + 252,  10010, 22, 0x100, -1, 0, -10.7, 131.7 );  --ザンッ
setEffMoveKey( spep_0 -3 + 252, ctzan, -10.7, 131.7 , 0 );
setEffMoveKey( spep_0 -3 + 254, ctzan, -1.1, 141 , 0 );
setEffMoveKey( spep_0 -3 + 256, ctzan, 8.4, 164.5 , 0 );
setEffMoveKey( spep_0 -3 + 258, ctzan, 37.8, 205.4 , 0 );
setEffMoveKey( spep_0 -3 + 260, ctzan, 48.1, 218 , 0 );
setEffMoveKey( spep_0 -3 + 262, ctzan, 57.8, 215.8 , 0 );
setEffMoveKey( spep_0 -3 + 264, ctzan, 57.2, 221.6 , 0 );
setEffMoveKey( spep_0 -3 + 266, ctzan, 64.8, 225.9 , 0 );
setEffMoveKey( spep_0 -3 + 268, ctzan, 59.3, 224.7 , 0 );
setEffMoveKey( spep_0 -3 + 270, ctzan, 68.2, 230.4 , 0 );
setEffMoveKey( spep_0 -3 + 272, ctzan, 59.7, 237.6 , 0 );
setEffMoveKey( spep_0 -3 + 274, ctzan, 62.3, 241.4 , 0 );

setEffScaleKey( spep_0 -3 + 252, ctzan, 1.23, 1.23 );
setEffScaleKey( spep_0 -3 + 254, ctzan, 1.34, 1.34 );
setEffScaleKey( spep_0 -3 + 256, ctzan, 1.66, 1.66 );
setEffScaleKey( spep_0 -3 + 258, ctzan, 2.21, 2.21 );
setEffScaleKey( spep_0 -3 + 260, ctzan, 2.29, 2.29 );
setEffScaleKey( spep_0 -3 + 262, ctzan, 2.35, 2.35 );
setEffScaleKey( spep_0 -3 + 264, ctzan, 2.39, 2.39 );
setEffScaleKey( spep_0 -3 + 266, ctzan, 2.42, 2.42 );
setEffScaleKey( spep_0 -3 + 268, ctzan, 2.42, 2.42 );
setEffScaleKey( spep_0 -3 + 270, ctzan, 2.47, 2.47 );
setEffScaleKey( spep_0 -3 + 272, ctzan, 2.59, 2.59 );
setEffScaleKey( spep_0 -3 + 274, ctzan, 2.64, 2.64 );

setEffRotateKey( spep_0 -3 + 252, ctzan, 20 );
setEffRotateKey( spep_0 -3 + 274, ctzan, 20 );

setEffAlphaKey( spep_0 -3 + 252, ctzan, 255 );
setEffAlphaKey( spep_0 -3 + 268, ctzan, 255 );
setEffAlphaKey( spep_0 -3 + 270, ctzan, 198 );
setEffAlphaKey( spep_0 -3 + 272, ctzan, 57 );
setEffAlphaKey( spep_0 -3 + 274, ctzan, 0 );

ctbuun = entryEffectLife( spep_0 -3 + 324,  10028, 33, 0x100, -1, 0, -20.6, -104.2 );  --ブゥ…ン
setEffMoveKey( spep_0 -3 + 324, ctbuun, -20.6, -104.2 , 0 );
setEffMoveKey( spep_0 -3 + 326, ctbuun, -16.4, -116.2 , 0 );
setEffMoveKey( spep_0 -3 + 328, ctbuun, -9.3, -136.1 , 0 );
setEffMoveKey( spep_0 -3 + 330, ctbuun, 0, -162 , 0 );
setEffMoveKey( spep_0 -3 + 332, ctbuun, 7.1, -181.9 , 0 );
setEffMoveKey( spep_0 -3 + 334, ctbuun, 11.4, -193.8 , 0 );
setEffMoveKey( spep_0 -3 + 336, ctbuun, 12.8, -197.8 , 0 );
setEffMoveKey( spep_0 -3 + 338, ctbuun, 14.1, -201.6 , 0 );
setEffMoveKey( spep_0 -3 + 340, ctbuun, 15.5, -205.4 , 0 );
setEffMoveKey( spep_0 -3 + 342, ctbuun, 16.9, -209.1 , 0 );
setEffMoveKey( spep_0 -3 + 344, ctbuun, 18.2, -212.9 , 0 );
setEffMoveKey( spep_0 -3 + 346, ctbuun, 18.7, -214.2 , 0 );
setEffMoveKey( spep_0 -3 + 348, ctbuun, 19.1, -215.4 , 0 );
setEffMoveKey( spep_0 -3 + 350, ctbuun, 19.6, -216.7 , 0 );
setEffMoveKey( spep_0 -3 + 352, ctbuun, 20, -218 , 0 );
setEffMoveKey( spep_0 -3 + 354, ctbuun, 20.5, -219.2 , 0 );
setEffMoveKey( spep_0 -3 + 356, ctbuun, 20.9, -220.5 , 0 );
setEffMoveKey( spep_0 -3 + 357, ctbuun, 20.9, -220.5 , 0 );

setEffScaleKey( spep_0 -3 + 324, ctbuun, 1.06, 1.06 );
setEffScaleKey( spep_0 -3 + 326, ctbuun, 1.22, 1.22 );
setEffScaleKey( spep_0 -3 + 328, ctbuun, 1.5, 1.5 );
setEffScaleKey( spep_0 -3 + 330, ctbuun, 1.87, 1.87 );
setEffScaleKey( spep_0 -3 + 332, ctbuun, 2.15, 2.15 );
setEffScaleKey( spep_0 -3 + 334, ctbuun, 2.31, 2.31 );
setEffScaleKey( spep_0 -3 + 336, ctbuun, 2.37, 2.37 );
setEffScaleKey( spep_0 -3 + 338, ctbuun, 2.42, 2.42 );
setEffScaleKey( spep_0 -3 + 340, ctbuun, 2.47, 2.47 );
setEffScaleKey( spep_0 -3 + 342, ctbuun, 2.52, 2.52 );
setEffScaleKey( spep_0 -3 + 344, ctbuun, 2.57, 2.57 );
setEffScaleKey( spep_0 -3 + 346, ctbuun, 2.59, 2.59 );
setEffScaleKey( spep_0 -3 + 348, ctbuun, 2.6, 2.6 );
setEffScaleKey( spep_0 -3 + 350, ctbuun, 2.62, 2.62 );
setEffScaleKey( spep_0 -3 + 352, ctbuun, 2.64, 2.64 );
setEffScaleKey( spep_0 -3 + 354, ctbuun, 2.65, 2.65 );
setEffScaleKey( spep_0 -3 + 356, ctbuun, 2.67, 2.67 );
setEffScaleKey( spep_0 -3 + 357, ctbuun, 2.67, 2.67 );

setEffRotateKey( spep_0 -3 + 324, ctbuun, 0 );
setEffRotateKey( spep_0 -3 + 357, ctbuun, 0 );

setEffAlphaKey( spep_0 -3 + 324, ctbuun, 10 );
setEffAlphaKey( spep_0 -3 + 326, ctbuun, 42 );
setEffAlphaKey( spep_0 -3 + 328, ctbuun, 94 );
setEffAlphaKey( spep_0 -3 + 330, ctbuun, 161 );
setEffAlphaKey( spep_0 -3 + 332, ctbuun, 213 );
setEffAlphaKey( spep_0 -3 + 334, ctbuun, 245 );
setEffAlphaKey( spep_0 -3 + 336, ctbuun, 255 );
setEffAlphaKey( spep_0 -3 + 344, ctbuun, 255 );
setEffAlphaKey( spep_0 -3 + 346, ctbuun, 213 );
setEffAlphaKey( spep_0 -3 + 348, ctbuun, 170 );
setEffAlphaKey( spep_0 -3 + 350, ctbuun, 128 );
setEffAlphaKey( spep_0 -3 + 352, ctbuun, 85 );
setEffAlphaKey( spep_0 -3 + 354, ctbuun, 42 );
setEffAlphaKey( spep_0 -3 + 357, ctbuun, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 90, 1, 1 );
setDisp( spep_0 -3 + 180, 1, 0 );

setDisp( spep_0 -3 + 252, 1, 1 );
setDisp( spep_0 -3 + 300, 1, 0 );
changeAnime( spep_0 -3 + 90, 1, 100 );
changeAnime( spep_0 -3 + 142, 1, 5 );
changeAnime( spep_0 -3 + 252, 1, 107 );

setMoveKey( spep_0 -3 + 90, 1, 202.4, 132.9 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 202.3, 132.8 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 202, 132.5 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 201.5, 132 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 200.7, 131.2 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 199.7, 130.1 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 198.3, 128.7 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 196.5, 126.9 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 194.3, 124.6 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 191.6, 121.8 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 188.2, 118.3 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 184, 114.1 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 178.9, 108.9 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 172.9, 102.7 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 165.9, 95.5 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 158.1, 87.6 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 150.3, 79.6 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 143.1, 72.2 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 137, 66 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 132.1, 61 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 128.4, 57.2 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 125.5, 54.3 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 123.5, 52.1 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 122, 50.7 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 121.1, 49.7 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 120.5, 49.2 , 0 );
setMoveKey( spep_0 -3 + 141, 1, 120.5, 49.2 , 0 );--
setMoveKey( spep_0 -3 + 142, 1, 19.4, -11.8 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 15.4, -16 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 16.1, -15.6 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 12.5, -22 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 14, -22.1 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 9, -27.8 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 10.5, -27.5 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 8.1, -33.9 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 6.9, -31.8 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 2.4, -37.6 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 5.6, -40.2 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 2.2, -41.1 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 0.9, -43.2 , 0 );
setMoveKey( spep_0 -3 + 168, 1, -0.2, -45.2 , 0 );
setMoveKey( spep_0 -3 + 170, 1, -1.4, -47.1 , 0 );
setMoveKey( spep_0 -3 + 172, 1, -2.4, -48.9 , 0 );
setMoveKey( spep_0 -3 + 174, 1, -3.4, -50.6 , 0 );
setMoveKey( spep_0 -3 + 176, 1, -4.4, -52.2 , 0 );
setMoveKey( spep_0 -3 + 178, 1, -5.2, -53.7 , 0 );
setMoveKey( spep_0 -3 + 180, 1, -5.2, -53.7 , 0 );
--
setMoveKey( spep_0 -3 + 252, 1, 133.8, -62 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 146.8, -55.4 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 177.7, -50.7 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 234.5, -35.5 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 312.7, -21.6 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 409, 3.4 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 534.4, 30.9 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 674.5, 60.8 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 841.5, 101.7 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 1027.1, 140.9 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 1237.4, 189.5 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 1468.9, 241.9 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 1722.3, 299.2 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 1997.7, 361.5 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 2273.1, 423.7 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 2526.4, 481 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 2757.6, 533.2 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 2966.8, 580.4 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 3153.9, 622.7 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 3319.1, 660 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 3462.1, 692.3 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 3583.2, 719.6 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 3682.2, 741.9 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 3759.3, 759.3 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 3759.3, 759.3 , 0 );

s1 = 0.4;
s2 = 0.6;
setScaleKey( spep_0 -3 + 90, 1, 0.8 +s1, 0.8 +s1 );
setScaleKey( spep_0 -3 + 92, 1, 0.8 +s1, 0.8 +s1 );
setScaleKey( spep_0 -3 + 94, 1, 0.81 +s1, 0.81 +s1 );
setScaleKey( spep_0 -3 + 96, 1, 0.82 +s1, 0.82 +s1 );
setScaleKey( spep_0 -3 + 98, 1, 0.83 +s1, 0.83 +s1 );
setScaleKey( spep_0 -3 + 100, 1, 0.85 +s1, 0.85 +s1 );
setScaleKey( spep_0 -3 + 102, 1, 0.88 +s1, 0.88 +s1 );
setScaleKey( spep_0 -3 + 104, 1, 0.92 +s1, 0.92 +s1 );
setScaleKey( spep_0 -3 + 106, 1, 0.96 +s1, 0.96 +s1 );
setScaleKey( spep_0 -3 + 108, 1, 1.02 +s1, 1.02 +s1 );
setScaleKey( spep_0 -3 + 110, 1, 1.08 +s1, 1.08 +s1 );
setScaleKey( spep_0 -3 + 112, 1, 1.17 +s1, 1.17 +s1 );
setScaleKey( spep_0 -3 + 114, 1, 1.27 +s1, 1.27 +s1 );
setScaleKey( spep_0 -3 + 116, 1, 1.39 +s1, 1.39 +s1 );
setScaleKey( spep_0 -3 + 118, 1, 1.53 +s1, 1.53 +s1 );
setScaleKey( spep_0 -3 + 120, 1, 1.68 +s1, 1.68 +s1 );
setScaleKey( spep_0 -3 + 122, 1, 1.83 +s1, 1.83 +s1 );
setScaleKey( spep_0 -3 + 124, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_0 -3 + 126, 1, 2.1 +s1, 2.1 +s1 );
setScaleKey( spep_0 -3 + 128, 1, 2.19 +s1, 2.19 +s1 );
setScaleKey( spep_0 -3 + 130, 1, 2.27 +s1, 2.27 +s1 );
setScaleKey( spep_0 -3 + 132, 1, 2.32 +s1, 2.32 +s1 );
setScaleKey( spep_0 -3 + 134, 1, 2.37 +s1, 2.37 +s1 );
setScaleKey( spep_0 -3 + 136, 1, 2.39 +s1, 2.39 +s1 );
setScaleKey( spep_0 -3 + 138, 1, 2.41 +s1, 2.41 +s1 );
setScaleKey( spep_0 -3 + 140, 1, 2.42 +s1, 2.42 +s1 );
setScaleKey( spep_0 -3 + 141, 1, 2.42 +s1, 2.42 +s1 );--
setScaleKey( spep_0 -3 + 142, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_0 -3 + 180, 1, 2 +s2, 2 +s2 );
--
setScaleKey( spep_0 -3 + 252, 1, 1, 1 );
setScaleKey( spep_0 -3 + 254, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 256, 1, 1.16, 1.16 );
setScaleKey( spep_0 -3 + 258, 1, 1.37, 1.37 );
setScaleKey( spep_0 -3 + 260, 1, 1.65, 1.65 );
setScaleKey( spep_0 -3 + 262, 1, 2.02, 2.02 );
setScaleKey( spep_0 -3 + 264, 1, 2.47, 2.47 );
setScaleKey( spep_0 -3 + 266, 1, 3, 3 );
setScaleKey( spep_0 -3 + 268, 1, 3.62, 3.62 );
setScaleKey( spep_0 -3 + 270, 1, 4.31, 4.31 );
setScaleKey( spep_0 -3 + 272, 1, 5.09, 5.09 );
setScaleKey( spep_0 -3 + 274, 1, 5.95, 5.95 );
setScaleKey( spep_0 -3 + 276, 1, 6.89, 6.89 );
setScaleKey( spep_0 -3 + 278, 1, 7.91, 7.91 );
setScaleKey( spep_0 -3 + 280, 1, 8.94, 8.94 );
setScaleKey( spep_0 -3 + 282, 1, 9.88, 9.88 );
setScaleKey( spep_0 -3 + 284, 1, 10.74, 10.74 );
setScaleKey( spep_0 -3 + 286, 1, 11.51, 11.51 );
setScaleKey( spep_0 -3 + 288, 1, 12.21, 12.21 );
setScaleKey( spep_0 -3 + 290, 1, 12.82, 12.82 );
setScaleKey( spep_0 -3 + 292, 1, 13.35, 13.35 );
setScaleKey( spep_0 -3 + 294, 1, 13.8, 13.8 );
setScaleKey( spep_0 -3 + 296, 1, 14.17, 14.17 );
setScaleKey( spep_0 -3 + 298, 1, 14.46, 14.46 );
setScaleKey( spep_0 -3 + 300, 1, 14.46, 14.46 );


setRotateKey( spep_0 -3 + 90, 1, 0 );
setRotateKey( spep_0 -3 + 141, 1, 0 );--
setRotateKey( spep_0 -3 + 142, 1, 0 );
setRotateKey( spep_0 -3 + 144, 1, 0.2 );
setRotateKey( spep_0 -3 + 146, 1, 0.3 );
setRotateKey( spep_0 -3 + 148, 1, 0.5 );
setRotateKey( spep_0 -3 + 150, 1, 0.6 );
setRotateKey( spep_0 -3 + 152, 1, 0.8 );
setRotateKey( spep_0 -3 + 154, 1, 0.9 );
setRotateKey( spep_0 -3 + 156, 1, 1.1 );
setRotateKey( spep_0 -3 + 158, 1, 1.2 );
setRotateKey( spep_0 -3 + 160, 1, 1.4 );
setRotateKey( spep_0 -3 + 162, 1, 1.5 );
setRotateKey( spep_0 -3 + 164, 1, 1.7 );
setRotateKey( spep_0 -3 + 166, 1, 1.8 );
setRotateKey( spep_0 -3 + 168, 1, 2 );
setRotateKey( spep_0 -3 + 170, 1, 2.1 );
setRotateKey( spep_0 -3 + 172, 1, 2.3 );
setRotateKey( spep_0 -3 + 174, 1, 2.4 );
setRotateKey( spep_0 -3 + 176, 1, 2.6 );
setRotateKey( spep_0 -3 + 178, 1, 2.7 );
setRotateKey( spep_0 -3 + 180, 1, 2.7 );
--
setRotateKey( spep_0 -3 + 252, 1, -75 );
setRotateKey( spep_0 -3 + 254, 1, -73.8 );
setRotateKey( spep_0 -3 + 256, 1, -72.6 );
setRotateKey( spep_0 -3 + 258, 1, -71.5 );
setRotateKey( spep_0 -3 + 260, 1, -70.4 );
setRotateKey( spep_0 -3 + 262, 1, -69.4 );
setRotateKey( spep_0 -3 + 264, 1, -68.4 );
setRotateKey( spep_0 -3 + 266, 1, -67.5 );
setRotateKey( spep_0 -3 + 268, 1, -66.7 );
setRotateKey( spep_0 -3 + 270, 1, -65.9 );
setRotateKey( spep_0 -3 + 272, 1, -65.1 );
setRotateKey( spep_0 -3 + 274, 1, -64.4 );
setRotateKey( spep_0 -3 + 276, 1, -63.7 );
setRotateKey( spep_0 -3 + 278, 1, -63.2 );
setRotateKey( spep_0 -3 + 280, 1, -62.6 );
setRotateKey( spep_0 -3 + 282, 1, -62.1 );
setRotateKey( spep_0 -3 + 284, 1, -61.7 );
setRotateKey( spep_0 -3 + 286, 1, -61.3 );
setRotateKey( spep_0 -3 + 288, 1, -60.9 );
setRotateKey( spep_0 -3 + 290, 1, -60.7 );
setRotateKey( spep_0 -3 + 292, 1, -60.4 );
setRotateKey( spep_0 -3 + 294, 1, -60.2 );
setRotateKey( spep_0 -3 + 296, 1, -60.1 );
setRotateKey( spep_0 -3 + 298, 1, -60 );
setRotateKey( spep_0 -3 + 300, 1, -60 );

-- ** 音 ** --
--顔カットイン
SE004 = playSe( spep_0 + 2, 1018 );

--カメラズーム
SE005 = playSe( spep_0 + 48, 1072 );

--ミノシア向かっていく
SE006 = playSe( spep_0 + 98, 1182 );

--ミノシア向かっていく
SE007 = playSe( spep_0 + 98, 1117 );
stopSe( spep_0 + 130, SE007, 28 );

--ミノシア斬る
SE008 = playSe( spep_0 + 128, 1141 );
setSeVolumeByWorkId( spep_0 + 128, SE008, 85 );

--ミノシア斬る
SE009 = playSe( spep_0 + 128, 1032 );
setSeVolumeByWorkId( spep_0 + 128, SE009, 86 );

--ミノシア斬る
SE010 = playSe( spep_0 + 130, 1142 );
setSeVolumeByWorkId( spep_0 + 130, SE010, 87 );

--タピオンジャンプ
SE011 = playSe( spep_0 + 176, 1116 );
stopSe( spep_0 + 218, SE011, 18 );

--タピオン斬る
SE012 = playSe( spep_0 + 222, 1004 );

--タピオン斬る
SE013 = playSe( spep_0 + 230, 1061 );
setSeVolumeByWorkId( spep_0 + 230, SE013, 66 );

--タピオン斬る
SE014 = playSe( spep_0 + 232, 1032 );

--タピオン斬る
SE015 = playSe( spep_0 + 232, 1172 );
setSeVolumeByWorkId( spep_0 + 232, SE015, 64 );
stopSe( spep_0 + 254, SE015, 16 );

--タピオン斬る
SE016 = playSe( spep_0 + 236, 1319,"",0.6 );
setSeVolumeByWorkId( spep_0 + 236, SE016, 63 );
stopSe( spep_0 + 304, SE016, 20 );
setTimeStretch( SE016, 0.67, 10, 1 );

--タピオン斬る
SE017 = playSe( spep_0 + 236, 1031 );

--ミノシア気弾溜め
SE018 = playSe( spep_0 + 300, 1265 );
setSeVolumeByWorkId( spep_0 + 300, SE018, 60 );
setSeVolumeByWorkId( spep_0 + 301, SE018, 75 );
setSeVolumeByWorkId( spep_0 + 302, SE018, 80 );
setSeVolumeByWorkId( spep_0 + 303, SE018, 90 );
setSeVolumeByWorkId( spep_0 + 304, SE018, 100 );
stopSe( spep_0 +350 + 10, SE018, 0 );
setStartTimeMs( SE018,  317 );

--ミノシア気弾溜め
SE019 = playSe( spep_0 + 302, 1295 );
setSeVolumeByWorkId( spep_0 + 302, SE019, 71 );
stopSe( spep_0 +350 + 10, SE019, 0 );

--ミノシア気弾溜め
SE020 = playSe( spep_0 + 302, 1262 );
stopSe( spep_0 +350 + 10, SE020, 0 );
setPitch( spep_0 + 302, SE020, 400 );
setTimeStretch( SE020, 1.27, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 354 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 354;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--気弾発射
SE022 = playSe( spep_1 + 90, 1027 );
setSeVolumeByWorkId( spep_1 + 90, SE022, 68 ); 

--気弾発射
SE023 = playSe( spep_1 + 92, 1021 );

--気弾発射
SE024 = playSe( spep_1 + 92, 1312 );

--気弾発射
SE025 = playSe( spep_1 + 92, 1177 );
setSeVolumeByWorkId( spep_1 + 92, SE025, 81 );
stopSe( spep_1 +94 + 56, SE025, 20 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- ミノシア気弾発射〜フィニッシュ(626F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --ミノシア気弾発射〜フィニッシュ ef_003
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 626, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 626, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 626, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 626, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04r, 0x80, -1, 0, 0, 0 );  --ミノシア気弾発射〜フィニッシュ  ef_004
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 626, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 626, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 626, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 626, finish_b, 255 );

-- ** 書き文字エントリー ** --
ctgogogo = entryEffectLife( spep_2 -3 + 220,  10008, 77, 0x100, -1, 0, 88.8, 186.2 );  --ゴゴゴゴ…
setEffMoveKey( spep_2 -3 + 220, ctgogogo, 88.8, 186.2 , 0 );
setEffMoveKey( spep_2 -3 + 222, ctgogogo, 94.1, 179.6 , 0 );
setEffMoveKey( spep_2 -3 + 224, ctgogogo, 96.2, 196.2 , 0 );
setEffMoveKey( spep_2 -3 + 226, ctgogogo, 100.4, 197.7 , 0 );
setEffMoveKey( spep_2 -3 + 228, ctgogogo, 109.7, 222.1 , 0 );
setEffMoveKey( spep_2 -3 + 230, ctgogogo, 107.1, 233.5 , 0 );
setEffMoveKey( spep_2 -3 + 232, ctgogogo, 124.6, 247.8 , 0 );
setEffMoveKey( spep_2 -3 + 234, ctgogogo, 115.2, 247.6 , 0 );
setEffMoveKey( spep_2 -3 + 236, ctgogogo, 125.8, 252.2 , 0 );
setEffMoveKey( spep_2 -3 + 238, ctgogogo, 120.7, 252.2 , 0 );
setEffMoveKey( spep_2 -3 + 240, ctgogogo, 117.4, 256.6 , 0 );
setEffMoveKey( spep_2 -3 + 242, ctgogogo, 124.6, 246.6 , 0 );
setEffMoveKey( spep_2 -3 + 244, ctgogogo, 125.2, 263.8 , 0 );
setEffMoveKey( spep_2 -3 + 246, ctgogogo, 125.8, 253.9 , 0 );
setEffMoveKey( spep_2 -3 + 248, ctgogogo, 129.2, 265 , 0 );
setEffMoveKey( spep_2 -3 + 250, ctgogogo, 119, 260.3 , 0 );
setEffMoveKey( spep_2 -3 + 252, ctgogogo, 134.1, 266.3 , 0 );
setEffMoveKey( spep_2 -3 + 254, ctgogogo, 122.5, 261.8 , 0 );
setEffMoveKey( spep_2 -3 + 256, ctgogogo, 133.5, 265.9 , 0 );
setEffMoveKey( spep_2 -3 + 258, ctgogogo, 128.7, 266.9 , 0 );
setEffMoveKey( spep_2 -3 + 260, ctgogogo, 124.7, 270.7 , 0 );
setEffMoveKey( spep_2 -3 + 262, ctgogogo, 131.9, 259.5 , 0 );
setEffMoveKey( spep_2 -3 + 264, ctgogogo, 132.2, 276.9 , 0 );
setEffMoveKey( spep_2 -3 + 266, ctgogogo, 132.5, 265.9 , 0 );
setEffMoveKey( spep_2 -3 + 268, ctgogogo, 135.6, 276.8 , 0 );
setEffMoveKey( spep_2 -3 + 270, ctgogogo, 124.7, 271.2 , 0 );
setEffMoveKey( spep_2 -3 + 272, ctgogogo, 140, 276.8 , 0 );
setEffMoveKey( spep_2 -3 + 274, ctgogogo, 127.6, 271.5 , 0 );
setEffMoveKey( spep_2 -3 + 276, ctgogogo, 138.7, 275.1 , 0 );
setEffMoveKey( spep_2 -3 + 278, ctgogogo, 133.3, 275.4 , 0 );
setEffMoveKey( spep_2 -3 + 280, ctgogogo, 128.9, 278.8 , 0 );
setEffMoveKey( spep_2 -3 + 282, ctgogogo, 136, 266.6 , 0 );
setEffMoveKey( spep_2 -3 + 284, ctgogogo, 135.9, 283.8 , 0 );
setEffMoveKey( spep_2 -3 + 286, ctgogogo, 135.8, 271.9 , 0 );
setEffMoveKey( spep_2 -3 + 288, ctgogogo, 138.7, 282.4 , 0 );
setEffMoveKey( spep_2 -3 + 290, ctgogogo, 127.2, 276.1 , 0 );
setEffMoveKey( spep_2 -3 + 292, ctgogogo, 142.5, 281.1 , 0 );
setEffMoveKey( spep_2 -3 + 294, ctgogogo, 129.5, 275.1 , 0 );
setEffMoveKey( spep_2 -3 + 296, ctgogogo, 136.3, 272.6 , 0 );
setEffMoveKey( spep_2 -3 + 297, ctgogogo, 136.3, 272.6 , 0 );

setEffScaleKey( spep_2 -3 + 220, ctgogogo, 1.79, 1.79 );
setEffScaleKey( spep_2 -3 + 222, ctgogogo, 1.81, 1.81 );
setEffScaleKey( spep_2 -3 + 224, ctgogogo, 1.86, 1.86 );
setEffScaleKey( spep_2 -3 + 226, ctgogogo, 1.96, 1.96 );
setEffScaleKey( spep_2 -3 + 228, ctgogogo, 2.12, 2.12 );
setEffScaleKey( spep_2 -3 + 230, ctgogogo, 2.28, 2.28 );
setEffScaleKey( spep_2 -3 + 232, ctgogogo, 2.38, 2.38 );
setEffScaleKey( spep_2 -3 + 234, ctgogogo, 2.43, 2.43 );
setEffScaleKey( spep_2 -3 + 236, ctgogogo, 2.45, 2.45 );
setEffScaleKey( spep_2 -3 + 238, ctgogogo, 2.45, 2.45 );
setEffScaleKey( spep_2 -3 + 240, ctgogogo, 2.47, 2.47 );
setEffScaleKey( spep_2 -3 + 242, ctgogogo, 2.48, 2.48 );
setEffScaleKey( spep_2 -3 + 244, ctgogogo, 2.5, 2.5 );
setEffScaleKey( spep_2 -3 + 246, ctgogogo, 2.51, 2.51 );
setEffScaleKey( spep_2 -3 + 248, ctgogogo, 2.53, 2.53 );
setEffScaleKey( spep_2 -3 + 250, ctgogogo, 2.54, 2.54 );
setEffScaleKey( spep_2 -3 + 252, ctgogogo, 2.55, 2.55 );
setEffScaleKey( spep_2 -3 + 254, ctgogogo, 2.57, 2.57 );
setEffScaleKey( spep_2 -3 + 256, ctgogogo, 2.58, 2.58 );
setEffScaleKey( spep_2 -3 + 258, ctgogogo, 2.59, 2.59 );
setEffScaleKey( spep_2 -3 + 260, ctgogogo, 2.6, 2.6 );
setEffScaleKey( spep_2 -3 + 262, ctgogogo, 2.61, 2.61 );
setEffScaleKey( spep_2 -3 + 264, ctgogogo, 2.62, 2.62 );
setEffScaleKey( spep_2 -3 + 266, ctgogogo, 2.63, 2.63 );
setEffScaleKey( spep_2 -3 + 268, ctgogogo, 2.64, 2.64 );
setEffScaleKey( spep_2 -3 + 270, ctgogogo, 2.65, 2.65 );
setEffScaleKey( spep_2 -3 + 272, ctgogogo, 2.65, 2.65 );
setEffScaleKey( spep_2 -3 + 274, ctgogogo, 2.66, 2.66 );
setEffScaleKey( spep_2 -3 + 276, ctgogogo, 2.67, 2.67 );
setEffScaleKey( spep_2 -3 + 278, ctgogogo, 2.67, 2.67 );
setEffScaleKey( spep_2 -3 + 280, ctgogogo, 2.68, 2.68 );
setEffScaleKey( spep_2 -3 + 282, ctgogogo, 2.68, 2.68 );
setEffScaleKey( spep_2 -3 + 284, ctgogogo, 2.69, 2.69 );
setEffScaleKey( spep_2 -3 + 290, ctgogogo, 2.69, 2.69 );
setEffScaleKey( spep_2 -3 + 292, ctgogogo, 2.7, 2.7 );
setEffScaleKey( spep_2 -3 + 297, ctgogogo, 2.7, 2.7 );

setEffRotateKey( spep_2 -3 + 220, ctgogogo, 13.9 );
setEffRotateKey( spep_2 -3 + 297, ctgogogo, 13.9 );

setEffAlphaKey( spep_2 -3 + 220, ctgogogo, 1 );
setEffAlphaKey( spep_2 -3 + 222, ctgogogo, 8 );
setEffAlphaKey( spep_2 -3 + 224, ctgogogo, 28 );
setEffAlphaKey( spep_2 -3 + 226, ctgogogo, 65 );
setEffAlphaKey( spep_2 -3 + 228, ctgogogo, 128 );
setEffAlphaKey( spep_2 -3 + 230, ctgogogo, 190 );
setEffAlphaKey( spep_2 -3 + 232, ctgogogo, 227 );
setEffAlphaKey( spep_2 -3 + 234, ctgogogo, 247 );
setEffAlphaKey( spep_2 -3 + 236, ctgogogo, 254 );
setEffAlphaKey( spep_2 -3 + 238, ctgogogo, 255 );
setEffAlphaKey( spep_2 -3 + 297, ctgogogo, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 124, 1, 0 );

setDisp( spep_2 -3 + 376, 1, 1 );
setDisp( spep_2 -3 + 506, 1, 0 );
changeAnime( spep_2 + 0, 1, 5 );
changeAnime( spep_2 -3 + 66, 1, 106 );
changeAnime( spep_2 -3 + 376, 1, 106 );

setBlendColor( spep_2 -3 + 460, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 -3 + 505, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 -3 + 506, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_2 -3 + 0, 1, 230.2, 4 , 0 );
setMoveKey( spep_2 -3 + 2, 1, 229.2, 4.3 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 229.8, 4.2 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 238.8, 7.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 241.8, 14.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 226.2, -7 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 228.1, 4.4 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 226.9, 3.9 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 226, 4.7 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 225.3, 3.8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 224.3, 4.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 222.3, 4.1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 221.9, 4.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 219, 4.1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 218, 4.6 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 214.4, 4.3 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 212.4, 5.5 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 208.2, 4.4 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 205.2, 6.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 200.7, 4.7 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 195.1, 7 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 189.7, 5.6 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 180.3, 6.9 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 173.9, 7.3 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 159.9, 6.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 145.2, 9.7 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 128.3, 4.8 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 102.3, 15.8 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 55.6, 9.4 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 51.1, 16.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 60.5, 12.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 49.2, 11.6 , 0 );
setMoveKey( spep_2 -3 + 65, 1, 58.3, 13 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 61.9, -6.7 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 80.3, -16 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 90.8, -14.5 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 110.8, -21.8 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 118.5, -20 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 135.2, -25.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 141.2, -26.2 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 152.6, -33.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 156.1, -31 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 169.3, -31.3 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 168.9, -33.2 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 178.4, -33.9 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 179.1, -36.1 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 180.9, -36.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 181.5, -36.7 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 182.8, -36.5 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 184.1, -36.3 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 185.4, -36 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 186.6, -35.8 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 187.9, -35.6 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 189.2, -35.4 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 190.5, -35.2 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 191.7, -34.8 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 193.2, -34.2 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 194.9, -32.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 197.2, -30.3 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 200.4, -25.2 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 205.8, -14.7 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 216.7, 9.8 , 0 );
setMoveKey( spep_2 -3 + 125, 1, 240.7, 66.6 , 0 );
--
setMoveKey( spep_2 -3 + 376, 1, 172.6, 337.8 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 172.5, 337.5 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 172.3, 337.2 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 172, 336.7 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 171.8, 336.3 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 171.5, 335.6 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 171.2, 334.8 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 170.7, 334 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 170.2, 333 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 169.6, 331.7 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 168.9, 330.3 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 168, 328.7 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 167.1, 326.8 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 166, 324.6 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 164.7, 322 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 163.2, 318.8 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 161.4, 315.2 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 159.2, 310.8 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 156.6, 305.5 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 153.3, 298.9 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 149.1, 290.5 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 143.6, 279.5 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 135.8, 263.7 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 123, 237.9 , 0 );
setMoveKey( spep_2 -3 + 423, 1, 123, 237.9 , 0 );--
setMoveKey( spep_2 -3 + 424, 1, 85.4, 167 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 87, 162.5 , 0 );
setMoveKey( spep_2 -3 + 428, 1, 92.6, 170.5 , 0 );
setMoveKey( spep_2 -3 + 430, 1, 88.8, 171.5 , 0 );
setMoveKey( spep_2 -3 + 432, 1, 95.8, 174.4 , 0 );
setMoveKey( spep_2 -3 + 434, 1, 83.5, 169.6 , 0 );
setMoveKey( spep_2 -3 + 436, 1, 96.2, 179.1 , 0 );
setMoveKey( spep_2 -3 + 438, 1, 83.7, 169.8 , 0 );
setMoveKey( spep_2 -3 + 440, 1, 99.8, 184 , 0 );
setMoveKey( spep_2 -3 + 442, 1, 89.2, 171.9 , 0 );
setMoveKey( spep_2 -3 + 444, 1, 97.6, 187.4 , 0 );
setMoveKey( spep_2 -3 + 446, 1, 95.3, 173.6 , 0 );
setMoveKey( spep_2 -3 + 448, 1, 93.8, 184 , 0 );
setMoveKey( spep_2 -3 + 450, 1, 107.6, 177 , 0 );
setMoveKey( spep_2 -3 + 452, 1, 92.1, 184.4 , 0 );
setMoveKey( spep_2 -3 + 453, 1, 92.1, 184.4 , 0 );--
setMoveKey( spep_2 -3 + 454, 1, 101.9, 181.1 , 0 );
setMoveKey( spep_2 -3 + 456, 1, 100.5, 185.3 , 0 );
setMoveKey( spep_2 -3 + 457, 1, 100.5, 185.3 , 0 );--
--setMoveKey( spep_2 -3 + 458, 1, 98.8, 180.5 , 0 );
setMoveKey( spep_2 -3 + 458, 1, 100.4, 188.4 , 0 );
setMoveKey( spep_2 -3 + 460, 1, 107.5, 191.9 , 0 );
setMoveKey( spep_2 -3 + 462, 1, 97.2, 192.9 , 0 );
setMoveKey( spep_2 -3 + 464, 1, 108.8, 192.7 , 0 );
setMoveKey( spep_2 -3 + 466, 1, 97.4, 192.4 , 0 );
setMoveKey( spep_2 -3 + 467, 1, 97.4, 192.4 , 0 );--
setMoveKey( spep_2 -3 + 468, 1, 104.7, 181.9 , 0 );
setMoveKey( spep_2 -3 + 470, 1, 94, 187.7 , 0 );
setMoveKey( spep_2 -3 + 472, 1, 110.5, 182.7 , 0 );
setMoveKey( spep_2 -3 + 474, 1, 100.7, 188.2 , 0 );
setMoveKey( spep_2 -3 + 476, 1, 106.4, 176.8 , 0 );
setMoveKey( spep_2 -3 + 478, 1, 101, 191.7 , 0 );
setMoveKey( spep_2 -3 + 480, 1, 94.4, 179.6 , 0 );
setMoveKey( spep_2 -3 + 482, 1, 105.7, 190.6 , 0 );
setMoveKey( spep_2 -3 + 484, 1, 100.6, 176.7 , 0 );
setMoveKey( spep_2 -3 + 486, 1, 102.5, 190.1 , 0 );
setMoveKey( spep_2 -3 + 488, 1, 104.2, 176.1 , 0 );
setMoveKey( spep_2 -3 + 490, 1, 97.7, 191.6 , 0 );
setMoveKey( spep_2 -3 + 492, 1, 109, 181.9 , 0 );
setMoveKey( spep_2 -3 + 494, 1, 98.8, 189.7 , 0 );
setMoveKey( spep_2 -3 + 496, 1, 98, 187.2 , 0 );
setMoveKey( spep_2 -3 + 498, 1, 106.6, 178 , 0 );
setMoveKey( spep_2 -3 + 500, 1, 97.9, 191.2 , 0 );
setMoveKey( spep_2 -3 + 502, 1, 106.7, 181.1 , 0 );
setMoveKey( spep_2 -3 + 504, 1, 100.3, 188.4 , 0 );
setMoveKey( spep_2 -3 + 506, 1, 100.5, 182.1 , 0 );


setScaleKey( spep_2 -3 + 0, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 4, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 6, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 12, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 14, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 16, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 18, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 20, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 22, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 24, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 26, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 28, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 30, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 32, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 34, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 36, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 38, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 40, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 42, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 44, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 46, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 48, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 50, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 52, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 54, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 56, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 65, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 66, 1, 1, 1 );
setScaleKey( spep_2 -3 + 125, 1, 1, 1 );
--
setScaleKey( spep_2 -3 + 376, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 380, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 382, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 386, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 388, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 390, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 392, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 394, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 396, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 398, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 400, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 402, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 404, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 406, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 408, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 410, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 412, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 414, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 416, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 418, 1, 0.52, 0.52 );
setScaleKey( spep_2 -3 + 420, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 422, 1, 0.78, 0.78 );
setScaleKey( spep_2 -3 + 423, 1, 0.78, 0.78 );--
setScaleKey( spep_2 -3 + 424, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 506, 1, 1.23, 1.23 );

setRotateKey( spep_2 -3 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 66, 1, 0 );
setRotateKey( spep_2 -3 + 68, 1, 1.4 );
setRotateKey( spep_2 -3 + 70, 1, 2.7 );
setRotateKey( spep_2 -3 + 72, 1, 3.8 );
setRotateKey( spep_2 -3 + 74, 1, 4.9 );
setRotateKey( spep_2 -3 + 76, 1, 5.9 );
setRotateKey( spep_2 -3 + 78, 1, 6.7 );
setRotateKey( spep_2 -3 + 80, 1, 7.5 );
setRotateKey( spep_2 -3 + 82, 1, 8.2 );
setRotateKey( spep_2 -3 + 84, 1, 8.7 );
setRotateKey( spep_2 -3 + 86, 1, 9.2 );
setRotateKey( spep_2 -3 + 88, 1, 9.5 );
setRotateKey( spep_2 -3 + 90, 1, 9.8 );
setRotateKey( spep_2 -3 + 92, 1, 9.9 );
setRotateKey( spep_2 -3 + 94, 1, 10 );
setRotateKey( spep_2 -3 + 96, 1, 10.2 );
setRotateKey( spep_2 -3 + 98, 1, 10.4 );
setRotateKey( spep_2 -3 + 100, 1, 10.6 );
setRotateKey( spep_2 -3 + 102, 1, 10.8 );
setRotateKey( spep_2 -3 + 104, 1, 11 );
setRotateKey( spep_2 -3 + 106, 1, 11.2 );
setRotateKey( spep_2 -3 + 108, 1, 11.4 );
setRotateKey( spep_2 -3 + 110, 1, 11.6 );
setRotateKey( spep_2 -3 + 112, 1, 11.8 );
setRotateKey( spep_2 -3 + 114, 1, 12 );
setRotateKey( spep_2 -3 + 116, 1, 12.2 );
setRotateKey( spep_2 -3 + 118, 1, 12.4 );
setRotateKey( spep_2 -3 + 120, 1, 12.6 );
setRotateKey( spep_2 -3 + 122, 1, 12.8 );
setRotateKey( spep_2 -3 + 125, 1, 13 );
--
setRotateKey( spep_2 -3 + 376, 1, 10 );
setRotateKey( spep_2 -3 + 506, 1, 10 );

-- ** 音 ** --
--気弾ヒット
SE026 = playSe( spep_2 + 54, 1023 );

--気弾ヒット
SE027 = playSe( spep_2 + 56, 1011 );

--画面遷移
SE028 = playSe( spep_2 + 116, 44 );

--腕あげる
SE029 = playSe( spep_2 + 186, 1004 );

--腕あげる
SE030 = playSe( spep_2 + 190, 1013 );

--背景の炎大きくなる
SE031 = playSe( spep_2 + 208, 1268 );
setSeVolumeByWorkId( spep_2 + 208, SE031, 9 );
setSeVolumeByWorkId( spep_2 + 212, SE031, 18 );
setSeVolumeByWorkId( spep_2 + 216, SE031, 27 );
setSeVolumeByWorkId( spep_2 + 220, SE031, 36 );
setSeVolumeByWorkId( spep_2 + 224, SE031, 45 );
setSeVolumeByWorkId( spep_2 + 228, SE031, 54 );
setSeVolumeByWorkId( spep_2 + 232, SE031, 63 );
setSeVolumeByWorkId( spep_2 + 236, SE031, 72 );
setSeVolumeByWorkId( spep_2 + 240, SE031, 81 );
setSeVolumeByWorkId( spep_2 + 244, SE031, 90 );
setSeVolumeByWorkId( spep_2 + 248, SE031, 95 );
setSeVolumeByWorkId( spep_2 + 252, SE031, 100 );
stopSe( spep_2 + 356, SE031, 42 );          

--背景の炎大きくなる
SE032 = playSe( spep_2 + 208, 1226 );
setSeVolumeByWorkId( spep_2 + 208, SE032, 9 );
setSeVolumeByWorkId( spep_2 + 212, SE032, 18 );
setSeVolumeByWorkId( spep_2 + 216, SE032, 27 );
setSeVolumeByWorkId( spep_2 + 220, SE032, 36 );
setSeVolumeByWorkId( spep_2 + 224, SE032, 45 );
setSeVolumeByWorkId( spep_2 + 228, SE032, 54 );
setSeVolumeByWorkId( spep_2 + 232, SE032, 63 );
setSeVolumeByWorkId( spep_2 + 236, SE032, 72 );
setSeVolumeByWorkId( spep_2 + 240, SE032, 81 );
setSeVolumeByWorkId( spep_2 + 244, SE032, 90 );
setSeVolumeByWorkId( spep_2 + 248, SE032, 95 );
setSeVolumeByWorkId( spep_2 + 252, SE032, 100 );
stopSe( spep_2 + 368, SE032, 34 );

--背景の炎大きくなる
SE033 = playSe( spep_2 + 218, 1264 );
setSeVolumeByWorkId( spep_2 + 218, SE033, 10 );
setSeVolumeByWorkId( spep_2 + 222, SE033, 20 );
setSeVolumeByWorkId( spep_2 + 226, SE033, 40 );
setSeVolumeByWorkId( spep_2 + 230, SE033, 60 );
setSeVolumeByWorkId( spep_2 + 234, SE033, 79 );
setPitch( spep_2 + 218, SE033, -600 );
setTimeStretch( SE033, 0.6, 10, 1 );

--炎発射
SE034 = playSe( spep_2 + 296, 1188 );
setSeVolumeByWorkId( spep_2 + 296, SE034, 22.4 );
setSeVolumeByWorkId( spep_2 + 297, SE034, 44.8 );
setSeVolumeByWorkId( spep_2 + 298, SE034, 67.2 );
setSeVolumeByWorkId( spep_2 + 299, SE034, 89.6 );
setSeVolumeByWorkId( spep_2 + 300, SE034, 112 );
setStartTimeMs( SE034,  183 );

--炎発射
SE035 = playSe( spep_2 + 296, 1258 );
setSeVolumeByWorkId( spep_2 + 296, SE035, 71 );

--炎発射
SE036 = playSe( spep_2 + 296, 1022 );

--炎発射
SE037 = playSe( spep_2 + 322, 1278 );
stopSe( spep_2 + 380, SE037, 28 );

--炎発射
SE038 = playSe( spep_2 + 322, 1193 );
stopSe( spep_2 + 428, SE038, 40 );

--炎発射
SE039 = playSe( spep_2 + 322, 1215 );
stopSe( spep_2 + 442, SE039, 36 );

--炎ヒット
SE040 = playSe( spep_2 + 424, 1159 );
setSeVolumeByWorkId( spep_2 + 428, SE040, 78 );

--炎ヒット
SE041 = playSe( spep_2 + 424, 1188 );

--炎ヒット
SE042 = playSe( spep_2 + 450, 1258 );
setSeVolumeByWorkId( spep_2 + 450, SE042, 60 );

--炎ヒット
SE043 = playSe( spep_2 + 450, 1307 );
setSeVolumeByWorkId( spep_2 + 450, SE043, 229 );

--ラスト爆発
SE044 = playSe( spep_2 + 540, 1137 );
setSeVolumeByWorkId( spep_2 + 540, SE044, 71 );

--ラスト爆発
SE045 = playSe( spep_2 + 540, 1145 );
setSeVolumeByWorkId( spep_2 + 540, SE045, 74 );

--ラスト爆発
SE046 = playSe( spep_2 + 542, 1024 );
setSeVolumeByWorkId( spep_2 + 542, SE046, 81 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 626 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 516 );
endPhase( spep_2 + 616 +10 );

end