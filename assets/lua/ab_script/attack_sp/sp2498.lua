--1025590:LR_ピッコロ(潜在能力解放)_超必殺技：魔貫光殺砲
--sp_effect_a3_00100
--sp2498

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
SP_01  = 161223; --突進 格闘 ef_001 ef_004と同時再生
SP_01b = 161228; --背景&パンチ ef_004 ef_001と同時再生
SP_02  = 161225; --魔貫光殺砲 構え ef_002
SP_03  = 161226; --魔貫光殺砲 発動 ef_003 ef_005と同時再生
SP_03b = 161230; --背景 エフェクト ef_005 ef_003またはef_003rと同時再生

--エフェクト(てき)
SP_01r  = 161224; --突進 格闘 敵側 ef_001r ef_004rと同時再生
SP_01br = 161229; --背景&パンチ 敵側 ef_004r ef_001rと同時再生
SP_03r  = 161227; --魔貫光殺砲 発動 敵側 ef_003r ef_005と同時再生

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

setMoveKey(   0,   1,    0, -5136,   0);
setMoveKey(   1,   1,    0, -5136,   0);
setMoveKey(   2,   1,    0, -5136,   0);
setMoveKey(   3,   1,    0, -5136,   0);
setMoveKey(   4,   1,    0, -5136,   0);
setMoveKey(   5,   1,    0, -5136,   0);
setMoveKey(   6,   1,    0, -5136,   0);
setScaleKey(  0,   1,  1.6, 1.6);
setScaleKey(  1,   1,  1.6, 1.6);
setScaleKey(  2,   1,  1.6, 1.6);
setScaleKey(  3,   1,  1.6, 1.6);
setScaleKey(  4,   1,  1.6, 1.6);
setScaleKey(  5,   1,  1.6, 1.6);
setScaleKey(  6,   1,  1.6, 1.6);
setRotateKey( 0,   1,  0);
setRotateKey( 1,   1,  0);
setRotateKey( 2,   1,  0);
setRotateKey( 3,   1,  0);
setRotateKey( 4,   1,  0);
setRotateKey( 5,   1,  0);
setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 突進　格闘
-------------------------------------------------
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001  ef_004と同時再生
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + 466, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + 466, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + 466, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + 466 -2, base_0f, 255);
setEffAlphaKey( spep_0 + 466 -1, base_0f, 255);
setEffAlphaKey( spep_0 + 466, base_0f, 0);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_004  ef_001と同時再生
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 466, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + 466, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 466, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 466 -2, base_0b, 255);
setEffAlphaKey( spep_0 + 466 -1, base_0b, 255);
setEffAlphaKey( spep_0 + 466, base_0b, 0);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 512;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = -40;
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
entryFadeBg( spep_0 + 0, 0, 466 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--顔アップ
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 94, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 24 );
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 62 );
SE003 = playSeVer2( spep_0 + 22, 1232, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 22, 4, "", 0, 0, 0, -1);

--カメラ引く
SE005 = playSeVer2( spep_0 + 48, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 68 );

--向かってくる
SE006 = playSeVer2( spep_0 + 66, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 66, 9, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 66, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE008, 80 );
SE009 = playSeVer2( spep_0 + 90, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 90, SE009, 51 );
setTimeStretch( SE009, 1.25, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 132; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 +1 + 154, 1, 1 );
setDisp( spep_0 +1 + 246, 1, 0 );

changeAnime( spep_0 +1 + 154, 1, 101 );
changeAnime( spep_0 +1 + 166, 1, 108 );
changeAnime( spep_0 +1 + 216, 1, 106 );

setMoveKey( spep_0 +1 + 154, 1, 140.6, -36 , 0 );
setMoveKey( spep_0 +1 + 156, 1, 122.9, -38.9 , 0 );
setMoveKey( spep_0 +1 + 158, 1, 105.3, -41.9 , 0 );
setMoveKey( spep_0 +1 + 160, 1, 87.6, -44.8 , 0 );
setMoveKey( spep_0 +1 + 162, 1, 69.9, -47.7 , 0 );
setMoveKey( spep_0 +1 + 165, 1, 52.3, -50.7 , 0 );
setMoveKey( spep_0 +1 + 166, 1, 132, 26.1 , 0 );
setMoveKey( spep_0 +1 + 168, 1, 83, 26.1 , 0 );
setMoveKey( spep_0 +1 + 170, 1, 128.6, 26.1 , 0 );
setMoveKey( spep_0 +1 + 172, 1, 108.3, 26.1 , 0 );
setMoveKey( spep_0 +1 + 174, 1, 128.1, 26.1 , 0 );
setMoveKey( spep_0 +1 + 176, 1, 75.9, 26.1 , 0 );
setMoveKey( spep_0 +1 + 178, 1, 165, 26.1 , 0 );
setMoveKey( spep_0 +1 + 180, 1, 55.1, 52.5 , 0 );
setMoveKey( spep_0 +1 + 182, 1, 96.1, 71.1 , 0 );
setMoveKey( spep_0 +1 + 184, 1, 117, 80.4 , 0 );
setMoveKey( spep_0 +1 + 186, 1, 110, 73.4 , 0 );
setMoveKey( spep_0 +1 + 188, 1, 107.7, 66.4 , 0 );
setMoveKey( spep_0 +1 + 190, 1, 105.4, 64.1 , 0 );
setMoveKey( spep_0 +1 + 192, 1, 105.4, 64.1 , 0 );
setMoveKey( spep_0 +1 + 194, 1, 82.1, 71.1 , 0 );
setMoveKey( spep_0 +1 + 196, 1, 74.4, 75.5 , 0 );
setMoveKey( spep_0 +1 + 198, 1, 66.6, 79.8 , 0 );
setMoveKey( spep_0 +1 + 200, 1, 58.8, 84.2 , 0 );
setMoveKey( spep_0 +1 + 202, 1, 58.8, 84.2 , 0 );
setMoveKey( spep_0 +1 + 204, 1, 56.9, 84.6 , 0 );
setMoveKey( spep_0 +1 + 206, 1, 55, 85.1 , 0 );
setMoveKey( spep_0 +1 + 208, 1, 53, 85.5 , 0 );
setMoveKey( spep_0 +1 + 210, 1, 51.1, 86 , 0 );
setMoveKey( spep_0 +1 + 212, 1, 43.3, 87.7 , 0 );
setMoveKey( spep_0 +1 + 215, 1, 35.6, 87 , 0 );
setMoveKey( spep_0 +1 + 216, 1, 167.3, 20.5 , 0 );
setMoveKey( spep_0 +1 + 218, 1, 237.2, 33.6 , 0 );
setMoveKey( spep_0 +1 + 220, 1, 223.2, 63.6 , 0 );
setMoveKey( spep_0 +1 + 222, 1, 254.8, 70.1 , 0 );
setMoveKey( spep_0 +1 + 224, 1, 249.8, 68.5 , 0 );
setMoveKey( spep_0 +1 + 226, 1, 271.3, 70.1 , 0 );
setMoveKey( spep_0 +1 + 228, 1, 237.8, 59.5 , 0 );
setMoveKey( spep_0 +1 + 230, 1, 246.3, 64.7 , 0 );
setMoveKey( spep_0 +1 + 232, 1, 238.6, 70.1 , 0 );
setMoveKey( spep_0 +1 + 234, 1, 245.3, 75.3 , 0 );
setMoveKey( spep_0 +1 + 236, 1, 338, 80.6 , 0 );
setMoveKey( spep_0 +1 + 238, 1, 387.7, 85.9 , 0 );
setMoveKey( spep_0 +1 + 240, 1, 486.5, 85.7 , 0 );
setMoveKey( spep_0 +1 + 242, 1, 551.5, 85.7 , 0 );
setMoveKey( spep_0 +1 + 245, 1, 648.9, 85.7 , 0 );
setMoveKey( spep_0 +1 + 246, 1, 140.6, -36 , 0 );

setScaleKey( spep_0 +1 + 154, 1, 2.47, 2.47 );
setScaleKey( spep_0 +1 + 165, 1, 2.47, 2.47 );
setScaleKey( spep_0 +1 + 166, 1, 2.85, 2.85 );
setScaleKey( spep_0 +1 + 178, 1, 2.85, 2.85 );
setScaleKey( spep_0 +1 + 180, 1, 1.9, 1.9 );
setScaleKey( spep_0 +1 + 182, 1, 1.35, 1.35 );
setScaleKey( spep_0 +1 + 184, 1, 1.34, 1.34 );
setScaleKey( spep_0 +1 + 186, 1, 1.34, 1.34 );
setScaleKey( spep_0 +1 + 188, 1, 1.33, 1.33 );
setScaleKey( spep_0 +1 + 192, 1, 1.33, 1.33 );
setScaleKey( spep_0 +1 + 194, 1, 1.15, 1.15 );
setScaleKey( spep_0 +1 + 215, 1, 1.15, 1.15 );
setScaleKey( spep_0 +1 + 216, 1, 1.45, 1.45 );
setScaleKey( spep_0 +1 + 245, 1, 1.45, 1.45 );
setScaleKey( spep_0 +1 + 246, 1, 2.47, 2.47 );

setRotateKey( spep_0 +1 + 154, 1, 0 );
setRotateKey( spep_0 +1 + 215, 1, 0 );
setRotateKey( spep_0 +1 + 216, 1, -33.1 );
setRotateKey( spep_0 +1 + 218, 1, -34.1 );
setRotateKey( spep_0 +1 + 220, 1, -35.1 );
setRotateKey( spep_0 +1 + 224, 1, -35.1 );
setRotateKey( spep_0 +1 + 226, 1, -33.3 );
setRotateKey( spep_0 +1 + 228, 1, -30 );
setRotateKey( spep_0 +1 + 230, 1, -24.8 );
setRotateKey( spep_0 +1 + 232, 1, -19.6 );
setRotateKey( spep_0 +1 + 234, 1, -14.4 );
setRotateKey( spep_0 +1 + 236, 1, -9.2 );
setRotateKey( spep_0 +1 + 238, 1, -4 );
setRotateKey( spep_0 +1 + 240, 1, 6.7 );
setRotateKey( spep_0 +1 + 245, 1, 6.7 );
setRotateKey( spep_0 +1 + 246, 1, 0 );

--敵の動き2
setDisp( spep_0 +1 + 326, 1, 1 );
setDisp( spep_0 +1 + 357, 1, 0 );

changeAnime( spep_0 +1 + 344, 1, 107 );

setMoveKey( spep_0 +1 + 326, 1, -169.8, -148.2 , 0 );
setMoveKey( spep_0 +1 + 328, 1, -191.9, -13.2 , 0 );
setMoveKey( spep_0 +1 + 330, 1, -216, -5.1 , 0 );
setMoveKey( spep_0 +1 + 332, 1, -194.4, -30.2 , 0 );
setMoveKey( spep_0 +1 + 334, 1, -218.5, -61.6 , 0 );
setMoveKey( spep_0 +1 + 336, 1, -190.8, 3.8 , 0 );
setMoveKey( spep_0 +1 + 338, 1, -213.4, -21.9 , 0 );
setMoveKey( spep_0 +1 + 340, 1, -173.3, 46 , 0 );
setMoveKey( spep_0 +1 + 343, 1, -186.7, 59.3 , 0 );
setMoveKey( spep_0 +1 + 344, 1, 205.4, 93.8 , 0 );
setMoveKey( spep_0 +1 + 346, 1, 308.8, 51 , 0 );
setMoveKey( spep_0 +1 + 348, 1, 412.1, 8.2 , 0 );
setMoveKey( spep_0 +1 + 350, 1, 515.4, -34.6 , 0 );
setMoveKey( spep_0 +1 + 352, 1, 618.7, -77.4 , 0 );
setMoveKey( spep_0 +1 + 354, 1, 722, -120.2 , 0 );
setMoveKey( spep_0 +1 + 356, 1, 825.3, -163 , 0 );
setMoveKey( spep_0 +1 + 357, 1, 825.3, -163 , 0 );

setScaleKey( spep_0 +1 + 326, 1, 4.66, 4.66 );
setScaleKey( spep_0 +1 + 328, 1, 2.95, 2.95 );
setScaleKey( spep_0 +1 + 338, 1, 2.95, 2.95 );
setScaleKey( spep_0 +1 + 340, 1, 2, 2 );
setScaleKey( spep_0 +1 + 343, 1, 1.81, 1.81 );
setScaleKey( spep_0 +1 + 344, 1, 0.94, 0.94 );
setScaleKey( spep_0 +1 + 346, 1, 1.08, 1.08 );
setScaleKey( spep_0 +1 + 348, 1, 1.22, 1.22 );
setScaleKey( spep_0 +1 + 350, 1, 1.35, 1.35 );
setScaleKey( spep_0 +1 + 352, 1, 1.49, 1.49 );
setScaleKey( spep_0 +1 + 354, 1, 1.63, 1.63 );
setScaleKey( spep_0 +1 + 356, 1, 1.76, 1.76 );
setScaleKey( spep_0 +1 + 357, 1, 1.76, 1.76 );

setRotateKey( spep_0 +1 + 326, 1, -47 );
setRotateKey( spep_0 +1 + 343, 1, -47 );
setRotateKey( spep_0 +1 + 344, 1, 12 );
setRotateKey( spep_0 +1 + 357, 1, 12 );

--敵の動き3
setDisp( spep_0 +1 + 400, 1, 1 );
setDisp( spep_0 + 466, 1, 0 );

changeAnime( spep_0 +1 + 418, 1, 8 );
changeAnime( spep_0 +1 + 436, 1, 5 );

setMoveKey( spep_0 +1 + 400, 1, -416, 113.3 , 0 );
setMoveKey( spep_0 +1 + 402, 1, -374.1, 95.9 , 0 );
setMoveKey( spep_0 +1 + 404, 1, -332.1, 78.5 , 0 );
setMoveKey( spep_0 +1 + 406, 1, -290.1, 61.1 , 0 );
setMoveKey( spep_0 +1 + 408, 1, -248.2, 43.7 , 0 );
setMoveKey( spep_0 +1 + 410, 1, -206.2, 26.3 , 0 );
setMoveKey( spep_0 +1 + 412, 1, -164.2, 8.9 , 0 );
setMoveKey( spep_0 +1 + 414, 1, -164.1, -12.3 , 0 );
setMoveKey( spep_0 +1 + 417, 1, -164.1, -12.3 , 0 );
setMoveKey( spep_0 +1 + 418, 1, -72.9, -49.5 , 0 );
setMoveKey( spep_0 +1 + 420, 1, -98.8, -11 , 0 );
setMoveKey( spep_0 +1 + 422, 1, -60.3, -54.7 , 0 );
setMoveKey( spep_0 +1 + 424, 1, -96.2, -24.1 , 0 );
setMoveKey( spep_0 +1 + 426, 1, -134.7, -90.6 , 0 );
setMoveKey( spep_0 +1 + 428, 1, -96.2, -46.9 , 0 );
setMoveKey( spep_0 +1 + 430, 1, -137.3, -46.9 , 0 );
setMoveKey( spep_0 +1 + 432, 1, -98.8, -82.8 , 0 );
setMoveKey( spep_0 +1 + 435, 1, -137.3, -41.7 , 0 );
setMoveKey( spep_0 +1 + 436, 1, -125, 90.9 , 0 );
setMoveKey( spep_0 +1 + 438, 1, -131.2, 97.9 , 0 );
setMoveKey( spep_0 +1 + 440, 1, -137.5, 106.7 , 0 );
setMoveKey( spep_0 +1 + 442, 1, -140.8, 111.1 , 0 );
setMoveKey( spep_0 +1 + 444, 1, -148.9, 121.9 , 0 );
setMoveKey( spep_0 +1 + 446, 1, -159.3, 139.9 , 0 );
setMoveKey( spep_0 +1 + 448, 1, -171.1, 156.7 , 0 );
setMoveKey( spep_0 +1 + 450, 1, -176.1, 166.2 , 0 );
setMoveKey( spep_0 +1 + 452, 1, -182.1, 174 , 0 );
setMoveKey( spep_0 +1 + 454, 1, -200.2, 203.1 , 0 );
setMoveKey( spep_0 +1 + 456, 1, -206.8, 212.5 , 0 );
setMoveKey( spep_0 +1 + 458, 1, -212.4, 221.6 , 0 );
setMoveKey( spep_0 +1 + 460, 1, -216.3, 228.1 , 0 );
setMoveKey( spep_0 +1 + 462, 1, -219.7, 233.3 , 0 );
setMoveKey( spep_0 +1 + 464, 1, -220.6, 234.2 , 0 );
setMoveKey( spep_0 + 466, 1, -220.6, 234.2 , 0 );

setScaleKey( spep_0 +1 + 400, 1, 0.38, 0.38 );
setScaleKey( spep_0 +1 + 402, 1, 0.44, 0.44 );
setScaleKey( spep_0 +1 + 404, 1, 0.49, 0.49 );
setScaleKey( spep_0 +1 + 406, 1, 0.55, 0.55 );
setScaleKey( spep_0 +1 + 408, 1, 0.61, 0.61 );
setScaleKey( spep_0 +1 + 410, 1, 0.66, 0.66 );
setScaleKey( spep_0 +1 + 412, 1, 0.72, 0.72 );
setScaleKey( spep_0 +1 + 414, 1, 0.76, 0.76 );
setScaleKey( spep_0 +1 + 417, 1, 0.76, 0.76 );
setScaleKey( spep_0 +1 + 418, 1, 2.95, 2.95 );
setScaleKey( spep_0 +1 + 435, 1, 2.95, 2.95 );
setScaleKey( spep_0 +1 + 436, 1, 1.9, 1.9 );
setScaleKey( spep_0 +1 + 438, 1, 1.8, 1.8 );
setScaleKey( spep_0 +1 + 440, 1, 1.71, 1.7 );
setScaleKey( spep_0 +1 + 442, 1, 1.66, 1.66 );
setScaleKey( spep_0 +1 + 444, 1, 1.52, 1.52 );
setScaleKey( spep_0 +1 + 446, 1, 1.33, 1.33 );
setScaleKey( spep_0 +1 + 448, 1, 1.14, 1.14 );
setScaleKey( spep_0 +1 + 450, 1, 1.04, 1.04 );
setScaleKey( spep_0 +1 + 452, 1, 0.95, 0.95 );
setScaleKey( spep_0 +1 + 454, 1, 0.64, 0.64 );
setScaleKey( spep_0 +1 + 456, 1, 0.52, 0.52 );
setScaleKey( spep_0 +1 + 458, 1, 0.43, 0.43 );
setScaleKey( spep_0 +1 + 460, 1, 0.35, 0.35 );
setScaleKey( spep_0 +1 + 462, 1, 0.29, 0.29 );
setScaleKey( spep_0 +1 + 464, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 466, 1, 0.28, 0.28 );

setRotateKey( spep_0 +1 + 400, 1, 12 );
setRotateKey( spep_0 +1 + 412, 1, 12 );
setRotateKey( spep_0 +1 + 414, 1, 11.9 );
setRotateKey( spep_0 +1 + 417, 1, 11.9 );
setRotateKey( spep_0 +1 + 418, 1, 8 );
setRotateKey( spep_0 +1 + 435, 1, 8 );
setRotateKey( spep_0 +1 + 436, 1, -11.9 );
setRotateKey( spep_0 + 466, 1, -11.9 );

-- ** 音 ** --
--パンチ
SE010 = playSeVer2( spep_0 + 160, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 166, 1359, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 166, 1187, "",spep_0 + 228, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 166, SE012, 83 );

--キック
SE013 = playSeVer2( spep_0 + 202, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 212, 1359, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 212, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 212, SE015, 76 );
SE016 = playSeVer2( spep_0 + 214, 1110, "", 0, 0, 0, -1);

--振りかぶる
SE017 = playSeVer2( spep_0 + 238, 1116, "",spep_0 + 272, 0, 12, -1);
SE018 = playSeVer2( spep_0 + 238, 1004, "", 0, 0, 0, -1);

--振りかぶる２
SE020 = playSeVer2( spep_0 + 270, 1153, "", 0, 30, 0, -1);
SE021 = playSeVer2( spep_0 + 274, 1182, "", 0, 16, 0, -1);
setStartTimeMs( SE021,  67 );
SE019 = playSeVer2( spep_0 + 274, 9, "", 0, 24, 0, -1);
setStartTimeMs( SE019,  117 );

--殴り飛ばす
SE022 = playSeVer2( spep_0 + 320, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 332, 1120, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 332, 1359, "", 0, 0, 0, -1);

--瞬間移動
SE025 = playSeVer2( spep_0 + 368, 1109, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 388, 1109, "", 0, 0, 0, -1);

--殴り飛ばす
SE028 = playSeVer2( spep_0 + 406, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 406, SE028, -400 );
setTimeStretch( SE028, 0.73, 30, 4 );
SE029 = playSeVer2( spep_0 + 418, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 418, SE029, 80 );
SE030 = playSeVer2( spep_0 + 418, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 418, SE030, 87 );
SE031 = playSeVer2( spep_0 + 420, 1110, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 466;

-------------------------------------------------
-- 魔貫光殺砲　構え
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 276, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 276, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 276, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 276, base_1, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 276 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--構える
SE032 = playSeVer2( spep_1 + 0, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE032, 150 );
SE033 = playSeVer2( spep_1 + 0, 1007, "", 0, 0, 0, -1);

--魔貫光殺砲溜め
SE026 = playSeVer2( spep_1 + 2, 1371, "",spep_1 + 294, 16, 14, -1);
setSeVolumeByWorkId( spep_1 + 2, SE026, 66 );
setStartTimeMs( SE026,  1533 );
setPitch( spep_1 + 2, SE026, -900 );
setTimeStretch( SE026, 0.4, 30, 4 );
SE034 = playSeVer2( spep_1 + 0, 1043, "",spep_1 + 82, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 0, SE034, 67 );
SE035 = playSeVer2( spep_1 + 2, 1147, "",spep_1 + 82, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 2, SE035, 53 );
setPitch( spep_1 + 2, SE035, 400 );
setTimeStretch( SE035, 1.27, 30, 4 );
SE037 = playSeVer2( spep_1 + 86, 1148, "",spep_1 + 136, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 86, SE037, 67 );
setPitch( spep_1 + 86, SE037, 400 );
setTimeStretch( SE037, 1.27, 30, 4 );
SE039 = playSeVer2( spep_1 + 150, 1147, "",spep_1 + 290, 0, 10, -1);
setPitch( spep_1 + 150, SE039, 400 );
setTimeStretch( SE039, 1.27, 30, 4 );

--顔カットイン
SE036 = playSeVer2( spep_1 + 48, 1018, "", 0, 0, 0, -1);

--ズームアウト
SE038 = playSeVer2( spep_1 + 132, 1072, "", 0, 18, 0, -1);
setStartTimeMs( SE038,  200 );

--魔貫光殺砲溜め２
SE040 = playSeVer2( spep_1 + 202, 1016, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 212, 1038, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 212, SE041, 136 );
SE042 = playSeVer2( spep_1 + 212, 1026, "", 0, 0, 0, -1);

--振りかぶる
SE043 = playSeVer2( spep_1 + 246, 1004, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_1 + 250, 1189, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_1 + 276;

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
spep_2 = spep_c + 94;

-------------------------------------------------
-- 魔貫光殺砲　発動
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- ef_003  ef_005と同時再生
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 380, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 380, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 380, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 380, base_2f, 255);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- ef_005  ef_003またはef_003rと同時再生
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 380, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 380, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 380, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 380, base_2b, 255);

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 -3 + 144, 1, 1 );
setDisp( spep_2 -3 + 254, 1, 0 );

changeAnime( spep_2 -3 + 144, 1, 8 );
changeAnime( spep_2 -3 + 148, 1, 6 );

y_zahyo = -40;

setMoveKey( spep_2 -3 + 144, 1, -26.3, 114.6 + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 147, 1, -23.9, 116.3 + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 148, 1, -46.7, 108.5 + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 150, 1, -87.2, 101.7 + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 152, 1, -86.7, 107  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 154, 1, -87.4, 102.5  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 156, 1, -93, 102.9  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 158, 1, -93, 115.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 160, 1, -90.8, 98.6  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 162, 1, -93, 115.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 164, 1, -88.7, 107.2  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 166, 1, -90.8, 115.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 168, 1, -93, 109.4  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 170, 1, -90.8, 118  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 172, 1, -90.8, 111.5  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 174, 1, -91.8, 109.4  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 176, 1, -91.8, 112.5  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 178, 1, -89.7, 110.4  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 180, 1, -89.7, 116.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 182, 1, -89.7, 110.4  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 184, 1, -91.8, 108.2  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 186, 1, -89.7, 112.5  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 188, 1, -89.7, 123.1  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 190, 1, -89.7, 116.6  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 192, 1, -83.6, 117.7  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 194, 1, -91.7, 118.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 196, 1, -90.7, 113.9  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 198, 1, -86.6, 121.1  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 200, 1, -90.7, 112.5  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 202, 1, -93, 120.1  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 204, 1, -95.1, 114.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 206, 1, -94.1, 110.5  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 208, 1, -95.1, 118  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 210, 1, -96.3, 115.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 212, 1, -96.3, 118  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 214, 1, -96.3, 109.4  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 216, 1, -94.1, 126.6  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 218, 1, -92, 120.1  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 220, 1, -92, 118  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 222, 1, -89.8, 118  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 224, 1, -87.7, 118  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 226, 1, -87.7, 113.7  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 228, 1, -83.4, 118  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 230, 1, -81.2, 109.4  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 232, 1, -85.5, 115.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 234, 1, -87.7, 115.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 236, 1, -83.4, 107.2  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 238, 1, -85.5, 118  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 240, 1, -85.5, 108.4  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 242, 1, -86, 114.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 244, 1, -86.5, 112.7  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 246, 1, -86.5, 113.7  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 248, 1, -85.5, 111.5  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 250, 1, -84.4, 113.7  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 252, 1, -84.4, 112.7  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 254, 1, -84.4, 112.7  + y_zahyo, 0 );

setScaleKey( spep_2 -3 + 144, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 147, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 148, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 254, 1, 1.8, 1.8 );

setRotateKey( spep_2 -3 + 144, 1, 0 );
setRotateKey( spep_2 -3 + 147, 1, 0 );
setRotateKey( spep_2 -3 + 148, 1, 60.4 );
setRotateKey( spep_2 -3 + 254, 1, 60.4 );

-- ** 音 ** --
--発射前溜め
SE045 = playSeVer2( spep_2 + 0, 1371, "",spep_2 + 108, 4, 24, -1);
setSeVolumeByWorkId( spep_2 + 0, SE045, 58 );
setStartTimeMs( SE045,  1717 );
setPitch( spep_2 + 0, SE045, -900 );
setTimeStretch( SE045, 0.4, 30, 4 );
SE047 = playSeVer2( spep_2 + 2, 1147, "",spep_2 + 108, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 2, SE047, 69 );
setPitch( spep_2 + 2, SE047, 400 );
setTimeStretch( SE047, 1.27, 30, 4 );

--振りかぶる
SE048 = playSeVer2( spep_2 + 18, 1004, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 22, 1189, "", 0, 0, 0, -1);

--魔貫光殺砲発射
SE050 = playSeVer2( spep_2 + 46, 1177, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 46, SE050, 75 );
setTimeStretch( SE050, 1.18, 30, 4 );
SE051 = playSeVer2( spep_2 + 46, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE051, 73 );
SE052 = playSeVer2( spep_2 + 46, 1038, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE052, 77 );
SE053 = playSeVer2( spep_2 + 46, 1212, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 46, SE053, 58 );
SE054 = playSeVer2( spep_2 + 46, 1249, "",spep_2 + 268, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 46, SE054, 76 );
SE055 = playSeVer2( spep_2 + 56, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE055, 114 );

--魔貫光殺砲発射２
SE056 = playSeVer2( spep_2 + 64, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE056, 42 );

--敵貫く
SE057 = playSeVer2( spep_2 + 134, 1159, "",spep_2 + 324, 0, 90, -1);
SE058 = playSeVer2( spep_2 + 134, 1148, "",spep_2 + 266, 0, 32, -1);
SE059 = playSeVer2( spep_2 + 136, 1067, "", 0, 0, 0, -1);

--環境音
SE060 = playSeVer2( spep_2 + 158, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 158, SE060, 23 );

--画面遷移
SE061 = playSeVer2( spep_2 + 218, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 218, SE061, 62 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 253); -- ダメージ表示フレーム
endPhase( spep_2 + 380 -4); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 突進　格闘
-------------------------------------------------
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001r  ef_004rと同時再生
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + 466, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + 466, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + 466, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + 466 -2, base_0f, 255);
setEffAlphaKey( spep_0 + 466 -1, base_0f, 255);
setEffAlphaKey( spep_0 + 466, base_0f, 0);

base_0b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- ef_004r  ef_001rと同時再生
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 466, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, -1.0, 1.0);
setEffScaleKey( spep_0 + 466, base_0b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 466, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 466 -2, base_0b, 255);
setEffAlphaKey( spep_0 + 466 -1, base_0b, 255);
setEffAlphaKey( spep_0 + 466, base_0b, 0);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 512;

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
entryFadeBg( spep_0 + 0, 0, 466 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--顔アップ
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 94, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 24 );
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 62 );
SE003 = playSeVer2( spep_0 + 22, 1232, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 22, 4, "", 0, 0, 0, -1);

--カメラ引く
SE005 = playSeVer2( spep_0 + 48, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 68 );

--向かってくる
SE006 = playSeVer2( spep_0 + 66, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 66, 9, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 66, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE008, 80 );
SE009 = playSeVer2( spep_0 + 90, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 90, SE009, 51 );
setTimeStretch( SE009, 1.25, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 132; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 +1 + 154, 1, 1 );
setDisp( spep_0 +1 + 246, 1, 0 );

changeAnime( spep_0 +1 + 154, 1, 101 );
changeAnime( spep_0 +1 + 166, 1, 108 );
changeAnime( spep_0 +1 + 216, 1, 106 );

setMoveKey( spep_0 +1 + 154, 1, 140.6, -36 , 0 );
setMoveKey( spep_0 +1 + 156, 1, 122.9, -38.9 , 0 );
setMoveKey( spep_0 +1 + 158, 1, 105.3, -41.9 , 0 );
setMoveKey( spep_0 +1 + 160, 1, 87.6, -44.8 , 0 );
setMoveKey( spep_0 +1 + 162, 1, 69.9, -47.7 , 0 );
setMoveKey( spep_0 +1 + 165, 1, 52.3, -50.7 , 0 );
setMoveKey( spep_0 +1 + 166, 1, 132, 26.1 , 0 );
setMoveKey( spep_0 +1 + 168, 1, 83, 26.1 , 0 );
setMoveKey( spep_0 +1 + 170, 1, 128.6, 26.1 , 0 );
setMoveKey( spep_0 +1 + 172, 1, 108.3, 26.1 , 0 );
setMoveKey( spep_0 +1 + 174, 1, 128.1, 26.1 , 0 );
setMoveKey( spep_0 +1 + 176, 1, 75.9, 26.1 , 0 );
setMoveKey( spep_0 +1 + 178, 1, 165, 26.1 , 0 );
setMoveKey( spep_0 +1 + 180, 1, 55.1, 52.5 , 0 );
setMoveKey( spep_0 +1 + 182, 1, 96.1, 71.1 , 0 );
setMoveKey( spep_0 +1 + 184, 1, 117, 80.4 , 0 );
setMoveKey( spep_0 +1 + 186, 1, 110, 73.4 , 0 );
setMoveKey( spep_0 +1 + 188, 1, 107.7, 66.4 , 0 );
setMoveKey( spep_0 +1 + 190, 1, 105.4, 64.1 , 0 );
setMoveKey( spep_0 +1 + 192, 1, 105.4, 64.1 , 0 );
setMoveKey( spep_0 +1 + 194, 1, 82.1, 71.1 , 0 );
setMoveKey( spep_0 +1 + 196, 1, 74.4, 75.5 , 0 );
setMoveKey( spep_0 +1 + 198, 1, 66.6, 79.8 , 0 );
setMoveKey( spep_0 +1 + 200, 1, 58.8, 84.2 , 0 );
setMoveKey( spep_0 +1 + 202, 1, 58.8, 84.2 , 0 );
setMoveKey( spep_0 +1 + 204, 1, 56.9, 84.6 , 0 );
setMoveKey( spep_0 +1 + 206, 1, 55, 85.1 , 0 );
setMoveKey( spep_0 +1 + 208, 1, 53, 85.5 , 0 );
setMoveKey( spep_0 +1 + 210, 1, 51.1, 86 , 0 );
setMoveKey( spep_0 +1 + 212, 1, 43.3, 87.7 , 0 );
setMoveKey( spep_0 +1 + 215, 1, 35.6, 87 , 0 );
setMoveKey( spep_0 +1 + 216, 1, 167.3, 20.5 , 0 );
setMoveKey( spep_0 +1 + 218, 1, 237.2, 33.6 , 0 );
setMoveKey( spep_0 +1 + 220, 1, 223.2, 63.6 , 0 );
setMoveKey( spep_0 +1 + 222, 1, 254.8, 70.1 , 0 );
setMoveKey( spep_0 +1 + 224, 1, 249.8, 68.5 , 0 );
setMoveKey( spep_0 +1 + 226, 1, 271.3, 70.1 , 0 );
setMoveKey( spep_0 +1 + 228, 1, 237.8, 59.5 , 0 );
setMoveKey( spep_0 +1 + 230, 1, 246.3, 64.7 , 0 );
setMoveKey( spep_0 +1 + 232, 1, 238.6, 70.1 , 0 );
setMoveKey( spep_0 +1 + 234, 1, 245.3, 75.3 , 0 );
setMoveKey( spep_0 +1 + 236, 1, 338, 80.6 , 0 );
setMoveKey( spep_0 +1 + 238, 1, 387.7, 85.9 , 0 );
setMoveKey( spep_0 +1 + 240, 1, 486.5, 85.7 , 0 );
setMoveKey( spep_0 +1 + 242, 1, 551.5, 85.7 , 0 );
setMoveKey( spep_0 +1 + 245, 1, 648.9, 85.7 , 0 );
setMoveKey( spep_0 +1 + 246, 1, 140.6, -36 , 0 );

setScaleKey( spep_0 +1 + 154, 1, 2.47, 2.47 );
setScaleKey( spep_0 +1 + 165, 1, 2.47, 2.47 );
setScaleKey( spep_0 +1 + 166, 1, 2.85, 2.85 );
setScaleKey( spep_0 +1 + 178, 1, 2.85, 2.85 );
setScaleKey( spep_0 +1 + 180, 1, 1.9, 1.9 );
setScaleKey( spep_0 +1 + 182, 1, 1.35, 1.35 );
setScaleKey( spep_0 +1 + 184, 1, 1.34, 1.34 );
setScaleKey( spep_0 +1 + 186, 1, 1.34, 1.34 );
setScaleKey( spep_0 +1 + 188, 1, 1.33, 1.33 );
setScaleKey( spep_0 +1 + 192, 1, 1.33, 1.33 );
setScaleKey( spep_0 +1 + 194, 1, 1.15, 1.15 );
setScaleKey( spep_0 +1 + 215, 1, 1.15, 1.15 );
setScaleKey( spep_0 +1 + 216, 1, 1.45, 1.45 );
setScaleKey( spep_0 +1 + 245, 1, 1.45, 1.45 );
setScaleKey( spep_0 +1 + 246, 1, 2.47, 2.47 );

setRotateKey( spep_0 +1 + 154, 1, 0 );
setRotateKey( spep_0 +1 + 215, 1, 0 );
setRotateKey( spep_0 +1 + 216, 1, -33.1 );
setRotateKey( spep_0 +1 + 218, 1, -34.1 );
setRotateKey( spep_0 +1 + 220, 1, -35.1 );
setRotateKey( spep_0 +1 + 224, 1, -35.1 );
setRotateKey( spep_0 +1 + 226, 1, -33.3 );
setRotateKey( spep_0 +1 + 228, 1, -30 );
setRotateKey( spep_0 +1 + 230, 1, -24.8 );
setRotateKey( spep_0 +1 + 232, 1, -19.6 );
setRotateKey( spep_0 +1 + 234, 1, -14.4 );
setRotateKey( spep_0 +1 + 236, 1, -9.2 );
setRotateKey( spep_0 +1 + 238, 1, -4 );
setRotateKey( spep_0 +1 + 240, 1, 6.7 );
setRotateKey( spep_0 +1 + 245, 1, 6.7 );
setRotateKey( spep_0 +1 + 246, 1, 0 );

--敵の動き2
setDisp( spep_0 +1 + 326, 1, 1 );
setDisp( spep_0 +1 + 357, 1, 0 );

changeAnime( spep_0 +1 + 344, 1, 107 );

setMoveKey( spep_0 +1 + 326, 1, -169.8, -148.2 , 0 );
setMoveKey( spep_0 +1 + 328, 1, -191.9, -13.2 , 0 );
setMoveKey( spep_0 +1 + 330, 1, -216, -5.1 , 0 );
setMoveKey( spep_0 +1 + 332, 1, -194.4, -30.2 , 0 );
setMoveKey( spep_0 +1 + 334, 1, -218.5, -61.6 , 0 );
setMoveKey( spep_0 +1 + 336, 1, -190.8, 3.8 , 0 );
setMoveKey( spep_0 +1 + 338, 1, -213.4, -21.9 , 0 );
setMoveKey( spep_0 +1 + 340, 1, -173.3, 46 , 0 );
setMoveKey( spep_0 +1 + 343, 1, -186.7, 59.3 , 0 );
setMoveKey( spep_0 +1 + 344, 1, 205.4, 93.8 , 0 );
setMoveKey( spep_0 +1 + 346, 1, 308.8, 51 , 0 );
setMoveKey( spep_0 +1 + 348, 1, 412.1, 8.2 , 0 );
setMoveKey( spep_0 +1 + 350, 1, 515.4, -34.6 , 0 );
setMoveKey( spep_0 +1 + 352, 1, 618.7, -77.4 , 0 );
setMoveKey( spep_0 +1 + 354, 1, 722, -120.2 , 0 );
setMoveKey( spep_0 +1 + 356, 1, 825.3, -163 , 0 );
setMoveKey( spep_0 +1 + 357, 1, 825.3, -163 , 0 );

setScaleKey( spep_0 +1 + 326, 1, 4.66, 4.66 );
setScaleKey( spep_0 +1 + 328, 1, 2.95, 2.95 );
setScaleKey( spep_0 +1 + 338, 1, 2.95, 2.95 );
setScaleKey( spep_0 +1 + 340, 1, 2, 2 );
setScaleKey( spep_0 +1 + 343, 1, 1.81, 1.81 );
setScaleKey( spep_0 +1 + 344, 1, 0.94, 0.94 );
setScaleKey( spep_0 +1 + 346, 1, 1.08, 1.08 );
setScaleKey( spep_0 +1 + 348, 1, 1.22, 1.22 );
setScaleKey( spep_0 +1 + 350, 1, 1.35, 1.35 );
setScaleKey( spep_0 +1 + 352, 1, 1.49, 1.49 );
setScaleKey( spep_0 +1 + 354, 1, 1.63, 1.63 );
setScaleKey( spep_0 +1 + 356, 1, 1.76, 1.76 );
setScaleKey( spep_0 +1 + 357, 1, 1.76, 1.76 );

setRotateKey( spep_0 +1 + 326, 1, -47 );
setRotateKey( spep_0 +1 + 343, 1, -47 );
setRotateKey( spep_0 +1 + 344, 1, 12 );
setRotateKey( spep_0 +1 + 357, 1, 12 );

--敵の動き3
setDisp( spep_0 +1 + 400, 1, 1 );
setDisp( spep_0 + 466, 1, 0 );

changeAnime( spep_0 +1 + 418, 1, 8 );
changeAnime( spep_0 +1 + 436, 1, 5 );

setMoveKey( spep_0 +1 + 400, 1, -416, 113.3 , 0 );
setMoveKey( spep_0 +1 + 402, 1, -374.1, 95.9 , 0 );
setMoveKey( spep_0 +1 + 404, 1, -332.1, 78.5 , 0 );
setMoveKey( spep_0 +1 + 406, 1, -290.1, 61.1 , 0 );
setMoveKey( spep_0 +1 + 408, 1, -248.2, 43.7 , 0 );
setMoveKey( spep_0 +1 + 410, 1, -206.2, 26.3 , 0 );
setMoveKey( spep_0 +1 + 412, 1, -164.2, 8.9 , 0 );
setMoveKey( spep_0 +1 + 414, 1, -164.1, -12.3 , 0 );
setMoveKey( spep_0 +1 + 417, 1, -164.1, -12.3 , 0 );
setMoveKey( spep_0 +1 + 418, 1, -72.9, -49.5 , 0 );
setMoveKey( spep_0 +1 + 420, 1, -98.8, -11 , 0 );
setMoveKey( spep_0 +1 + 422, 1, -60.3, -54.7 , 0 );
setMoveKey( spep_0 +1 + 424, 1, -96.2, -24.1 , 0 );
setMoveKey( spep_0 +1 + 426, 1, -134.7, -90.6 , 0 );
setMoveKey( spep_0 +1 + 428, 1, -96.2, -46.9 , 0 );
setMoveKey( spep_0 +1 + 430, 1, -137.3, -46.9 , 0 );
setMoveKey( spep_0 +1 + 432, 1, -98.8, -82.8 , 0 );
setMoveKey( spep_0 +1 + 435, 1, -137.3, -41.7 , 0 );
setMoveKey( spep_0 +1 + 436, 1, -125, 90.9 , 0 );
setMoveKey( spep_0 +1 + 438, 1, -131.2, 97.9 , 0 );
setMoveKey( spep_0 +1 + 440, 1, -137.5, 106.7 , 0 );
setMoveKey( spep_0 +1 + 442, 1, -140.8, 111.1 , 0 );
setMoveKey( spep_0 +1 + 444, 1, -148.9, 121.9 , 0 );
setMoveKey( spep_0 +1 + 446, 1, -159.3, 139.9 , 0 );
setMoveKey( spep_0 +1 + 448, 1, -171.1, 156.7 , 0 );
setMoveKey( spep_0 +1 + 450, 1, -176.1, 166.2 , 0 );
setMoveKey( spep_0 +1 + 452, 1, -182.1, 174 , 0 );
setMoveKey( spep_0 +1 + 454, 1, -200.2, 203.1 , 0 );
setMoveKey( spep_0 +1 + 456, 1, -206.8, 212.5 , 0 );
setMoveKey( spep_0 +1 + 458, 1, -212.4, 221.6 , 0 );
setMoveKey( spep_0 +1 + 460, 1, -216.3, 228.1 , 0 );
setMoveKey( spep_0 +1 + 462, 1, -219.7, 233.3 , 0 );
setMoveKey( spep_0 +1 + 464, 1, -220.6, 234.2 , 0 );
setMoveKey( spep_0 + 466, 1, -220.6, 234.2 , 0 );

setScaleKey( spep_0 +1 + 400, 1, 0.38, 0.38 );
setScaleKey( spep_0 +1 + 402, 1, 0.44, 0.44 );
setScaleKey( spep_0 +1 + 404, 1, 0.49, 0.49 );
setScaleKey( spep_0 +1 + 406, 1, 0.55, 0.55 );
setScaleKey( spep_0 +1 + 408, 1, 0.61, 0.61 );
setScaleKey( spep_0 +1 + 410, 1, 0.66, 0.66 );
setScaleKey( spep_0 +1 + 412, 1, 0.72, 0.72 );
setScaleKey( spep_0 +1 + 414, 1, 0.76, 0.76 );
setScaleKey( spep_0 +1 + 417, 1, 0.76, 0.76 );
setScaleKey( spep_0 +1 + 418, 1, 2.95, 2.95 );
setScaleKey( spep_0 +1 + 435, 1, 2.95, 2.95 );
setScaleKey( spep_0 +1 + 436, 1, 1.9, 1.9 );
setScaleKey( spep_0 +1 + 438, 1, 1.8, 1.8 );
setScaleKey( spep_0 +1 + 440, 1, 1.71, 1.7 );
setScaleKey( spep_0 +1 + 442, 1, 1.66, 1.66 );
setScaleKey( spep_0 +1 + 444, 1, 1.52, 1.52 );
setScaleKey( spep_0 +1 + 446, 1, 1.33, 1.33 );
setScaleKey( spep_0 +1 + 448, 1, 1.14, 1.14 );
setScaleKey( spep_0 +1 + 450, 1, 1.04, 1.04 );
setScaleKey( spep_0 +1 + 452, 1, 0.95, 0.95 );
setScaleKey( spep_0 +1 + 454, 1, 0.64, 0.64 );
setScaleKey( spep_0 +1 + 456, 1, 0.52, 0.52 );
setScaleKey( spep_0 +1 + 458, 1, 0.43, 0.43 );
setScaleKey( spep_0 +1 + 460, 1, 0.35, 0.35 );
setScaleKey( spep_0 +1 + 462, 1, 0.29, 0.29 );
setScaleKey( spep_0 +1 + 464, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 466, 1, 0.28, 0.28 );

setRotateKey( spep_0 +1 + 400, 1, 12 );
setRotateKey( spep_0 +1 + 412, 1, 12 );
setRotateKey( spep_0 +1 + 414, 1, 11.9 );
setRotateKey( spep_0 +1 + 417, 1, 11.9 );
setRotateKey( spep_0 +1 + 418, 1, 8 );
setRotateKey( spep_0 +1 + 435, 1, 8 );
setRotateKey( spep_0 +1 + 436, 1, -11.9 );
setRotateKey( spep_0 + 466, 1, -11.9 );

-- ** 音 ** --
--パンチ
SE010 = playSeVer2( spep_0 + 160, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 166, 1359, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 166, 1187, "",spep_0 + 228, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 166, SE012, 83 );

--キック
SE013 = playSeVer2( spep_0 + 202, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 212, 1359, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 212, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 212, SE015, 76 );
SE016 = playSeVer2( spep_0 + 214, 1110, "", 0, 0, 0, -1);

--振りかぶる
SE017 = playSeVer2( spep_0 + 238, 1116, "",spep_0 + 272, 0, 12, -1);
SE018 = playSeVer2( spep_0 + 238, 1004, "", 0, 0, 0, -1);

--振りかぶる２
SE020 = playSeVer2( spep_0 + 270, 1153, "", 0, 30, 0, -1);
SE021 = playSeVer2( spep_0 + 274, 1182, "", 0, 16, 0, -1);
setStartTimeMs( SE021,  67 );
SE019 = playSeVer2( spep_0 + 274, 9, "", 0, 24, 0, -1);
setStartTimeMs( SE019,  117 );

--殴り飛ばす
SE022 = playSeVer2( spep_0 + 320, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 332, 1120, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 332, 1359, "", 0, 0, 0, -1);

--瞬間移動
SE025 = playSeVer2( spep_0 + 368, 1109, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 388, 1109, "", 0, 0, 0, -1);

--殴り飛ばす
SE028 = playSeVer2( spep_0 + 406, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 406, SE028, -400 );
setTimeStretch( SE028, 0.73, 30, 4 );
SE029 = playSeVer2( spep_0 + 418, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 418, SE029, 80 );
SE030 = playSeVer2( spep_0 + 418, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 418, SE030, 87 );
SE031 = playSeVer2( spep_0 + 420, 1110, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 466;

-------------------------------------------------
-- 魔貫光殺砲　構え
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 276, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 276, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 276, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 276, base_1, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 276 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--構える
SE032 = playSeVer2( spep_1 + 0, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE032, 150 );
SE033 = playSeVer2( spep_1 + 0, 1007, "", 0, 0, 0, -1);

--魔貫光殺砲溜め
SE026 = playSeVer2( spep_1 + 2, 1371, "",spep_1 + 294, 16, 14, -1);
setSeVolumeByWorkId( spep_1 + 2, SE026, 66 );
setStartTimeMs( SE026,  1533 );
setPitch( spep_1 + 2, SE026, -900 );
setTimeStretch( SE026, 0.4, 30, 4 );
SE034 = playSeVer2( spep_1 + 0, 1043, "",spep_1 + 82, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 0, SE034, 67 );
SE035 = playSeVer2( spep_1 + 2, 1147, "",spep_1 + 82, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 2, SE035, 53 );
setPitch( spep_1 + 2, SE035, 400 );
setTimeStretch( SE035, 1.27, 30, 4 );
SE037 = playSeVer2( spep_1 + 86, 1148, "",spep_1 + 136, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 86, SE037, 67 );
setPitch( spep_1 + 86, SE037, 400 );
setTimeStretch( SE037, 1.27, 30, 4 );
SE039 = playSeVer2( spep_1 + 150, 1147, "",spep_1 + 290, 0, 10, -1);
setPitch( spep_1 + 150, SE039, 400 );
setTimeStretch( SE039, 1.27, 30, 4 );

--顔カットイン
--SE036 = playSeVer2( spep_1 + 48, 1018, "", 0, 0, 0, -1);

--ズームアウト
SE038 = playSeVer2( spep_1 + 132, 1072, "", 0, 18, 0, -1);
setStartTimeMs( SE038,  200 );

--魔貫光殺砲溜め２
SE040 = playSeVer2( spep_1 + 202, 1016, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 212, 1038, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 212, SE041, 136 );
SE042 = playSeVer2( spep_1 + 212, 1026, "", 0, 0, 0, -1);

--振りかぶる
SE043 = playSeVer2( spep_1 + 246, 1004, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_1 + 250, 1189, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_1 + 276;

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
spep_2 = spep_c + 94;

-------------------------------------------------
-- 魔貫光殺砲　発動
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- ef_003  ef_005と同時再生
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 380, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 380, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 380, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 380, base_2f, 255);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- ef_005  ef_003またはef_003rと同時再生
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 380, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 380, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 380, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 380, base_2b, 255);

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 -3 + 144, 1, 1 );
setDisp( spep_2 -3 + 254, 1, 0 );

changeAnime( spep_2 -3 + 144, 1, 8 );
changeAnime( spep_2 -3 + 148, 1, 6 );

y_zahyo = -40;

setMoveKey( spep_2 -3 + 144, 1, -26.3, 114.6 + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 147, 1, -23.9, 116.3 + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 148, 1, -46.7, 108.5 + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 150, 1, -87.2, 101.7 + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 152, 1, -86.7, 107  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 154, 1, -87.4, 102.5  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 156, 1, -93, 102.9  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 158, 1, -93, 115.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 160, 1, -90.8, 98.6  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 162, 1, -93, 115.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 164, 1, -88.7, 107.2  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 166, 1, -90.8, 115.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 168, 1, -93, 109.4  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 170, 1, -90.8, 118  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 172, 1, -90.8, 111.5  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 174, 1, -91.8, 109.4  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 176, 1, -91.8, 112.5  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 178, 1, -89.7, 110.4  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 180, 1, -89.7, 116.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 182, 1, -89.7, 110.4  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 184, 1, -91.8, 108.2  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 186, 1, -89.7, 112.5  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 188, 1, -89.7, 123.1  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 190, 1, -89.7, 116.6  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 192, 1, -83.6, 117.7  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 194, 1, -91.7, 118.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 196, 1, -90.7, 113.9  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 198, 1, -86.6, 121.1  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 200, 1, -90.7, 112.5  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 202, 1, -93, 120.1  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 204, 1, -95.1, 114.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 206, 1, -94.1, 110.5  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 208, 1, -95.1, 118  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 210, 1, -96.3, 115.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 212, 1, -96.3, 118  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 214, 1, -96.3, 109.4  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 216, 1, -94.1, 126.6  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 218, 1, -92, 120.1  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 220, 1, -92, 118  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 222, 1, -89.8, 118  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 224, 1, -87.7, 118  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 226, 1, -87.7, 113.7  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 228, 1, -83.4, 118  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 230, 1, -81.2, 109.4  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 232, 1, -85.5, 115.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 234, 1, -87.7, 115.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 236, 1, -83.4, 107.2  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 238, 1, -85.5, 118  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 240, 1, -85.5, 108.4  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 242, 1, -86, 114.8  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 244, 1, -86.5, 112.7  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 246, 1, -86.5, 113.7  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 248, 1, -85.5, 111.5  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 250, 1, -84.4, 113.7  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 252, 1, -84.4, 112.7  + y_zahyo, 0 );
setMoveKey( spep_2 -3 + 254, 1, -84.4, 112.7  + y_zahyo, 0 );

setScaleKey( spep_2 -3 + 144, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 147, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 148, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 254, 1, 1.8, 1.8 );

setRotateKey( spep_2 -3 + 144, 1, 0 );
setRotateKey( spep_2 -3 + 147, 1, 0 );
setRotateKey( spep_2 -3 + 148, 1, 60.4 );
setRotateKey( spep_2 -3 + 254, 1, 60.4 );

-- ** 音 ** --
--発射前溜め
SE045 = playSeVer2( spep_2 + 0, 1371, "",spep_2 + 108, 4, 24, -1);
setSeVolumeByWorkId( spep_2 + 0, SE045, 58 );
setStartTimeMs( SE045,  1717 );
setPitch( spep_2 + 0, SE045, -900 );
setTimeStretch( SE045, 0.4, 30, 4 );
SE047 = playSeVer2( spep_2 + 2, 1147, "",spep_2 + 108, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 2, SE047, 69 );
setPitch( spep_2 + 2, SE047, 400 );
setTimeStretch( SE047, 1.27, 30, 4 );

--振りかぶる
SE048 = playSeVer2( spep_2 + 18, 1004, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 22, 1189, "", 0, 0, 0, -1);

--魔貫光殺砲発射
SE050 = playSeVer2( spep_2 + 46, 1177, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 46, SE050, 75 );
setTimeStretch( SE050, 1.18, 30, 4 );
SE051 = playSeVer2( spep_2 + 46, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE051, 73 );
SE052 = playSeVer2( spep_2 + 46, 1038, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE052, 77 );
SE053 = playSeVer2( spep_2 + 46, 1212, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 46, SE053, 58 );
SE054 = playSeVer2( spep_2 + 46, 1249, "",spep_2 + 268, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 46, SE054, 76 );
SE055 = playSeVer2( spep_2 + 56, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE055, 114 );

--魔貫光殺砲発射２
SE056 = playSeVer2( spep_2 + 64, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE056, 42 );

--敵貫く
SE057 = playSeVer2( spep_2 + 134, 1159, "",spep_2 + 324, 0, 90, -1);
SE058 = playSeVer2( spep_2 + 134, 1148, "",spep_2 + 266, 0, 32, -1);
SE059 = playSeVer2( spep_2 + 136, 1067, "", 0, 0, 0, -1);

--環境音
SE060 = playSeVer2( spep_2 + 158, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 158, SE060, 23 );

--画面遷移
SE061 = playSeVer2( spep_2 + 218, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 218, SE061, 62 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 253); -- ダメージ表示フレーム
endPhase( spep_2 + 380 -4); -- 終了フレーム

end
