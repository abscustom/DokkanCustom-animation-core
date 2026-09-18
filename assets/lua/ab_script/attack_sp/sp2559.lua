-- 1026730: LR_ドクター・ウイロー_ギガンティックボマー
-- sp_effect_b1_00255

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035;  -- 気を貯める
SE_02 = 1036;  -- 気が広がる
SE_03 = 1036;  -- かめはめ
SE_04 = 1018;  -- カットイン
SE_05 = 1035;  -- カットイン攻撃
SE_06 = 1021;  -- 発射
SE_07 = 1022;  -- のびる発射
SE_08 = 1042;  -- カットイン
SE_09 = 1023;  -- HIT
SE_10 = 1024;  -- 爆破
SE_11 = 1054;  -- 割れる音
SE_12 = 09;

-- 味方側
SP_001 = 161885;  -- 開始～横殴りまで ef_001
SP_001b = 161886;  -- 開始～横殴りまで ef_001b
SP_002 = 161889;  -- 奥から特攻～フィニッシュ ef_002
SP_002b = 161890;  -- 奥から特攻～フィニッシュ ef_002b

-- 敵側
SP_001r = 161887;  -- 開始～横殴りまで ef_001r
SP_001br = 161888;  -- 開始～横殴りまで ef_001br
SP_002r = 161891;  -- 奥から特攻～フィニッシュ ef_002r
SP_002br = 161892;  -- 奥から特攻～フィニッシュ ef_002br

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

spep_0 = 0;

------------------------------------------------------
-- 開始～横殴りまで ef_001 (302F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + 304, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + 304, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + 304, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + 304, entry_SP_001, 255 );
entry_SP_001b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 304, entry_SP_001b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 304, entry_SP_001b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001b, 0 );
setEffRotateKey( spep_0 + 304, entry_SP_001b, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001b, 255 );
setEffAlphaKey( spep_0 + 304, entry_SP_001b, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 304 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
n = 1;

setDisp( spep_0 - n + 96, 1, 1 );
changeAnime( spep_0 - n + 96, 1, 102 );

setMoveKey( spep_0 - n + 96, 1, 232, 346.5 , 0 );
setMoveKey( spep_0 - n + 98, 1, 222.7, 331.8 , 0 );
setMoveKey( spep_0 - n + 100, 1, 213.3, 317 , 0 );
setMoveKey( spep_0 - n + 102, 1, 204, 302.2 , 0 );
setMoveKey( spep_0 - n + 104, 1, 194.7, 287.4 , 0 );
setMoveKey( spep_0 - n + 106, 1, 185.3, 272.7 , 0 );
setMoveKey( spep_0 - n + 108, 1, 176, 257.9 , 0 );
setMoveKey( spep_0 - n + 110, 1, 166.6, 243.1 , 0 );
setMoveKey( spep_0 - n + 112, 1, 157.3, 228.4 , 0 );
setMoveKey( spep_0 - n + 114, 1, 147.9, 213.6 , 0 );
setMoveKey( spep_0 - n + 116, 1, 138.6, 198.8 , 0 );
setMoveKey( spep_0 - n + 118, 1, 129.2, 184 , 0 );
setMoveKey( spep_0 - n + 120, 1, 119.9, 169.3 , 0 );

setScaleKey( spep_0 - n + 96, 1, 3, 3 );
setScaleKey( spep_0 - n + 98, 1, 2.92, 2.92 );
setScaleKey( spep_0 - n + 100, 1, 2.83, 2.83 );
setScaleKey( spep_0 - n + 102, 1, 2.75, 2.75 );
setScaleKey( spep_0 - n + 104, 1, 2.67, 2.67 );
setScaleKey( spep_0 - n + 106, 1, 2.58, 2.58 );
setScaleKey( spep_0 - n + 108, 1, 2.5, 2.5 );
setScaleKey( spep_0 - n + 110, 1, 2.41, 2.41 );
setScaleKey( spep_0 - n + 112, 1, 2.33, 2.33 );
setScaleKey( spep_0 - n + 114, 1, 2.24, 2.24 );
setScaleKey( spep_0 - n + 116, 1, 2.16, 2.16 );
setScaleKey( spep_0 - n + 118, 1, 2.07, 2.07 );
setScaleKey( spep_0 - n + 120, 1, 1.99, 1.99 );

setRotateKey( spep_0 - n + 96, 1, -24.9 );
setRotateKey( spep_0 - n + 120, 1, -24.9 );

-- ** 音 ** --
--入り集中線
SE001 = playSeVer2( spep_0 + 0, 20, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 12, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 78 );
setPitch( spep_0 + 0, SE002, -600 );
setTimeStretch( SE002, 0.6, 30, 4 );

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--向かってくる
SE004 = playSeVer2( spep_0 + 84, 1117, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 84, 1116, "",spep_0 + 142, 0, 32, -1);
SE006 = playSeVer2( spep_0 + 84, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 84, 9, "", 0, 0, 0, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE0000, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);

    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge - n + 0, 1, 119.9, 169.3 , 0 );
	setMoveKey( SP_dodge - n + 2, 1, 110.6, 154.5 , 0 );
	setMoveKey( SP_dodge - n + 4, 1, 101.2, 139.7 , 0 );
	setMoveKey( SP_dodge - n + 6, 1, 91.9, 125 , 0 );
	setMoveKey( SP_dodge - n + 8, 1, 82.5, 110.2 , 0 );
	setMoveKey( SP_dodge - n + 10, 1, 73.2, 95.4 , 0 );
	setMoveKey( SP_dodge + 10, 1, 73.2, 95.4 , 0 );

	setScaleKey( SP_dodge - n + 0, 1, 1.99, 1.99 );
	setScaleKey( SP_dodge - n + 2, 1, 1.9, 1.9 );
	setScaleKey( SP_dodge - n + 4, 1, 1.82, 1.82 );
	setScaleKey( SP_dodge - n + 6, 1, 1.73, 1.73 );
	setScaleKey( SP_dodge - n + 8, 1, 1.65, 1.65 );
	setScaleKey( SP_dodge - n + 10, 1, 1.56, 1.56 );
	setScaleKey( SP_dodge + 10, 1, 1.56, 1.56 );

	setRotateKey( SP_dodge + 0, 1, -24.9 );
	setRotateKey( SP_dodge + 10, 1, -24.9 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** 敵キャラクター ** --
setDisp( spep_0 - n + 154, 1, 0 );
setDisp( spep_0 - n + 196, 1, 1 );
setDisp( spep_0 - n + 238, 1, 0 );
setDisp( spep_0 - n + 244, 1, 1 );
setDisp( spep_0 - n + 262, 1, 0 );
changeAnime( spep_0 - n + 140, 1, 107 );
changeAnime( spep_0 - n + 196, 1, 108 );
changeAnime( spep_0 - n + 244, 1, 7 );

setMoveKey( spep_0 - n + 122, 1, 110.6, 154.5 , 0 );
setMoveKey( spep_0 - n + 124, 1, 101.2, 139.7 , 0 );
setMoveKey( spep_0 - n + 126, 1, 91.9, 125 , 0 );
setMoveKey( spep_0 - n + 128, 1, 82.5, 110.2 , 0 );
setMoveKey( spep_0 - n + 130, 1, 73.2, 95.4 , 0 );
setMoveKey( spep_0 - n + 132, 1, 63.9, 80.7 , 0 );
setMoveKey( spep_0 - n + 134, 1, 54.5, 65.9 , 0 );
setMoveKey( spep_0 - n + 139, 1, 54.5, 65.9 , 0 );
setMoveKey( spep_0 - n + 140, 1, 70.2, 124 , 0 );
setMoveKey( spep_0 - n + 141, 1, 70.2, 124 , 0 );
setMoveKey( spep_0 - n + 142, 1, 70.2, 84 , 0 );
setMoveKey( spep_0 - n + 143, 1, 70.2, 84 , 0 );
setMoveKey( spep_0 - n + 144, 1, 50.2, 44 , 0 );
setMoveKey( spep_0 - n + 145, 1, 50.2, 44 , 0 );
setMoveKey( spep_0 - n + 146, 1, 169.6, 217.1 , 0 );
setMoveKey( spep_0 - n + 147, 1, 169.6, 217.1 , 0 );
setMoveKey( spep_0 - n + 148, 1, 289, 370 , 0 );
setMoveKey( spep_0 - n + 149, 1, 289, 370 , 0 );
setMoveKey( spep_0 - n + 150, 1, 368.3, 483 , 0 );
setMoveKey( spep_0 - n + 151, 1, 368.3, 483 , 0 );
setMoveKey( spep_0 - n + 152, 1, 461.6, 605.9 , 0 );
setMoveKey( spep_0 - n + 154, 1, 461.6, 605.9 , 0 );
--
setMoveKey( spep_0 - n + 196, 1, -444.2, -483.8 , 0 );
setMoveKey( spep_0 - n + 198, 1, -404.4, -438.4 , 0 );
setMoveKey( spep_0 - n + 200, 1, -366.7, -395.5 , 0 );
setMoveKey( spep_0 - n + 202, 1, -331.2, -355 , 0 );
setMoveKey( spep_0 - n + 204, 1, -297.8, -316.8 , 0 );
setMoveKey( spep_0 - n + 206, 1, -266.5, -281.1 , 0 );
setMoveKey( spep_0 - n + 208, 1, -237.3, -247.9 , 0 );
setMoveKey( spep_0 - n + 210, 1, -210.3, -217 , 0 );
setMoveKey( spep_0 - n + 212, 1, -185.4, -188.5 , 0 );
setMoveKey( spep_0 - n + 214, 1, -162.6, -162.5 , 0 );
setMoveKey( spep_0 - n + 216, 1, -141.9, -138.9 , 0 );
setMoveKey( spep_0 - n + 218, 1, -123.4, -117.7 , 0 );
setMoveKey( spep_0 - n + 220, 1, -106.9, -99 , 0 );
setMoveKey( spep_0 - n + 222, 1, -92.6, -82.6 , 0 );
setMoveKey( spep_0 - n + 224, 1, -80.5, -68.7 , 0 );
setMoveKey( spep_0 - n + 226, 1, -75.6, -63.1 , 0 );
setMoveKey( spep_0 - n + 228, 1, -70.8, -57.6 , 0 );
setMoveKey( spep_0 - n + 230, 1, -66, -52 , 0 );
setMoveKey( spep_0 - n + 232, 1, -61.1, -46.4 , 0 );
setMoveKey( spep_0 - n + 234, 1, -56.3, -40.8 , 0 );
setMoveKey( spep_0 - n + 236, 1, -51.5, -35.3 , 0 );
setMoveKey( spep_0 - n + 238, 1, -51.5, -35.3 , 0 );
--
setMoveKey( spep_0 - n + 244, 1, -109, -45.6 , 0 );
setMoveKey( spep_0 - n + 245, 1, -109, -45.6 , 0 );
setMoveKey( spep_0 - n + 246, 1, -152, -49.2 , 0 );
setMoveKey( spep_0 - n + 247, 1, -152, -49.2 , 0 );
setMoveKey( spep_0 - n + 248, 1, -235, -105.3 , 0 );
setMoveKey( spep_0 - n + 249, 1, -235, -105.3 , 0 );
setMoveKey( spep_0 - n + 250, 1, -341, -100.4 , 0 );
setMoveKey( spep_0 - n + 251, 1, -341, -100.4 , 0 );
setMoveKey( spep_0 - n + 252, 1, -415.4, -137.6 , 0 );
setMoveKey( spep_0 - n + 253, 1, -415.4, -137.6 , 0 );
setMoveKey( spep_0 - n + 254, 1, -475.2, -185.2 , 0 );
setMoveKey( spep_0 - n + 255, 1, -475.2, -185.2 , 0 );
setMoveKey( spep_0 - n + 256, 1, -553.8, -195 , 0 );
setMoveKey( spep_0 - n + 257, 1, -553.8, -195 , 0 );
setMoveKey( spep_0 - n + 258, 1, -640.8, -234.1 , 0 );
setMoveKey( spep_0 - n + 259, 1, -640.8, -234.1 , 0 );
setMoveKey( spep_0 - n + 260, 1, -719.3, -262.8 , 0 );
setMoveKey( spep_0 - n + 262, 1, -719.3, -262.8 , 0 );

setScaleKey( spep_0 - n + 122, 1, 1.9, 1.9 );
setScaleKey( spep_0 - n + 124, 1, 1.82, 1.82 );
setScaleKey( spep_0 - n + 126, 1, 1.73, 1.73 );
setScaleKey( spep_0 - n + 128, 1, 1.65, 1.65 );
setScaleKey( spep_0 - n + 130, 1, 1.56, 1.56 );
setScaleKey( spep_0 - n + 132, 1, 1.48, 1.48 );
setScaleKey( spep_0 - n + 134, 1, 1.39, 1.39 );
setScaleKey( spep_0 - n + 139, 1, 1.39, 1.39 );
setScaleKey( spep_0 - n + 140, 1, 0.56, 0.56 );
setScaleKey( spep_0 - n + 144, 1, 0.56, 0.56 );
setScaleKey( spep_0 - n + 145, 1, 0.56, 0.56 );
setScaleKey( spep_0 - n + 146, 1, 1.09, 1.09 );
setScaleKey( spep_0 - n + 147, 1, 1.09, 1.09 );
setScaleKey( spep_0 - n + 148, 1, 1.63, 1.63 );
setScaleKey( spep_0 - n + 149, 1, 1.63, 1.63 );
setScaleKey( spep_0 - n + 150, 1, 2.17, 2.17 );
setScaleKey( spep_0 - n + 151, 1, 2.17, 2.17 );
setScaleKey( spep_0 - n + 152, 1, 2.71, 2.71 );
setScaleKey( spep_0 - n + 154, 1, 2.71, 2.71 );
--
setScaleKey( spep_0 - n + 196, 1, 9.31, 9.31 );
setScaleKey( spep_0 - n + 198, 1, 8.49, 8.49 );
setScaleKey( spep_0 - n + 200, 1, 7.72, 7.72 );
setScaleKey( spep_0 - n + 202, 1, 6.99, 6.99 );
setScaleKey( spep_0 - n + 204, 1, 6.3, 6.3 );
setScaleKey( spep_0 - n + 206, 1, 5.66, 5.66 );
setScaleKey( spep_0 - n + 208, 1, 5.06, 5.06 );
setScaleKey( spep_0 - n + 210, 1, 4.5, 4.5 );
setScaleKey( spep_0 - n + 212, 1, 3.99, 3.99 );
setScaleKey( spep_0 - n + 214, 1, 3.52, 3.52 );
setScaleKey( spep_0 - n + 216, 1, 3.09, 3.09 );
setScaleKey( spep_0 - n + 218, 1, 2.71, 2.71 );
setScaleKey( spep_0 - n + 220, 1, 2.38, 2.38 );
setScaleKey( spep_0 - n + 222, 1, 2.08, 2.08 );
setScaleKey( spep_0 - n + 224, 1, 1.83, 1.83 );
setScaleKey( spep_0 - n + 226, 1, 1.71, 1.71 );
setScaleKey( spep_0 - n + 228, 1, 1.59, 1.59 );
setScaleKey( spep_0 - n + 230, 1, 1.47, 1.47 );
setScaleKey( spep_0 - n + 232, 1, 1.35, 1.35 );
setScaleKey( spep_0 - n + 234, 1, 1.23, 1.23 );
setScaleKey( spep_0 - n + 236, 1, 1.11, 1.11 );
setScaleKey( spep_0 - n + 238, 1, 1.11, 1.11 );
--
setScaleKey( spep_0 - n + 244, 1, 0.43, 0.43 );
setScaleKey( spep_0 - n + 245, 1, 0.43, 0.43 );
setScaleKey( spep_0 - n + 246, 1, 0.74, 0.74 );
setScaleKey( spep_0 - n + 247, 1, 0.74, 0.74 );
setScaleKey( spep_0 - n + 248, 1, 1.05, 1.05 );
setScaleKey( spep_0 - n + 249, 1, 1.05, 1.05 );
setScaleKey( spep_0 - n + 250, 1, 1.36, 1.36 );
setScaleKey( spep_0 - n + 251, 1, 1.36, 1.36 );
setScaleKey( spep_0 - n + 252, 1, 1.67, 1.67 );
setScaleKey( spep_0 - n + 253, 1, 1.67, 1.67 );
setScaleKey( spep_0 - n + 254, 1, 1.98, 1.98 );
setScaleKey( spep_0 - n + 255, 1, 1.98, 1.98 );
setScaleKey( spep_0 - n + 256, 1, 2.29, 2.29 );
setScaleKey( spep_0 - n + 257, 1, 2.29, 2.29 );
setScaleKey( spep_0 - n + 258, 1, 2.6, 2.6 );
setScaleKey( spep_0 - n + 259, 1, 2.6, 2.6 );
setScaleKey( spep_0 - n + 260, 1, 2.9, 2.9 );
setScaleKey( spep_0 - n + 262, 1, 2.9, 2.9 );

setRotateKey( spep_0 - n + 122, 1, -24.9 );
setRotateKey( spep_0 - n + 139, 1, -24.9 );
setRotateKey( spep_0 - n + 140, 1, -42.7 );
setRotateKey( spep_0 - n + 154, 1, -42.7 );
--
setRotateKey( spep_0 - n + 196, 1, 10.1 );
setRotateKey( spep_0 - n + 198, 1, 10.8 );
setRotateKey( spep_0 - n + 200, 1, 11.4 );
setRotateKey( spep_0 - n + 202, 1, 12 );
setRotateKey( spep_0 - n + 204, 1, 12.6 );
setRotateKey( spep_0 - n + 206, 1, 13.2 );
setRotateKey( spep_0 - n + 208, 1, 13.7 );
setRotateKey( spep_0 - n + 210, 1, 14.2 );
setRotateKey( spep_0 - n + 212, 1, 14.6 );
setRotateKey( spep_0 - n + 214, 1, 15 );
setRotateKey( spep_0 - n + 216, 1, 15.4 );
setRotateKey( spep_0 - n + 218, 1, 15.7 );
setRotateKey( spep_0 - n + 220, 1, 16 );
setRotateKey( spep_0 - n + 222, 1, 16.3 );
setRotateKey( spep_0 - n + 224, 1, 16.5 );
setRotateKey( spep_0 - n + 226, 1, 16.6 );
setRotateKey( spep_0 - n + 228, 1, 16.7 );
setRotateKey( spep_0 - n + 230, 1, 16.7 );
setRotateKey( spep_0 - n + 232, 1, 16.8 );
setRotateKey( spep_0 - n + 234, 1, 16.9 );
setRotateKey( spep_0 - n + 236, 1, 17 );
setRotateKey( spep_0 - n + 238, 1, 17 );
--
setRotateKey( spep_0 - n + 244, 1, 0 );
setRotateKey( spep_0 - n + 262, 1, 0 );

setBlendColor( spep_0 - n + 146 , 1, 2, 0, 0, 0, 0);
setBlendColor( spep_0 - n + 148 , 1, 2, 0, 0, 0, 0.2);
setBlendColor( spep_0 - n + 150 , 1, 2, 0, 0, 0, 0.4);
setBlendColor( spep_0 - n + 152 , 1, 2, 0, 0, 0, 0.6);
setBlendColor( spep_0 - n + 154 , 1, 2, 0, 0, 0, 0);
--
setBlendColor( spep_0 - n + 196 , 1, 2, 0, 0, 0, 0);
setBlendColor( spep_0 - n + 246 , 1, 2, 0, 0, 0, 0);
setBlendColor( spep_0 - n + 248 , 1, 2, 0, 0, 0, 0.1);
setBlendColor( spep_0 - n + 250 , 1, 2, 0, 0, 0, 0.2);
setBlendColor( spep_0 - n + 252 , 1, 2, 0, 0, 0, 0.3);
setBlendColor( spep_0 - n + 254 , 1, 2, 0, 0, 0, 0.4);
setBlendColor( spep_0 - n + 256 , 1, 2, 0, 0, 0, 0.5);
setBlendColor( spep_0 - n + 258 , 1, 2, 0, 0, 0, 0.6);
setBlendColor( spep_0 - n + 260 , 1, 2, 0, 0, 0, 0.7);
setBlendColor( spep_0 - n + 262 , 1, 2, 0, 0, 0, 0);

-- ** 音 ** --
--パンチ
SE008 = playSeVer2( spep_0 + 136, 1187, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 136, 1359, "", 0, 0, 0, -1);

--瞬間移動１
SE010 = playSeVer2( spep_0 + 168, 1235, "",spep_0 + 202, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 168, SE010, 75 );
SE011 = playSeVer2( spep_0 + 170, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE011, 72 );

--瞬間移動２
SE012 = playSeVer2( spep_0 + 204, 1235, "",spep_0 + 240, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 204, SE012, 75 );
SE013 = playSeVer2( spep_0 + 206, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE013, 69 );

--殴り飛ばす
SE014 = playSeVer2( spep_0 + 228, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 234, 1187, "",spep_0 + 304 + 8, 0, 8, -1);
SE016 = playSeVer2( spep_0 + 234, 1153, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 238, 1169, "", 0, 0, 0, -1);

--瞬間移動３
SE018 = playSeVer2( spep_0 + 280, 1235, "",spep_0 + 304 + 8, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 280, SE018, 76 );
SE019 = playSeVer2( spep_0 + 282, 1245, "",spep_0 + 304 + 8, 0, -2, -1);
setSeVolumeByWorkId( spep_0 + 282, SE019, 71 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 304;


--------------------------------------
-- カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );  -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );  -- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  -- 集中線
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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- 白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 奥から特攻～フィニッシュ ef_002 (306F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + 306, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + 306, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + 306, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + 306, entry_SP_002, 255 );
entry_SP_002b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 306, entry_SP_002b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 306, entry_SP_002b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002b, 0 );
setEffRotateKey( spep_2 + 306, entry_SP_002b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002b, 255 );
setEffAlphaKey( spep_2 + 306, entry_SP_002b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 - n + 4, 1, 1 );
setDisp( spep_2 - n + 36, 1, 0 );
setDisp( spep_2 - n + 112, 1, 1 );
setDisp( spep_2 + 306, 1, 0 );
changeAnime( spep_2 - n + 4, 1, 8 );
changeAnime( spep_2 - n + 136, 1, 6 );

setMoveKey( spep_2 - n + 4, 1, 592.3, 609.2 , 0 );
setMoveKey( spep_2 - n + 6, 1, 560.5, 578.2 , 0 );
setMoveKey( spep_2 - n + 8, 1, 528.7, 547.3 , 0 );
setMoveKey( spep_2 - n + 10, 1, 496.9, 516.4 , 0 );
setMoveKey( spep_2 - n + 12, 1, 465.1, 485.4 , 0 );
setMoveKey( spep_2 - n + 14, 1, 433.3, 454.5 , 0 );
setMoveKey( spep_2 - n + 16, 1, 401.4, 423.5 , 0 );
setMoveKey( spep_2 - n + 18, 1, 369.6, 392.6 , 0 );
setMoveKey( spep_2 - n + 20, 1, 337.8, 361.6 , 0 );
setMoveKey( spep_2 - n + 22, 1, 306, 330.7 , 0 );
setMoveKey( spep_2 - n + 24, 1, 274.1, 299.7 , 0 );
setMoveKey( spep_2 - n + 26, 1, 242.3, 268.7 , 0 );
setMoveKey( spep_2 - n + 28, 1, 210.4, 237.7 , 0 );
setMoveKey( spep_2 - n + 30, 1, 178.6, 206.7 , 0 );
setMoveKey( spep_2 - n + 32, 1, 146.7, 175.7 , 0 );
setMoveKey( spep_2 - n + 34, 1, 114.8, 144.7 , 0 );
setMoveKey( spep_2 - n + 36, 1, 114.8, 144.7 , 0 );
--
setMoveKey( spep_2 - n + 112, 1, 98.2, 63.3 , 0 );
setMoveKey( spep_2 - n + 113, 1, 98.2, 63.3 , 0 );
setMoveKey( spep_2 - n + 114, 1, 91.5, 55.6 , 0 );
setMoveKey( spep_2 - n + 115, 1, 91.5, 55.6 , 0 );
setMoveKey( spep_2 - n + 116, 1, 84.9, 48 , 0 );
setMoveKey( spep_2 - n + 117, 1, 84.9, 48 , 0 );
setMoveKey( spep_2 - n + 118, 1, 78.3, 40.3 , 0 );
setMoveKey( spep_2 - n + 119, 1, 78.3, 40.3 , 0 );
setMoveKey( spep_2 - n + 120, 1, 71.6, 32.7 , 0 );
setMoveKey( spep_2 - n + 121, 1, 71.6, 32.7 , 0 );
setMoveKey( spep_2 - n + 122, 1, 65, 25 , 0 );
setMoveKey( spep_2 - n + 123, 1, 65, 25 , 0 );
setMoveKey( spep_2 - n + 124, 1, 58.3, 17.3 , 0 );
setMoveKey( spep_2 - n + 125, 1, 58.3, 17.3 , 0 );
setMoveKey( spep_2 - n + 126, 1, 66.4, 20.1 , 0 );
setMoveKey( spep_2 - n + 127, 1, 66.4, 20.1 , 0 );
setMoveKey( spep_2 - n + 128, 1, 30.4, -2.2 , 0 );
setMoveKey( spep_2 - n + 129, 1, 30.4, -2.2 , 0 );
setMoveKey( spep_2 - n + 130, 1, 30, 6.9 , 0 );
setMoveKey( spep_2 - n + 131, 1, 30, 6.9 , 0 );
setMoveKey( spep_2 - n + 132, 1, 42.3, -21.8 , 0 );
setMoveKey( spep_2 - n + 133, 1, 42.3, -21.8 , 0 );
setMoveKey( spep_2 - n + 134, 1, 39.8, -10.6 , 0 );
setMoveKey( spep_2 - n + 135, 1, 39.8, -10.6 , 0 );
setMoveKey( spep_2 - n + 136, 1, 10.7, -19.6 , 0 );
setMoveKey( spep_2 - n + 137, 1, 10.7, -19.6 , 0 );
setMoveKey( spep_2 - n + 138, 1, 16.9, -3 , 0 );
setMoveKey( spep_2 - n + 139, 1, 16.9, -3 , 0 );
setMoveKey( spep_2 - n + 140, 1, 35.6, -24.2 , 0 );
setMoveKey( spep_2 - n + 141, 1, 35.6, -24.2 , 0 );
setMoveKey( spep_2 - n + 142, 1, 39.7, -5.6 , 0 );
setMoveKey( spep_2 - n + 143, 1, 39.7, -5.6 , 0 );
setMoveKey( spep_2 - n + 144, 1, 10.1, -20.5 , 0 );
setMoveKey( spep_2 - n + 145, 1, 10.1, -20.5 , 0 );
setMoveKey( spep_2 - n + 146, 1, 16.2, -3.9 , 0 );
setMoveKey( spep_2 - n + 147, 1, 16.2, -3.9 , 0 );
setMoveKey( spep_2 - n + 148, 1, 35, -25.2 , 0 );
setMoveKey( spep_2 - n + 149, 1, 35, -25.2 , 0 );
setMoveKey( spep_2 - n + 150, 1, 39, -6.6 , 0 );
setMoveKey( spep_2 - n + 151, 1, 39, -6.6 , 0 );
setMoveKey( spep_2 - n + 152, 1, 9.4, -21.5 , 0 );
setMoveKey( spep_2 - n + 153, 1, 9.4, -21.5 , 0 );
setMoveKey( spep_2 - n + 154, 1, 15.5, -5 , 0 );
setMoveKey( spep_2 - n + 155, 1, 15.5, -5 , 0 );
setMoveKey( spep_2 - n + 156, 1, 34.2, -26.3 , 0 );
setMoveKey( spep_2 - n + 157, 1, 34.2, -26.3 , 0 );
setMoveKey( spep_2 - n + 158, 1, 38.2, -7.7 , 0 );
setMoveKey( spep_2 - n + 159, 1, 38.2, -7.7 , 0 );
setMoveKey( spep_2 - n + 160, 1, 8.5, -22.8 , 0 );
setMoveKey( spep_2 - n + 161, 1, 8.5, -22.8 , 0 );
setMoveKey( spep_2 - n + 162, 1, 14.6, -6.3 , 0 );
setMoveKey( spep_2 - n + 163, 1, 14.6, -6.3 , 0 );
setMoveKey( spep_2 - n + 164, 1, 33.3, -27.7 , 0 );
setMoveKey( spep_2 - n + 165, 1, 33.3, -27.7 , 0 );
setMoveKey( spep_2 - n + 166, 1, 37.2, -9.1 , 0 );
setMoveKey( spep_2 - n + 167, 1, 37.2, -9.1 , 0 );
setMoveKey( spep_2 - n + 168, 1, 7.6, -24.2 , 0 );
setMoveKey( spep_2 - n + 169, 1, 7.6, -24.2 , 0 );
setMoveKey( spep_2 - n + 170, 1, 13.6, -7.8 , 0 );
setMoveKey( spep_2 - n + 171, 1, 13.6, -7.8 , 0 );
setMoveKey( spep_2 - n + 172, 1, 32.1, -29.3 , 0 );
setMoveKey( spep_2 - n + 173, 1, 32.1, -29.3 , 0 );
setMoveKey( spep_2 - n + 174, 1, 43.4, 4.3 , 0 );
setMoveKey( spep_2 - n + 175, 1, 43.4, 4.3 , 0 );
setMoveKey( spep_2 - n + 176, 1, 24.7, 11.9 , 0 );
setMoveKey( spep_2 - n + 177, 1, 24.7, 11.9 , 0 );
setMoveKey( spep_2 - n + 178, 1, 46.5, 60.9 , 0 );
setMoveKey( spep_2 - n + 179, 1, 46.5, 60.9 , 0 );
setMoveKey( spep_2 - n + 180, 1, 86.5, 83.7 , 0 );
setMoveKey( spep_2 - n + 181, 1, 86.5, 83.7 , 0 );
setMoveKey( spep_2 - n + 182, 1, 106.2, 156.6 , 0 );
setMoveKey( spep_2 - n + 183, 1, 106.2, 156.6 , 0 );
setMoveKey( spep_2 - n + 184, 1, 123.4, 201.6 , 0 );
setMoveKey( spep_2 - n + 185, 1, 123.4, 201.6 , 0 );
setMoveKey( spep_2 - n + 186, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 187, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 188, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 189, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 190, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 191, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 192, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 193, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 194, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 195, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 196, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 197, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 198, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 199, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 200, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 201, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 202, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 203, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 204, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 205, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 206, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 207, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 208, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 209, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 210, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 211, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 212, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 213, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 214, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 215, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 216, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 217, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 218, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 219, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 220, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 221, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 222, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 223, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 224, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 225, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 226, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 227, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 228, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 229, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 230, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 231, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 232, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 233, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 234, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 235, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 236, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 237, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 238, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 239, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 240, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 241, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 242, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 243, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 244, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 245, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 246, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 247, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 248, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 249, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 250, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 251, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 252, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 253, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 254, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 255, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 256, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 257, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 258, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 259, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 260, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 261, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 262, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 263, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 264, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 265, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 266, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 267, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 268, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 269, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 270, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 271, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 272, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 273, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 274, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 275, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 276, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 277, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 278, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 279, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 280, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 281, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 282, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 283, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 284, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 285, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 286, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 287, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 288, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 289, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 290, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 291, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 292, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 293, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 294, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 295, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 296, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 297, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 298, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 300, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 301, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 302, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 303, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 304, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 305, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 306, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 + 306, 1, 149.9, 255.3 , 0 );

setScaleKey( spep_2 - n + 4, 1, 6.87, 6.87 );
setScaleKey( spep_2 - n + 6, 1, 6.6, 6.6 );
setScaleKey( spep_2 - n + 8, 1, 6.33, 6.33 );
setScaleKey( spep_2 - n + 10, 1, 6.06, 6.06 );
setScaleKey( spep_2 - n + 12, 1, 5.79, 5.79 );
setScaleKey( spep_2 - n + 14, 1, 5.52, 5.52 );
setScaleKey( spep_2 - n + 16, 1, 5.25, 5.25 );
setScaleKey( spep_2 - n + 18, 1, 4.98, 4.98 );
setScaleKey( spep_2 - n + 20, 1, 4.71, 4.71 );
setScaleKey( spep_2 - n + 22, 1, 4.44, 4.44 );
setScaleKey( spep_2 - n + 24, 1, 4.17, 4.17 );
setScaleKey( spep_2 - n + 26, 1, 3.9, 3.9 );
setScaleKey( spep_2 - n + 28, 1, 3.63, 3.63 );
setScaleKey( spep_2 - n + 30, 1, 3.36, 3.36 );
setScaleKey( spep_2 - n + 32, 1, 3.08, 3.08 );
setScaleKey( spep_2 - n + 34, 1, 2.81, 2.81 );
setScaleKey( spep_2 - n + 36, 1, 2.81, 2.81 );
--
setScaleKey( spep_2 - n + 112, 1, 1.87, 1.87 );
setScaleKey( spep_2 - n + 113, 1, 1.87, 1.87 );
setScaleKey( spep_2 - n + 114, 1, 1.78, 1.78 );
setScaleKey( spep_2 - n + 115, 1, 1.78, 1.78 );
setScaleKey( spep_2 - n + 116, 1, 1.7, 1.7 );
setScaleKey( spep_2 - n + 117, 1, 1.7, 1.7 );
setScaleKey( spep_2 - n + 118, 1, 1.61, 1.61 );
setScaleKey( spep_2 - n + 119, 1, 1.61, 1.61 );
setScaleKey( spep_2 - n + 120, 1, 1.53, 1.53 );
setScaleKey( spep_2 - n + 121, 1, 1.53, 1.53 );
setScaleKey( spep_2 - n + 122, 1, 1.45, 1.45 );
setScaleKey( spep_2 - n + 123, 1, 1.45, 1.45 );
setScaleKey( spep_2 - n + 124, 1, 1.36, 1.36 );
setScaleKey( spep_2 - n + 125, 1, 1.36, 1.36 );
setScaleKey( spep_2 - n + 126, 1, 1.28, 1.28 );
setScaleKey( spep_2 - n + 127, 1, 1.28, 1.28 );
setScaleKey( spep_2 - n + 128, 1, 1.19, 1.19 );
setScaleKey( spep_2 - n + 129, 1, 1.19, 1.19 );
setScaleKey( spep_2 - n + 130, 1, 1.11, 1.11 );
setScaleKey( spep_2 - n + 131, 1, 1.11, 1.11 );
setScaleKey( spep_2 - n + 132, 1, 1.02, 1.02 );
setScaleKey( spep_2 - n + 133, 1, 1.02, 1.02 );
setScaleKey( spep_2 - n + 134, 1, 0.94, 0.94 );
setScaleKey( spep_2 - n + 135, 1, 0.94, 0.94 );
setScaleKey( spep_2 - n + 136, 1, 0.93, 0.93 );
setScaleKey( spep_2 - n + 140, 1, 0.93, 0.93 );
setScaleKey( spep_2 - n + 141, 1, 0.93, 0.93 );
setScaleKey( spep_2 - n + 142, 1, 0.94, 0.94 );
setScaleKey( spep_2 - n + 148, 1, 0.94, 0.94 );
setScaleKey( spep_2 - n + 149, 1, 0.94, 0.94 );
setScaleKey( spep_2 - n + 150, 1, 0.95, 0.95 );
setScaleKey( spep_2 - n + 156, 1, 0.95, 0.95 );
setScaleKey( spep_2 - n + 157, 1, 0.95, 0.95 );
setScaleKey( spep_2 - n + 158, 1, 0.96, 0.96 );
setScaleKey( spep_2 - n + 162, 1, 0.96, 0.96 );
setScaleKey( spep_2 - n + 163, 1, 0.96, 0.96 );
setScaleKey( spep_2 - n + 164, 1, 0.97, 0.97 );
setScaleKey( spep_2 - n + 168, 1, 0.97, 0.97 );
setScaleKey( spep_2 - n + 169, 1, 0.97, 0.97 );
setScaleKey( spep_2 - n + 170, 1, 0.98, 0.98 );
setScaleKey( spep_2 - n + 172, 1, 0.98, 0.98 );
setScaleKey( spep_2 - n + 173, 1, 0.98, 0.98 );
setScaleKey( spep_2 - n + 174, 1, 1.07, 1.07 );
setScaleKey( spep_2 - n + 175, 1, 1.07, 1.07 );
setScaleKey( spep_2 - n + 176, 1, 1.21, 1.21 );
setScaleKey( spep_2 - n + 177, 1, 1.21, 1.21 );
setScaleKey( spep_2 - n + 178, 1, 1.41, 1.41 );
setScaleKey( spep_2 - n + 179, 1, 1.41, 1.41 );
setScaleKey( spep_2 - n + 180, 1, 1.68, 1.68 );
setScaleKey( spep_2 - n + 181, 1, 1.68, 1.68 );
setScaleKey( spep_2 - n + 182, 1, 2.01, 2.01 );
setScaleKey( spep_2 - n + 183, 1, 2.01, 2.01 );
setScaleKey( spep_2 - n + 184, 1, 2.37, 2.37 );
setScaleKey( spep_2 - n + 185, 1, 2.37, 2.37 );
setScaleKey( spep_2 - n + 186, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 306, 1, 2.7, 2.7 );

setRotateKey( spep_2 - n + 4, 1, -21 );
setRotateKey( spep_2 - n + 6, 1, -21.6 );
setRotateKey( spep_2 - n + 8, 1, -22.3 );
setRotateKey( spep_2 - n + 10, 1, -22.9 );
setRotateKey( spep_2 - n + 12, 1, -23.5 );
setRotateKey( spep_2 - n + 14, 1, -24.1 );
setRotateKey( spep_2 - n + 16, 1, -24.7 );
setRotateKey( spep_2 - n + 18, 1, -25.3 );
setRotateKey( spep_2 - n + 20, 1, -25.9 );
setRotateKey( spep_2 - n + 22, 1, -26.6 );
setRotateKey( spep_2 - n + 24, 1, -27.2 );
setRotateKey( spep_2 - n + 26, 1, -27.8 );
setRotateKey( spep_2 - n + 28, 1, -28.4 );
setRotateKey( spep_2 - n + 30, 1, -29 );
setRotateKey( spep_2 - n + 32, 1, -29.6 );
setRotateKey( spep_2 - n + 34, 1, -30.2 );
setRotateKey( spep_2 - n + 36, 1, -30.2 );
--
setRotateKey( spep_2 - n + 112, 1, -20.6 );
setRotateKey( spep_2 - n + 126, 1, -20.6 );
setRotateKey( spep_2 - n + 127, 1, -20.6 );
setRotateKey( spep_2 - n + 128, 1, -20.7 );
setRotateKey( spep_2 - n + 135, 1, -20.7 );
setRotateKey( spep_2 - n + 135, 1, -20.7 );
setRotateKey( spep_2 - n + 136, 1, 32.8 );
setRotateKey( spep_2 - n + 137, 1, 32.8 );
setRotateKey( spep_2 - n + 138, 1, 32.9 );
setRotateKey( spep_2 - n + 139, 1, 32.9 );
setRotateKey( spep_2 - n + 140, 1, 33 );
setRotateKey( spep_2 - n + 142, 1, 33 );
setRotateKey( spep_2 - n + 143, 1, 33 );
setRotateKey( spep_2 - n + 144, 1, 33.1 );
setRotateKey( spep_2 - n + 145, 1, 33.1 );
setRotateKey( spep_2 - n + 146, 1, 33.2 );
setRotateKey( spep_2 - n + 147, 1, 33.2 );
setRotateKey( spep_2 - n + 148, 1, 33.3 );
setRotateKey( spep_2 - n + 149, 1, 33.3 );
setRotateKey( spep_2 - n + 150, 1, 33.4 );
setRotateKey( spep_2 - n + 151, 1, 33.4 );
setRotateKey( spep_2 - n + 152, 1, 33.5 );
setRotateKey( spep_2 - n + 153, 1, 33.5 );
setRotateKey( spep_2 - n + 154, 1, 33.6 );
setRotateKey( spep_2 - n + 155, 1, 33.6 );
setRotateKey( spep_2 - n + 156, 1, 33.7 );
setRotateKey( spep_2 - n + 157, 1, 33.7 );
setRotateKey( spep_2 - n + 158, 1, 33.8 );
setRotateKey( spep_2 - n + 159, 1, 33.8 );
setRotateKey( spep_2 - n + 160, 1, 33.9 );
setRotateKey( spep_2 - n + 161, 1, 33.9 );
setRotateKey( spep_2 - n + 162, 1, 34.1 );
setRotateKey( spep_2 - n + 163, 1, 34.1 );
setRotateKey( spep_2 - n + 164, 1, 34.2 );
setRotateKey( spep_2 - n + 165, 1, 34.2 );
setRotateKey( spep_2 - n + 166, 1, 34.3 );
setRotateKey( spep_2 - n + 167, 1, 34.3 );
setRotateKey( spep_2 - n + 168, 1, 34.4 );
setRotateKey( spep_2 - n + 169, 1, 34.4 );
setRotateKey( spep_2 - n + 170, 1, 34.6 );
setRotateKey( spep_2 - n + 171, 1, 34.6 );
setRotateKey( spep_2 - n + 172, 1, 34.7 );
setRotateKey( spep_2 - n + 173, 1, 34.7 );
setRotateKey( spep_2 - n + 174, 1, 35.1 );
setRotateKey( spep_2 - n + 175, 1, 35.1 );
setRotateKey( spep_2 - n + 176, 1, 35.5 );
setRotateKey( spep_2 - n + 177, 1, 35.5 );
setRotateKey( spep_2 - n + 178, 1, 36.2 );
setRotateKey( spep_2 - n + 179, 1, 36.2 );
setRotateKey( spep_2 - n + 180, 1, 37.2 );
setRotateKey( spep_2 - n + 181, 1, 37.2 );
setRotateKey( spep_2 - n + 182, 1, 38.4 );
setRotateKey( spep_2 - n + 183, 1, 38.4 );
setRotateKey( spep_2 - n + 184, 1, 39.6 );
setRotateKey( spep_2 - n + 185, 1, 39.6 );
setRotateKey( spep_2 - n + 186, 1, 40.8 );
setRotateKey( spep_2 + 306, 1, 40.8 );

-- ** 音 ** --
--環境音
SE021 = playSeVer2( spep_1 + 86, 1175, "",spep_2 + 122, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 86, SE021, 63 );

--瞬間移動４
SE022 = playSeVer2( spep_1 + 92, 1235, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE022, 69 );
SE023 = playSeVer2( spep_2 + 2, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE023, 71 );

--エネルギー溜める
SE024 = playSeVer2( spep_2 + 42, 1275, "",spep_2 + 122, 16, 24, 0.6);
setSeVolumeByWorkId( spep_2 + 42, SE024, 136 );
setStartTimeMs( SE024,  333 );
SE025 = playSeVer2( spep_2 + 36, 1003, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 40, 1056, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 42, 1243, "",spep_2 + 122, 0, 24, -1);
SE028 = playSeVer2( spep_2 + 42, 1274, "",spep_2 + 122, 0, 24, 0.6);
setSeVolumeByWorkId( spep_2 + 42, SE028, 155 );

--向かっていく
SE029 = playSeVer2( spep_2 + 90, 1258, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 94, 1182, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 94, 9, "", 0, 0, 0, -1);

--飛行音
SE032 = playSeVer2( spep_2 + 94, 1019, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 158, 1019, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 222, 1019, "", 0, 0, 0, -1);

--敵ヒット
SE033 = playSeVer2( spep_2 + 128, 1123, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 130, 1187, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 130, 1067, "", 0, 0, 0, -1);

--炎に包まれて飛んでいく
SE037 = playSeVer2( spep_2 + 160, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 160, SE037, 79 );
setTimeStretch( SE037, 1.11, 30, 4 );
SE038 = playSeVer2( spep_2 + 176, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 176, SE038, 145 );
SE039 = playSeVer2( spep_2 + 176, 1314, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 306 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 180 );
endPhase( spep_2 + 306 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開始～横殴りまで ef_001 (302F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + 304, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + 304, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + 304, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + 304, entry_SP_001, 255 );
entry_SP_001b = entryEffect( spep_0 + 0, SP_001br, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 304, entry_SP_001b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 304, entry_SP_001b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001b, 0 );
setEffRotateKey( spep_0 + 304, entry_SP_001b, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001b, 255 );
setEffAlphaKey( spep_0 + 304, entry_SP_001b, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 304 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
n = 1;

setDisp( spep_0 - n + 96, 1, 1 );
changeAnime( spep_0 - n + 96, 1, 102 );

setMoveKey( spep_0 - n + 96, 1, 232, 346.5 , 0 );
setMoveKey( spep_0 - n + 98, 1, 222.7, 331.8 , 0 );
setMoveKey( spep_0 - n + 100, 1, 213.3, 317 , 0 );
setMoveKey( spep_0 - n + 102, 1, 204, 302.2 , 0 );
setMoveKey( spep_0 - n + 104, 1, 194.7, 287.4 , 0 );
setMoveKey( spep_0 - n + 106, 1, 185.3, 272.7 , 0 );
setMoveKey( spep_0 - n + 108, 1, 176, 257.9 , 0 );
setMoveKey( spep_0 - n + 110, 1, 166.6, 243.1 , 0 );
setMoveKey( spep_0 - n + 112, 1, 157.3, 228.4 , 0 );
setMoveKey( spep_0 - n + 114, 1, 147.9, 213.6 , 0 );
setMoveKey( spep_0 - n + 116, 1, 138.6, 198.8 , 0 );
setMoveKey( spep_0 - n + 118, 1, 129.2, 184 , 0 );
setMoveKey( spep_0 - n + 120, 1, 119.9, 169.3 , 0 );

setScaleKey( spep_0 - n + 96, 1, 3, 3 );
setScaleKey( spep_0 - n + 98, 1, 2.92, 2.92 );
setScaleKey( spep_0 - n + 100, 1, 2.83, 2.83 );
setScaleKey( spep_0 - n + 102, 1, 2.75, 2.75 );
setScaleKey( spep_0 - n + 104, 1, 2.67, 2.67 );
setScaleKey( spep_0 - n + 106, 1, 2.58, 2.58 );
setScaleKey( spep_0 - n + 108, 1, 2.5, 2.5 );
setScaleKey( spep_0 - n + 110, 1, 2.41, 2.41 );
setScaleKey( spep_0 - n + 112, 1, 2.33, 2.33 );
setScaleKey( spep_0 - n + 114, 1, 2.24, 2.24 );
setScaleKey( spep_0 - n + 116, 1, 2.16, 2.16 );
setScaleKey( spep_0 - n + 118, 1, 2.07, 2.07 );
setScaleKey( spep_0 - n + 120, 1, 1.99, 1.99 );

setRotateKey( spep_0 - n + 96, 1, -24.9 );
setRotateKey( spep_0 - n + 120, 1, -24.9 );

-- ** 音 ** --
--入り集中線
SE001 = playSeVer2( spep_0 + 0, 20, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 12, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 78 );
setPitch( spep_0 + 0, SE002, -600 );
setTimeStretch( SE002, 0.6, 30, 4 );

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--向かってくる
SE004 = playSeVer2( spep_0 + 84, 1117, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 84, 1116, "",spep_0 + 142, 0, 32, -1);
SE006 = playSeVer2( spep_0 + 84, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 84, 9, "", 0, 0, 0, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE0000, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);

    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge - n + 0, 1, 119.9, 169.3 , 0 );
    setMoveKey( SP_dodge - n + 2, 1, 110.6, 154.5 , 0 );
    setMoveKey( SP_dodge - n + 4, 1, 101.2, 139.7 , 0 );
    setMoveKey( SP_dodge - n + 6, 1, 91.9, 125 , 0 );
    setMoveKey( SP_dodge - n + 8, 1, 82.5, 110.2 , 0 );
    setMoveKey( SP_dodge - n + 10, 1, 73.2, 95.4 , 0 );
    setMoveKey( SP_dodge + 10, 1, 73.2, 95.4 , 0 );

    setScaleKey( SP_dodge - n + 0, 1, 1.99, 1.99 );
    setScaleKey( SP_dodge - n + 2, 1, 1.9, 1.9 );
    setScaleKey( SP_dodge - n + 4, 1, 1.82, 1.82 );
    setScaleKey( SP_dodge - n + 6, 1, 1.73, 1.73 );
    setScaleKey( SP_dodge - n + 8, 1, 1.65, 1.65 );
    setScaleKey( SP_dodge - n + 10, 1, 1.56, 1.56 );
    setScaleKey( SP_dodge + 10, 1, 1.56, 1.56 );

	setRotateKey( SP_dodge + 0, 1, -24.9 );
	setRotateKey( SP_dodge + 10, 1, -24.9 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** 敵キャラクター ** --
setDisp( spep_0 - n + 154, 1, 0 );
setDisp( spep_0 - n + 196, 1, 1 );
setDisp( spep_0 - n + 238, 1, 0 );
setDisp( spep_0 - n + 244, 1, 1 );
setDisp( spep_0 - n + 262, 1, 0 );
changeAnime( spep_0 - n + 140, 1, 107 );
changeAnime( spep_0 - n + 196, 1, 108 );
changeAnime( spep_0 - n + 244, 1, 7 );

setMoveKey( spep_0 - n + 122, 1, 110.6, 154.5 , 0 );
setMoveKey( spep_0 - n + 124, 1, 101.2, 139.7 , 0 );
setMoveKey( spep_0 - n + 126, 1, 91.9, 125 , 0 );
setMoveKey( spep_0 - n + 128, 1, 82.5, 110.2 , 0 );
setMoveKey( spep_0 - n + 130, 1, 73.2, 95.4 , 0 );
setMoveKey( spep_0 - n + 132, 1, 63.9, 80.7 , 0 );
setMoveKey( spep_0 - n + 134, 1, 54.5, 65.9 , 0 );
setMoveKey( spep_0 - n + 139, 1, 54.5, 65.9 , 0 );
setMoveKey( spep_0 - n + 140, 1, 70.2, 124 , 0 );
setMoveKey( spep_0 - n + 141, 1, 70.2, 124 , 0 );
setMoveKey( spep_0 - n + 142, 1, 70.2, 84 , 0 );
setMoveKey( spep_0 - n + 143, 1, 70.2, 84 , 0 );
setMoveKey( spep_0 - n + 144, 1, 50.2, 44 , 0 );
setMoveKey( spep_0 - n + 145, 1, 50.2, 44 , 0 );
setMoveKey( spep_0 - n + 146, 1, 169.6, 217.1 , 0 );
setMoveKey( spep_0 - n + 147, 1, 169.6, 217.1 , 0 );
setMoveKey( spep_0 - n + 148, 1, 289, 370 , 0 );
setMoveKey( spep_0 - n + 149, 1, 289, 370 , 0 );
setMoveKey( spep_0 - n + 150, 1, 368.3, 483 , 0 );
setMoveKey( spep_0 - n + 151, 1, 368.3, 483 , 0 );
setMoveKey( spep_0 - n + 152, 1, 461.6, 605.9 , 0 );
setMoveKey( spep_0 - n + 154, 1, 461.6, 605.9 , 0 );
--
setMoveKey( spep_0 - n + 196, 1, -444.2, -483.8 , 0 );
setMoveKey( spep_0 - n + 198, 1, -404.4, -438.4 , 0 );
setMoveKey( spep_0 - n + 200, 1, -366.7, -395.5 , 0 );
setMoveKey( spep_0 - n + 202, 1, -331.2, -355 , 0 );
setMoveKey( spep_0 - n + 204, 1, -297.8, -316.8 , 0 );
setMoveKey( spep_0 - n + 206, 1, -266.5, -281.1 , 0 );
setMoveKey( spep_0 - n + 208, 1, -237.3, -247.9 , 0 );
setMoveKey( spep_0 - n + 210, 1, -210.3, -217 , 0 );
setMoveKey( spep_0 - n + 212, 1, -185.4, -188.5 , 0 );
setMoveKey( spep_0 - n + 214, 1, -162.6, -162.5 , 0 );
setMoveKey( spep_0 - n + 216, 1, -141.9, -138.9 , 0 );
setMoveKey( spep_0 - n + 218, 1, -123.4, -117.7 , 0 );
setMoveKey( spep_0 - n + 220, 1, -106.9, -99 , 0 );
setMoveKey( spep_0 - n + 222, 1, -92.6, -82.6 , 0 );
setMoveKey( spep_0 - n + 224, 1, -80.5, -68.7 , 0 );
setMoveKey( spep_0 - n + 226, 1, -75.6, -63.1 , 0 );
setMoveKey( spep_0 - n + 228, 1, -70.8, -57.6 , 0 );
setMoveKey( spep_0 - n + 230, 1, -66, -52 , 0 );
setMoveKey( spep_0 - n + 232, 1, -61.1, -46.4 , 0 );
setMoveKey( spep_0 - n + 234, 1, -56.3, -40.8 , 0 );
setMoveKey( spep_0 - n + 236, 1, -51.5, -35.3 , 0 );
setMoveKey( spep_0 - n + 238, 1, -51.5, -35.3 , 0 );
--
setMoveKey( spep_0 - n + 244, 1, -109, -45.6 , 0 );
setMoveKey( spep_0 - n + 245, 1, -109, -45.6 , 0 );
setMoveKey( spep_0 - n + 246, 1, -152, -49.2 , 0 );
setMoveKey( spep_0 - n + 247, 1, -152, -49.2 , 0 );
setMoveKey( spep_0 - n + 248, 1, -235, -105.3 , 0 );
setMoveKey( spep_0 - n + 249, 1, -235, -105.3 , 0 );
setMoveKey( spep_0 - n + 250, 1, -341, -100.4 , 0 );
setMoveKey( spep_0 - n + 251, 1, -341, -100.4 , 0 );
setMoveKey( spep_0 - n + 252, 1, -415.4, -137.6 , 0 );
setMoveKey( spep_0 - n + 253, 1, -415.4, -137.6 , 0 );
setMoveKey( spep_0 - n + 254, 1, -475.2, -185.2 , 0 );
setMoveKey( spep_0 - n + 255, 1, -475.2, -185.2 , 0 );
setMoveKey( spep_0 - n + 256, 1, -553.8, -195 , 0 );
setMoveKey( spep_0 - n + 257, 1, -553.8, -195 , 0 );
setMoveKey( spep_0 - n + 258, 1, -640.8, -234.1 , 0 );
setMoveKey( spep_0 - n + 259, 1, -640.8, -234.1 , 0 );
setMoveKey( spep_0 - n + 260, 1, -719.3, -262.8 , 0 );
setMoveKey( spep_0 - n + 262, 1, -719.3, -262.8 , 0 );

setScaleKey( spep_0 - n + 122, 1, 1.9, 1.9 );
setScaleKey( spep_0 - n + 124, 1, 1.82, 1.82 );
setScaleKey( spep_0 - n + 126, 1, 1.73, 1.73 );
setScaleKey( spep_0 - n + 128, 1, 1.65, 1.65 );
setScaleKey( spep_0 - n + 130, 1, 1.56, 1.56 );
setScaleKey( spep_0 - n + 132, 1, 1.48, 1.48 );
setScaleKey( spep_0 - n + 134, 1, 1.39, 1.39 );
setScaleKey( spep_0 - n + 139, 1, 1.39, 1.39 );
setScaleKey( spep_0 - n + 140, 1, 0.56, 0.56 );
setScaleKey( spep_0 - n + 144, 1, 0.56, 0.56 );
setScaleKey( spep_0 - n + 145, 1, 0.56, 0.56 );
setScaleKey( spep_0 - n + 146, 1, 1.09, 1.09 );
setScaleKey( spep_0 - n + 147, 1, 1.09, 1.09 );
setScaleKey( spep_0 - n + 148, 1, 1.63, 1.63 );
setScaleKey( spep_0 - n + 149, 1, 1.63, 1.63 );
setScaleKey( spep_0 - n + 150, 1, 2.17, 2.17 );
setScaleKey( spep_0 - n + 151, 1, 2.17, 2.17 );
setScaleKey( spep_0 - n + 152, 1, 2.71, 2.71 );
setScaleKey( spep_0 - n + 154, 1, 2.71, 2.71 );
--
setScaleKey( spep_0 - n + 196, 1, 9.31, 9.31 );
setScaleKey( spep_0 - n + 198, 1, 8.49, 8.49 );
setScaleKey( spep_0 - n + 200, 1, 7.72, 7.72 );
setScaleKey( spep_0 - n + 202, 1, 6.99, 6.99 );
setScaleKey( spep_0 - n + 204, 1, 6.3, 6.3 );
setScaleKey( spep_0 - n + 206, 1, 5.66, 5.66 );
setScaleKey( spep_0 - n + 208, 1, 5.06, 5.06 );
setScaleKey( spep_0 - n + 210, 1, 4.5, 4.5 );
setScaleKey( spep_0 - n + 212, 1, 3.99, 3.99 );
setScaleKey( spep_0 - n + 214, 1, 3.52, 3.52 );
setScaleKey( spep_0 - n + 216, 1, 3.09, 3.09 );
setScaleKey( spep_0 - n + 218, 1, 2.71, 2.71 );
setScaleKey( spep_0 - n + 220, 1, 2.38, 2.38 );
setScaleKey( spep_0 - n + 222, 1, 2.08, 2.08 );
setScaleKey( spep_0 - n + 224, 1, 1.83, 1.83 );
setScaleKey( spep_0 - n + 226, 1, 1.71, 1.71 );
setScaleKey( spep_0 - n + 228, 1, 1.59, 1.59 );
setScaleKey( spep_0 - n + 230, 1, 1.47, 1.47 );
setScaleKey( spep_0 - n + 232, 1, 1.35, 1.35 );
setScaleKey( spep_0 - n + 234, 1, 1.23, 1.23 );
setScaleKey( spep_0 - n + 236, 1, 1.11, 1.11 );
setScaleKey( spep_0 - n + 238, 1, 1.11, 1.11 );
--
setScaleKey( spep_0 - n + 244, 1, 0.43, 0.43 );
setScaleKey( spep_0 - n + 245, 1, 0.43, 0.43 );
setScaleKey( spep_0 - n + 246, 1, 0.74, 0.74 );
setScaleKey( spep_0 - n + 247, 1, 0.74, 0.74 );
setScaleKey( spep_0 - n + 248, 1, 1.05, 1.05 );
setScaleKey( spep_0 - n + 249, 1, 1.05, 1.05 );
setScaleKey( spep_0 - n + 250, 1, 1.36, 1.36 );
setScaleKey( spep_0 - n + 251, 1, 1.36, 1.36 );
setScaleKey( spep_0 - n + 252, 1, 1.67, 1.67 );
setScaleKey( spep_0 - n + 253, 1, 1.67, 1.67 );
setScaleKey( spep_0 - n + 254, 1, 1.98, 1.98 );
setScaleKey( spep_0 - n + 255, 1, 1.98, 1.98 );
setScaleKey( spep_0 - n + 256, 1, 2.29, 2.29 );
setScaleKey( spep_0 - n + 257, 1, 2.29, 2.29 );
setScaleKey( spep_0 - n + 258, 1, 2.6, 2.6 );
setScaleKey( spep_0 - n + 259, 1, 2.6, 2.6 );
setScaleKey( spep_0 - n + 260, 1, 2.9, 2.9 );
setScaleKey( spep_0 - n + 262, 1, 2.9, 2.9 );

setRotateKey( spep_0 - n + 122, 1, -24.9 );
setRotateKey( spep_0 - n + 139, 1, -24.9 );
setRotateKey( spep_0 - n + 140, 1, -42.7 );
setRotateKey( spep_0 - n + 154, 1, -42.7 );
--
setRotateKey( spep_0 - n + 196, 1, 10.1 );
setRotateKey( spep_0 - n + 198, 1, 10.8 );
setRotateKey( spep_0 - n + 200, 1, 11.4 );
setRotateKey( spep_0 - n + 202, 1, 12 );
setRotateKey( spep_0 - n + 204, 1, 12.6 );
setRotateKey( spep_0 - n + 206, 1, 13.2 );
setRotateKey( spep_0 - n + 208, 1, 13.7 );
setRotateKey( spep_0 - n + 210, 1, 14.2 );
setRotateKey( spep_0 - n + 212, 1, 14.6 );
setRotateKey( spep_0 - n + 214, 1, 15 );
setRotateKey( spep_0 - n + 216, 1, 15.4 );
setRotateKey( spep_0 - n + 218, 1, 15.7 );
setRotateKey( spep_0 - n + 220, 1, 16 );
setRotateKey( spep_0 - n + 222, 1, 16.3 );
setRotateKey( spep_0 - n + 224, 1, 16.5 );
setRotateKey( spep_0 - n + 226, 1, 16.6 );
setRotateKey( spep_0 - n + 228, 1, 16.7 );
setRotateKey( spep_0 - n + 230, 1, 16.7 );
setRotateKey( spep_0 - n + 232, 1, 16.8 );
setRotateKey( spep_0 - n + 234, 1, 16.9 );
setRotateKey( spep_0 - n + 236, 1, 17 );
setRotateKey( spep_0 - n + 238, 1, 17 );
--
setRotateKey( spep_0 - n + 244, 1, 0 );
setRotateKey( spep_0 - n + 262, 1, 0 );

setBlendColor( spep_0 - n + 146 , 1, 2, 0, 0, 0, 0);
setBlendColor( spep_0 - n + 148 , 1, 2, 0, 0, 0, 0.2);
setBlendColor( spep_0 - n + 150 , 1, 2, 0, 0, 0, 0.4);
setBlendColor( spep_0 - n + 152 , 1, 2, 0, 0, 0, 0.6);
setBlendColor( spep_0 - n + 154 , 1, 2, 0, 0, 0, 0);
--
setBlendColor( spep_0 - n + 196 , 1, 2, 0, 0, 0, 0);
setBlendColor( spep_0 - n + 246 , 1, 2, 0, 0, 0, 0);
setBlendColor( spep_0 - n + 248 , 1, 2, 0, 0, 0, 0.1);
setBlendColor( spep_0 - n + 250 , 1, 2, 0, 0, 0, 0.2);
setBlendColor( spep_0 - n + 252 , 1, 2, 0, 0, 0, 0.3);
setBlendColor( spep_0 - n + 254 , 1, 2, 0, 0, 0, 0.4);
setBlendColor( spep_0 - n + 256 , 1, 2, 0, 0, 0, 0.5);
setBlendColor( spep_0 - n + 258 , 1, 2, 0, 0, 0, 0.6);
setBlendColor( spep_0 - n + 260 , 1, 2, 0, 0, 0, 0.7);
setBlendColor( spep_0 - n + 262 , 1, 2, 0, 0, 0, 0);

-- ** 音 ** --
--パンチ
SE008 = playSeVer2( spep_0 + 136, 1187, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 136, 1359, "", 0, 0, 0, -1);

--瞬間移動１
SE010 = playSeVer2( spep_0 + 168, 1235, "",spep_0 + 202, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 168, SE010, 75 );
SE011 = playSeVer2( spep_0 + 170, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE011, 72 );

--瞬間移動２
SE012 = playSeVer2( spep_0 + 204, 1235, "",spep_0 + 240, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 204, SE012, 75 );
SE013 = playSeVer2( spep_0 + 206, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE013, 69 );

--殴り飛ばす
SE014 = playSeVer2( spep_0 + 228, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 234, 1187, "",spep_0 + 304 + 8, 0, 8, -1);
SE016 = playSeVer2( spep_0 + 234, 1153, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 238, 1169, "", 0, 0, 0, -1);

--瞬間移動３
SE018 = playSeVer2( spep_0 + 280, 1235, "",spep_0 + 304 + 8, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 280, SE018, 76 );
SE019 = playSeVer2( spep_0 + 282, 1245, "",spep_0 + 304 + 8, 0, -2, -1);
setSeVolumeByWorkId( spep_0 + 282, SE019, 71 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 304;


--------------------------------------
-- カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );  -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );  -- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  -- 集中線
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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- 白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 奥から特攻～フィニッシュ ef_002 (306F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + 306, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + 306, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + 306, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + 306, entry_SP_002, 255 );
entry_SP_002b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 306, entry_SP_002b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 306, entry_SP_002b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002b, 0 );
setEffRotateKey( spep_2 + 306, entry_SP_002b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002b, 255 );
setEffAlphaKey( spep_2 + 306, entry_SP_002b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 - n + 4, 1, 1 );
setDisp( spep_2 - n + 36, 1, 0 );
setDisp( spep_2 - n + 112, 1, 1 );
setDisp( spep_2 + 306, 1, 0 );
changeAnime( spep_2 - n + 4, 1, 8 );
changeAnime( spep_2 - n + 136, 1, 6 );

setMoveKey( spep_2 - n + 4, 1, 592.3, 609.2 , 0 );
setMoveKey( spep_2 - n + 6, 1, 560.5, 578.2 , 0 );
setMoveKey( spep_2 - n + 8, 1, 528.7, 547.3 , 0 );
setMoveKey( spep_2 - n + 10, 1, 496.9, 516.4 , 0 );
setMoveKey( spep_2 - n + 12, 1, 465.1, 485.4 , 0 );
setMoveKey( spep_2 - n + 14, 1, 433.3, 454.5 , 0 );
setMoveKey( spep_2 - n + 16, 1, 401.4, 423.5 , 0 );
setMoveKey( spep_2 - n + 18, 1, 369.6, 392.6 , 0 );
setMoveKey( spep_2 - n + 20, 1, 337.8, 361.6 , 0 );
setMoveKey( spep_2 - n + 22, 1, 306, 330.7 , 0 );
setMoveKey( spep_2 - n + 24, 1, 274.1, 299.7 , 0 );
setMoveKey( spep_2 - n + 26, 1, 242.3, 268.7 , 0 );
setMoveKey( spep_2 - n + 28, 1, 210.4, 237.7 , 0 );
setMoveKey( spep_2 - n + 30, 1, 178.6, 206.7 , 0 );
setMoveKey( spep_2 - n + 32, 1, 146.7, 175.7 , 0 );
setMoveKey( spep_2 - n + 34, 1, 114.8, 144.7 , 0 );
setMoveKey( spep_2 - n + 36, 1, 114.8, 144.7 , 0 );
--
setMoveKey( spep_2 - n + 112, 1, 98.2, 63.3 , 0 );
setMoveKey( spep_2 - n + 113, 1, 98.2, 63.3 , 0 );
setMoveKey( spep_2 - n + 114, 1, 91.5, 55.6 , 0 );
setMoveKey( spep_2 - n + 115, 1, 91.5, 55.6 , 0 );
setMoveKey( spep_2 - n + 116, 1, 84.9, 48 , 0 );
setMoveKey( spep_2 - n + 117, 1, 84.9, 48 , 0 );
setMoveKey( spep_2 - n + 118, 1, 78.3, 40.3 , 0 );
setMoveKey( spep_2 - n + 119, 1, 78.3, 40.3 , 0 );
setMoveKey( spep_2 - n + 120, 1, 71.6, 32.7 , 0 );
setMoveKey( spep_2 - n + 121, 1, 71.6, 32.7 , 0 );
setMoveKey( spep_2 - n + 122, 1, 65, 25 , 0 );
setMoveKey( spep_2 - n + 123, 1, 65, 25 , 0 );
setMoveKey( spep_2 - n + 124, 1, 58.3, 17.3 , 0 );
setMoveKey( spep_2 - n + 125, 1, 58.3, 17.3 , 0 );
setMoveKey( spep_2 - n + 126, 1, 66.4, 20.1 , 0 );
setMoveKey( spep_2 - n + 127, 1, 66.4, 20.1 , 0 );
setMoveKey( spep_2 - n + 128, 1, 30.4, -2.2 , 0 );
setMoveKey( spep_2 - n + 129, 1, 30.4, -2.2 , 0 );
setMoveKey( spep_2 - n + 130, 1, 30, 6.9 , 0 );
setMoveKey( spep_2 - n + 131, 1, 30, 6.9 , 0 );
setMoveKey( spep_2 - n + 132, 1, 42.3, -21.8 , 0 );
setMoveKey( spep_2 - n + 133, 1, 42.3, -21.8 , 0 );
setMoveKey( spep_2 - n + 134, 1, 39.8, -10.6 , 0 );
setMoveKey( spep_2 - n + 135, 1, 39.8, -10.6 , 0 );
setMoveKey( spep_2 - n + 136, 1, 10.7, -19.6 , 0 );
setMoveKey( spep_2 - n + 137, 1, 10.7, -19.6 , 0 );
setMoveKey( spep_2 - n + 138, 1, 16.9, -3 , 0 );
setMoveKey( spep_2 - n + 139, 1, 16.9, -3 , 0 );
setMoveKey( spep_2 - n + 140, 1, 35.6, -24.2 , 0 );
setMoveKey( spep_2 - n + 141, 1, 35.6, -24.2 , 0 );
setMoveKey( spep_2 - n + 142, 1, 39.7, -5.6 , 0 );
setMoveKey( spep_2 - n + 143, 1, 39.7, -5.6 , 0 );
setMoveKey( spep_2 - n + 144, 1, 10.1, -20.5 , 0 );
setMoveKey( spep_2 - n + 145, 1, 10.1, -20.5 , 0 );
setMoveKey( spep_2 - n + 146, 1, 16.2, -3.9 , 0 );
setMoveKey( spep_2 - n + 147, 1, 16.2, -3.9 , 0 );
setMoveKey( spep_2 - n + 148, 1, 35, -25.2 , 0 );
setMoveKey( spep_2 - n + 149, 1, 35, -25.2 , 0 );
setMoveKey( spep_2 - n + 150, 1, 39, -6.6 , 0 );
setMoveKey( spep_2 - n + 151, 1, 39, -6.6 , 0 );
setMoveKey( spep_2 - n + 152, 1, 9.4, -21.5 , 0 );
setMoveKey( spep_2 - n + 153, 1, 9.4, -21.5 , 0 );
setMoveKey( spep_2 - n + 154, 1, 15.5, -5 , 0 );
setMoveKey( spep_2 - n + 155, 1, 15.5, -5 , 0 );
setMoveKey( spep_2 - n + 156, 1, 34.2, -26.3 , 0 );
setMoveKey( spep_2 - n + 157, 1, 34.2, -26.3 , 0 );
setMoveKey( spep_2 - n + 158, 1, 38.2, -7.7 , 0 );
setMoveKey( spep_2 - n + 159, 1, 38.2, -7.7 , 0 );
setMoveKey( spep_2 - n + 160, 1, 8.5, -22.8 , 0 );
setMoveKey( spep_2 - n + 161, 1, 8.5, -22.8 , 0 );
setMoveKey( spep_2 - n + 162, 1, 14.6, -6.3 , 0 );
setMoveKey( spep_2 - n + 163, 1, 14.6, -6.3 , 0 );
setMoveKey( spep_2 - n + 164, 1, 33.3, -27.7 , 0 );
setMoveKey( spep_2 - n + 165, 1, 33.3, -27.7 , 0 );
setMoveKey( spep_2 - n + 166, 1, 37.2, -9.1 , 0 );
setMoveKey( spep_2 - n + 167, 1, 37.2, -9.1 , 0 );
setMoveKey( spep_2 - n + 168, 1, 7.6, -24.2 , 0 );
setMoveKey( spep_2 - n + 169, 1, 7.6, -24.2 , 0 );
setMoveKey( spep_2 - n + 170, 1, 13.6, -7.8 , 0 );
setMoveKey( spep_2 - n + 171, 1, 13.6, -7.8 , 0 );
setMoveKey( spep_2 - n + 172, 1, 32.1, -29.3 , 0 );
setMoveKey( spep_2 - n + 173, 1, 32.1, -29.3 , 0 );
setMoveKey( spep_2 - n + 174, 1, 43.4, 4.3 , 0 );
setMoveKey( spep_2 - n + 175, 1, 43.4, 4.3 , 0 );
setMoveKey( spep_2 - n + 176, 1, 24.7, 11.9 , 0 );
setMoveKey( spep_2 - n + 177, 1, 24.7, 11.9 , 0 );
setMoveKey( spep_2 - n + 178, 1, 46.5, 60.9 , 0 );
setMoveKey( spep_2 - n + 179, 1, 46.5, 60.9 , 0 );
setMoveKey( spep_2 - n + 180, 1, 86.5, 83.7 , 0 );
setMoveKey( spep_2 - n + 181, 1, 86.5, 83.7 , 0 );
setMoveKey( spep_2 - n + 182, 1, 106.2, 156.6 , 0 );
setMoveKey( spep_2 - n + 183, 1, 106.2, 156.6 , 0 );
setMoveKey( spep_2 - n + 184, 1, 123.4, 201.6 , 0 );
setMoveKey( spep_2 - n + 185, 1, 123.4, 201.6 , 0 );
setMoveKey( spep_2 - n + 186, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 187, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 188, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 189, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 190, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 191, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 192, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 193, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 194, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 195, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 196, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 197, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 198, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 199, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 200, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 201, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 202, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 203, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 204, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 205, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 206, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 207, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 208, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 209, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 210, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 211, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 212, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 213, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 214, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 215, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 216, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 217, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 218, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 219, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 220, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 221, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 222, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 223, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 224, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 225, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 226, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 227, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 228, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 229, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 230, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 231, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 232, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 233, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 234, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 235, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 236, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 237, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 238, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 239, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 240, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 241, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 242, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 243, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 244, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 245, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 246, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 247, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 248, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 249, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 250, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 251, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 252, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 253, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 254, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 255, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 256, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 257, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 258, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 259, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 260, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 261, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 262, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 263, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 264, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 265, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 266, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 267, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 268, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 269, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 270, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 271, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 272, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 273, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 274, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 275, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 276, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 277, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 278, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 279, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 280, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 281, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 282, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 283, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 284, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 285, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 286, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 287, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 288, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 289, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 290, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 291, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 292, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 293, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 294, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 295, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 296, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 297, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 - n + 298, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 300, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 301, 1, 149.9, 267.9 , 0 );
setMoveKey( spep_2 - n + 302, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 303, 1, 166.7, 253.2 , 0 );
setMoveKey( spep_2 - n + 304, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 305, 1, 160.4, 267.9 , 0 );
setMoveKey( spep_2 - n + 306, 1, 149.9, 255.3 , 0 );
setMoveKey( spep_2 + 306, 1, 149.9, 255.3 , 0 );

setScaleKey( spep_2 - n + 4, 1, 6.87, 6.87 );
setScaleKey( spep_2 - n + 6, 1, 6.6, 6.6 );
setScaleKey( spep_2 - n + 8, 1, 6.33, 6.33 );
setScaleKey( spep_2 - n + 10, 1, 6.06, 6.06 );
setScaleKey( spep_2 - n + 12, 1, 5.79, 5.79 );
setScaleKey( spep_2 - n + 14, 1, 5.52, 5.52 );
setScaleKey( spep_2 - n + 16, 1, 5.25, 5.25 );
setScaleKey( spep_2 - n + 18, 1, 4.98, 4.98 );
setScaleKey( spep_2 - n + 20, 1, 4.71, 4.71 );
setScaleKey( spep_2 - n + 22, 1, 4.44, 4.44 );
setScaleKey( spep_2 - n + 24, 1, 4.17, 4.17 );
setScaleKey( spep_2 - n + 26, 1, 3.9, 3.9 );
setScaleKey( spep_2 - n + 28, 1, 3.63, 3.63 );
setScaleKey( spep_2 - n + 30, 1, 3.36, 3.36 );
setScaleKey( spep_2 - n + 32, 1, 3.08, 3.08 );
setScaleKey( spep_2 - n + 34, 1, 2.81, 2.81 );
setScaleKey( spep_2 - n + 36, 1, 2.81, 2.81 );
--
setScaleKey( spep_2 - n + 112, 1, 1.87, 1.87 );
setScaleKey( spep_2 - n + 113, 1, 1.87, 1.87 );
setScaleKey( spep_2 - n + 114, 1, 1.78, 1.78 );
setScaleKey( spep_2 - n + 115, 1, 1.78, 1.78 );
setScaleKey( spep_2 - n + 116, 1, 1.7, 1.7 );
setScaleKey( spep_2 - n + 117, 1, 1.7, 1.7 );
setScaleKey( spep_2 - n + 118, 1, 1.61, 1.61 );
setScaleKey( spep_2 - n + 119, 1, 1.61, 1.61 );
setScaleKey( spep_2 - n + 120, 1, 1.53, 1.53 );
setScaleKey( spep_2 - n + 121, 1, 1.53, 1.53 );
setScaleKey( spep_2 - n + 122, 1, 1.45, 1.45 );
setScaleKey( spep_2 - n + 123, 1, 1.45, 1.45 );
setScaleKey( spep_2 - n + 124, 1, 1.36, 1.36 );
setScaleKey( spep_2 - n + 125, 1, 1.36, 1.36 );
setScaleKey( spep_2 - n + 126, 1, 1.28, 1.28 );
setScaleKey( spep_2 - n + 127, 1, 1.28, 1.28 );
setScaleKey( spep_2 - n + 128, 1, 1.19, 1.19 );
setScaleKey( spep_2 - n + 129, 1, 1.19, 1.19 );
setScaleKey( spep_2 - n + 130, 1, 1.11, 1.11 );
setScaleKey( spep_2 - n + 131, 1, 1.11, 1.11 );
setScaleKey( spep_2 - n + 132, 1, 1.02, 1.02 );
setScaleKey( spep_2 - n + 133, 1, 1.02, 1.02 );
setScaleKey( spep_2 - n + 134, 1, 0.94, 0.94 );
setScaleKey( spep_2 - n + 135, 1, 0.94, 0.94 );
setScaleKey( spep_2 - n + 136, 1, 0.93, 0.93 );
setScaleKey( spep_2 - n + 140, 1, 0.93, 0.93 );
setScaleKey( spep_2 - n + 141, 1, 0.93, 0.93 );
setScaleKey( spep_2 - n + 142, 1, 0.94, 0.94 );
setScaleKey( spep_2 - n + 148, 1, 0.94, 0.94 );
setScaleKey( spep_2 - n + 149, 1, 0.94, 0.94 );
setScaleKey( spep_2 - n + 150, 1, 0.95, 0.95 );
setScaleKey( spep_2 - n + 156, 1, 0.95, 0.95 );
setScaleKey( spep_2 - n + 157, 1, 0.95, 0.95 );
setScaleKey( spep_2 - n + 158, 1, 0.96, 0.96 );
setScaleKey( spep_2 - n + 162, 1, 0.96, 0.96 );
setScaleKey( spep_2 - n + 163, 1, 0.96, 0.96 );
setScaleKey( spep_2 - n + 164, 1, 0.97, 0.97 );
setScaleKey( spep_2 - n + 168, 1, 0.97, 0.97 );
setScaleKey( spep_2 - n + 169, 1, 0.97, 0.97 );
setScaleKey( spep_2 - n + 170, 1, 0.98, 0.98 );
setScaleKey( spep_2 - n + 172, 1, 0.98, 0.98 );
setScaleKey( spep_2 - n + 173, 1, 0.98, 0.98 );
setScaleKey( spep_2 - n + 174, 1, 1.07, 1.07 );
setScaleKey( spep_2 - n + 175, 1, 1.07, 1.07 );
setScaleKey( spep_2 - n + 176, 1, 1.21, 1.21 );
setScaleKey( spep_2 - n + 177, 1, 1.21, 1.21 );
setScaleKey( spep_2 - n + 178, 1, 1.41, 1.41 );
setScaleKey( spep_2 - n + 179, 1, 1.41, 1.41 );
setScaleKey( spep_2 - n + 180, 1, 1.68, 1.68 );
setScaleKey( spep_2 - n + 181, 1, 1.68, 1.68 );
setScaleKey( spep_2 - n + 182, 1, 2.01, 2.01 );
setScaleKey( spep_2 - n + 183, 1, 2.01, 2.01 );
setScaleKey( spep_2 - n + 184, 1, 2.37, 2.37 );
setScaleKey( spep_2 - n + 185, 1, 2.37, 2.37 );
setScaleKey( spep_2 - n + 186, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 306, 1, 2.7, 2.7 );

setRotateKey( spep_2 - n + 4, 1, -21 );
setRotateKey( spep_2 - n + 6, 1, -21.6 );
setRotateKey( spep_2 - n + 8, 1, -22.3 );
setRotateKey( spep_2 - n + 10, 1, -22.9 );
setRotateKey( spep_2 - n + 12, 1, -23.5 );
setRotateKey( spep_2 - n + 14, 1, -24.1 );
setRotateKey( spep_2 - n + 16, 1, -24.7 );
setRotateKey( spep_2 - n + 18, 1, -25.3 );
setRotateKey( spep_2 - n + 20, 1, -25.9 );
setRotateKey( spep_2 - n + 22, 1, -26.6 );
setRotateKey( spep_2 - n + 24, 1, -27.2 );
setRotateKey( spep_2 - n + 26, 1, -27.8 );
setRotateKey( spep_2 - n + 28, 1, -28.4 );
setRotateKey( spep_2 - n + 30, 1, -29 );
setRotateKey( spep_2 - n + 32, 1, -29.6 );
setRotateKey( spep_2 - n + 34, 1, -30.2 );
setRotateKey( spep_2 - n + 36, 1, -30.2 );
--
setRotateKey( spep_2 - n + 112, 1, -20.6 );
setRotateKey( spep_2 - n + 126, 1, -20.6 );
setRotateKey( spep_2 - n + 127, 1, -20.6 );
setRotateKey( spep_2 - n + 128, 1, -20.7 );
setRotateKey( spep_2 - n + 135, 1, -20.7 );
setRotateKey( spep_2 - n + 135, 1, -20.7 );
setRotateKey( spep_2 - n + 136, 1, 32.8 );
setRotateKey( spep_2 - n + 137, 1, 32.8 );
setRotateKey( spep_2 - n + 138, 1, 32.9 );
setRotateKey( spep_2 - n + 139, 1, 32.9 );
setRotateKey( spep_2 - n + 140, 1, 33 );
setRotateKey( spep_2 - n + 142, 1, 33 );
setRotateKey( spep_2 - n + 143, 1, 33 );
setRotateKey( spep_2 - n + 144, 1, 33.1 );
setRotateKey( spep_2 - n + 145, 1, 33.1 );
setRotateKey( spep_2 - n + 146, 1, 33.2 );
setRotateKey( spep_2 - n + 147, 1, 33.2 );
setRotateKey( spep_2 - n + 148, 1, 33.3 );
setRotateKey( spep_2 - n + 149, 1, 33.3 );
setRotateKey( spep_2 - n + 150, 1, 33.4 );
setRotateKey( spep_2 - n + 151, 1, 33.4 );
setRotateKey( spep_2 - n + 152, 1, 33.5 );
setRotateKey( spep_2 - n + 153, 1, 33.5 );
setRotateKey( spep_2 - n + 154, 1, 33.6 );
setRotateKey( spep_2 - n + 155, 1, 33.6 );
setRotateKey( spep_2 - n + 156, 1, 33.7 );
setRotateKey( spep_2 - n + 157, 1, 33.7 );
setRotateKey( spep_2 - n + 158, 1, 33.8 );
setRotateKey( spep_2 - n + 159, 1, 33.8 );
setRotateKey( spep_2 - n + 160, 1, 33.9 );
setRotateKey( spep_2 - n + 161, 1, 33.9 );
setRotateKey( spep_2 - n + 162, 1, 34.1 );
setRotateKey( spep_2 - n + 163, 1, 34.1 );
setRotateKey( spep_2 - n + 164, 1, 34.2 );
setRotateKey( spep_2 - n + 165, 1, 34.2 );
setRotateKey( spep_2 - n + 166, 1, 34.3 );
setRotateKey( spep_2 - n + 167, 1, 34.3 );
setRotateKey( spep_2 - n + 168, 1, 34.4 );
setRotateKey( spep_2 - n + 169, 1, 34.4 );
setRotateKey( spep_2 - n + 170, 1, 34.6 );
setRotateKey( spep_2 - n + 171, 1, 34.6 );
setRotateKey( spep_2 - n + 172, 1, 34.7 );
setRotateKey( spep_2 - n + 173, 1, 34.7 );
setRotateKey( spep_2 - n + 174, 1, 35.1 );
setRotateKey( spep_2 - n + 175, 1, 35.1 );
setRotateKey( spep_2 - n + 176, 1, 35.5 );
setRotateKey( spep_2 - n + 177, 1, 35.5 );
setRotateKey( spep_2 - n + 178, 1, 36.2 );
setRotateKey( spep_2 - n + 179, 1, 36.2 );
setRotateKey( spep_2 - n + 180, 1, 37.2 );
setRotateKey( spep_2 - n + 181, 1, 37.2 );
setRotateKey( spep_2 - n + 182, 1, 38.4 );
setRotateKey( spep_2 - n + 183, 1, 38.4 );
setRotateKey( spep_2 - n + 184, 1, 39.6 );
setRotateKey( spep_2 - n + 185, 1, 39.6 );
setRotateKey( spep_2 - n + 186, 1, 40.8 );
setRotateKey( spep_2 + 306, 1, 40.8 );

-- ** 音 ** --
--環境音
SE021 = playSeVer2( spep_1 + 86, 1175, "",spep_2 + 122, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 86, SE021, 63 );

--瞬間移動４
SE022 = playSeVer2( spep_1 + 92, 1235, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE022, 69 );
SE023 = playSeVer2( spep_2 + 2, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE023, 71 );

--エネルギー溜める
SE024 = playSeVer2( spep_2 + 42, 1275, "",spep_2 + 122, 16, 24, 0.6);
setSeVolumeByWorkId( spep_2 + 42, SE024, 136 );
setStartTimeMs( SE024,  333 );
SE025 = playSeVer2( spep_2 + 36, 1003, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 40, 1056, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 42, 1243, "",spep_2 + 122, 0, 24, -1);
SE028 = playSeVer2( spep_2 + 42, 1274, "",spep_2 + 122, 0, 24, 0.6);
setSeVolumeByWorkId( spep_2 + 42, SE028, 155 );

--向かっていく
SE029 = playSeVer2( spep_2 + 90, 1258, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 94, 1182, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 94, 9, "", 0, 0, 0, -1);

--飛行音
SE032 = playSeVer2( spep_2 + 94, 1019, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 158, 1019, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 222, 1019, "", 0, 0, 0, -1);

--敵ヒット
SE033 = playSeVer2( spep_2 + 128, 1123, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 130, 1187, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 130, 1067, "", 0, 0, 0, -1);

--炎に包まれて飛んでいく
SE037 = playSeVer2( spep_2 + 160, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 160, SE037, 79 );
setTimeStretch( SE037, 1.11, 30, 4 );
SE038 = playSeVer2( spep_2 + 176, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 176, SE038, 145 );
SE039 = playSeVer2( spep_2 + 176, 1314, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 306 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 180 );
endPhase( spep_2 + 306 );

end