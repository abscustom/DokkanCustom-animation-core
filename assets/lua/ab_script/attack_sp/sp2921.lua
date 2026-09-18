--4031970:UR_スーパーベビー2(大猿ベビー)_必殺技：リベンジファイナルフラッシュ
--sp_effect_a1_00509
--sp2921

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164124; --開幕→セリフカットイン→カードカットイン ef_001
SP_02  = 164126; --カードカットイン→フィニッシュ ef_002
SP_02b = 164127; --カードカットイン→フィニッシュ ef_002b

--エフェクト(敵)
SP_01r  = 164125; --開幕→セリフカットイン→カードカットイン ef_001r
SP_02r  = 164128; --カードカットイン→フィニッシュ ef_002r
SP_02br = 164129; --カードカットイン→フィニッシュ ef_002br


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -3;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;
setupMovie(0 , SP_01, 0, 1);
-------------------------------------------------
-- 開幕→セリフカットイン→カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 326;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕→セリフカットイン→カードカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 242;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --

--腕伸ばす
SE001 = playSeVer2( spep_0 + 12, 1004, "", 0, 0, 0, -1);
--気弾溜めベース
SE002 = playSeVer2( spep_0 + 24, 1271, "", 0, 0, 0, -1);
setTimeStretch( SE002, 1.17, 24, 4 );
--気弾溜め1
SE003 = playSeVer2( spep_0 + 34, 1043, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 34, 1296, "",spep_0 + 108, 0, 12, -1);
--気弾溜めベース
SE005 = playSeVer2( spep_0 + 34, 1265, "",spep_0 + 358, 0, 22, -1);
--気弾溜め1
SE006 = playSeVer2( spep_0 + 46, 1252, "", 0, 0, 0, -1);
--気弾溜め2
SE007 = playSeVer2( spep_0 + 104, 1296, "",spep_0 + 214, 0, 20, -1);
SE008 = playSeVer2( spep_0 + 104, 1043, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 116, 1252, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 186, 1296, "",spep_0 + 348, 10, 16, -1);
setStartTimeMs( SE010, 533 );
--気弾合わせる
SE011 = playSeVer2( spep_0 + 180, 1152, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 180, 1178, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 180, 1153, "", 0, 0, 0, -1);
--気弾溜め2
SE014 = playSeVer2( spep_0 + 218, 1252, "",spep_0 + 350, 0, 16, -1);
--顔カットイン
--SE015 = playSeVer2( spep_0 + 252, 1018, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 326 

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カードカットイン→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 332;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --

setDisp( spep_2 + 58 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 144 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 58 + OFFSET_X, 1, 118 );

setMoveKey( spep_2 + 58 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 190.1, -377 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 190.1, -377 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 201.1, -389 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 201.1, -389 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 190.1, -377 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 190.1, -377 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 201.1, -389 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 201.1, -389 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 190.1, -377 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 190.1, -377 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 204.1, -378 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 204.1, -378 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 190.1, -377 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 190.1, -377 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 201.1, -389 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 201.1, -389 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 192.1, -378 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 192.1, -378 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 201.1, -377 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 201.1, -377 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 204.1, -378 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 204.1, -378 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 190.1, -377 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 190.1, -377 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 201.1, -389 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 201.1, -389 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 190.1, -377 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 190.1, -377 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 201.1, -389 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 201.1, -389 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 192.1, -378 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 192.1, -378 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 201.1, -377 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 201.1, -377 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 204.1, -378 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 204.1, -378 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 190.1, -377 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 190.1, -377 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 201.1, -389 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 201.1, -389 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 190.1, -377 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 190.1, -377 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 201.1, -389 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 201.1, -389 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 191.1, -392 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 192.1, -388 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 190.1, -377 , 0 );

setScaleKey( spep_2 + 58 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.4, 2.4 );

setRotateKey( spep_2 + 58 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 58 + OFFSET_X, 1, 1, 1, 1, 1, 0.71);
setBlendColor( spep_2 + 144 + OFFSET_X, 1, 1, 0, 0, 0);

-- ** 音 ** --

--気弾発射
SE017 = playSeVer2( spep_2 + 14, 1145, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 14, 1027, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 14, 1215, "",spep_2 + 198, 0, 32, -1);
SE020 = playSeVer2( spep_2 + 14, 1193, "",spep_2 + 200, 0, 40, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 110; --エンドフェイズのフレーム数を置き換える

setBlendColor( spep_2 + 118 , 1, 1, 0, 0, 0);

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);

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

--爆発予兆
SE021 = playSeVer2( spep_2 + 140, 1198, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 152, 1302, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 152, 1306, "",spep_2 + 246, 0, 42, -1);
--爆発
SE024 = playSeVer2( spep_2 + 196, 1069, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 214, 1159, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 222, 1427, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 214); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 332

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------
spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 開幕→セリフカットイン→カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 326;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕→セリフカットイン→カードカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 242;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --

--腕伸ばす
SE001 = playSeVer2( spep_0 + 12, 1004, "", 0, 0, 0, -1);
--気弾溜めベース
SE002 = playSeVer2( spep_0 + 24, 1271, "", 0, 0, 0, -1);
setTimeStretch( SE002, 1.17, 24, 4 );
--気弾溜め1
SE003 = playSeVer2( spep_0 + 34, 1043, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 34, 1296, "",spep_0 + 108, 0, 12, -1);
--気弾溜めベース
SE005 = playSeVer2( spep_0 + 34, 1265, "",spep_0 + 358, 0, 22, -1);
--気弾溜め1
SE006 = playSeVer2( spep_0 + 46, 1252, "", 0, 0, 0, -1);
--気弾溜め2
SE007 = playSeVer2( spep_0 + 104, 1296, "",spep_0 + 214, 0, 20, -1);
SE008 = playSeVer2( spep_0 + 104, 1043, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 116, 1252, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 186, 1296, "",spep_0 + 348, 10, 16, -1);
setStartTimeMs( SE010, 533 );
--気弾合わせる
SE011 = playSeVer2( spep_0 + 180, 1152, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 180, 1178, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 180, 1153, "", 0, 0, 0, -1);
--気弾溜め2
SE014 = playSeVer2( spep_0 + 218, 1252, "",spep_0 + 350, 0, 16, -1);
--顔カットイン
--SE015 = playSeVer2( spep_0 + 252, 1018, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 326 

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カードカットイン→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 332;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --

setDisp( spep_2 + 58 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 144 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 58 + OFFSET_X, 1, 18 );

setMoveKey( spep_2 + 58 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -190.1, -377 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -190.1, -377 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -201.1, -389 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -201.1, -389 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -190.1, -377 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -190.1, -377 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -201.1, -389 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -201.1, -389 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -190.1, -377 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -190.1, -377 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -204.1, -378 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -204.1, -378 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -190.1, -377 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -190.1, -377 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -201.1, -389 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -201.1, -389 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -192.1, -378 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -192.1, -378 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -201.1, -377 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -201.1, -377 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -204.1, -378 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -204.1, -378 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -190.1, -377 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -190.1, -377 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -201.1, -389 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -201.1, -389 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -190.1, -377 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -190.1, -377 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -201.1, -389 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -201.1, -389 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -192.1, -378 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -192.1, -378 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -201.1, -377 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -201.1, -377 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -204.1, -378 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -204.1, -378 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -190.1, -377 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -190.1, -377 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -201.1, -389 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -201.1, -389 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -190.1, -377 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -190.1, -377 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -201.1, -389 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -201.1, -389 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -191.1, -392 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -192.1, -388 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -190.1, -377 , 0 );

setScaleKey( spep_2 + 58 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.4, 2.4 );

setRotateKey( spep_2 + 58 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 58 + OFFSET_X, 1, 1, 1, 1, 1, 0.71);
setBlendColor( spep_2 + 144 + OFFSET_X, 1, 1, 0, 0, 0);

-- ** 音 ** --

--気弾発射
SE017 = playSeVer2( spep_2 + 14, 1145, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 14, 1027, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 14, 1215, "",spep_2 + 198, 0, 32, -1);
SE020 = playSeVer2( spep_2 + 14, 1193, "",spep_2 + 200, 0, 40, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 110; --エンドフェイズのフレーム数を置き換える

setBlendColor( spep_2 + 118 , 1, 1, 0, 0, 0);

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
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

--爆発予兆
SE021 = playSeVer2( spep_2 + 140, 1198, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 152, 1302, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 152, 1306, "",spep_2 + 246, 0, 42, -1);
--爆発
SE024 = playSeVer2( spep_2 + 196, 1069, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 214, 1159, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 222, 1427, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 214); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 332


end