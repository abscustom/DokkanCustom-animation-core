--4026260：UR_超サイヤ人孫悟空_必殺技：瞬間移動かめはめ波
--sp_effect_a1_00394
--sp2532

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 9; --気を貯める
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

--エフェクト(味方)
SP_01 = 161696; --カードカットインまで 前面 ef_001
SP_01b = 161698; --カードカットインまで 背面 ef_002
SP_02 = 161700; --フィニッシュまで 前面 ef_003
SP_02b = 161702; --フィニッシュまで 背面 ef_004

--エフェクト(てき)
SP_01r = 161697; --カードカットインまで 前面 敵側 ef_001_e
SP_01br = 161699; --カードカットインまで 背面 敵側 ef_002_e
SP_02r = 161701; --フィニッシュまで 前面 敵側 ef_003_e


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
-- changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
-- setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5136,   0);
setMoveKey(   1,   0,    0, -5136,   0);
setMoveKey(   2,   0,    0, -5136,   0);
setMoveKey(   3,   0,    0, -5136,   0);
setMoveKey(   4,   0,    0, -5136,   0);
setMoveKey(   5,   0,    0, -5136,   0);
setMoveKey(   6,   0,    0, -5136,   0);
setScaleKey(  0,   0,  1.6, 1.6);
setScaleKey(  1,   0,  1.6, 1.6);
setScaleKey(  2,   0,  1.6, 1.6);
setScaleKey(  3,   0,  1.6, 1.6);
setScaleKey(  4,   0,  1.6, 1.6);
setScaleKey(  5,   0,  1.6, 1.6);
setScaleKey(  6,   0,  1.6, 1.6);
setRotateKey( 0,   0,  0);
setRotateKey( 1,   0,  0);
setRotateKey( 2,   0,  0);
setRotateKey( 3,   0,  0);
setRotateKey( 4,   0,  0);
setRotateKey( 5,   0,  0);
setRotateKey( 6,   0,  0);

-- setMoveKey(   0,   1,    0, -5136,   0);
-- setMoveKey(   1,   1,    0, -5136,   0);
-- setMoveKey(   2,   1,    0, -5136,   0);
-- setMoveKey(   3,   1,    0, -5136,   0);
-- setMoveKey(   4,   1,    0, -5136,   0);
-- setMoveKey(   5,   1,    0, -5136,   0);
-- setMoveKey(   6,   1,    0, -5136,   0);
-- setScaleKey(  0,   1,  1.6, 1.6);
-- setScaleKey(  1,   1,  1.6, 1.6);
-- setScaleKey(  2,   1,  1.6, 1.6);
-- setScaleKey(  3,   1,  1.6, 1.6);
-- setScaleKey(  4,   1,  1.6, 1.6);
-- setScaleKey(  5,   1,  1.6, 1.6);
-- setScaleKey(  6,   1,  1.6, 1.6);
-- setRotateKey( 0,   1,  0);
-- setRotateKey( 1,   1,  0);
-- setRotateKey( 2,   1,  0);
-- setRotateKey( 3,   1,  0);
-- setRotateKey( 4,   1,  0);
-- setRotateKey( 5,   1,  0);
-- setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カードカットインまで
-------------------------------------------------
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カードカットインまで　前面(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + 518, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + 518, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + 518, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + 518, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カードカットインまで　背面(ef_002)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 518, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + 518, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 518, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 518, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 430;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 150, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 150, 515.5 , 0 );
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

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 518 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き_1
changeAnime( spep_0 + 0, 1, 118 );

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 - 1 + 40, 1, 0 );

setMoveKey( spep_0 + 0, 1, 13.7, -141.7 , 0 );
setMoveKey( spep_0 + 1, 1, 16.8, -140.6 , 0 );
setMoveKey( spep_0 + 2, 1, 16.8, -140.6 , 0 );
setMoveKey( spep_0 + 3, 1, 26.3, -137.2 , 0 );
setMoveKey( spep_0 + 4, 1, 26.3, -137.2 , 0 );
setMoveKey( spep_0 + 5, 1, 42.2, -131.5 , 0 );
setMoveKey( spep_0 + 6, 1, 42.2, -131.5 , 0 );
setMoveKey( spep_0 - 1 + 8, 1, 64.5, -123.5 , 0 );
setMoveKey( spep_0 - 1 + 10, 1, 93.1, -113.2 , 0 );
setMoveKey( spep_0 - 1 + 12, 1, 128.1, -100.7 , 0 );
setMoveKey( spep_0 - 1 + 14, 1, 169.4, -85.9 , 0 );
setMoveKey( spep_0 - 1 + 16, 1, 217.1, -68.8 , 0 );
setMoveKey( spep_0 - 1 + 18, 1, 271.2, -49.5 , 0 );
setMoveKey( spep_0 - 1 + 20, 1, 331.6, -27.8 , 0 );
setMoveKey( spep_0 - 1 + 22, 1, 398.4, -3.9 , 0 );
setMoveKey( spep_0 - 1 + 24, 1, 471.5, 22.3 , 0 );
setMoveKey( spep_0 - 1 + 26, 1, 551, 50.7 , 0 );
setMoveKey( spep_0 - 1 + 28, 1, 636.9, 81.5 , 0 );
setMoveKey( spep_0 - 1 + 30, 1, 729.1, 114.5 , 0 );
setMoveKey( spep_0 - 1 + 32, 1, 827.7, 149.8 , 0 );
setMoveKey( spep_0 - 1 + 34, 1, 932.6, 187.4 , 0 );
setMoveKey( spep_0 - 1 + 36, 1, 1043.9, 227.3 , 0 );
setMoveKey( spep_0 - 1 + 38, 1, 1161.6, 269.4 , 0 );
setMoveKey( spep_0 - 1 + 40, 1, 1161.6, 269.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 1, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 2, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 3, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 4, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 5, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 6, 1, 0.88, 0.88 );
setScaleKey( spep_0 - 1 + 8, 1, 1.02, 1.02 );
setScaleKey( spep_0 - 1 + 10, 1, 1.21, 1.21 );
setScaleKey( spep_0 - 1 + 12, 1, 1.43, 1.43 );
setScaleKey( spep_0 - 1 + 14, 1, 1.69, 1.69 );
setScaleKey( spep_0 - 1 + 16, 1, 1.99, 1.99 );
setScaleKey( spep_0 - 1 + 18, 1, 2.34, 2.34 );
setScaleKey( spep_0 - 1 + 20, 1, 2.72, 2.72 );
setScaleKey( spep_0 - 1 + 22, 1, 3.15, 3.15 );
setScaleKey( spep_0 - 1 + 24, 1, 3.61, 3.61 );
setScaleKey( spep_0 - 1 + 26, 1, 4.12, 4.12 );
setScaleKey( spep_0 - 1 + 28, 1, 4.66, 4.66 );
setScaleKey( spep_0 - 1 + 30, 1, 5.25, 5.25 );
setScaleKey( spep_0 - 1 + 32, 1, 5.88, 5.88 );
setScaleKey( spep_0 - 1 + 34, 1, 6.54, 6.54 );
setScaleKey( spep_0 - 1 + 36, 1, 7.25, 7.25 );
setScaleKey( spep_0 - 1 + 38, 1, 8, 8 );
setScaleKey( spep_0 - 1 + 40, 1, 8, 8 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 - 1 + 40, 1, 0 );

-- ** 音 ** --
--突っ込んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 40 );

--突っ込んでくる
SE004 = playSeVer2( spep_0 + 2, 1117, "", 0, 0, 0, -1);

--オーラ
SE005 = playSeVer2( spep_0 + 16, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE005, 40 );

--突っ込んでくる
SE006 = playSeVer2( spep_0 + 32, 1116, "",spep_0 + 82, 0, 18, -1);

--オーラ
SE007 = playSeVer2( spep_0 + 40, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE007, 40 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 77; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- 敵の動き_2
setDisp( spep_0 - 1 + 90, 1, 1 );
setDisp( spep_0 - 1 + 414, 1, 0 );

changeAnime( spep_0 - 1 + 90, 1, 104 );
changeAnime( spep_0 - 1 + 100, 1, 105 );
changeAnime( spep_0 - 1 + 140, 1, 107 );
changeAnime( spep_0 - 1 + 156, 1, 118 );
changeAnime( spep_0 - 1 + 214, 1, 0 );
changeAnime( spep_0 - 1 + 244, 1, 104 );
changeAnime( spep_0 - 1 + 248, 1, 102 );
changeAnime( spep_0 - 1 + 284, 1, 100 );
changeAnime( spep_0 - 1 + 304, 1, 4 );
changeAnime( spep_0 - 1 + 308, 1, 2 );
changeAnime( spep_0 - 1 + 356, 1, 104 );
changeAnime( spep_0 - 1 + 376, 1, 117 );

setMoveKey( spep_0 - 1 + 90, 1, 104.9, 9.3 , 0 );
setMoveKey( spep_0 - 1 + 92, 1, 105, 10.5 , 0 );
setMoveKey( spep_0 - 1 + 94, 1, 105, 11.6 , 0 );
setMoveKey( spep_0 - 1 + 96, 1, 105.2, 12.7 , 0 );
setMoveKey( spep_0 - 1 + 99, 1, 105.3, 13.7 , 0 );
setMoveKey( spep_0 - 1 + 100, 1, 140, 12.2 , 0 );
setMoveKey( spep_0 - 1 + 101, 1, 140, 12.2 , 0 );
setMoveKey( spep_0 - 1 + 102, 1, 126.8, 11.4 , 0 );
setMoveKey( spep_0 - 1 + 103, 1, 126.8, 11.4 , 0 );
setMoveKey( spep_0 - 1 + 104, 1, 157.7, 36.3 , 0 );
setMoveKey( spep_0 - 1 + 105, 1, 157.7, 36.3 , 0 );
setMoveKey( spep_0 - 1 + 106, 1, 144.7, 71.2 , 0 );
setMoveKey( spep_0 - 1 + 107, 1, 144.7, 71.2 , 0 );
setMoveKey( spep_0 - 1 + 108, 1, 176.7, 90 , 0 );
setMoveKey( spep_0 - 1 + 109, 1, 176.7, 90 , 0 );
setMoveKey( spep_0 - 1 + 110, 1, 163.5, 77.6 , 0 );
setMoveKey( spep_0 - 1 + 111, 1, 163.5, 77.6 , 0 );
setMoveKey( spep_0 - 1 + 112, 1, 197.4, 95.2 , 0 );
setMoveKey( spep_0 - 1 + 113, 1, 197.4, 95.2 , 0 );
setMoveKey( spep_0 - 1 + 114, 1, 184.2, 129.7 , 0 );
setMoveKey( spep_0 - 1 + 116, 1, 185, 131.1 , 0 );
setMoveKey( spep_0 - 1 + 118, 1, 185.9, 132.5 , 0 );
setMoveKey( spep_0 - 1 + 120, 1, 186.8, 134 , 0 );
setMoveKey( spep_0 - 1 + 122, 1, 187.6, 135.4 , 0 );
setMoveKey( spep_0 - 1 + 124, 1, 188.4, 136.9 , 0 );
setMoveKey( spep_0 - 1 + 126, 1, 189.3, 138.3 , 0 );
setMoveKey( spep_0 - 1 + 128, 1, 190, 139.7 , 0 );
setMoveKey( spep_0 - 1 + 130, 1, 190.8, 141.1 , 0 );
setMoveKey( spep_0 - 1 + 132, 1, 191.7, 142.5 , 0 );
setMoveKey( spep_0 - 1 + 134, 1, 192.5, 143.9 , 0 );
setMoveKey( spep_0 - 1 + 136, 1, 193.3, 145.3 , 0 );
setMoveKey( spep_0 - 1 + 139, 1, 194.1, 146.6 , 0 );
setMoveKey( spep_0 - 1 + 140, 1, 11.7, 46.6 , 0 );
setMoveKey( spep_0 - 1 + 142, 1, 44.8, 30.2 , 0 );
setMoveKey( spep_0 - 1 + 144, 1, 78, 13.8 , 0 );
setMoveKey( spep_0 - 1 + 146, 1, 111.1, -2.7 , 0 );
setMoveKey( spep_0 - 1 + 148, 1, 144.3, -19.1 , 0 );
setMoveKey( spep_0 - 1 + 150, 1, 177.4, -35.6 , 0 );
setMoveKey( spep_0 - 1 + 152, 1, 210.6, -52 , 0 );
setMoveKey( spep_0 - 1 + 155, 1, 243.7, -68.5 , 0 );
setMoveKey( spep_0 - 1 + 156, 1, 265.8, -108 , 0 );
setMoveKey( spep_0 - 1 + 158, 1, 268.7, -108 , 0 );
setMoveKey( spep_0 - 1 + 160, 1, 265.8, -108 , 0 );
setMoveKey( spep_0 - 1 + 162, 1, 268.7, -108 , 0 );
setMoveKey( spep_0 - 1 + 164, 1, 265.8, -108 , 0 );
setMoveKey( spep_0 - 1 + 166, 1, 268.7, -108 , 0 );
setMoveKey( spep_0 - 1 + 168, 1, 265.8, -108 , 0 );
setMoveKey( spep_0 - 1 + 170, 1, 268.7, -108 , 0 );
setMoveKey( spep_0 - 1 + 190, 1, 268.7, -108 , 0 );
setMoveKey( spep_0 - 1 + 192, 1, 272.7, -105 , 0 );
setMoveKey( spep_0 - 1 + 194, 1, 265.7, -111 , 0 );
setMoveKey( spep_0 - 1 + 196, 1, 271.7, -111 , 0 );
setMoveKey( spep_0 - 1 + 198, 1, 265.7, -105 , 0 );
setMoveKey( spep_0 - 1 + 200, 1, 272.7, -105 , 0 );
setMoveKey( spep_0 - 1 + 202, 1, 265.7, -111 , 0 );
setMoveKey( spep_0 - 1 + 204, 1, 271.7, -111 , 0 );
setMoveKey( spep_0 - 1 + 206, 1, 265.7, -105 , 0 );
setMoveKey( spep_0 - 1 + 208, 1, 268.7, -108 , 0 );
setMoveKey( spep_0 - 1 + 213, 1, 268.7, -108 , 0 );
setMoveKey( spep_0 - 1 + 214, 1, 362, -556.5 , 0 );
setMoveKey( spep_0 - 1 + 216, 1, 332.3, -525.8 , 0 );
setMoveKey( spep_0 - 1 + 218, 1, 302.7, -495.1 , 0 );
setMoveKey( spep_0 - 1 + 220, 1, 273, -464.4 , 0 );
setMoveKey( spep_0 - 1 + 222, 1, 243.3, -433.8 , 0 );
setMoveKey( spep_0 - 1 + 224, 1, 213.6, -403.1 , 0 );
setMoveKey( spep_0 - 1 + 226, 1, 184, -372.4 , 0 );
setMoveKey( spep_0 - 1 + 228, 1, 181.3, -369.1 , 0 );
setMoveKey( spep_0 - 1 + 230, 1, 178.6, -365.7 , 0 );
setMoveKey( spep_0 - 1 + 232, 1, 176, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 234, 1, 185.6, -371.6 , 0 );
setMoveKey( spep_0 - 1 + 236, 1, 195.2, -380.8 , 0 );
setMoveKey( spep_0 - 1 + 238, 1, 204.8, -390 , 0 );
setMoveKey( spep_0 - 1 + 240, 1, 214.4, -399.2 , 0 );
setMoveKey( spep_0 - 1 + 242, 1, 224, -408.4 , 0 );
setMoveKey( spep_0 - 1 + 245, 1, 200, -408.4 , 0 );
setMoveKey( spep_0 - 1 + 246, 1, 189.5, -396.9 , 0 );
setMoveKey( spep_0 - 1 + 249, 1, 179, -385.4 , 0 );
setMoveKey( spep_0 - 1 + 250, 1, 168.5, -373.9 , 0 );
setMoveKey( spep_0 - 1 + 252, 1, 158, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 257, 1, 158, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 258, 1, 162, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 259, 1, 162, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 260, 1, 158, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 261, 1, 158, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 262, 1, 162, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 263, 1, 162, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 264, 1, 155, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 265, 1, 155, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 266, 1, 162, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 267, 1, 162, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 268, 1, 155, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 269, 1, 155, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 270, 1, 161, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 271, 1, 161, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 272, 1, 155, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 273, 1, 155, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 274, 1, 158, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 283, 1, 158, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 284, 1, -276, -434.4 , 0 );
setMoveKey( spep_0 - 1 + 286, 1, -252.1, -417.4 , 0 );
setMoveKey( spep_0 - 1 + 288, 1, -228.1, -400.4 , 0 );
setMoveKey( spep_0 - 1 + 290, 1, -204.1, -383.4 , 0 );
setMoveKey( spep_0 - 1 + 292, 1, -180.1, -366.4 , 0 );
setMoveKey( spep_0 - 1 + 294, 1, -178.7, -365 , 0 );
setMoveKey( spep_0 - 1 + 296, 1, -177.4, -363.7 , 0 );
setMoveKey( spep_0 - 1 + 298, 1, -176.1, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 300, 1, -197.1, -385.4 , 0 );
setMoveKey( spep_0 - 1 + 302, 1, -218.1, -408.4 , 0 );
setMoveKey( spep_0 - 1 + 305, 1, -190.1, -408.4 , 0 );
setMoveKey( spep_0 - 1 + 306, 1, -181.6, -396.9 , 0 );
setMoveKey( spep_0 - 1 + 309, 1, -173.1, -385.4 , 0 );
setMoveKey( spep_0 - 1 + 310, 1, -164.6, -373.9 , 0 );
setMoveKey( spep_0 - 1 + 312, 1, -156.1, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 320, 1, -156.1, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 322, 1, -152.1, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 324, 1, -159.1, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 326, 1, -153.1, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 328, 1, -159.1, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 330, 1, -152.1, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 332, 1, -159.1, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 334, 1, -153.1, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 336, 1, -159.1, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 338, 1, -156.1, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 355, 1, -156.1, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 356, 1, 0, 0 , 0 );
setMoveKey( spep_0 - 1 + 358, 1, 7.9, 12.9 , 0 );
setMoveKey( spep_0 - 1 + 360, 1, 15.8, 25.8 , 0 );
setMoveKey( spep_0 - 1 + 362, 1, 23.7, 38.7 , 0 );
setMoveKey( spep_0 - 1 + 364, 1, 31.6, 51.6 , 0 );
setMoveKey( spep_0 - 1 + 366, 1, 39.5, 64.5 , 0 );
setMoveKey( spep_0 - 1 + 368, 1, 47.4, 77.4 , 0 );
setMoveKey( spep_0 - 1 + 370, 1, 55.3, 90.3 , 0 );
setMoveKey( spep_0 - 1 + 372, 1, 63.2, 103.2 , 0 );
setMoveKey( spep_0 - 1 + 375, 1, 71.1, 116.1 , 0 );
setMoveKey( spep_0 - 1 + 376, 1, 79, 129.1 , 0 );
setMoveKey( spep_0 - 1 + 378, 1, 86.9, 142 , 0 );
setMoveKey( spep_0 - 1 + 380, 1, 94.8, 154.9 , 0 );
setMoveKey( spep_0 - 1 + 382, 1, 102.7, 167.8 , 0 );
setMoveKey( spep_0 - 1 + 384, 1, 110.6, 180.7 , 0 );
setMoveKey( spep_0 - 1 + 386, 1, 118.5, 193.6 , 0 );
setMoveKey( spep_0 - 1 + 388, 1, 126.4, 206.5 , 0 );
setMoveKey( spep_0 - 1 + 390, 1, 134.3, 219.4 , 0 );
setMoveKey( spep_0 - 1 + 392, 1, 142.2, 232.3 , 0 );
setMoveKey( spep_0 - 1 + 394, 1, 150.1, 245.2 , 0 );
setMoveKey( spep_0 - 1 + 396, 1, 158, 258.1 , 0 );
setMoveKey( spep_0 - 1 + 398, 1, 158.9, 259.7 , 0 );
setMoveKey( spep_0 - 1 + 400, 1, 159.8, 261.2 , 0 );
setMoveKey( spep_0 - 1 + 402, 1, 160.7, 262.8 , 0 );
setMoveKey( spep_0 - 1 + 404, 1, 161.6, 264.3 , 0 );
setMoveKey( spep_0 - 1 + 406, 1, 162.4, 265.9 , 0 );
setMoveKey( spep_0 - 1 + 408, 1, 163.3, 267.4 , 0 );
setMoveKey( spep_0 - 1 + 410, 1, 164.2, 269 , 0 );
setMoveKey( spep_0 - 1 + 412, 1, 165.1, 270.5 , 0 );
setMoveKey( spep_0 - 1 + 414, 1, 165.1, 270.5 , 0 );

setScaleKey( spep_0 - 1 + 90, 1, 1.92, 1.92 );
setScaleKey( spep_0 - 1 + 92, 1, 1.89, 1.89 );
setScaleKey( spep_0 - 1 + 94, 1, 1.86, 1.86 );
setScaleKey( spep_0 - 1 + 96, 1, 1.83, 1.83 );
setScaleKey( spep_0 - 1 + 99, 1, 1.8, 1.8 );
setScaleKey( spep_0 - 1 + 100, 1, 1.62, 1.62 );
setScaleKey( spep_0 - 1 + 101, 1, 1.62, 1.62 );
setScaleKey( spep_0 - 1 + 102, 1, 1.36, 1.36 );
setScaleKey( spep_0 - 1 + 103, 1, 1.36, 1.36 );
setScaleKey( spep_0 - 1 + 104, 1, 1.12, 1.12 );
setScaleKey( spep_0 - 1 + 105, 1, 1.12, 1.12 );
setScaleKey( spep_0 - 1 + 106, 1, 1.05, 1.05 );
setScaleKey( spep_0 - 1 + 107, 1, 1.05, 1.05 );
setScaleKey( spep_0 - 1 + 108, 1, 0.98, 0.98 );
setScaleKey( spep_0 - 1 + 109, 1, 0.98, 0.98 );
setScaleKey( spep_0 - 1 + 110, 1, 0.91, 0.91 );
setScaleKey( spep_0 - 1 + 111, 1, 0.91, 0.91 );
setScaleKey( spep_0 - 1 + 112, 1, 0.84, 0.84 );
setScaleKey( spep_0 - 1 + 113, 1, 0.84, 0.84 );
setScaleKey( spep_0 - 1 + 114, 1, 0.77, 0.77 );
setScaleKey( spep_0 - 1 + 116, 1, 0.76, 0.76 );
setScaleKey( spep_0 - 1 + 118, 1, 0.75, 0.75 );
setScaleKey( spep_0 - 1 + 120, 1, 0.74, 0.74 );
setScaleKey( spep_0 - 1 + 122, 1, 0.73, 0.73 );
setScaleKey( spep_0 - 1 + 124, 1, 0.72, 0.72 );
setScaleKey( spep_0 - 1 + 126, 1, 0.71, 0.71 );
setScaleKey( spep_0 - 1 + 128, 1, 0.7, 0.7 );
setScaleKey( spep_0 - 1 + 130, 1, 0.69, 0.69 );
setScaleKey( spep_0 - 1 + 132, 1, 0.68, 0.68 );
setScaleKey( spep_0 - 1 + 134, 1, 0.67, 0.67 );
setScaleKey( spep_0 - 1 + 136, 1, 0.66, 0.66 );
setScaleKey( spep_0 - 1 + 139, 1, 0.66, 0.66 );
setScaleKey( spep_0 - 1 + 140, 1, 0.54, 0.54 );
setScaleKey( spep_0 - 1 + 142, 1, 0.69, 0.69 );
setScaleKey( spep_0 - 1 + 144, 1, 0.83, 0.83 );
setScaleKey( spep_0 - 1 + 146, 1, 0.97, 0.97 );
setScaleKey( spep_0 - 1 + 148, 1, 1.12, 1.12 );
setScaleKey( spep_0 - 1 + 150, 1, 1.26, 1.26 );
setScaleKey( spep_0 - 1 + 152, 1, 1.41, 1.41 );
setScaleKey( spep_0 - 1 + 155, 1, 1.55, 1.55 );
setScaleKey( spep_0 - 1 + 156, 1, 3, 3 );
setScaleKey( spep_0 - 1 + 158, 1, 3.02, 3.02 );
setScaleKey( spep_0 - 1 + 160, 1, 3, 3 );
setScaleKey( spep_0 - 1 + 162, 1, 3.02, 3.02 );
setScaleKey( spep_0 - 1 + 164, 1, 3, 3 );
setScaleKey( spep_0 - 1 + 166, 1, 3.02, 3.02 );
setScaleKey( spep_0 - 1 + 168, 1, 3, 3 );
setScaleKey( spep_0 - 1 + 170, 1, 3.02, 3.02 );
setScaleKey( spep_0 - 1 + 213, 1, 3.02, 3.02 );
setScaleKey( spep_0 - 1 + 214, 1, 6.96, 6.96 );
setScaleKey( spep_0 - 1 + 216, 1, 6.64, 6.64 );
setScaleKey( spep_0 - 1 + 218, 1, 6.31, 6.31 );
setScaleKey( spep_0 - 1 + 220, 1, 5.98, 5.98 );
setScaleKey( spep_0 - 1 + 222, 1, 5.65, 5.65 );
setScaleKey( spep_0 - 1 + 224, 1, 5.33, 5.33 );
setScaleKey( spep_0 - 1 + 226, 1, 5, 5 );
setScaleKey( spep_0 - 1 + 228, 1, 4.93, 4.93 );
setScaleKey( spep_0 - 1 + 230, 1, 4.87, 4.87 );
setScaleKey( spep_0 - 1 + 232, 1, 4.8, 4.8 );
setScaleKey( spep_0 - 1 + 234, 1, 4.92, 4.92 );
setScaleKey( spep_0 - 1 + 236, 1, 5.04, 5.04 );
setScaleKey( spep_0 - 1 + 238, 1, 5.16, 5.16 );
setScaleKey( spep_0 - 1 + 240, 1, 5.28, 5.28 );
setScaleKey( spep_0 - 1 + 242, 1, 5.4, 5.4 );
setScaleKey( spep_0 - 1 + 245, 1, 5.4, 5.4 );
setScaleKey( spep_0 - 1 + 246, 1, 5.25, 5.25 );
setScaleKey( spep_0 - 1 + 249, 1, 5.1, 5.1 );
setScaleKey( spep_0 - 1 + 250, 1, 4.95, 4.95 );
setScaleKey( spep_0 - 1 + 252, 1, 4.8, 4.8 );
setScaleKey( spep_0 - 1 + 283, 1, 4.8, 4.8 );
setScaleKey( spep_0 - 1 + 284, 1, 5.73, 5.73 );
setScaleKey( spep_0 - 1 + 286, 1, 5.53, 5.53 );
setScaleKey( spep_0 - 1 + 288, 1, 5.32, 5.32 );
setScaleKey( spep_0 - 1 + 290, 1, 5.12, 5.12 );
setScaleKey( spep_0 - 1 + 292, 1, 4.92, 4.92 );
setScaleKey( spep_0 - 1 + 294, 1, 4.88, 4.88 );
setScaleKey( spep_0 - 1 + 296, 1, 4.84, 4.84 );
setScaleKey( spep_0 - 1 + 298, 1, 4.8, 4.8 );
setScaleKey( spep_0 - 1 + 300, 1, 5.1, 5.1 );
setScaleKey( spep_0 - 1 + 302, 1, 5.4, 5.4 );
setScaleKey( spep_0 - 1 + 305, 1, 5.4, 5.4 );
setScaleKey( spep_0 - 1 + 306, 1, 5.25, 5.25 );
setScaleKey( spep_0 - 1 + 309, 1, 5.1, 5.1 );
setScaleKey( spep_0 - 1 + 310, 1, 4.95, 4.95 );
setScaleKey( spep_0 - 1 + 312, 1, 4.8, 4.8 );
setScaleKey( spep_0 - 1 + 355, 1, 4.8, 4.8 );
setScaleKey( spep_0 - 1 + 356, 1, 3, 3 );
setScaleKey( spep_0 - 1 + 358, 1, 2.89, 2.89 );
setScaleKey( spep_0 - 1 + 360, 1, 2.78, 2.78 );
setScaleKey( spep_0 - 1 + 362, 1, 2.68, 2.68 );
setScaleKey( spep_0 - 1 + 364, 1, 2.57, 2.57 );
setScaleKey( spep_0 - 1 + 366, 1, 2.46, 2.46 );
setScaleKey( spep_0 - 1 + 368, 1, 2.35, 2.35 );
setScaleKey( spep_0 - 1 + 370, 1, 2.24, 2.24 );
setScaleKey( spep_0 - 1 + 372, 1, 2.13, 2.13 );
setScaleKey( spep_0 - 1 + 375, 1, 2.03, 2.03 );
setScaleKey( spep_0 - 1 + 376, 1, 1.92, 1.92 );
setScaleKey( spep_0 - 1 + 378, 1, 1.81, 1.81 );
setScaleKey( spep_0 - 1 + 380, 1, 1.7, 1.7 );
setScaleKey( spep_0 - 1 + 382, 1, 1.59, 1.59 );
setScaleKey( spep_0 - 1 + 384, 1, 1.48, 1.48 );
setScaleKey( spep_0 - 1 + 386, 1, 1.38, 1.38 );
setScaleKey( spep_0 - 1 + 388, 1, 1.27, 1.27 );
setScaleKey( spep_0 - 1 + 390, 1, 1.16, 1.16 );
setScaleKey( spep_0 - 1 + 392, 1, 1.05, 1.05 );
setScaleKey( spep_0 - 1 + 394, 1, 0.94, 0.94 );
setScaleKey( spep_0 - 1 + 396, 1, 0.83, 0.83 );
setScaleKey( spep_0 - 1 + 398, 1, 0.82, 0.82 );
setScaleKey( spep_0 - 1 + 400, 1, 0.8, 0.8 );
setScaleKey( spep_0 - 1 + 402, 1, 0.79, 0.79 );
setScaleKey( spep_0 - 1 + 404, 1, 0.77, 0.77 );
setScaleKey( spep_0 - 1 + 406, 1, 0.75, 0.75 );
setScaleKey( spep_0 - 1 + 408, 1, 0.74, 0.74 );
setScaleKey( spep_0 - 1 + 410, 1, 0.72, 0.72 );
setScaleKey( spep_0 - 1 + 412, 1, 0.7, 0.7 );
setScaleKey( spep_0 - 1 + 414, 1, 0.7, 0.7 );

setRotateKey( spep_0 - 1 + 90, 1, 0 );
setRotateKey( spep_0 - 1 + 101, 1, 0 );
setRotateKey( spep_0 - 1 + 102, 1, 3.2 );
setRotateKey( spep_0 - 1 + 103, 1, 3.2 );
setRotateKey( spep_0 - 1 + 104, 1, 6.4 );
setRotateKey( spep_0 - 1 + 105, 1, 6.4 );
setRotateKey( spep_0 - 1 + 106, 1, 9.7 );
setRotateKey( spep_0 - 1 + 107, 1, 9.7 );
setRotateKey( spep_0 - 1 + 108, 1, 12.9 );
setRotateKey( spep_0 - 1 + 109, 1, 12.9 );
setRotateKey( spep_0 - 1 + 110, 1, 16.1 );
setRotateKey( spep_0 - 1 + 111, 1, 16.1 );
setRotateKey( spep_0 - 1 + 112, 1, 19.3 );
setRotateKey( spep_0 - 1 + 113, 1, 19.3 );
setRotateKey( spep_0 - 1 + 114, 1, 22.5 );
setRotateKey( spep_0 - 1 + 116, 1, 22.9 );
setRotateKey( spep_0 - 1 + 118, 1, 23.2 );
setRotateKey( spep_0 - 1 + 120, 1, 23.6 );
setRotateKey( spep_0 - 1 + 122, 1, 23.9 );
setRotateKey( spep_0 - 1 + 124, 1, 24.3 );
setRotateKey( spep_0 - 1 + 126, 1, 24.6 );
setRotateKey( spep_0 - 1 + 128, 1, 25 );
setRotateKey( spep_0 - 1 + 130, 1, 25.3 );
setRotateKey( spep_0 - 1 + 132, 1, 25.7 );
setRotateKey( spep_0 - 1 + 134, 1, 26 );
setRotateKey( spep_0 - 1 + 136, 1, 26.4 );
setRotateKey( spep_0 - 1 + 139, 1, 26.7 );
setRotateKey( spep_0 - 1 + 140, 1, 4.2 );
setRotateKey( spep_0 - 1 + 142, 1, 6.3 );
setRotateKey( spep_0 - 1 + 144, 1, 8.4 );
setRotateKey( spep_0 - 1 + 146, 1, 10.6 );
setRotateKey( spep_0 - 1 + 148, 1, 12.7 );
setRotateKey( spep_0 - 1 + 150, 1, 14.8 );
setRotateKey( spep_0 - 1 + 152, 1, 16.9 );
setRotateKey( spep_0 - 1 + 155, 1, 19 );
setRotateKey( spep_0 - 1 + 156, 1, 0 );
setRotateKey( spep_0 - 1 + 355, 1, 0 );
setRotateKey( spep_0 - 1 + 356, 1, -19.5 );
setRotateKey( spep_0 - 1 + 414, 1, -19.5 );

setBlendColor( spep_0 - 1 + 214, 1, 3, 0, 0, 0, 0.3);
setBlendColor( spep_0 - 1 + 245, 1, 3, 0, 0, 0, 0.3);
setBlendColor( spep_0 - 1 + 246, 1, 3, 0, 0, 0, 0.2);
setBlendColor( spep_0 - 1 + 249, 1, 3, 0, 0, 0, 0.2);
setBlendColor( spep_0 - 1 + 249, 1, 3, 0, 0, 0, 0.1);
setBlendColor( spep_0 - 1 + 249, 1, 3, 0, 0, 0, 0.1);
setBlendColor( spep_0 - 1 + 252, 1, 3, 0, 0, 0, 0);
setBlendColor( spep_0 - 1 + 283, 1, 3, 0, 0, 0, 0);
setBlendColor( spep_0 - 1 + 284, 1, 3, 0, 0, 0, 0.3);
setBlendColor( spep_0 - 1 + 305, 1, 3, 0, 0, 0, 0.3);
setBlendColor( spep_0 - 1 + 306, 1, 3, 0, 0, 0, 0.2);
setBlendColor( spep_0 - 1 + 309, 1, 3, 0, 0, 0, 0.2);
setBlendColor( spep_0 - 1 + 310, 1, 3, 0, 0, 0, 0.1);
setBlendColor( spep_0 - 1 + 311, 1, 3, 0, 0, 0, 0.1);
setBlendColor( spep_0 - 1 + 312, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--オーラ
SE008 = playSeVer2( spep_0 + 64, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE008, 40 );
SE009 = playSeVer2( spep_0 + 88, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE009, 40 );

--パンチ
SE010 = playSeVer2( spep_0 + 84, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 96, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 96, 1359, "", 0, 0, 0, -1);

--環境音
SE013 = playSeVer2( spep_0 + 110, 1269, "",spep_0 + 550, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 110, SE013, 32 );

--オーラ
SE014 = playSeVer2( spep_0 + 112, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE014, 40 );
SE015 = playSeVer2( spep_0 + 136, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE015, 40 );

--敵踏みとどまる
SE016 = playSeVer2( spep_0 + 148, 1013, "", 0, 0, 0, -1);

--オーラ
SE017 = playSeVer2( spep_0 + 160, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE017, 40 );

--瞬間移動１
SE018 = playSeVer2( spep_0 + 164, 1109, "", 0, 0, 0, -1);
setPitch( spep_0 + 164, SE018, 200 );
setTimeStretch( SE018, 1.13, 30, 4 );

SE019 = playSeVer2( spep_0 + 164, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE019, 59 );

--瞬間移動２
SE020 = playSeVer2( spep_0 + 226, 1109, "", 0, 0, 0, -1);
setPitch( spep_0 + 226, SE020, 200 );
setTimeStretch( SE020, 1.13, 30, 4 );
SE021 = playSeVer2( spep_0 + 226, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE021, 63 );

--瞬間移動３
SE022 = playSeVer2( spep_0 + 258, 1109, "", 0, 0, 0, -1);
setPitch( spep_0 + 258, SE022, 200 );
setTimeStretch( SE022, 1.13, 30, 4 );
SE023 = playSeVer2( spep_0 + 258, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 258, SE023, 63 );

--瞬間移動４
SE024 = playSeVer2( spep_0 + 304, 1109, "", 0, 0, 0, -1);
setPitch( spep_0 + 304, SE024, 200 );
setTimeStretch( SE024, 1.13, 30, 4 );
SE025 = playSeVer2( spep_0 + 304, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE025, 63 );

--瞬間移動５
SE026 = playSeVer2( spep_0 + 380, 1109, "", 0, 0, 0, -1);
setPitch( spep_0 + 380, SE026, 200 );
setTimeStretch( SE026, 1.13, 30, 4 );
SE027 = playSeVer2( spep_0 + 380, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 380, SE027, 63 );

--かめはめ波溜め
SE028 = playSeVer2( spep_0 + 380, 1210, "",spep_0 + 540, 0, 18, 0.6);
SE029 = playSeVer2( spep_0 + 406, 1209, "",spep_0 + 540, 0, 18, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 518;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_c + 0, SE_05 );

--発射前溜め
SE031 = playSeVer2( spep_c + 84, 1210, "",spep_c + 150, 4, 28, 0.6);
setStartTimeMs( SE031,  2483 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_c + 94;


-------------------------------------------------
-- フィニッシュまで
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- フィニッシュまで　前面(ef_003)
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 328, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 328, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 328, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 328, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- フィニッシュまで　背面(ef_004)
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 328, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 328, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 328, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 328, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 328 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 白背景フェード ** --
entryFadeBg( spep_1 + 24, 0, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white bg fade

-- ** 敵キャラクター ** --
setDisp( spep_1 - 1 + 104, 1, 1 );
setDisp( spep_1 - 1 + 182, 1, 0 );

changeAnime( spep_1 - 1 + 104, 1, 104 );
changeAnime( spep_1 - 1 + 156, 1, 108 );

setMoveKey( spep_1 - 1 + 104, 1, 96.1, 183.5 , 0 );
setMoveKey( spep_1 - 1 + 106, 1, 92, 189.5 , 0 );
setMoveKey( spep_1 - 1 + 108, 1, 100, 179.4 , 0 );
setMoveKey( spep_1 - 1 + 110, 1, 98, 187.1 , 0 );
setMoveKey( spep_1 - 1 + 112, 1, 93.9, 178.8 , 0 );
setMoveKey( spep_1 - 1 + 114, 1, 99.8, 182.3 , 0 );
setMoveKey( spep_1 - 1 + 116, 1, 95.6, 181.7 , 0 );
setMoveKey( spep_1 - 1 + 118, 1, 91.4, 186.9 , 0 );
setMoveKey( spep_1 - 1 + 120, 1, 99.2, 176 , 0 );
setMoveKey( spep_1 - 1 + 122, 1, 97, 182.8 , 0 );
setMoveKey( spep_1 - 1 + 124, 1, 92.7, 173.5 , 0 );
setMoveKey( spep_1 - 1 + 126, 1, 98.3, 175.9 , 0 );
setMoveKey( spep_1 - 1 + 128, 1, 93.9, 174.1 , 0 );
setMoveKey( spep_1 - 1 + 130, 1, 89.4, 177.9 , 0 );
setMoveKey( spep_1 - 1 + 132, 1, 96.8, 165.4 , 0 );
setMoveKey( spep_1 - 1 + 134, 1, 94.1, 170.5 , 0 );
setMoveKey( spep_1 - 1 + 136, 1, 89.3, 159 , 0 );
setMoveKey( spep_1 - 1 + 138, 1, 94.4, 158.9 , 0 );
setMoveKey( spep_1 - 1 + 140, 1, 89.2, 154 , 0 );
setMoveKey( spep_1 - 1 + 142, 1, 83.8, 153.9 , 0 );
setMoveKey( spep_1 - 1 + 144, 1, 90.1, 136.3 , 0 );
setMoveKey( spep_1 - 1 + 146, 1, 85.7, 134.1 , 0 );
setMoveKey( spep_1 - 1 + 148, 1, 78.2, 110.9 , 0 );
setMoveKey( spep_1 - 1 + 150, 1, 76.4, 81.4 , 0 );
setMoveKey( spep_1 - 1 + 152, 1, 63.6, 43.1 , 0 );
setMoveKey( spep_1 - 1 + 155, 1, 54.2, 25.8 , 0 );
setMoveKey( spep_1 - 1 + 156, 1, 59.6, 4.7 , 0 );
setMoveKey( spep_1 - 1 + 158, 1, 56.5, 7.8 , 0 );
setMoveKey( spep_1 - 1 + 160, 1, 52.1, -2 , 0 );
setMoveKey( spep_1 - 1 + 162, 1, 58, 1.5 , 0 );
setMoveKey( spep_1 - 1 + 164, 1, 57.6, 3.7 , 0 );
setMoveKey( spep_1 - 1 + 166, 1, 57.2, 11.9 , 0 );
setMoveKey( spep_1 - 1 + 168, 1, 68.8, 4.1 , 0 );
setMoveKey( spep_1 - 1 + 170, 1, 70.4, 14.3 , 0 );
setMoveKey( spep_1 - 1 + 172, 1, 70, 8.5 , 0 );
setMoveKey( spep_1 - 1 + 174, 1, 79.5, 14.7 , 0 );
setMoveKey( spep_1 - 1 + 176, 1, 79.1, 16.8 , 0 );
setMoveKey( spep_1 - 1 + 178, 1, 78.7, 25 , 0 );
setMoveKey( spep_1 - 1 + 180, 1, 90.3, 17.2 , 0 );
setMoveKey( spep_1 - 1 + 182, 1, 90.3, 17.2 , 0 );

setScaleKey( spep_1 - 1 + 104, 1, 0.6, 0.6 );
setScaleKey( spep_1 - 1 + 108, 1, 0.6, 0.6 );
setScaleKey( spep_1 - 1 + 110, 1, 0.61, 0.61 );
setScaleKey( spep_1 - 1 + 112, 1, 0.61, 0.61 );
setScaleKey( spep_1 - 1 + 114, 1, 0.62, 0.62 );
setScaleKey( spep_1 - 1 + 116, 1, 0.62, 0.62 );
setScaleKey( spep_1 - 1 + 118, 1, 0.64, 0.64 );
setScaleKey( spep_1 - 1 + 120, 1, 0.65, 0.65 );
setScaleKey( spep_1 - 1 + 122, 1, 0.66, 0.66 );
setScaleKey( spep_1 - 1 + 124, 1, 0.68, 0.68 );
setScaleKey( spep_1 - 1 + 126, 1, 0.7, 0.7 );
setScaleKey( spep_1 - 1 + 128, 1, 0.72, 0.72 );
setScaleKey( spep_1 - 1 + 130, 1, 0.75, 0.75 );
setScaleKey( spep_1 - 1 + 132, 1, 0.79, 0.79 );
setScaleKey( spep_1 - 1 + 134, 1, 0.82, 0.82 );
setScaleKey( spep_1 - 1 + 136, 1, 0.87, 0.87 );
setScaleKey( spep_1 - 1 + 138, 1, 0.92, 0.92 );
setScaleKey( spep_1 - 1 + 140, 1, 0.99, 0.99 );
setScaleKey( spep_1 - 1 + 142, 1, 1.07, 1.07 );
setScaleKey( spep_1 - 1 + 144, 1, 1.17, 1.17 );
setScaleKey( spep_1 - 1 + 146, 1, 1.3, 1.3 );
setScaleKey( spep_1 - 1 + 148, 1, 1.5, 1.5 );
setScaleKey( spep_1 - 1 + 150, 1, 1.95, 1.95 );
setScaleKey( spep_1 - 1 + 152, 1, 2.45, 2.45 );
setScaleKey( spep_1 - 1 + 155, 1, 2.76, 2.76 );
setScaleKey( spep_1 - 1 + 156, 1, 2.91, 2.91 );
setScaleKey( spep_1 - 1 + 158, 1, 2.97, 2.97 );
setScaleKey( spep_1 - 1 + 160, 1, 2.99, 2.99 );
setScaleKey( spep_1 - 1 + 162, 1, 3, 3 );
setScaleKey( spep_1 - 1 + 182, 1, 3, 3 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 - 1 + 182, 1, 0 );

-- ** 音 ** --
--かめはめ波発射
SE033 = playSeVer2( spep_1 + 28, 1213, "",spep_1 + 198, 0, 20, -1);
SE034 = playSeVer2( spep_1 + 28, 1161, "",spep_1 + 198, 0, 20, -1);
SE035 = playSeVer2( spep_1 + 28, 1211, "",spep_1 + 198, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 28, SE035, 158 );
SE036 = playSeVer2( spep_1 + 28, 1133, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_1 + 54, 1258, "", 0, 0, 0, -1);

----気弾飛んでいく
SE038 = playSeVer2( spep_1 + 104, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 104, SE038, 178 );
SE039 = playSeVer2( spep_1 + 104, 1021, "", 0, 0, 0, -1);

----敵ヒット
SE040 = playSeVer2( spep_1 + 148, 1011, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 148, 1024, "", 0, 0, 0, -1);

----爆発
SE042 = playSeVer2( spep_1 + 186, 1067, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 186, 1159, "", 0, 0, 0, -1);

----爆風
SE044 = playSeVer2( spep_1 + 212, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 212, SE044, 90 );
setPitch( spep_1 + 212, SE044, -500 );
setTimeStretch( SE044, 0.67, 30, 4 );
SE045 = playSeVer2( spep_1 + 226, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 226, SE045, 90 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 210); -- ダメージ表示フレーム
endPhase( spep_1 + 318); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カードカットインまで
-------------------------------------------------
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- カードカットインまで　前面(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + 518, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + 518, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + 518, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + 518, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- カードカットインまで　背面(ef_002)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 518, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + 518, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 518, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 518, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 430;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 150, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 150, 515.5 , 0 );
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

--顔カットイン
--SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 518 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き_1
changeAnime( spep_0 + 0, 1, 118 );

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 - 1 + 40, 1, 0 );

setMoveKey( spep_0 + 0, 1, 13.7, -141.7 , 0 );
setMoveKey( spep_0 + 1, 1, 16.8, -140.6 , 0 );
setMoveKey( spep_0 + 2, 1, 16.8, -140.6 , 0 );
setMoveKey( spep_0 + 3, 1, 26.3, -137.2 , 0 );
setMoveKey( spep_0 + 4, 1, 26.3, -137.2 , 0 );
setMoveKey( spep_0 + 5, 1, 42.2, -131.5 , 0 );
setMoveKey( spep_0 + 6, 1, 42.2, -131.5 , 0 );
setMoveKey( spep_0 - 1 + 8, 1, 64.5, -123.5 , 0 );
setMoveKey( spep_0 - 1 + 10, 1, 93.1, -113.2 , 0 );
setMoveKey( spep_0 - 1 + 12, 1, 128.1, -100.7 , 0 );
setMoveKey( spep_0 - 1 + 14, 1, 169.4, -85.9 , 0 );
setMoveKey( spep_0 - 1 + 16, 1, 217.1, -68.8 , 0 );
setMoveKey( spep_0 - 1 + 18, 1, 271.2, -49.5 , 0 );
setMoveKey( spep_0 - 1 + 20, 1, 331.6, -27.8 , 0 );
setMoveKey( spep_0 - 1 + 22, 1, 398.4, -3.9 , 0 );
setMoveKey( spep_0 - 1 + 24, 1, 471.5, 22.3 , 0 );
setMoveKey( spep_0 - 1 + 26, 1, 551, 50.7 , 0 );
setMoveKey( spep_0 - 1 + 28, 1, 636.9, 81.5 , 0 );
setMoveKey( spep_0 - 1 + 30, 1, 729.1, 114.5 , 0 );
setMoveKey( spep_0 - 1 + 32, 1, 827.7, 149.8 , 0 );
setMoveKey( spep_0 - 1 + 34, 1, 932.6, 187.4 , 0 );
setMoveKey( spep_0 - 1 + 36, 1, 1043.9, 227.3 , 0 );
setMoveKey( spep_0 - 1 + 38, 1, 1161.6, 269.4 , 0 );
setMoveKey( spep_0 - 1 + 40, 1, 1161.6, 269.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 1, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 2, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 3, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 4, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 5, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 6, 1, 0.88, 0.88 );
setScaleKey( spep_0 - 1 + 8, 1, 1.02, 1.02 );
setScaleKey( spep_0 - 1 + 10, 1, 1.21, 1.21 );
setScaleKey( spep_0 - 1 + 12, 1, 1.43, 1.43 );
setScaleKey( spep_0 - 1 + 14, 1, 1.69, 1.69 );
setScaleKey( spep_0 - 1 + 16, 1, 1.99, 1.99 );
setScaleKey( spep_0 - 1 + 18, 1, 2.34, 2.34 );
setScaleKey( spep_0 - 1 + 20, 1, 2.72, 2.72 );
setScaleKey( spep_0 - 1 + 22, 1, 3.15, 3.15 );
setScaleKey( spep_0 - 1 + 24, 1, 3.61, 3.61 );
setScaleKey( spep_0 - 1 + 26, 1, 4.12, 4.12 );
setScaleKey( spep_0 - 1 + 28, 1, 4.66, 4.66 );
setScaleKey( spep_0 - 1 + 30, 1, 5.25, 5.25 );
setScaleKey( spep_0 - 1 + 32, 1, 5.88, 5.88 );
setScaleKey( spep_0 - 1 + 34, 1, 6.54, 6.54 );
setScaleKey( spep_0 - 1 + 36, 1, 7.25, 7.25 );
setScaleKey( spep_0 - 1 + 38, 1, 8, 8 );
setScaleKey( spep_0 - 1 + 40, 1, 8, 8 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 - 1 + 40, 1, 0 );

-- ** 音 ** --
--突っ込んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 40 );

--突っ込んでくる
SE004 = playSeVer2( spep_0 + 2, 1117, "", 0, 0, 0, -1);

--オーラ
SE005 = playSeVer2( spep_0 + 16, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE005, 40 );

--突っ込んでくる
SE006 = playSeVer2( spep_0 + 32, 1116, "",spep_0 + 82, 0, 18, -1);

--オーラ
SE007 = playSeVer2( spep_0 + 40, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE007, 40 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 77; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- 敵の動き_2
setDisp( spep_0 - 1 + 90, 1, 1 );
setDisp( spep_0 - 1 + 414, 1, 0 );

changeAnime( spep_0 - 1 + 90, 1, 104 );
changeAnime( spep_0 - 1 + 100, 1, 105 );
changeAnime( spep_0 - 1 + 140, 1, 107 );
changeAnime( spep_0 - 1 + 156, 1, 118 );
changeAnime( spep_0 - 1 + 214, 1, 0 );
changeAnime( spep_0 - 1 + 244, 1, 104 );
changeAnime( spep_0 - 1 + 248, 1, 102 );
changeAnime( spep_0 - 1 + 284, 1, 100 );
changeAnime( spep_0 - 1 + 304, 1, 4 );
changeAnime( spep_0 - 1 + 308, 1, 2 );
changeAnime( spep_0 - 1 + 356, 1, 104 );
changeAnime( spep_0 - 1 + 376, 1, 117 );

setMoveKey( spep_0 - 1 + 90, 1, 104.9, 9.3 , 0 );
setMoveKey( spep_0 - 1 + 92, 1, 105, 10.5 , 0 );
setMoveKey( spep_0 - 1 + 94, 1, 105, 11.6 , 0 );
setMoveKey( spep_0 - 1 + 96, 1, 105.2, 12.7 , 0 );
setMoveKey( spep_0 - 1 + 99, 1, 105.3, 13.7 , 0 );
setMoveKey( spep_0 - 1 + 100, 1, 140, 12.2 , 0 );
setMoveKey( spep_0 - 1 + 101, 1, 140, 12.2 , 0 );
setMoveKey( spep_0 - 1 + 102, 1, 126.8, 11.4 , 0 );
setMoveKey( spep_0 - 1 + 103, 1, 126.8, 11.4 , 0 );
setMoveKey( spep_0 - 1 + 104, 1, 157.7, 36.3 , 0 );
setMoveKey( spep_0 - 1 + 105, 1, 157.7, 36.3 , 0 );
setMoveKey( spep_0 - 1 + 106, 1, 144.7, 71.2 , 0 );
setMoveKey( spep_0 - 1 + 107, 1, 144.7, 71.2 , 0 );
setMoveKey( spep_0 - 1 + 108, 1, 176.7, 90 , 0 );
setMoveKey( spep_0 - 1 + 109, 1, 176.7, 90 , 0 );
setMoveKey( spep_0 - 1 + 110, 1, 163.5, 77.6 , 0 );
setMoveKey( spep_0 - 1 + 111, 1, 163.5, 77.6 , 0 );
setMoveKey( spep_0 - 1 + 112, 1, 197.4, 95.2 , 0 );
setMoveKey( spep_0 - 1 + 113, 1, 197.4, 95.2 , 0 );
setMoveKey( spep_0 - 1 + 114, 1, 184.2, 129.7 , 0 );
setMoveKey( spep_0 - 1 + 116, 1, 185, 131.1 , 0 );
setMoveKey( spep_0 - 1 + 118, 1, 185.9, 132.5 , 0 );
setMoveKey( spep_0 - 1 + 120, 1, 186.8, 134 , 0 );
setMoveKey( spep_0 - 1 + 122, 1, 187.6, 135.4 , 0 );
setMoveKey( spep_0 - 1 + 124, 1, 188.4, 136.9 , 0 );
setMoveKey( spep_0 - 1 + 126, 1, 189.3, 138.3 , 0 );
setMoveKey( spep_0 - 1 + 128, 1, 190, 139.7 , 0 );
setMoveKey( spep_0 - 1 + 130, 1, 190.8, 141.1 , 0 );
setMoveKey( spep_0 - 1 + 132, 1, 191.7, 142.5 , 0 );
setMoveKey( spep_0 - 1 + 134, 1, 192.5, 143.9 , 0 );
setMoveKey( spep_0 - 1 + 136, 1, 193.3, 145.3 , 0 );
setMoveKey( spep_0 - 1 + 139, 1, 194.1, 146.6 , 0 );
setMoveKey( spep_0 - 1 + 140, 1, 11.7, 46.6 , 0 );
setMoveKey( spep_0 - 1 + 142, 1, 44.8, 30.2 , 0 );
setMoveKey( spep_0 - 1 + 144, 1, 78, 13.8 , 0 );
setMoveKey( spep_0 - 1 + 146, 1, 111.1, -2.7 , 0 );
setMoveKey( spep_0 - 1 + 148, 1, 144.3, -19.1 , 0 );
setMoveKey( spep_0 - 1 + 150, 1, 177.4, -35.6 , 0 );
setMoveKey( spep_0 - 1 + 152, 1, 210.6, -52 , 0 );
setMoveKey( spep_0 - 1 + 155, 1, 243.7, -68.5 , 0 );
setMoveKey( spep_0 - 1 + 156, 1, 265.8, -108 , 0 );
setMoveKey( spep_0 - 1 + 158, 1, 268.7, -108 , 0 );
setMoveKey( spep_0 - 1 + 160, 1, 265.8, -108 , 0 );
setMoveKey( spep_0 - 1 + 162, 1, 268.7, -108 , 0 );
setMoveKey( spep_0 - 1 + 164, 1, 265.8, -108 , 0 );
setMoveKey( spep_0 - 1 + 166, 1, 268.7, -108 , 0 );
setMoveKey( spep_0 - 1 + 168, 1, 265.8, -108 , 0 );
setMoveKey( spep_0 - 1 + 170, 1, 268.7, -108 , 0 );
setMoveKey( spep_0 - 1 + 190, 1, 268.7, -108 , 0 );
setMoveKey( spep_0 - 1 + 192, 1, 272.7, -105 , 0 );
setMoveKey( spep_0 - 1 + 194, 1, 265.7, -111 , 0 );
setMoveKey( spep_0 - 1 + 196, 1, 271.7, -111 , 0 );
setMoveKey( spep_0 - 1 + 198, 1, 265.7, -105 , 0 );
setMoveKey( spep_0 - 1 + 200, 1, 272.7, -105 , 0 );
setMoveKey( spep_0 - 1 + 202, 1, 265.7, -111 , 0 );
setMoveKey( spep_0 - 1 + 204, 1, 271.7, -111 , 0 );
setMoveKey( spep_0 - 1 + 206, 1, 265.7, -105 , 0 );
setMoveKey( spep_0 - 1 + 208, 1, 268.7, -108 , 0 );
setMoveKey( spep_0 - 1 + 213, 1, 268.7, -108 , 0 );
setMoveKey( spep_0 - 1 + 214, 1, 362, -556.5 , 0 );
setMoveKey( spep_0 - 1 + 216, 1, 332.3, -525.8 , 0 );
setMoveKey( spep_0 - 1 + 218, 1, 302.7, -495.1 , 0 );
setMoveKey( spep_0 - 1 + 220, 1, 273, -464.4 , 0 );
setMoveKey( spep_0 - 1 + 222, 1, 243.3, -433.8 , 0 );
setMoveKey( spep_0 - 1 + 224, 1, 213.6, -403.1 , 0 );
setMoveKey( spep_0 - 1 + 226, 1, 184, -372.4 , 0 );
setMoveKey( spep_0 - 1 + 228, 1, 181.3, -369.1 , 0 );
setMoveKey( spep_0 - 1 + 230, 1, 178.6, -365.7 , 0 );
setMoveKey( spep_0 - 1 + 232, 1, 176, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 234, 1, 185.6, -371.6 , 0 );
setMoveKey( spep_0 - 1 + 236, 1, 195.2, -380.8 , 0 );
setMoveKey( spep_0 - 1 + 238, 1, 204.8, -390 , 0 );
setMoveKey( spep_0 - 1 + 240, 1, 214.4, -399.2 , 0 );
setMoveKey( spep_0 - 1 + 242, 1, 224, -408.4 , 0 );
setMoveKey( spep_0 - 1 + 245, 1, 200, -408.4 , 0 );
setMoveKey( spep_0 - 1 + 246, 1, 189.5, -396.9 , 0 );
setMoveKey( spep_0 - 1 + 249, 1, 179, -385.4 , 0 );
setMoveKey( spep_0 - 1 + 250, 1, 168.5, -373.9 , 0 );
setMoveKey( spep_0 - 1 + 252, 1, 158, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 257, 1, 158, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 258, 1, 162, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 259, 1, 162, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 260, 1, 158, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 261, 1, 158, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 262, 1, 162, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 263, 1, 162, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 264, 1, 155, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 265, 1, 155, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 266, 1, 162, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 267, 1, 162, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 268, 1, 155, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 269, 1, 155, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 270, 1, 161, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 271, 1, 161, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 272, 1, 155, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 273, 1, 155, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 274, 1, 158, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 283, 1, 158, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 284, 1, -276, -434.4 , 0 );
setMoveKey( spep_0 - 1 + 286, 1, -252.1, -417.4 , 0 );
setMoveKey( spep_0 - 1 + 288, 1, -228.1, -400.4 , 0 );
setMoveKey( spep_0 - 1 + 290, 1, -204.1, -383.4 , 0 );
setMoveKey( spep_0 - 1 + 292, 1, -180.1, -366.4 , 0 );
setMoveKey( spep_0 - 1 + 294, 1, -178.7, -365 , 0 );
setMoveKey( spep_0 - 1 + 296, 1, -177.4, -363.7 , 0 );
setMoveKey( spep_0 - 1 + 298, 1, -176.1, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 300, 1, -197.1, -385.4 , 0 );
setMoveKey( spep_0 - 1 + 302, 1, -218.1, -408.4 , 0 );
setMoveKey( spep_0 - 1 + 305, 1, -190.1, -408.4 , 0 );
setMoveKey( spep_0 - 1 + 306, 1, -181.6, -396.9 , 0 );
setMoveKey( spep_0 - 1 + 309, 1, -173.1, -385.4 , 0 );
setMoveKey( spep_0 - 1 + 310, 1, -164.6, -373.9 , 0 );
setMoveKey( spep_0 - 1 + 312, 1, -156.1, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 320, 1, -156.1, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 322, 1, -152.1, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 324, 1, -159.1, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 326, 1, -153.1, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 328, 1, -159.1, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 330, 1, -152.1, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 332, 1, -159.1, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 334, 1, -153.1, -365.4 , 0 );
setMoveKey( spep_0 - 1 + 336, 1, -159.1, -359.4 , 0 );
setMoveKey( spep_0 - 1 + 338, 1, -156.1, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 355, 1, -156.1, -362.4 , 0 );
setMoveKey( spep_0 - 1 + 356, 1, 0, 0 , 0 );
setMoveKey( spep_0 - 1 + 358, 1, 7.9, 12.9 , 0 );
setMoveKey( spep_0 - 1 + 360, 1, 15.8, 25.8 , 0 );
setMoveKey( spep_0 - 1 + 362, 1, 23.7, 38.7 , 0 );
setMoveKey( spep_0 - 1 + 364, 1, 31.6, 51.6 , 0 );
setMoveKey( spep_0 - 1 + 366, 1, 39.5, 64.5 , 0 );
setMoveKey( spep_0 - 1 + 368, 1, 47.4, 77.4 , 0 );
setMoveKey( spep_0 - 1 + 370, 1, 55.3, 90.3 , 0 );
setMoveKey( spep_0 - 1 + 372, 1, 63.2, 103.2 , 0 );
setMoveKey( spep_0 - 1 + 375, 1, 71.1, 116.1 , 0 );
setMoveKey( spep_0 - 1 + 376, 1, 79, 129.1 , 0 );
setMoveKey( spep_0 - 1 + 378, 1, 86.9, 142 , 0 );
setMoveKey( spep_0 - 1 + 380, 1, 94.8, 154.9 , 0 );
setMoveKey( spep_0 - 1 + 382, 1, 102.7, 167.8 , 0 );
setMoveKey( spep_0 - 1 + 384, 1, 110.6, 180.7 , 0 );
setMoveKey( spep_0 - 1 + 386, 1, 118.5, 193.6 , 0 );
setMoveKey( spep_0 - 1 + 388, 1, 126.4, 206.5 , 0 );
setMoveKey( spep_0 - 1 + 390, 1, 134.3, 219.4 , 0 );
setMoveKey( spep_0 - 1 + 392, 1, 142.2, 232.3 , 0 );
setMoveKey( spep_0 - 1 + 394, 1, 150.1, 245.2 , 0 );
setMoveKey( spep_0 - 1 + 396, 1, 158, 258.1 , 0 );
setMoveKey( spep_0 - 1 + 398, 1, 158.9, 259.7 , 0 );
setMoveKey( spep_0 - 1 + 400, 1, 159.8, 261.2 , 0 );
setMoveKey( spep_0 - 1 + 402, 1, 160.7, 262.8 , 0 );
setMoveKey( spep_0 - 1 + 404, 1, 161.6, 264.3 , 0 );
setMoveKey( spep_0 - 1 + 406, 1, 162.4, 265.9 , 0 );
setMoveKey( spep_0 - 1 + 408, 1, 163.3, 267.4 , 0 );
setMoveKey( spep_0 - 1 + 410, 1, 164.2, 269 , 0 );
setMoveKey( spep_0 - 1 + 412, 1, 165.1, 270.5 , 0 );
setMoveKey( spep_0 - 1 + 414, 1, 165.1, 270.5 , 0 );

setScaleKey( spep_0 - 1 + 90, 1, 1.92, 1.92 );
setScaleKey( spep_0 - 1 + 92, 1, 1.89, 1.89 );
setScaleKey( spep_0 - 1 + 94, 1, 1.86, 1.86 );
setScaleKey( spep_0 - 1 + 96, 1, 1.83, 1.83 );
setScaleKey( spep_0 - 1 + 99, 1, 1.8, 1.8 );
setScaleKey( spep_0 - 1 + 100, 1, 1.62, 1.62 );
setScaleKey( spep_0 - 1 + 101, 1, 1.62, 1.62 );
setScaleKey( spep_0 - 1 + 102, 1, 1.36, 1.36 );
setScaleKey( spep_0 - 1 + 103, 1, 1.36, 1.36 );
setScaleKey( spep_0 - 1 + 104, 1, 1.12, 1.12 );
setScaleKey( spep_0 - 1 + 105, 1, 1.12, 1.12 );
setScaleKey( spep_0 - 1 + 106, 1, 1.05, 1.05 );
setScaleKey( spep_0 - 1 + 107, 1, 1.05, 1.05 );
setScaleKey( spep_0 - 1 + 108, 1, 0.98, 0.98 );
setScaleKey( spep_0 - 1 + 109, 1, 0.98, 0.98 );
setScaleKey( spep_0 - 1 + 110, 1, 0.91, 0.91 );
setScaleKey( spep_0 - 1 + 111, 1, 0.91, 0.91 );
setScaleKey( spep_0 - 1 + 112, 1, 0.84, 0.84 );
setScaleKey( spep_0 - 1 + 113, 1, 0.84, 0.84 );
setScaleKey( spep_0 - 1 + 114, 1, 0.77, 0.77 );
setScaleKey( spep_0 - 1 + 116, 1, 0.76, 0.76 );
setScaleKey( spep_0 - 1 + 118, 1, 0.75, 0.75 );
setScaleKey( spep_0 - 1 + 120, 1, 0.74, 0.74 );
setScaleKey( spep_0 - 1 + 122, 1, 0.73, 0.73 );
setScaleKey( spep_0 - 1 + 124, 1, 0.72, 0.72 );
setScaleKey( spep_0 - 1 + 126, 1, 0.71, 0.71 );
setScaleKey( spep_0 - 1 + 128, 1, 0.7, 0.7 );
setScaleKey( spep_0 - 1 + 130, 1, 0.69, 0.69 );
setScaleKey( spep_0 - 1 + 132, 1, 0.68, 0.68 );
setScaleKey( spep_0 - 1 + 134, 1, 0.67, 0.67 );
setScaleKey( spep_0 - 1 + 136, 1, 0.66, 0.66 );
setScaleKey( spep_0 - 1 + 139, 1, 0.66, 0.66 );
setScaleKey( spep_0 - 1 + 140, 1, 0.54, 0.54 );
setScaleKey( spep_0 - 1 + 142, 1, 0.69, 0.69 );
setScaleKey( spep_0 - 1 + 144, 1, 0.83, 0.83 );
setScaleKey( spep_0 - 1 + 146, 1, 0.97, 0.97 );
setScaleKey( spep_0 - 1 + 148, 1, 1.12, 1.12 );
setScaleKey( spep_0 - 1 + 150, 1, 1.26, 1.26 );
setScaleKey( spep_0 - 1 + 152, 1, 1.41, 1.41 );
setScaleKey( spep_0 - 1 + 155, 1, 1.55, 1.55 );
setScaleKey( spep_0 - 1 + 156, 1, 3, 3 );
setScaleKey( spep_0 - 1 + 158, 1, 3.02, 3.02 );
setScaleKey( spep_0 - 1 + 160, 1, 3, 3 );
setScaleKey( spep_0 - 1 + 162, 1, 3.02, 3.02 );
setScaleKey( spep_0 - 1 + 164, 1, 3, 3 );
setScaleKey( spep_0 - 1 + 166, 1, 3.02, 3.02 );
setScaleKey( spep_0 - 1 + 168, 1, 3, 3 );
setScaleKey( spep_0 - 1 + 170, 1, 3.02, 3.02 );
setScaleKey( spep_0 - 1 + 213, 1, 3.02, 3.02 );
setScaleKey( spep_0 - 1 + 214, 1, 6.96, 6.96 );
setScaleKey( spep_0 - 1 + 216, 1, 6.64, 6.64 );
setScaleKey( spep_0 - 1 + 218, 1, 6.31, 6.31 );
setScaleKey( spep_0 - 1 + 220, 1, 5.98, 5.98 );
setScaleKey( spep_0 - 1 + 222, 1, 5.65, 5.65 );
setScaleKey( spep_0 - 1 + 224, 1, 5.33, 5.33 );
setScaleKey( spep_0 - 1 + 226, 1, 5, 5 );
setScaleKey( spep_0 - 1 + 228, 1, 4.93, 4.93 );
setScaleKey( spep_0 - 1 + 230, 1, 4.87, 4.87 );
setScaleKey( spep_0 - 1 + 232, 1, 4.8, 4.8 );
setScaleKey( spep_0 - 1 + 234, 1, 4.92, 4.92 );
setScaleKey( spep_0 - 1 + 236, 1, 5.04, 5.04 );
setScaleKey( spep_0 - 1 + 238, 1, 5.16, 5.16 );
setScaleKey( spep_0 - 1 + 240, 1, 5.28, 5.28 );
setScaleKey( spep_0 - 1 + 242, 1, 5.4, 5.4 );
setScaleKey( spep_0 - 1 + 245, 1, 5.4, 5.4 );
setScaleKey( spep_0 - 1 + 246, 1, 5.25, 5.25 );
setScaleKey( spep_0 - 1 + 249, 1, 5.1, 5.1 );
setScaleKey( spep_0 - 1 + 250, 1, 4.95, 4.95 );
setScaleKey( spep_0 - 1 + 252, 1, 4.8, 4.8 );
setScaleKey( spep_0 - 1 + 283, 1, 4.8, 4.8 );
setScaleKey( spep_0 - 1 + 284, 1, 5.73, 5.73 );
setScaleKey( spep_0 - 1 + 286, 1, 5.53, 5.53 );
setScaleKey( spep_0 - 1 + 288, 1, 5.32, 5.32 );
setScaleKey( spep_0 - 1 + 290, 1, 5.12, 5.12 );
setScaleKey( spep_0 - 1 + 292, 1, 4.92, 4.92 );
setScaleKey( spep_0 - 1 + 294, 1, 4.88, 4.88 );
setScaleKey( spep_0 - 1 + 296, 1, 4.84, 4.84 );
setScaleKey( spep_0 - 1 + 298, 1, 4.8, 4.8 );
setScaleKey( spep_0 - 1 + 300, 1, 5.1, 5.1 );
setScaleKey( spep_0 - 1 + 302, 1, 5.4, 5.4 );
setScaleKey( spep_0 - 1 + 305, 1, 5.4, 5.4 );
setScaleKey( spep_0 - 1 + 306, 1, 5.25, 5.25 );
setScaleKey( spep_0 - 1 + 309, 1, 5.1, 5.1 );
setScaleKey( spep_0 - 1 + 310, 1, 4.95, 4.95 );
setScaleKey( spep_0 - 1 + 312, 1, 4.8, 4.8 );
setScaleKey( spep_0 - 1 + 355, 1, 4.8, 4.8 );
setScaleKey( spep_0 - 1 + 356, 1, 3, 3 );
setScaleKey( spep_0 - 1 + 358, 1, 2.89, 2.89 );
setScaleKey( spep_0 - 1 + 360, 1, 2.78, 2.78 );
setScaleKey( spep_0 - 1 + 362, 1, 2.68, 2.68 );
setScaleKey( spep_0 - 1 + 364, 1, 2.57, 2.57 );
setScaleKey( spep_0 - 1 + 366, 1, 2.46, 2.46 );
setScaleKey( spep_0 - 1 + 368, 1, 2.35, 2.35 );
setScaleKey( spep_0 - 1 + 370, 1, 2.24, 2.24 );
setScaleKey( spep_0 - 1 + 372, 1, 2.13, 2.13 );
setScaleKey( spep_0 - 1 + 375, 1, 2.03, 2.03 );
setScaleKey( spep_0 - 1 + 376, 1, 1.92, 1.92 );
setScaleKey( spep_0 - 1 + 378, 1, 1.81, 1.81 );
setScaleKey( spep_0 - 1 + 380, 1, 1.7, 1.7 );
setScaleKey( spep_0 - 1 + 382, 1, 1.59, 1.59 );
setScaleKey( spep_0 - 1 + 384, 1, 1.48, 1.48 );
setScaleKey( spep_0 - 1 + 386, 1, 1.38, 1.38 );
setScaleKey( spep_0 - 1 + 388, 1, 1.27, 1.27 );
setScaleKey( spep_0 - 1 + 390, 1, 1.16, 1.16 );
setScaleKey( spep_0 - 1 + 392, 1, 1.05, 1.05 );
setScaleKey( spep_0 - 1 + 394, 1, 0.94, 0.94 );
setScaleKey( spep_0 - 1 + 396, 1, 0.83, 0.83 );
setScaleKey( spep_0 - 1 + 398, 1, 0.82, 0.82 );
setScaleKey( spep_0 - 1 + 400, 1, 0.8, 0.8 );
setScaleKey( spep_0 - 1 + 402, 1, 0.79, 0.79 );
setScaleKey( spep_0 - 1 + 404, 1, 0.77, 0.77 );
setScaleKey( spep_0 - 1 + 406, 1, 0.75, 0.75 );
setScaleKey( spep_0 - 1 + 408, 1, 0.74, 0.74 );
setScaleKey( spep_0 - 1 + 410, 1, 0.72, 0.72 );
setScaleKey( spep_0 - 1 + 412, 1, 0.7, 0.7 );
setScaleKey( spep_0 - 1 + 414, 1, 0.7, 0.7 );

setRotateKey( spep_0 - 1 + 90, 1, 0 );
setRotateKey( spep_0 - 1 + 101, 1, 0 );
setRotateKey( spep_0 - 1 + 102, 1, 3.2 );
setRotateKey( spep_0 - 1 + 103, 1, 3.2 );
setRotateKey( spep_0 - 1 + 104, 1, 6.4 );
setRotateKey( spep_0 - 1 + 105, 1, 6.4 );
setRotateKey( spep_0 - 1 + 106, 1, 9.7 );
setRotateKey( spep_0 - 1 + 107, 1, 9.7 );
setRotateKey( spep_0 - 1 + 108, 1, 12.9 );
setRotateKey( spep_0 - 1 + 109, 1, 12.9 );
setRotateKey( spep_0 - 1 + 110, 1, 16.1 );
setRotateKey( spep_0 - 1 + 111, 1, 16.1 );
setRotateKey( spep_0 - 1 + 112, 1, 19.3 );
setRotateKey( spep_0 - 1 + 113, 1, 19.3 );
setRotateKey( spep_0 - 1 + 114, 1, 22.5 );
setRotateKey( spep_0 - 1 + 116, 1, 22.9 );
setRotateKey( spep_0 - 1 + 118, 1, 23.2 );
setRotateKey( spep_0 - 1 + 120, 1, 23.6 );
setRotateKey( spep_0 - 1 + 122, 1, 23.9 );
setRotateKey( spep_0 - 1 + 124, 1, 24.3 );
setRotateKey( spep_0 - 1 + 126, 1, 24.6 );
setRotateKey( spep_0 - 1 + 128, 1, 25 );
setRotateKey( spep_0 - 1 + 130, 1, 25.3 );
setRotateKey( spep_0 - 1 + 132, 1, 25.7 );
setRotateKey( spep_0 - 1 + 134, 1, 26 );
setRotateKey( spep_0 - 1 + 136, 1, 26.4 );
setRotateKey( spep_0 - 1 + 139, 1, 26.7 );
setRotateKey( spep_0 - 1 + 140, 1, 4.2 );
setRotateKey( spep_0 - 1 + 142, 1, 6.3 );
setRotateKey( spep_0 - 1 + 144, 1, 8.4 );
setRotateKey( spep_0 - 1 + 146, 1, 10.6 );
setRotateKey( spep_0 - 1 + 148, 1, 12.7 );
setRotateKey( spep_0 - 1 + 150, 1, 14.8 );
setRotateKey( spep_0 - 1 + 152, 1, 16.9 );
setRotateKey( spep_0 - 1 + 155, 1, 19 );
setRotateKey( spep_0 - 1 + 156, 1, 0 );
setRotateKey( spep_0 - 1 + 355, 1, 0 );
setRotateKey( spep_0 - 1 + 356, 1, -19.5 );
setRotateKey( spep_0 - 1 + 414, 1, -19.5 );

setBlendColor( spep_0 - 1 + 214, 1, 3, 0, 0, 0, 0.3);
setBlendColor( spep_0 - 1 + 245, 1, 3, 0, 0, 0, 0.3);
setBlendColor( spep_0 - 1 + 246, 1, 3, 0, 0, 0, 0.2);
setBlendColor( spep_0 - 1 + 249, 1, 3, 0, 0, 0, 0.2);
setBlendColor( spep_0 - 1 + 249, 1, 3, 0, 0, 0, 0.1);
setBlendColor( spep_0 - 1 + 249, 1, 3, 0, 0, 0, 0.1);
setBlendColor( spep_0 - 1 + 252, 1, 3, 0, 0, 0, 0);
setBlendColor( spep_0 - 1 + 283, 1, 3, 0, 0, 0, 0);
setBlendColor( spep_0 - 1 + 284, 1, 3, 0, 0, 0, 0.3);
setBlendColor( spep_0 - 1 + 305, 1, 3, 0, 0, 0, 0.3);
setBlendColor( spep_0 - 1 + 306, 1, 3, 0, 0, 0, 0.2);
setBlendColor( spep_0 - 1 + 309, 1, 3, 0, 0, 0, 0.2);
setBlendColor( spep_0 - 1 + 310, 1, 3, 0, 0, 0, 0.1);
setBlendColor( spep_0 - 1 + 311, 1, 3, 0, 0, 0, 0.1);
setBlendColor( spep_0 - 1 + 312, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--オーラ
SE008 = playSeVer2( spep_0 + 64, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE008, 40 );
SE009 = playSeVer2( spep_0 + 88, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE009, 40 );

--パンチ
SE010 = playSeVer2( spep_0 + 84, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 96, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 96, 1359, "", 0, 0, 0, -1);

--環境音
SE013 = playSeVer2( spep_0 + 110, 1269, "",spep_0 + 550, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 110, SE013, 32 );

--オーラ
SE014 = playSeVer2( spep_0 + 112, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE014, 40 );
SE015 = playSeVer2( spep_0 + 136, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE015, 40 );

--敵踏みとどまる
SE016 = playSeVer2( spep_0 + 148, 1013, "", 0, 0, 0, -1);

--オーラ
SE017 = playSeVer2( spep_0 + 160, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE017, 40 );

--瞬間移動１
SE018 = playSeVer2( spep_0 + 164, 1109, "", 0, 0, 0, -1);
setPitch( spep_0 + 164, SE018, 200 );
setTimeStretch( SE018, 1.13, 30, 4 );

SE019 = playSeVer2( spep_0 + 164, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE019, 59 );

--瞬間移動２
SE020 = playSeVer2( spep_0 + 226, 1109, "", 0, 0, 0, -1);
setPitch( spep_0 + 226, SE020, 200 );
setTimeStretch( SE020, 1.13, 30, 4 );
SE021 = playSeVer2( spep_0 + 226, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE021, 63 );

--瞬間移動３
SE022 = playSeVer2( spep_0 + 258, 1109, "", 0, 0, 0, -1);
setPitch( spep_0 + 258, SE022, 200 );
setTimeStretch( SE022, 1.13, 30, 4 );
SE023 = playSeVer2( spep_0 + 258, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 258, SE023, 63 );

--瞬間移動４
SE024 = playSeVer2( spep_0 + 304, 1109, "", 0, 0, 0, -1);
setPitch( spep_0 + 304, SE024, 200 );
setTimeStretch( SE024, 1.13, 30, 4 );
SE025 = playSeVer2( spep_0 + 304, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE025, 63 );

--瞬間移動５
SE026 = playSeVer2( spep_0 + 380, 1109, "", 0, 0, 0, -1);
setPitch( spep_0 + 380, SE026, 200 );
setTimeStretch( SE026, 1.13, 30, 4 );
SE027 = playSeVer2( spep_0 + 380, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 380, SE027, 63 );

--かめはめ波溜め
SE028 = playSeVer2( spep_0 + 380, 1210, "",spep_0 + 540, 0, 18, 0.6);
SE029 = playSeVer2( spep_0 + 406, 1209, "",spep_0 + 540, 0, 18, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 518;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_c + 0, SE_05 );

--発射前溜め
SE031 = playSeVer2( spep_c + 84, 1210, "",spep_c + 150, 4, 28, 0.6);
setStartTimeMs( SE031,  2483 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_c + 94;


-------------------------------------------------
-- フィニッシュまで
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- フィニッシュまで　前面(ef_003)
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 328, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 328, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 328, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 328, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- フィニッシュまで　背面(ef_004)
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 328, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 328, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 328, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 328, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 328 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 白背景フェード ** --
entryFadeBg( spep_1 + 24, 0, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white bg fade

-- ** 敵キャラクター ** --
setDisp( spep_1 - 1 + 104, 1, 1 );
setDisp( spep_1 - 1 + 182, 1, 0 );

changeAnime( spep_1 - 1 + 104, 1, 104 );
changeAnime( spep_1 - 1 + 156, 1, 108 );

setMoveKey( spep_1 - 1 + 104, 1, 96.1, 183.5 , 0 );
setMoveKey( spep_1 - 1 + 106, 1, 92, 189.5 , 0 );
setMoveKey( spep_1 - 1 + 108, 1, 100, 179.4 , 0 );
setMoveKey( spep_1 - 1 + 110, 1, 98, 187.1 , 0 );
setMoveKey( spep_1 - 1 + 112, 1, 93.9, 178.8 , 0 );
setMoveKey( spep_1 - 1 + 114, 1, 99.8, 182.3 , 0 );
setMoveKey( spep_1 - 1 + 116, 1, 95.6, 181.7 , 0 );
setMoveKey( spep_1 - 1 + 118, 1, 91.4, 186.9 , 0 );
setMoveKey( spep_1 - 1 + 120, 1, 99.2, 176 , 0 );
setMoveKey( spep_1 - 1 + 122, 1, 97, 182.8 , 0 );
setMoveKey( spep_1 - 1 + 124, 1, 92.7, 173.5 , 0 );
setMoveKey( spep_1 - 1 + 126, 1, 98.3, 175.9 , 0 );
setMoveKey( spep_1 - 1 + 128, 1, 93.9, 174.1 , 0 );
setMoveKey( spep_1 - 1 + 130, 1, 89.4, 177.9 , 0 );
setMoveKey( spep_1 - 1 + 132, 1, 96.8, 165.4 , 0 );
setMoveKey( spep_1 - 1 + 134, 1, 94.1, 170.5 , 0 );
setMoveKey( spep_1 - 1 + 136, 1, 89.3, 159 , 0 );
setMoveKey( spep_1 - 1 + 138, 1, 94.4, 158.9 , 0 );
setMoveKey( spep_1 - 1 + 140, 1, 89.2, 154 , 0 );
setMoveKey( spep_1 - 1 + 142, 1, 83.8, 153.9 , 0 );
setMoveKey( spep_1 - 1 + 144, 1, 90.1, 136.3 , 0 );
setMoveKey( spep_1 - 1 + 146, 1, 85.7, 134.1 , 0 );
setMoveKey( spep_1 - 1 + 148, 1, 78.2, 110.9 , 0 );
setMoveKey( spep_1 - 1 + 150, 1, 76.4, 81.4 , 0 );
setMoveKey( spep_1 - 1 + 152, 1, 63.6, 43.1 , 0 );
setMoveKey( spep_1 - 1 + 155, 1, 54.2, 25.8 , 0 );
setMoveKey( spep_1 - 1 + 156, 1, 59.6, 4.7 , 0 );
setMoveKey( spep_1 - 1 + 158, 1, 56.5, 7.8 , 0 );
setMoveKey( spep_1 - 1 + 160, 1, 52.1, -2 , 0 );
setMoveKey( spep_1 - 1 + 162, 1, 58, 1.5 , 0 );
setMoveKey( spep_1 - 1 + 164, 1, 57.6, 3.7 , 0 );
setMoveKey( spep_1 - 1 + 166, 1, 57.2, 11.9 , 0 );
setMoveKey( spep_1 - 1 + 168, 1, 68.8, 4.1 , 0 );
setMoveKey( spep_1 - 1 + 170, 1, 70.4, 14.3 , 0 );
setMoveKey( spep_1 - 1 + 172, 1, 70, 8.5 , 0 );
setMoveKey( spep_1 - 1 + 174, 1, 79.5, 14.7 , 0 );
setMoveKey( spep_1 - 1 + 176, 1, 79.1, 16.8 , 0 );
setMoveKey( spep_1 - 1 + 178, 1, 78.7, 25 , 0 );
setMoveKey( spep_1 - 1 + 180, 1, 90.3, 17.2 , 0 );
setMoveKey( spep_1 - 1 + 182, 1, 90.3, 17.2 , 0 );

setScaleKey( spep_1 - 1 + 104, 1, 0.6, 0.6 );
setScaleKey( spep_1 - 1 + 108, 1, 0.6, 0.6 );
setScaleKey( spep_1 - 1 + 110, 1, 0.61, 0.61 );
setScaleKey( spep_1 - 1 + 112, 1, 0.61, 0.61 );
setScaleKey( spep_1 - 1 + 114, 1, 0.62, 0.62 );
setScaleKey( spep_1 - 1 + 116, 1, 0.62, 0.62 );
setScaleKey( spep_1 - 1 + 118, 1, 0.64, 0.64 );
setScaleKey( spep_1 - 1 + 120, 1, 0.65, 0.65 );
setScaleKey( spep_1 - 1 + 122, 1, 0.66, 0.66 );
setScaleKey( spep_1 - 1 + 124, 1, 0.68, 0.68 );
setScaleKey( spep_1 - 1 + 126, 1, 0.7, 0.7 );
setScaleKey( spep_1 - 1 + 128, 1, 0.72, 0.72 );
setScaleKey( spep_1 - 1 + 130, 1, 0.75, 0.75 );
setScaleKey( spep_1 - 1 + 132, 1, 0.79, 0.79 );
setScaleKey( spep_1 - 1 + 134, 1, 0.82, 0.82 );
setScaleKey( spep_1 - 1 + 136, 1, 0.87, 0.87 );
setScaleKey( spep_1 - 1 + 138, 1, 0.92, 0.92 );
setScaleKey( spep_1 - 1 + 140, 1, 0.99, 0.99 );
setScaleKey( spep_1 - 1 + 142, 1, 1.07, 1.07 );
setScaleKey( spep_1 - 1 + 144, 1, 1.17, 1.17 );
setScaleKey( spep_1 - 1 + 146, 1, 1.3, 1.3 );
setScaleKey( spep_1 - 1 + 148, 1, 1.5, 1.5 );
setScaleKey( spep_1 - 1 + 150, 1, 1.95, 1.95 );
setScaleKey( spep_1 - 1 + 152, 1, 2.45, 2.45 );
setScaleKey( spep_1 - 1 + 155, 1, 2.76, 2.76 );
setScaleKey( spep_1 - 1 + 156, 1, 2.91, 2.91 );
setScaleKey( spep_1 - 1 + 158, 1, 2.97, 2.97 );
setScaleKey( spep_1 - 1 + 160, 1, 2.99, 2.99 );
setScaleKey( spep_1 - 1 + 162, 1, 3, 3 );
setScaleKey( spep_1 - 1 + 182, 1, 3, 3 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 - 1 + 182, 1, 0 );

-- ** 音 ** --
--かめはめ波発射
SE033 = playSeVer2( spep_1 + 28, 1213, "",spep_1 + 198, 0, 20, -1);
SE034 = playSeVer2( spep_1 + 28, 1161, "",spep_1 + 198, 0, 20, -1);
SE035 = playSeVer2( spep_1 + 28, 1211, "",spep_1 + 198, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 28, SE035, 158 );
SE036 = playSeVer2( spep_1 + 28, 1133, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_1 + 54, 1258, "", 0, 0, 0, -1);

----気弾飛んでいく
SE038 = playSeVer2( spep_1 + 104, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 104, SE038, 178 );
SE039 = playSeVer2( spep_1 + 104, 1021, "", 0, 0, 0, -1);

----敵ヒット
SE040 = playSeVer2( spep_1 + 148, 1011, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 148, 1024, "", 0, 0, 0, -1);

----爆発
SE042 = playSeVer2( spep_1 + 186, 1067, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 186, 1159, "", 0, 0, 0, -1);

----爆風
SE044 = playSeVer2( spep_1 + 212, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 212, SE044, 90 );
setPitch( spep_1 + 212, SE044, -500 );
setTimeStretch( SE044, 0.67, 30, 4 );
SE045 = playSeVer2( spep_1 + 226, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 226, SE045, 90 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 210); -- ダメージ表示フレーム
endPhase( spep_1 + 318); -- 終了フレーム
end