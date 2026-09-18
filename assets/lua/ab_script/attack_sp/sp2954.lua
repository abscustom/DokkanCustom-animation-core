--1031250:SSR_タマガミ・ナンバー・ワン_必殺技：ルミナスブレード
--sp_effect_b4_00407
--sp2954

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164263; --開幕〜ナンバーワンが画面に向かってダッシュ ef_001
SP_02  = 164264; --画面手前からナンバー・ワンがIN～フィニッシュまで ef_002
SP_02b = 164265; --画面手前からナンバー・ワンがIN～フィニッシュまで ef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜ナンバーワンが画面に向かってダッシュ
-------------------------------------------------
MAX_FRAME_0 = 164;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕〜ナンバーワンが画面に向かってダッシュ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

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


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 180, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--顔カットイン
--SE002 = playSeVer2( spep_0 + 6, 1018, "", 0, 0, 0, -1);
--構える
SE003 = playSeVer2( spep_0 + 94, 1150, "", 0, 2, 0, -1);
setStartTimeMs( SE003, 600 );
SE004 = playSeVer2( spep_0 + 98, 1317, "", 0, 0, 0, -1);

--向かってくる
SE005 = playSeVer2( spep_0 + 122, 1119, "",spep_0 + 172, 8, 12, -1);
setSeVolumeByWorkId( spep_0 + 122, SE005, 84 );
setStartTimeMs( SE005, 400 );
SE006 = playSeVer2( spep_0 + 120, 44, "",spep_0 + 172, 0, 12, -1);
SE007 = playSeVer2( spep_0 + 120, 1117, "",spep_0 + 172, 0, 12, -1);
SE008 = playSeVer2( spep_0 + 120, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 150; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);

stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

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
-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 164

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--斬りあげる
SE010 = playSeVer2( spep_1 + 88, 1003, "", 0, 0, 0, -1);

-------------------------------------------------
-- 画面手前からナンバー・ワンがIN～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 334;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 画面手前からナンバー・ワンがIN～フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 画面手前からナンバー・ワンがIN～フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 48 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 4 );
changeAnime( spep_2 + 18 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 0, 1, -124.3, -76.4 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -124.3, -76.4 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -178, -69.6 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -178, -69.6 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -169.1, -70.8 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -169.1, -70.8 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -150.7, -90.7 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -150.7, -90.7 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -210.6, -35.5 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -210.6, -35.5 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -272, 10.4 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -272, 10.4 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -234.8, -14.8 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -234.8, -14.8 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -237.9, -12.1 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -237.9, -12.1 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -240.8, -9.6 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -240.8, -9.6 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -243.3, -7.4 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -243.3, -7.4 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -245.5, -5.5 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -245.5, -5.5 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -247.4, -3.9 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -247.4, -3.9 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -249, -2.5 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -249, -2.5 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -250.3, -1.4 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -250.3, -1.4 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -251.3, -0.5 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -251.3, -0.5 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -252, 0 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -252, 0 , 0 );

setScaleKey( spep_2 + 0, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 1.84, 1.84 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_2 + 23 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_2 + 24 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_2 + 35 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 39 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, -16.6 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -16.6 );

--敵の動き2
setDisp( spep_2 + 146 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 240 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 146 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 146 + OFFSET_X, 1, -103.9, -86 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -103.9, -86 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -114.2, -88.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -114.2, -88.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -119.9, -90 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -119.9, -90 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -119.9, -84 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -119.9, -84 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -122.3, -86.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -122.3, -86.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -124.5, -89.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -124.5, -89.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -126.7, -91.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -126.7, -91.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -128.8, -94.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -128.8, -94.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -130.7, -96.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -130.7, -96.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -132.6, -98.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -132.6, -98.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -134.4, -100.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -134.4, -100.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -136.1, -102.6 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -136.1, -102.6 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -137.8, -104.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -137.8, -104.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -139.3, -106.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -139.3, -106.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -140.7, -107.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -140.7, -107.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -142.1, -109.5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -142.1, -109.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -143.4, -110.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -143.4, -110.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -144.5, -112.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -144.5, -112.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -145.6, -113.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -145.6, -113.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -146.6, -114.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -146.6, -114.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -147.6, -115.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -147.6, -115.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -148.4, -116.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -148.4, -116.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -149.1, -117.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -149.1, -117.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -149.8, -118.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -149.8, -118.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -150.4, -119 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -150.4, -119 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -150.8, -119.5 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -150.8, -119.5 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -151.2, -120 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -151.2, -120 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -151.5, -120.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -151.5, -120.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -149.8, -118.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -149.8, -118.6 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -153.9, -122.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -153.9, -122.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -153.9, -118.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -153.9, -118.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -149.9, -122.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -149.9, -122.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -149.9, -118.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -149.9, -118.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -153.9, -122.8 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -153.9, -122.8 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -153.9, -118.8 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -153.9, -118.8 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -149.9, -122.8 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -149.9, -122.8 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -149.9, -118.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -149.9, -118.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -153.9, -122.8 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -153.9, -122.8 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -153.9, -118.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -153.9, -118.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -149.9, -122.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -149.9, -122.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -148.9, -115.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -148.9, -115.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -154.9, -126.8 , 0 );

setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 146 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -17.7 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -17.7 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -18.5 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -18.5 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -19.4 );


-- ** 音 ** --
--斬りあげる
SE011 = playSeVer2( spep_2 + 8, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE011, 77 );
SE012 = playSeVer2( spep_2 + 8, 1032, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 12, 1143, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 12, 1179, "",spep_2 + 82, 0, 40, -1);

--振りかぶる
SE015 = playSeVer2( spep_2 + 42, 1004, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 46, 8, "",spep_2 + 100, 0, 32, -1);
SE017 = playSeVer2( spep_2 + 46, 1050, "", spep_2 + 73, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE017, 79 );

--飛びかかってくる
SE018 = playSeVer2( spep_2 + 84, 1207, "", 0, 4, 0, -1);
setStartTimeMs( SE018, 433 );
SE019 = playSeVer2( spep_2 + 82, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE019, 75 );
SE020 = playSeVer2( spep_2 + 82, 1117, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 92, 1360, "", 0, 0, 0, -1);

--斬りつける
SE022 = playSeVer2( spep_2 + 136, 1426, "",spep_2 + 224, 4, 64, -1);
setSeVolumeByWorkId( spep_2 + 136, SE022, 56 );
setStartTimeMs( SE022, 233 );
SE023 = playSeVer2( spep_2 + 140, 1142, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 148, 1032, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 152, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 152, SE025, 87 );

--爆発
SE026 = playSeVer2( spep_2 + 202, 1159, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 222, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 216); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 334

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開幕〜ナンバーワンが画面に向かってダッシュ
-------------------------------------------------
MAX_FRAME_0 = 164;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕〜ナンバーワンが画面に向かってダッシュ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

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


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 180, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--顔カットイン
--SE002 = playSeVer2( spep_0 + 6, 1018, "", 0, 0, 0, -1);
--構える
SE003 = playSeVer2( spep_0 + 94, 1150, "", 0, 2, 0, -1);
setStartTimeMs( SE003, 600 );
SE004 = playSeVer2( spep_0 + 98, 1317, "", 0, 0, 0, -1);

--向かってくる
SE005 = playSeVer2( spep_0 + 122, 1119, "",spep_0 + 172, 8, 12, -1);
setSeVolumeByWorkId( spep_0 + 122, SE005, 84 );
setStartTimeMs( SE005, 400 );
SE006 = playSeVer2( spep_0 + 120, 44, "",spep_0 + 172, 0, 12, -1);
SE007 = playSeVer2( spep_0 + 120, 1117, "",spep_0 + 172, 0, 12, -1);
SE008 = playSeVer2( spep_0 + 120, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 150; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);

stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

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
-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 164

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--斬りあげる
SE010 = playSeVer2( spep_1 + 88, 1003, "", 0, 0, 0, -1);

-------------------------------------------------
-- 画面手前からナンバー・ワンがIN～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 334;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 画面手前からナンバー・ワンがIN～フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 画面手前からナンバー・ワンがIN～フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 48 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 + 18 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 0, 1, 124.3, -76.4 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 124.3, -76.4 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 178, -69.6 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 178, -69.6 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 169.1, -70.8 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 169.1, -70.8 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 150.7, -90.7 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 150.7, -90.7 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 210.6, -35.5 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 210.6, -35.5 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 272, 10.4 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 272, 10.4 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 234.8, -14.8 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 234.8, -14.8 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 237.9, -12.1 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 237.9, -12.1 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 240.8, -9.6 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 240.8, -9.6 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 243.3, -7.4 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 243.3, -7.4 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 245.5, -5.5 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 245.5, -5.5 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 247.4, -3.9 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 247.4, -3.9 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 249, -2.5 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 249, -2.5 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 250.3, -1.4 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 250.3, -1.4 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 251.3, -0.5 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 251.3, -0.5 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 252, 0 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 252, 0 , 0 );

setScaleKey( spep_2 + 0, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 1.84, 1.84 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_2 + 23 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_2 + 24 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_2 + 35 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 39 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, 16.6 );

--敵の動き2
setDisp( spep_2 + 146 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 240 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 146 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 146 + OFFSET_X, 1, 103.9, -86 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 103.9, -86 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 114.2, -88.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 114.2, -88.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 119.9, -90 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 119.9, -90 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 119.9, -84 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 119.9, -84 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 122.3, -86.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 122.3, -86.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 124.5, -89.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 124.5, -89.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 126.7, -91.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 126.7, -91.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 128.8, -94.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 128.8, -94.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 130.7, -96.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 130.7, -96.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 132.6, -98.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 132.6, -98.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 134.4, -100.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 134.4, -100.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 136.1, -102.6 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 136.1, -102.6 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 137.8, -104.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 137.8, -104.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 139.3, -106.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 139.3, -106.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 140.7, -107.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 140.7, -107.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 142.1, -109.5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 142.1, -109.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 143.4, -110.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 143.4, -110.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 144.5, -112.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 144.5, -112.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 145.6, -113.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 145.6, -113.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 146.6, -114.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 146.6, -114.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 147.6, -115.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 147.6, -115.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 148.4, -116.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 148.4, -116.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 149.1, -117.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 149.1, -117.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 149.8, -118.3 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 149.8, -118.3 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 150.4, -119 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 150.4, -119 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 150.8, -119.5 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 150.8, -119.5 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 151.2, -120 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 151.2, -120 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 151.5, -120.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 151.5, -120.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 149.8, -118.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 149.8, -118.6 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 153.9, -122.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 153.9, -122.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 153.9, -118.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 153.9, -118.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 149.9, -122.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 149.9, -122.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 149.9, -118.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 149.9, -118.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 153.9, -122.8 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 153.9, -122.8 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 153.9, -118.8 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 153.9, -118.8 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 149.9, -122.8 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 149.9, -122.8 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 149.9, -118.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 149.9, -118.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 153.9, -122.8 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 153.9, -122.8 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 153.9, -118.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 153.9, -118.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 149.9, -122.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 149.9, -122.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 148.9, -115.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 148.9, -115.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 154.9, -126.8 , 0 );

setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 146 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 19.4 );


-- ** 音 ** --
--斬りあげる
SE011 = playSeVer2( spep_2 + 8, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE011, 77 );
SE012 = playSeVer2( spep_2 + 8, 1032, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 12, 1143, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 12, 1179, "",spep_2 + 82, 0, 40, -1);

--振りかぶる
SE015 = playSeVer2( spep_2 + 42, 1004, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 46, 8, "",spep_2 + 100, 0, 32, -1);
SE017 = playSeVer2( spep_2 + 46, 1050, "", spep_2 + 73, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE017, 79 );

--飛びかかってくる
SE018 = playSeVer2( spep_2 + 84, 1207, "", 0, 4, 0, -1);
setStartTimeMs( SE018, 433 );
SE019 = playSeVer2( spep_2 + 82, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE019, 75 );
SE020 = playSeVer2( spep_2 + 82, 1117, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 92, 1360, "", 0, 0, 0, -1);

--斬りつける
SE022 = playSeVer2( spep_2 + 136, 1426, "",spep_2 + 224, 4, 64, -1);
setSeVolumeByWorkId( spep_2 + 136, SE022, 56 );
setStartTimeMs( SE022, 233 );
SE023 = playSeVer2( spep_2 + 140, 1142, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 148, 1032, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 152, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 152, SE025, 87 );

--爆発
SE026 = playSeVer2( spep_2 + 202, 1159, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 222, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 216); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 334


end