--4025590:LR_オレンジピッコロ（巨大化）_必殺技：激烈覚醒乱舞
--sp_effect_b4_00272
--sp2499

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
SP_01  = 161252; --開幕〜カードカットイン ef_001 ef_002とセット。敵の手前に配置。
SP_01b = 161254; --開幕〜カードカットイン ef_002 ef_001、ef_001rとセット。敵の奥に配置。
SP_02  = 161255; --柱を倒す〜フィニッシュ ef_003 ef_004とセット。敵の手前に配置。
SP_02b = 161257; --柱を倒す〜フィニッシュ ef_004 ef_003、ef_003rとセット。敵の奥に配置。反転なし。

--エフェクト(てき)
SP_01r = 161253; --開幕〜カードカットイン(敵側) ef_001r ef_002とセット。敵の手前に配置。
SP_02r = 161256; --柱を倒す〜フィニッシュ(敵側) ef_003r ef_004とセット。敵の手前に配置。反転なし。


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

ENABLE_AUTO_TIME_STRETCH(0.8);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜カードカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001 ef_002とセット。敵の手前に配置。
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + 296, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + 296, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + 296, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + 296 -2, base_0f, 255);
setEffAlphaKey( spep_0 + 296 -1, base_0f, 255);
setEffAlphaKey( spep_0 + 296, base_0f, 0);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_002 ef_001、ef_001rとセット。敵の奥に配置。
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 296, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + 296, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 296, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 296 -2, base_0b, 255);
setEffAlphaKey( spep_0 + 296 -1, base_0b, 255);
setEffAlphaKey( spep_0 + 296, base_0b, 0);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 22;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 80;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 515); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 515 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 515 , 0);
setEffMoveKey( spep_x + 84, ctgogo, (cx+40), 515 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 296 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 36, 1, 0 );
setDisp( spep_0 -3 + 178, 1, 1 );

changeAnime( spep_0 + 0, 1, 118 );
changeAnime( spep_0 -3 + 178, 1, 117 );

setMoveKey( spep_0 + 0, 1, 155.1, 26.6 , 0 );
setMoveKey( spep_0 + 1, 1, 155.1, 26.7 , 0 );
setMoveKey( spep_0 + 2, 1, 155.1, 26.7 , 0 );
setMoveKey( spep_0 + 3, 1, 155.6, 26.8 , 0 );
setMoveKey( spep_0 + 4, 1, 155.6, 26.8 , 0 );
setMoveKey( spep_0 + 5, 1, 157, 27.2 , 0 );
setMoveKey( spep_0 + 6, 1, 157, 27.2 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 159.3, 27.8 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 162.6, 28.7 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 166.9, 29.8 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 172.1, 31.3 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 214.6, 43.1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 261.2, 56.1 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 311.9, 70.2 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 366.7, 85.4 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 425.4, 101.7 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 488.3, 119.2 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 555.2, 137.8 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 626.1, 157.6 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 701.1, 178.5 , 0 );
setMoveKey( spep_0 -3 + 35, 1, 701.1, 178.5 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 780, 200.4 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 135.6, 58.5 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 137.2, 63.8 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 139, 68.9 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 141.2, 73.8 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 143.6, 78.4 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 153.5, 75.6 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 135.6, 97.6 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 142, 81.2 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 168.7, 101.5 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 164.7, 91.3 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 176.3, 108.6 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 172.8, 98 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 172.1, 108.3 , 0 );

setScaleKey( spep_0 + 0, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 1, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 2, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 3, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 4, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 5, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 6, 1, 2.7, 2.7 );
setScaleKey( spep_0 -3 + 10, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 12, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 14, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 16, 1, 2.74, 2.74 );
setScaleKey( spep_0 -3 + 18, 1, 2.84, 2.84 );
setScaleKey( spep_0 -3 + 20, 1, 2.94, 2.94 );
setScaleKey( spep_0 -3 + 22, 1, 3.06, 3.06 );
setScaleKey( spep_0 -3 + 24, 1, 3.19, 3.19 );
setScaleKey( spep_0 -3 + 26, 1, 3.33, 3.33 );
setScaleKey( spep_0 -3 + 28, 1, 3.47, 3.47 );
setScaleKey( spep_0 -3 + 30, 1, 3.63, 3.63 );
setScaleKey( spep_0 -3 + 32, 1, 3.79, 3.79 );
setScaleKey( spep_0 -3 + 34, 1, 3.97, 3.97 );
setScaleKey( spep_0 -3 + 35, 1, 3.97, 3.97 );
setScaleKey( spep_0 -3 + 36, 1, 4.15, 4.15 );
setScaleKey( spep_0 -3 + 178, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 182, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 184, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 190, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 192, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 200, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 202, 1, 0.63, 0.63 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 36, 1, 0 );
setRotateKey( spep_0 -3 + 178, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_0 + 24, 1018, "", 0, 0, 0, -1);

--気弾溜め・走る
SE003 = playSeVer2( spep_0 + 24, 1222, "",spep_0 + 96, 0, 34, 0.5);
SE004 = playSeVer2( spep_0 + 24, 1225, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 24, 1282, "", spep_0 + 158, 0, 10, 0.5);
setSeVolumeByWorkId( spep_0 + 24, SE005, 76 );
setTimeStretch( SE005, 1.43, 30, 4 );
SE006_2 = playSeVer2( spep_0 + 24, 1394, "", spep_0 + 242, 0, 14, 0.5);
SE007 = playSeVer2( spep_0 + 30, 1262, "", spep_0 + 158, 0, 10, -1);
SE009_2 = playSeVer2( spep_0 + 130, 1395, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE009_2, 150 );
SE012_2 = playSeVer2( spep_0 + 160, 1395, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE012_2, 150 );
SE015_2 = playSeVer2( spep_0 + 178, 1395, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE015_2, 150 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 201; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006_2, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009_2, 0);
stopSe( SP_dodge - 12, SE012_2, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015_2, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 176.8, 111.1 , 0 );
setMoveKey( SP_dodge + 2, 1, 181.7, 113.8 , 0 );
setMoveKey( SP_dodge + 4, 1, 186.9, 116.2 , 0 );
setMoveKey( SP_dodge + 6, 1, 192.3, 118.5 , 0 );
setMoveKey( SP_dodge + 8, 1, 198, 120.6 , 0 );
setMoveKey( SP_dodge + 10, 1, 203.8, 122.5 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.63, 0.63 );
setScaleKey( SP_dodge + 2, 1, 0.62, 0.62 );
setScaleKey( SP_dodge + 10, 1, 0.62, 0.62 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 ); 

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
setDisp( spep_0 -3 + 259, 1, 0 );

changeAnime( spep_0 -3 + 228, 1, 106 );
changeAnime( spep_0 -3 + 248, 1, 108 );

setMoveKey( spep_0 -3 + 204, 1, 176.8, 111.1 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 181.7, 113.8 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 186.9, 116.2 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 192.3, 118.5 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 198, 120.6 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 203.8, 122.5 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 209.9, 124.3 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 216.3, 125.8 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 222.8, 127.2 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 229.5, 128.3 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 236.2, 130 , 0 );
setMoveKey( spep_0 -3 + 227, 1, 243, 131.6 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 249.9, 125.4 , 0 );
setMoveKey( spep_0 -3 + 229, 1, 249.9, 125.4 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 235.3, 126.1 , 0 );
setMoveKey( spep_0 -3 + 231, 1, 235.3, 126.1 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 220.5, 126.6 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 220.5, 126.6 , 0 );
setMoveKey( spep_0 -3 + 243, 1, 220.5, 126.6 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 175.9, 106.2 , 0 );
setMoveKey( spep_0 -3 + 247, 1, 173.5, 66.3 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 216.6, 27.5 , 0 );
setMoveKey( spep_0 -3 + 249, 1, 216.6, 27.5 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 293.8, 36.8 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 340.6, 11.1 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 381.3, -19.2 , 0 );
setMoveKey( spep_0 -3 + 255, 1, 381.3, -19.2 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 437.9, -34.8 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 484, -68.5 , 0 );
setMoveKey( spep_0 -3 + 259, 1, 484, -68.5 , 0 );

setScaleKey( spep_0 -3 + 208, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 210, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 218, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 220, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 227, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 228, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 244, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 247, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 248, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 249, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 250, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 252, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 254, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 255, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 256, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 259, 1, 0.6, 0.6 );

setRotateKey( spep_0 -3 + 227, 1, 0 );
setRotateKey( spep_0 -3 + 228, 1, -33.8 );
setRotateKey( spep_0 -3 + 229, 1, -33.8 );
setRotateKey( spep_0 -3 + 230, 1, -33.9 );
setRotateKey( spep_0 -3 + 244, 1, -33.9 );
setRotateKey( spep_0 -3 + 247, 1, -33.8 );
setRotateKey( spep_0 -3 + 248, 1, 17.3 );
setRotateKey( spep_0 -3 + 249, 1, 17.3 );
setRotateKey( spep_0 -3 + 250, 1, 18.8 );
setRotateKey( spep_0 -3 + 252, 1, 19.8 );
setRotateKey( spep_0 -3 + 254, 1, 20.9 );
setRotateKey( spep_0 -3 + 255, 1, 20.9 );
setRotateKey( spep_0 -3 + 256, 1, 22 );
setRotateKey( spep_0 -3 + 258, 1, 23 );
setRotateKey( spep_0 -3 + 259, 1, 23 );

-- ** 音 ** --
--振りかぶる
SE018 = playSeVer2( spep_0 + 206, 1116, "",spep_0 + 244, 0, 14, -1);
SE019 = playSeVer2( spep_0 + 206, 1004, "", 0, 0, 0, -1);

--気弾当てる
SE020 = playSeVer2( spep_0 + 226, 1023, "",spep_0 + 312, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 226, SE020, 71 );
SE021 = playSeVer2( spep_0 + 226, 1371, "",spep_0 + 286, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 226, SE021, 56 );
SE022 = playSeVer2( spep_0 + 234, 1024, "",spep_0 + 312, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 234, SE022, 82 );
SE023 = playSeVer2( spep_0 + 234, 1068, "",spep_0 + 312, 0, 12, -1);
SE024 = playSeVer2( spep_0 + 234, 1122, "",spep_0 + 318, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 234, SE024, 78 );
setPitch( spep_0 + 234, SE024, 700 );
setTimeStretch( SE024, 1.47, 30, 4 );

-- ** 次の準備 ** --
spep_c = spep_0 + 296;


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

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_1 = spep_c + 94;


-------------------------------------------------
-- 柱を倒す〜フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_003 ef_004とセット。敵の手前に配置。
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 432, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 432, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 432, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 432, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_004 ef_003、ef_003rとセット。敵の奥に配置。反転なし。
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 432, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 432, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 432, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 432, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 432 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_1 -3 + 160, 1, 1 );
setDisp( spep_1 -3 + 266, 1, 0 );

changeAnime( spep_1 -3 + 160, 1, 118 );

setBlendColor( spep_1 -3 + 160, 1, 3, 0, 0, 0, 0.65 );
setBlendColor( spep_1 -3 + 266 -1, 1, 3, 0, 0, 0, 0.65 );
setBlendColor( spep_1 -3 + 266, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_1 -3 + 160, 1, 100.7, -695 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 110.2, -703.8 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 107.1, -711.9 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 107.1, -720 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 95.9, -727 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 95.9, -735.1 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 106.3, -741.3 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 106.3, -749.4 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 96.9, -762.4 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 96.9, -770.5 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 107.1, -776.8 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 107.1, -784.9 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 95.9, -791.9 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 95.9, -800 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 106.3, -806.2 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 106.3, -814.3 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 96.9, -827.3 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 96.9, -835.4 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 107.1, -841.7 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 107.1, -849.8 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 95.9, -856.8 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 95.9, -864.9 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 106.3, -871.1 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 106.3, -879.2 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 96.9, -892.2 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 96.9, -900.3 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 107.1, -906.6 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 107.1, -914.7 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 95.9, -921.7 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 95.9, -929.8 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 106.3, -935.9 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 106.3, -944 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 96.9, -957.1 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 96.9, -965.2 , 0 );
setMoveKey( spep_1 -3 + 228, 1, 107.1, -971.4 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 107.1, -979.5 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 95.9, -986.5 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 95.9, -994.7 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 106.3, -1000.8 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 106.3, -1008.9 , 0 );
setMoveKey( spep_1 -3 + 240, 1, 96.9, -1021.9 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 96.9, -1030 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 107.1, -1036.3 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 107.1, -1044.4 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 95.9, -1051.4 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 95.9, -1059.5 , 0 );
setMoveKey( spep_1 -3 + 252, 1, 106.3, -1065.7 , 0 );
setMoveKey( spep_1 -3 + 254, 1, 106.3, -1073.8 , 0 );
setMoveKey( spep_1 -3 + 256, 1, 96.9, -1086.8 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 96.9, -1094.9 , 0 );
setMoveKey( spep_1 -3 + 260, 1, 107.1, -1101.2 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 107.1, -1109.3 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 95.9, -1116.3 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 95.9, -1116.3 , 0 );

setScaleKey( spep_1 -3 + 160, 1, 7.22, 7.22 );
setScaleKey( spep_1 -3 + 162, 1, 7.24, 7.24 );
setScaleKey( spep_1 -3 + 164, 1, 7.25, 7.25 );
setScaleKey( spep_1 -3 + 166, 1, 7.26, 7.26 );
setScaleKey( spep_1 -3 + 168, 1, 7.27, 7.27 );
setScaleKey( spep_1 -3 + 170, 1, 7.29, 7.29 );
setScaleKey( spep_1 -3 + 172, 1, 7.3, 7.3 );
setScaleKey( spep_1 -3 + 174, 1, 7.31, 7.31 );
setScaleKey( spep_1 -3 + 176, 1, 7.32, 7.32 );
setScaleKey( spep_1 -3 + 178, 1, 7.34, 7.34 );
setScaleKey( spep_1 -3 + 180, 1, 7.35, 7.35 );
setScaleKey( spep_1 -3 + 182, 1, 7.36, 7.36 );
setScaleKey( spep_1 -3 + 184, 1, 7.37, 7.37 );
setScaleKey( spep_1 -3 + 186, 1, 7.39, 7.39 );
setScaleKey( spep_1 -3 + 188, 1, 7.4, 7.4 );
setScaleKey( spep_1 -3 + 190, 1, 7.41, 7.41 );
setScaleKey( spep_1 -3 + 192, 1, 7.42, 7.42 );
setScaleKey( spep_1 -3 + 194, 1, 7.44, 7.44 );
setScaleKey( spep_1 -3 + 196, 1, 7.45, 7.45 );
setScaleKey( spep_1 -3 + 198, 1, 7.46, 7.46 );
setScaleKey( spep_1 -3 + 200, 1, 7.47, 7.47 );
setScaleKey( spep_1 -3 + 202, 1, 7.49, 7.49 );
setScaleKey( spep_1 -3 + 204, 1, 7.5, 7.5 );
setScaleKey( spep_1 -3 + 206, 1, 7.51, 7.51 );
setScaleKey( spep_1 -3 + 208, 1, 7.52, 7.52 );
setScaleKey( spep_1 -3 + 210, 1, 7.54, 7.54 );
setScaleKey( spep_1 -3 + 212, 1, 7.55, 7.55 );
setScaleKey( spep_1 -3 + 214, 1, 7.56, 7.56 );
setScaleKey( spep_1 -3 + 216, 1, 7.57, 7.57 );
setScaleKey( spep_1 -3 + 218, 1, 7.59, 7.59 );
setScaleKey( spep_1 -3 + 220, 1, 7.6, 7.6 );
setScaleKey( spep_1 -3 + 222, 1, 7.61, 7.61 );
setScaleKey( spep_1 -3 + 224, 1, 7.62, 7.62 );
setScaleKey( spep_1 -3 + 226, 1, 7.64, 7.64 );
setScaleKey( spep_1 -3 + 228, 1, 7.65, 7.65 );
setScaleKey( spep_1 -3 + 230, 1, 7.66, 7.66 );
setScaleKey( spep_1 -3 + 232, 1, 7.67, 7.67 );
setScaleKey( spep_1 -3 + 234, 1, 7.69, 7.69 );
setScaleKey( spep_1 -3 + 236, 1, 7.7, 7.7 );
setScaleKey( spep_1 -3 + 238, 1, 7.71, 7.71 );
setScaleKey( spep_1 -3 + 240, 1, 7.72, 7.72 );
setScaleKey( spep_1 -3 + 242, 1, 7.74, 7.74 );
setScaleKey( spep_1 -3 + 244, 1, 7.75, 7.75 );
setScaleKey( spep_1 -3 + 246, 1, 7.76, 7.76 );
setScaleKey( spep_1 -3 + 248, 1, 7.77, 7.77 );
setScaleKey( spep_1 -3 + 250, 1, 7.79, 7.79 );
setScaleKey( spep_1 -3 + 252, 1, 7.8, 7.8 );
setScaleKey( spep_1 -3 + 254, 1, 7.81, 7.81 );
setScaleKey( spep_1 -3 + 256, 1, 7.82, 7.82 );
setScaleKey( spep_1 -3 + 258, 1, 7.84, 7.84 );
setScaleKey( spep_1 -3 + 260, 1, 7.85, 7.85 );
setScaleKey( spep_1 -3 + 262, 1, 7.86, 7.86 );
setScaleKey( spep_1 -3 + 264, 1, 7.87, 7.87 );
setScaleKey( spep_1 -3 + 266, 1, 7.87, 7.87 );

setRotateKey( spep_1 -3 + 160, 1, 13 );
setRotateKey( spep_1 -3 + 266, 1, 13 );

-- ** 音 ** --

--柱持ち上げる
SE026 = playSeVer2( spep_1 + 16, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 16, SE026, 70 );
SE027 = playSeVer2( spep_1 + 16, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 16, SE027, 70 );
SE028 = playSeVer2( spep_1 + 20, 1002, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 20, SE028, 70 );

--凄む
SE029 = playSeVer2( spep_1 + 72, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 72, SE029, 79 );
SE030 = playSeVer2( spep_1 + 76, 1264, "", 0, 0, 0, -1);
setPitch( spep_1 + 76, SE030, -600 );
setTimeStretch( SE030, 0.6, 30, 4 );

--柱振りかぶる
SE031 = playSeVer2( spep_1 + 134, 1164, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_1 + 144, 8, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_1 + 144, 1314, "",spep_1 + 346, 0, 50, -1);
SE034 = playSeVer2( spep_1 + 156, 1278, "",spep_1 + 322, 0, 54, -1);
setPitch( spep_1 + 156, SE034, -400 );
setTimeStretch( SE034, 0.73, 30, 4 );
SE035 = playSeVer2( spep_1 + 156, 1241, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 156, SE035, 158 );
setPitch( spep_1 + 156, SE035, -800 );
setTimeStretch( SE035, 0.62, 30, 4 );

--叩きつける
SE036 = playSeVer2( spep_1 + 276, 1061, "", 0, 0, 0, -1);
setPitch( spep_1 + 276, SE036, -400 );
setSeVolumeByWorkId( spep_1 + 276, SE036, 130 );
SE037 = playSeVer2( spep_1 + 284, 1159, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_1 + 294, 1024, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 304, 1168, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 315); -- ダメージ表示フレーム
endPhase( spep_1 + 432 -4); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜カードカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001r ef_002とセット。敵の手前に配置。
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + 296, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + 296, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + 296, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + 296 -2, base_0f, 255);
setEffAlphaKey( spep_0 + 296 -1, base_0f, 255);
setEffAlphaKey( spep_0 + 296, base_0f, 0);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_002 ef_001、ef_001rとセット。敵の奥に配置。
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 296, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + 296, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 296, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 296 -2, base_0b, 255);
setEffAlphaKey( spep_0 + 296 -1, base_0b, 255);
setEffAlphaKey( spep_0 + 296, base_0b, 0);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 22;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 40;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 515); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 515 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 515 , 0);
setEffMoveKey( spep_x + 84, ctgogo, (cx+40), 515 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 296 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 36, 1, 0 );
setDisp( spep_0 -3 + 178, 1, 1 );

changeAnime( spep_0 + 0, 1, 118 );
changeAnime( spep_0 -3 + 178, 1, 117 );

setMoveKey( spep_0 + 0, 1, 155.1, 26.6 , 0 );
setMoveKey( spep_0 + 1, 1, 155.1, 26.7 , 0 );
setMoveKey( spep_0 + 2, 1, 155.1, 26.7 , 0 );
setMoveKey( spep_0 + 3, 1, 155.6, 26.8 , 0 );
setMoveKey( spep_0 + 4, 1, 155.6, 26.8 , 0 );
setMoveKey( spep_0 + 5, 1, 157, 27.2 , 0 );
setMoveKey( spep_0 + 6, 1, 157, 27.2 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 159.3, 27.8 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 162.6, 28.7 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 166.9, 29.8 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 172.1, 31.3 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 214.6, 43.1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 261.2, 56.1 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 311.9, 70.2 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 366.7, 85.4 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 425.4, 101.7 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 488.3, 119.2 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 555.2, 137.8 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 626.1, 157.6 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 701.1, 178.5 , 0 );
setMoveKey( spep_0 -3 + 35, 1, 701.1, 178.5 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 780, 200.4 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 135.6, 58.5 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 137.2, 63.8 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 139, 68.9 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 141.2, 73.8 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 143.6, 78.4 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 153.5, 75.6 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 135.6, 97.6 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 142, 81.2 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 168.7, 101.5 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 164.7, 91.3 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 176.3, 108.6 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 172.8, 98 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 172.1, 108.3 , 0 );

setScaleKey( spep_0 + 0, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 1, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 2, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 3, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 4, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 5, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 6, 1, 2.7, 2.7 );
setScaleKey( spep_0 -3 + 10, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 12, 1, 2.72, 2.72 );
setScaleKey( spep_0 -3 + 14, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 16, 1, 2.74, 2.74 );
setScaleKey( spep_0 -3 + 18, 1, 2.84, 2.84 );
setScaleKey( spep_0 -3 + 20, 1, 2.94, 2.94 );
setScaleKey( spep_0 -3 + 22, 1, 3.06, 3.06 );
setScaleKey( spep_0 -3 + 24, 1, 3.19, 3.19 );
setScaleKey( spep_0 -3 + 26, 1, 3.33, 3.33 );
setScaleKey( spep_0 -3 + 28, 1, 3.47, 3.47 );
setScaleKey( spep_0 -3 + 30, 1, 3.63, 3.63 );
setScaleKey( spep_0 -3 + 32, 1, 3.79, 3.79 );
setScaleKey( spep_0 -3 + 34, 1, 3.97, 3.97 );
setScaleKey( spep_0 -3 + 35, 1, 3.97, 3.97 );
setScaleKey( spep_0 -3 + 36, 1, 4.15, 4.15 );
setScaleKey( spep_0 -3 + 178, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 182, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 184, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 190, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 192, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 200, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 202, 1, 0.63, 0.63 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 36, 1, 0 );
setRotateKey( spep_0 -3 + 178, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
--SE002 = playSeVer2( spep_0 + 24, 1018, "", 0, 0, 0, -1);

--気弾溜め・走る
SE003 = playSeVer2( spep_0 + 24, 1222, "",spep_0 + 96, 0, 34, 0.5);
SE004 = playSeVer2( spep_0 + 24, 1225, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 24, 1282, "", spep_0 + 158, 0, 10, 0.5);
setSeVolumeByWorkId( spep_0 + 24, SE005, 76 );
setTimeStretch( SE005, 1.43, 30, 4 );
SE006_2 = playSeVer2( spep_0 + 24, 1394, "", spep_0 + 242, 0, 14, 0.5);
SE007 = playSeVer2( spep_0 + 30, 1262, "", spep_0 + 158, 0, 10, -1);
SE009_2 = playSeVer2( spep_0 + 130, 1395, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE009_2, 150 );
SE012_2 = playSeVer2( spep_0 + 160, 1395, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE012_2, 150 );
SE015_2 = playSeVer2( spep_0 + 178, 1395, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE015_2, 150 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 201; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006_2, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009_2, 0);
stopSe( SP_dodge - 12, SE012_2, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015_2, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 176.8, 111.1 , 0 );
setMoveKey( SP_dodge + 2, 1, 181.7, 113.8 , 0 );
setMoveKey( SP_dodge + 4, 1, 186.9, 116.2 , 0 );
setMoveKey( SP_dodge + 6, 1, 192.3, 118.5 , 0 );
setMoveKey( SP_dodge + 8, 1, 198, 120.6 , 0 );
setMoveKey( SP_dodge + 10, 1, 203.8, 122.5 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.63, 0.63 );
setScaleKey( SP_dodge + 2, 1, 0.62, 0.62 );
setScaleKey( SP_dodge + 10, 1, 0.62, 0.62 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 ); 

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
setDisp( spep_0 -3 + 259, 1, 0 );

changeAnime( spep_0 -3 + 228, 1, 106 );
changeAnime( spep_0 -3 + 248, 1, 108 );

setMoveKey( spep_0 -3 + 204, 1, 176.8, 111.1 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 181.7, 113.8 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 186.9, 116.2 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 192.3, 118.5 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 198, 120.6 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 203.8, 122.5 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 209.9, 124.3 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 216.3, 125.8 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 222.8, 127.2 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 229.5, 128.3 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 236.2, 130 , 0 );
setMoveKey( spep_0 -3 + 227, 1, 243, 131.6 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 249.9, 125.4 , 0 );
setMoveKey( spep_0 -3 + 229, 1, 249.9, 125.4 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 235.3, 126.1 , 0 );
setMoveKey( spep_0 -3 + 231, 1, 235.3, 126.1 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 220.5, 126.6 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 220.5, 126.6 , 0 );
setMoveKey( spep_0 -3 + 243, 1, 220.5, 126.6 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 175.9, 106.2 , 0 );
setMoveKey( spep_0 -3 + 247, 1, 173.5, 66.3 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 216.6, 27.5 , 0 );
setMoveKey( spep_0 -3 + 249, 1, 216.6, 27.5 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 293.8, 36.8 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 340.6, 11.1 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 381.3, -19.2 , 0 );
setMoveKey( spep_0 -3 + 255, 1, 381.3, -19.2 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 437.9, -34.8 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 484, -68.5 , 0 );
setMoveKey( spep_0 -3 + 259, 1, 484, -68.5 , 0 );

setScaleKey( spep_0 -3 + 208, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 210, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 218, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 220, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 227, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 228, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 244, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 247, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 248, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 249, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 250, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 252, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 254, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 255, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 256, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 259, 1, 0.6, 0.6 );

setRotateKey( spep_0 -3 + 227, 1, 0 );
setRotateKey( spep_0 -3 + 228, 1, -33.8 );
setRotateKey( spep_0 -3 + 229, 1, -33.8 );
setRotateKey( spep_0 -3 + 230, 1, -33.9 );
setRotateKey( spep_0 -3 + 244, 1, -33.9 );
setRotateKey( spep_0 -3 + 247, 1, -33.8 );
setRotateKey( spep_0 -3 + 248, 1, 17.3 );
setRotateKey( spep_0 -3 + 249, 1, 17.3 );
setRotateKey( spep_0 -3 + 250, 1, 18.8 );
setRotateKey( spep_0 -3 + 252, 1, 19.8 );
setRotateKey( spep_0 -3 + 254, 1, 20.9 );
setRotateKey( spep_0 -3 + 255, 1, 20.9 );
setRotateKey( spep_0 -3 + 256, 1, 22 );
setRotateKey( spep_0 -3 + 258, 1, 23 );
setRotateKey( spep_0 -3 + 259, 1, 23 );

-- ** 音 ** --
--振りかぶる
SE018 = playSeVer2( spep_0 + 206, 1116, "",spep_0 + 244, 0, 14, -1);
SE019 = playSeVer2( spep_0 + 206, 1004, "", 0, 0, 0, -1);

--気弾当てる
SE020 = playSeVer2( spep_0 + 226, 1023, "",spep_0 + 312, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 226, SE020, 71 );
SE021 = playSeVer2( spep_0 + 226, 1371, "",spep_0 + 286, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 226, SE021, 56 );
SE022 = playSeVer2( spep_0 + 234, 1024, "",spep_0 + 312, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 234, SE022, 82 );
SE023 = playSeVer2( spep_0 + 234, 1068, "",spep_0 + 312, 0, 12, -1);
SE024 = playSeVer2( spep_0 + 234, 1122, "",spep_0 + 318, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 234, SE024, 78 );
setPitch( spep_0 + 234, SE024, 700 );
setTimeStretch( SE024, 1.47, 30, 4 );

-- ** 次の準備 ** --
spep_c = spep_0 + 296;


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

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_1 = spep_c + 94;


-------------------------------------------------
-- 柱を倒す〜フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); --　ef_003r ef_004とセット。敵の手前に配置。反転なし。
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 432, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, -1.0, 1.0);
setEffScaleKey( spep_1 + 432, base_1f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 432, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 432, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_004 ef_003、ef_003rとセット。敵の奥に配置。反転なし。
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 432, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, -1.0, 1.0);
setEffScaleKey( spep_1 + 432, base_1b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 432, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 432, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 432 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_1 -3 + 160, 1, 1 );
setDisp( spep_1 -3 + 266, 1, 0 );

changeAnime( spep_1 -3 + 160, 1, 118 );

setBlendColor( spep_1 -3 + 160, 1, 3, 0, 0, 0, 0.65 );
setBlendColor( spep_1 -3 + 266 -1, 1, 3, 0, 0, 0, 0.65 );
setBlendColor( spep_1 -3 + 266, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_1 -3 + 160, 1, 100.7, -695 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 110.2, -703.8 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 107.1, -711.9 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 107.1, -720 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 95.9, -727 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 95.9, -735.1 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 106.3, -741.3 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 106.3, -749.4 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 96.9, -762.4 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 96.9, -770.5 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 107.1, -776.8 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 107.1, -784.9 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 95.9, -791.9 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 95.9, -800 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 106.3, -806.2 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 106.3, -814.3 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 96.9, -827.3 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 96.9, -835.4 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 107.1, -841.7 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 107.1, -849.8 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 95.9, -856.8 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 95.9, -864.9 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 106.3, -871.1 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 106.3, -879.2 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 96.9, -892.2 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 96.9, -900.3 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 107.1, -906.6 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 107.1, -914.7 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 95.9, -921.7 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 95.9, -929.8 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 106.3, -935.9 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 106.3, -944 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 96.9, -957.1 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 96.9, -965.2 , 0 );
setMoveKey( spep_1 -3 + 228, 1, 107.1, -971.4 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 107.1, -979.5 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 95.9, -986.5 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 95.9, -994.7 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 106.3, -1000.8 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 106.3, -1008.9 , 0 );
setMoveKey( spep_1 -3 + 240, 1, 96.9, -1021.9 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 96.9, -1030 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 107.1, -1036.3 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 107.1, -1044.4 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 95.9, -1051.4 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 95.9, -1059.5 , 0 );
setMoveKey( spep_1 -3 + 252, 1, 106.3, -1065.7 , 0 );
setMoveKey( spep_1 -3 + 254, 1, 106.3, -1073.8 , 0 );
setMoveKey( spep_1 -3 + 256, 1, 96.9, -1086.8 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 96.9, -1094.9 , 0 );
setMoveKey( spep_1 -3 + 260, 1, 107.1, -1101.2 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 107.1, -1109.3 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 95.9, -1116.3 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 95.9, -1116.3 , 0 );

setScaleKey( spep_1 -3 + 160, 1, 7.22, 7.22 );
setScaleKey( spep_1 -3 + 162, 1, 7.24, 7.24 );
setScaleKey( spep_1 -3 + 164, 1, 7.25, 7.25 );
setScaleKey( spep_1 -3 + 166, 1, 7.26, 7.26 );
setScaleKey( spep_1 -3 + 168, 1, 7.27, 7.27 );
setScaleKey( spep_1 -3 + 170, 1, 7.29, 7.29 );
setScaleKey( spep_1 -3 + 172, 1, 7.3, 7.3 );
setScaleKey( spep_1 -3 + 174, 1, 7.31, 7.31 );
setScaleKey( spep_1 -3 + 176, 1, 7.32, 7.32 );
setScaleKey( spep_1 -3 + 178, 1, 7.34, 7.34 );
setScaleKey( spep_1 -3 + 180, 1, 7.35, 7.35 );
setScaleKey( spep_1 -3 + 182, 1, 7.36, 7.36 );
setScaleKey( spep_1 -3 + 184, 1, 7.37, 7.37 );
setScaleKey( spep_1 -3 + 186, 1, 7.39, 7.39 );
setScaleKey( spep_1 -3 + 188, 1, 7.4, 7.4 );
setScaleKey( spep_1 -3 + 190, 1, 7.41, 7.41 );
setScaleKey( spep_1 -3 + 192, 1, 7.42, 7.42 );
setScaleKey( spep_1 -3 + 194, 1, 7.44, 7.44 );
setScaleKey( spep_1 -3 + 196, 1, 7.45, 7.45 );
setScaleKey( spep_1 -3 + 198, 1, 7.46, 7.46 );
setScaleKey( spep_1 -3 + 200, 1, 7.47, 7.47 );
setScaleKey( spep_1 -3 + 202, 1, 7.49, 7.49 );
setScaleKey( spep_1 -3 + 204, 1, 7.5, 7.5 );
setScaleKey( spep_1 -3 + 206, 1, 7.51, 7.51 );
setScaleKey( spep_1 -3 + 208, 1, 7.52, 7.52 );
setScaleKey( spep_1 -3 + 210, 1, 7.54, 7.54 );
setScaleKey( spep_1 -3 + 212, 1, 7.55, 7.55 );
setScaleKey( spep_1 -3 + 214, 1, 7.56, 7.56 );
setScaleKey( spep_1 -3 + 216, 1, 7.57, 7.57 );
setScaleKey( spep_1 -3 + 218, 1, 7.59, 7.59 );
setScaleKey( spep_1 -3 + 220, 1, 7.6, 7.6 );
setScaleKey( spep_1 -3 + 222, 1, 7.61, 7.61 );
setScaleKey( spep_1 -3 + 224, 1, 7.62, 7.62 );
setScaleKey( spep_1 -3 + 226, 1, 7.64, 7.64 );
setScaleKey( spep_1 -3 + 228, 1, 7.65, 7.65 );
setScaleKey( spep_1 -3 + 230, 1, 7.66, 7.66 );
setScaleKey( spep_1 -3 + 232, 1, 7.67, 7.67 );
setScaleKey( spep_1 -3 + 234, 1, 7.69, 7.69 );
setScaleKey( spep_1 -3 + 236, 1, 7.7, 7.7 );
setScaleKey( spep_1 -3 + 238, 1, 7.71, 7.71 );
setScaleKey( spep_1 -3 + 240, 1, 7.72, 7.72 );
setScaleKey( spep_1 -3 + 242, 1, 7.74, 7.74 );
setScaleKey( spep_1 -3 + 244, 1, 7.75, 7.75 );
setScaleKey( spep_1 -3 + 246, 1, 7.76, 7.76 );
setScaleKey( spep_1 -3 + 248, 1, 7.77, 7.77 );
setScaleKey( spep_1 -3 + 250, 1, 7.79, 7.79 );
setScaleKey( spep_1 -3 + 252, 1, 7.8, 7.8 );
setScaleKey( spep_1 -3 + 254, 1, 7.81, 7.81 );
setScaleKey( spep_1 -3 + 256, 1, 7.82, 7.82 );
setScaleKey( spep_1 -3 + 258, 1, 7.84, 7.84 );
setScaleKey( spep_1 -3 + 260, 1, 7.85, 7.85 );
setScaleKey( spep_1 -3 + 262, 1, 7.86, 7.86 );
setScaleKey( spep_1 -3 + 264, 1, 7.87, 7.87 );
setScaleKey( spep_1 -3 + 266, 1, 7.87, 7.87 );

setRotateKey( spep_1 -3 + 160, 1, 13 );
setRotateKey( spep_1 -3 + 266, 1, 13 );

-- ** 音 ** --

--柱持ち上げる
SE026 = playSeVer2( spep_1 + 16, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 16, SE026, 70 );
SE027 = playSeVer2( spep_1 + 16, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 16, SE027, 70 );
SE028 = playSeVer2( spep_1 + 20, 1002, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 20, SE028, 70 );

--凄む
SE029 = playSeVer2( spep_1 + 72, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 72, SE029, 79 );
SE030 = playSeVer2( spep_1 + 76, 1264, "", 0, 0, 0, -1);
setPitch( spep_1 + 76, SE030, -600 );
setTimeStretch( SE030, 0.6, 30, 4 );

--柱振りかぶる
SE031 = playSeVer2( spep_1 + 134, 1164, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_1 + 144, 8, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_1 + 144, 1314, "",spep_1 + 346, 0, 50, -1);
SE034 = playSeVer2( spep_1 + 156, 1278, "",spep_1 + 322, 0, 54, -1);
setPitch( spep_1 + 156, SE034, -400 );
setTimeStretch( SE034, 0.73, 30, 4 );
SE035 = playSeVer2( spep_1 + 156, 1241, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 156, SE035, 158 );
setPitch( spep_1 + 156, SE035, -800 );
setTimeStretch( SE035, 0.62, 30, 4 );

--叩きつける
SE036 = playSeVer2( spep_1 + 276, 1061, "", 0, 0, 0, -1);
setPitch( spep_1 + 276, SE036, -400 );
setSeVolumeByWorkId( spep_1 + 276, SE036, 130 );
SE037 = playSeVer2( spep_1 + 284, 1159, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_1 + 294, 1024, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 304, 1168, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 315); -- ダメージ表示フレーム
endPhase( spep_1 + 432 -4); -- 終了フレーム

end
