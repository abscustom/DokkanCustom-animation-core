--1030020:LR_超サイヤ人3ゴテンクス_超必殺技：連続死ね死ねミサイル
--sp_effect_a9_00138
--sp2799

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_02  = 163430;  --ef_002 カードカットイン後

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 118;

setupMovie(0, SP_02, 0, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 34;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--浮く
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 63, "", 0, 0, 0, -1);

--気を溜めてさらにあがる
SE004 = playSeVer2( spep_0 + 56, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 60, 1035, "",spep_0 + 140, 0, 12, -1);
SE006 = playSeVer2( spep_0 + 60, 1043, "",spep_0 + 142, 0, 16, -1);
SE007 = playSeVer2( spep_0 + 60, 20, "",spep_0 + 140, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 60, SE007, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --118f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カードカットイン後
-------------------------------------------------
MAX_FRAME_2 = 718;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン後(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 86 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 166 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 86 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 104 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 86 + OFFSET_X, 1, 138.1, -96.5 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 138.1, -96.5 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 138.1, -78.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 138.1, -78.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 138.1, -111.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 138.1, -111.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 138.1, -88.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 138.1, -88.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 138.1, -101.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 138.1, -101.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 138.1, -96.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 138.1, -96.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 138.1, -78.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 138.1, -78.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 138.1, -111.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 138.1, -111.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 138.1, -88.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 138.1, -88.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 138.1, -101.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 138.1, -101.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 138.1, -96.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 138.1, -96.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 138.1, -78.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 138.1, -78.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 138.1, -111.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 138.1, -111.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 138.1, -88.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 138.1, -88.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 138.1, -101.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 138.1, -101.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 138.1, -96.4 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 138.1, -96.4 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 138.1, -78.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 138.1, -78.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 138.1, -111.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 138.1, -111.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 138.1, -88.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 138.1, -88.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 138.1, -101.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 138.1, -101.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 138.1, -96.4 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 138.1, -96.4 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 138.1, -78.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 138.1, -78.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 138.1, -111.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 138.1, -111.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 138.1, -88.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 138.1, -88.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 138.1, -101.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 138.1, -101.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 138.1, -96.4 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 138.1, -96.4 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 138.1, -78.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 138.1, -78.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 138.1, -111.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 138.1, -111.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 138.1, -88.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 138.1, -88.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 138.1, -101.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 138.1, -101.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 138.1, -96.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 138.1, -96.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 138.1, -78.9 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 138.1, -78.9 , 0 );

setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.5, 1.5 );

setRotateKey( spep_2 + 86 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -26.7 );

-- ** 音 ** --
--連続気弾発射
SE009 = playSeVer2( spep_2 + 6, 1021, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 6, 1403, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE010, 141 );
SE011 = playSeVer2( spep_2 + 6, 1409, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 6, 1406, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 6, SE012, 141 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 76; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 8, SE009, 0);
stopSe( SP_dodge - 8, SE010, 0);
stopSe( SP_dodge - 8, SE011, 0);
stopSe( SP_dodge - 8, SE012, 0);

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

-- ** 音 ** --
--連続爆発
SE013 = playSeVer2( spep_2 + 90, 1011, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 106, 1023, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 122, 1024, "", 0, 0, 0, -1);

--連続気弾発射
SE016 = playSeVer2( spep_2 + 148, 1406, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 148, SE016, 141 );
SE019 = playSeVer2( spep_2 + 274, 1021, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 290, 1406, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 290, SE020, 141 );
SE021 = playSeVer2( spep_2 + 352, 1403, "",spep_2 + 510, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 352, SE021, 141 );
SE022 = playSeVer2( spep_2 + 352, 1409, "",spep_2 + 516, 0, 66, -1);

--連続爆発
SE017 = playSeVer2( spep_2 + 168, 1023, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 222, 1188, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 350, 1159, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 390, 1067, "", 0, 0, 0, -1);

--イナヅマ
SE025 = playSeVer2( spep_2 + 466, 1147, "",spep_2 + 582, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 466, SE025, 25 );
SE032 = playSeVer2( spep_2 + 564, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 564, SE032, 71 );

--オーラ
SE026 = playSeVer2( spep_2 + 466, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE026, 32 );
SE027 = playSeVer2( spep_2 + 490, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 490, SE027, 32 );
SE028 = playSeVer2( spep_2 + 514, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 514, SE028, 32 );
SE030 = playSeVer2( spep_2 + 538, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 538, SE030, 32 );
SE031 = playSeVer2( spep_2 + 562, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 562, SE031, 63 );
SE033 = playSeVer2( spep_2 + 586, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 586, SE033, 63 );
SE034 = playSeVer2( spep_2 + 610, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 610, SE034, 63 );
SE036 = playSeVer2( spep_2 + 634, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 634, SE036, 63 );
SE037 = playSeVer2( spep_2 + 658, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 658, SE037, 63 );
SE038 = playSeVer2( spep_2 + 682, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 682, SE038, 63 );

--画面遷移
SE029 = playSeVer2( spep_2 + 538, 8, "", 0, 0, 0, -1);

--鼻さする
SE035 = playSeVer2( spep_2 + 620, 1310, "",spep_2 + 642, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 620, SE035, 116 );


-- ** ダメージ表示 ** --
hideKoScreen();
fadeKoLabel(1.0, 0.5)
dealDamage( spep_2 + 600); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム 718f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 118;

setupMovie(0, SP_02, 0, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 34;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]
--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--浮く
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 63, "", 0, 0, 0, -1);

--気を溜めてさらにあがる
SE004 = playSeVer2( spep_0 + 56, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 60, 1035, "",spep_0 + 140, 0, 12, -1);
SE006 = playSeVer2( spep_0 + 60, 1043, "",spep_0 + 142, 0, 16, -1);
SE007 = playSeVer2( spep_0 + 60, 20, "",spep_0 + 140, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 60, SE007, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --118f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- カードカットイン後
-------------------------------------------------
MAX_FRAME_2 = 718;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン後(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 86 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 166 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 86 + OFFSET_X, 1,4 );
changeAnime( spep_2 + 104 + OFFSET_X, 1,6 );

setMoveKey( spep_2 + 86 + OFFSET_X, 1, -138.1, -96.5 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -138.1, -96.5 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -138.1, -78.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -138.1, -78.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -138.1, -111.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -138.1, -111.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -138.1, -88.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -138.1, -88.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -138.1, -101.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -138.1, -101.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -138.1, -96.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -138.1, -96.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -138.1, -78.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -138.1, -78.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -138.1, -111.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -138.1, -111.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -138.1, -88.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -138.1, -88.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -138.1, -101.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -138.1, -101.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -138.1, -96.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -138.1, -96.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -138.1, -78.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -138.1, -78.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -138.1, -111.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -138.1, -111.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -138.1, -88.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -138.1, -88.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -138.1, -101.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -138.1, -101.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -138.1, -96.4 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -138.1, -96.4 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -138.1, -78.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -138.1, -78.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -138.1, -111.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -138.1, -111.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -138.1, -88.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -138.1, -88.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -138.1, -101.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -138.1, -101.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -138.1, -96.4 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -138.1, -96.4 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -138.1, -78.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -138.1, -78.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -138.1, -111.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -138.1, -111.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -138.1, -88.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -138.1, -88.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -138.1, -101.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -138.1, -101.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -138.1, -96.4 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -138.1, -96.4 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -138.1, -78.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -138.1, -78.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -138.1, -111.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -138.1, -111.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -138.1, -88.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -138.1, -88.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -138.1, -101.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -138.1, -101.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -138.1, -96.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -138.1, -96.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -138.1, -78.9 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -138.1, -78.9 , 0 );

setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.5, 1.5 );

setRotateKey( spep_2 + 86 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 26.7 );

-- ** 音 ** --
--連続気弾発射
SE009 = playSeVer2( spep_2 + 6, 1021, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 6, 1403, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE010, 141 );
SE011 = playSeVer2( spep_2 + 6, 1409, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 6, 1406, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 6, SE012, 141 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 76; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 8, SE009, 0);
stopSe( SP_dodge - 8, SE010, 0);
stopSe( SP_dodge - 8, SE011, 0);
stopSe( SP_dodge - 8, SE012, 0);

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

-- ** 音 ** --
--連続爆発
SE013 = playSeVer2( spep_2 + 90, 1011, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 106, 1023, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 122, 1024, "", 0, 0, 0, -1);

--連続気弾発射
SE016 = playSeVer2( spep_2 + 148, 1406, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 148, SE016, 141 );
SE019 = playSeVer2( spep_2 + 274, 1021, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 290, 1406, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 290, SE020, 141 );
SE021 = playSeVer2( spep_2 + 352, 1403, "",spep_2 + 510, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 352, SE021, 141 );
SE022 = playSeVer2( spep_2 + 352, 1409, "",spep_2 + 516, 0, 66, -1);

--連続爆発
SE017 = playSeVer2( spep_2 + 168, 1023, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 222, 1188, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 350, 1159, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 390, 1067, "", 0, 0, 0, -1);

--イナヅマ
SE025 = playSeVer2( spep_2 + 466, 1147, "",spep_2 + 582, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 466, SE025, 25 );
SE032 = playSeVer2( spep_2 + 564, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 564, SE032, 71 );

--オーラ
SE026 = playSeVer2( spep_2 + 466, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE026, 32 );
SE027 = playSeVer2( spep_2 + 490, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 490, SE027, 32 );
SE028 = playSeVer2( spep_2 + 514, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 514, SE028, 32 );
SE030 = playSeVer2( spep_2 + 538, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 538, SE030, 32 );
SE031 = playSeVer2( spep_2 + 562, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 562, SE031, 63 );
SE033 = playSeVer2( spep_2 + 586, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 586, SE033, 63 );
SE034 = playSeVer2( spep_2 + 610, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 610, SE034, 63 );
SE036 = playSeVer2( spep_2 + 634, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 634, SE036, 63 );
SE037 = playSeVer2( spep_2 + 658, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 658, SE037, 63 );
SE038 = playSeVer2( spep_2 + 682, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 682, SE038, 63 );

--画面遷移
SE029 = playSeVer2( spep_2 + 538, 8, "", 0, 0, 0, -1);

--鼻さする
SE035 = playSeVer2( spep_2 + 620, 1310, "",spep_2 + 642, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 620, SE035, 116 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 600); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム 718f

end