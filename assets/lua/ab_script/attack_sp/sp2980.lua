--1032810:UR_タマガミ・ナンバー・ワン_EX必殺技：オーバーヒートブレード
--sp_effect_b4_00414
--sp2980

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164357; --開幕〜ナンバーワンが画面に向かってダッシュ ef_001
SP_02  = 164358; --画面手前からナンバー・ワンがIN～フィニッシュまで ef_002

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

--DISABLE_VOICE_IF_DOUBLE_SPEED();

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 +  210;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 240);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 240, SP_01, spep_2 + 240 + 2-1, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
    else

        setupMovie(0 , SP_01, 0, 1);
    end


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜ナンバーワンが画面に向かってダッシュ
-------------------------------------------------
MAX_FRAME_0 = 210;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕〜ナンバーワンが画面に向かってダッシュ(ef_001)
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
spep_x = spep_0 + 36;

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
--構える
SE001 = playSeVer2( spep_0 + 36, 1150, "", 0, 0, 0, -1);
setStartTimeMs( SE001,  883 );
--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 228, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
--構える
SE003 = playSeVer2( spep_0 + 22, 1317, "", 0, 0, 0, -1);
--目光る
SE004 = playSeVer2( spep_0 + 20, 1256, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE004, 158 );
setStartTimeMs( SE004,  -100 );
setPitch( spep_0 + 20, SE004, -100 );
setTimeStretch( SE004, 0.93, 30, 4 );

SE005 = playSeVer2( spep_0 + 34, 1303, "",spep_0 + 114, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 34, SE005, 73 );
setPitch( spep_0 + 34, SE005, -200 );
setTimeStretch( SE005, 0.87, 30, 4 );
SE006 = playSeVer2( spep_0 + 34, 1305, "",spep_0 + 168, 0, 54, -1);

SE008 = playSeVer2( spep_0 + 60, 1438, "", 0, 0, 0, -1);
--向かってくる
SE009 = playSeVer2( spep_0 + 166, 1119, "",spep_0 + 218, 8, 12, -1);
setSeVolumeByWorkId( spep_0 + 166, SE009, 84 );
setStartTimeMs( SE009,  400 );
SE010 = playSeVer2( spep_0 + 164, 44, "",spep_0 + 218, 0, 12, -1);
SE011 = playSeVer2( spep_0 + 164, 1117, "",spep_0 + 218, 0, 12, -1);
SE012 = playSeVer2( spep_0 + 164, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 180; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
-- stopSe( SP_dodge - 12, SE00, 0);
--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 210

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinEx(spep_1, 0);

-------------------------------------------------
-- 画面手前からナンバー・ワンがIN～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 482;

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

--[[
finish_b = entryEffect( spep_2 + 0, SP_02b, 0x100, -1, 0, 0, 0); -- 画面手前からナンバー・ワンがIN～フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 56 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 4 );
changeAnime( spep_2 + 18 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 0, 1, -124.3, -76.4 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -124.3, -76.4 , 0 );
--setMoveKey( spep_2 + 18 + OFFSET_X, 1, -245.3, -69.6 , 0 );
--setMoveKey( spep_2 + 19 + OFFSET_X, 1, -245.3, -69.6 , 0 );

setMoveKey( spep_2 + 18 + OFFSET_X, 1, -200, -69.6 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -200, -69.6 , 0 );

setMoveKey( spep_2 + 20 + OFFSET_X, 1, -169.1, -70.8 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -169.1, -70.8 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -150.7, -90.7 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -150.7, -90.7 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -210.6, -35.5 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -210.6, -35.5 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -242, 10.4 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -242, 10.4 , 0 );
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
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -252, 0 , 0 );

setScaleKey( spep_2 + 0, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.69, 2.69 );
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
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.84, 1.84 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, 0 );
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
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -16.6 );

--敵の動き2
setDisp( spep_2 + 272 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 322 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 272 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 272 + OFFSET_X, 1, 236, -323.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 236, -323.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 236.1, -322.8 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 236.1, -322.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 236.4, -319.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 236.4, -319.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 236.8, -315.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 236.8, -315.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 237.5, -308.4 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 237.5, -308.4 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 238.3, -299.8 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 238.3, -299.8 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 239.3, -289.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 239.3, -289.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 240.4, -276.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 240.4, -276.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 241.8, -262.4 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 241.8, -262.4 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 243.3, -246.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 243.3, -246.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 245, -227.9 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 245, -227.9 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 246.9, -207.7 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 246.9, -207.7 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 249, -185.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 249, -185.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 251.1, -163.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 251.1, -163.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 253, -143.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 253, -143.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 254.7, -125.3 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 254.7, -125.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 256.2, -109 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 256.2, -109 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 257.6, -94.6 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 257.6, -94.6 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 258.8, -82.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 258.8, -82.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 259.8, -71.6 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 259.8, -71.6 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 264.6, -67 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 264.6, -67 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 253.2, -34.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 253.2, -34.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 267.7, -75.5 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 267.7, -75.5 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 247.9, 1.4 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 247.9, 1.4 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 262, -99.6 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 262, -99.6 , 0 );

setScaleKey( spep_2 + 272 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 2.22, 2.22 );

setRotateKey( spep_2 + 272 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -40.9 );

--敵の動き3
setDisp( spep_2 + 344 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 482 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 344 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 344 + OFFSET_X, 1, 342.7, -0.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 342.7, -0.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 303.3, 24.2 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 303.3, 24.2 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 351, -22.2 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 351, -22.2 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 320.4, 6.6 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 320.4, 6.6 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 415.9, -18.4 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 415.9, -18.4 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 361.8, 10.1 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 361.8, 10.1 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 396.5, -33.2 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 396.5, -33.2 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 351.4, -0.9 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 351.4, -0.9 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 393.4, -47.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 393.4, -47.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 355.3, -7.8 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 355.3, -7.8 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 391.2, -34.3 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 391.2, -34.3 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 367.1, -24.7 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 367.1, -24.7 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 384.9, -39.2 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 384.9, -39.2 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 374.7, -25.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 374.7, -25.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 388.5, -36 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 388.5, -36 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 386.2, -34.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 386.2, -34.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 396, -40.9 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 396, -40.9 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 387.6, -33.3 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 387.6, -33.3 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 395.3, -37.7 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 395.3, -37.7 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 392.9, -36.1 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 392.9, -36.1 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 402.5, -42.5 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 402.5, -42.5 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 396.1, -38.8 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 396.1, -38.8 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 401.6, -39.2 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 401.6, -39.2 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 399.1, -37.6 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 399.1, -37.6 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 406.5, -39.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 406.5, -39.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 401.9, -34.3 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 401.9, -34.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 403.3, -34.6 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 403.3, -34.6 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 404.7, -34.9 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 404.7, -34.9 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 406, -35.2 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 406, -35.2 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 407.3, -35.6 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 407.3, -35.6 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 408.6, -35.9 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 408.6, -35.9 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 409.8, -36.2 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 409.8, -36.2 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 411, -36.5 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 411, -36.5 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 412.2, -36.7 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 412.2, -36.7 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 413.3, -37 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 413.3, -37 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 414.4, -37.3 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 414.4, -37.3 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 415.5, -37.5 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 415.5, -37.5 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 416.6, -37.8 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 416.6, -37.8 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 417.6, -38 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 417.6, -38 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 418.5, -38.3 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 418.5, -38.3 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 419.5, -38.5 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 419.5, -38.5 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 420.4, -38.7 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 420.4, -38.7 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 421.3, -38.9 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 421.3, -38.9 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 422.1, -39.1 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 422.1, -39.1 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 423, -39.3 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 423, -39.3 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 423.7, -39.5 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 423.7, -39.5 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 424.5, -39.7 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 424.5, -39.7 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 425.2, -39.9 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 425.2, -39.9 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 425.9, -40.1 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 425.9, -40.1 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 426.6, -40.2 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 426.6, -40.2 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 427.2, -40.4 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 427.2, -40.4 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 427.8, -40.5 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 427.8, -40.5 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 428.3, -40.6 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 428.3, -40.6 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 428.9, -40.8 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 428.9, -40.8 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 429.4, -40.9 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 429.4, -40.9 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 429.8, -41 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 429.8, -41 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 430.3, -41.1 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 430.3, -41.1 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 430.7, -41.2 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 430.7, -41.2 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 431, -41.3 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 431, -41.3 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 431.4, -41.4 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 431.4, -41.4 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 431.7, -41.5 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 431.7, -41.5 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 431.9, -41.5 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 431.9, -41.5 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 432.2, -41.6 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 432.2, -41.6 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 432.4, -41.6 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 432.4, -41.6 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 432.6, -41.7 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 432.6, -41.7 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 432.7, -41.7 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 432.7, -41.7 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 432.8, -41.7 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 432.8, -41.7 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 432.9, -41.7 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 432.9, -41.7 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 433, -41.8 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 433, -41.8 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 432.8, -41.8 , 0 );

setScaleKey( spep_2 + 344 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_2 + 344 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 54.4 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 54.4 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 56.1 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, 56.1 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 57.6 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, 57.6 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 59.1 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 59.1 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 60.4 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 60.4 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 60.7 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, 60.7 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 60.9 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 60.9 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 61.1 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, 61.1 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, 61.5 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, 61.5 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, 61.7 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, 61.7 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 61.9 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, 61.9 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, 62 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, 62 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, 62.2 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, 62.2 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, 62.4 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 62.6 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, 62.6 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, 62.8 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, 62.8 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, 62.9 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, 62.9 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, 63.1 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, 63.1 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, 63.3 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, 63.3 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 63.6 );
setRotateKey( spep_2 + 389 + OFFSET_X, 1, 63.6 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, 63.7 );
setRotateKey( spep_2 + 391 + OFFSET_X, 1, 63.7 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, 64 );
setRotateKey( spep_2 + 395 + OFFSET_X, 1, 64 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, 64.2 );
setRotateKey( spep_2 + 397 + OFFSET_X, 1, 64.2 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, 64.3 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, 64.3 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, 64.5 );
setRotateKey( spep_2 + 401 + OFFSET_X, 1, 64.5 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, 64.7 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, 64.7 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, 64.9 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, 64.9 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, 65 );
setRotateKey( spep_2 + 409 + OFFSET_X, 1, 65 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, 65.1 );
setRotateKey( spep_2 + 411 + OFFSET_X, 1, 65.1 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, 65.2 );
setRotateKey( spep_2 + 413 + OFFSET_X, 1, 65.2 );
setRotateKey( spep_2 + 414 + OFFSET_X, 1, 65.3 );
setRotateKey( spep_2 + 415 + OFFSET_X, 1, 65.3 );
setRotateKey( spep_2 + 416 + OFFSET_X, 1, 65.5 );
setRotateKey( spep_2 + 417 + OFFSET_X, 1, 65.5 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, 65.6 );
setRotateKey( spep_2 + 419 + OFFSET_X, 1, 65.6 );
setRotateKey( spep_2 + 420 + OFFSET_X, 1, 65.7 );
setRotateKey( spep_2 + 421 + OFFSET_X, 1, 65.7 );
setRotateKey( spep_2 + 422 + OFFSET_X, 1, 65.8 );
setRotateKey( spep_2 + 423 + OFFSET_X, 1, 65.8 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, 65.9 );
setRotateKey( spep_2 + 425 + OFFSET_X, 1, 65.9 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, 66 );
setRotateKey( spep_2 + 427 + OFFSET_X, 1, 66 );
setRotateKey( spep_2 + 428 + OFFSET_X, 1, 66.1 );
setRotateKey( spep_2 + 431 + OFFSET_X, 1, 66.1 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 66.3 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, 66.3 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, 66.4 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, 66.4 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, 66.5 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, 66.5 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, 66.6 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, 66.6 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, 66.7 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, 66.7 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, 66.8 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, 66.8 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, 66.9 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, 66.9 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, 67 );
setRotateKey( spep_2 + 459 + OFFSET_X, 1, 67 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, 67.1 );
setRotateKey( spep_2 + 465 + OFFSET_X, 1, 67.1 );
setRotateKey( spep_2 + 466 + OFFSET_X, 1, 67.2 );
setRotateKey( spep_2 + 475 + OFFSET_X, 1, 67.2 );
setRotateKey( spep_2 + 476 + OFFSET_X, 1, 67.3 );
setRotateKey( spep_2 + 482 + OFFSET_X, 1, 67.3 );

-- ** 音 ** --

--斬り上げ
SE014 = playSeVer2( spep_2 + 4, 1003, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 16, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE015, 77 );
SE016 = playSeVer2( spep_2 + 16, 1032, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 20, 1143, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 20, 1179, "",spep_2 + 94, 0, 40, -1);
--連続斬り１
SE019 = playSeVer2( spep_2 + 60, 1003, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 64, 1143, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 64, 1142, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 64, 1032, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 64, 1009, "", 0, 0, 0, -1);
--連続斬り中背景（音切りたくない）
SE024 = playSeVer2( spep_2 + 64, 1264, "", 0, 0, 0, -1);
--連続斬り２
SE025 = playSeVer2( spep_2 + 90, 1003, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 96, 1141, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 96, 1142, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 96, 1010, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 96, 1032, "", 0, 0, 0, -1);
--連続斬り３
SE030 = playSeVer2( spep_2 + 132, 1003, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 138, 1143, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 138, 1142, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 138, 1110, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 138, 1032, "", 0, 0, 0, -1);
--連続斬り４
SE035 = playSeVer2( spep_2 + 162, 1003, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 168, 1141, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 168, 1142, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 168, 1110, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 168, 1032, "", 0, 0, 0, -1);
--連続斬り５
SE040 = playSeVer2( spep_2 + 194, 1003, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 198, 1143, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 198, 1142, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 198, 1110, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 198, 1032, "", 0, 0, 0, -1);
--飛び込んでくる
SE045 = playSeVer2( spep_2 + 248, 1000, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 248, 1117, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 274, 1207, "", 0, 4, 0, -1);
setStartTimeMs( SE047,  433 );
SE048 = playSeVer2( spep_2 + 248, 1014, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 282, 1360, "", 0, 0, 0, -1);
--ラスト斬りつけ
SE050 = playSeVer2( spep_2 + 334, 1426, "",spep_2 + 426, 4, 64, -1);
setSeVolumeByWorkId( spep_2 + 334, SE050, 56 );
setStartTimeMs( SE050,  233 );
SE051 = playSeVer2( spep_2 + 320, 1004, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 338, 1142, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 342, 1156, "",spep_2 + 474, 0, 70, -1);
SE054 = playSeVer2( spep_2 + 344, 1032, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 368); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 482

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

setupMovie(0 , SP_01, 0, 1);
spep_0 = 0;

-------------------------------------------------
-- 開幕〜ナンバーワンが画面に向かってダッシュ
-------------------------------------------------
MAX_FRAME_0 = 210;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕〜ナンバーワンが画面に向かってダッシュ(ef_001)
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
spep_x = spep_0 + 36;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

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

----顔カットイン
-- SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 音 ** --
--構える
SE001 = playSeVer2( spep_0 + 36, 1150, "", 0, 0, 0, -1);
setStartTimeMs( SE001,  883 );
--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 228, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
--構える
SE003 = playSeVer2( spep_0 + 22, 1317, "", 0, 0, 0, -1);
--目光る
SE004 = playSeVer2( spep_0 + 20, 1256, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE004, 158 );
setStartTimeMs( SE004,  -100 );
setPitch( spep_0 + 20, SE004, -100 );
setTimeStretch( SE004, 0.93, 30, 4 );

SE005 = playSeVer2( spep_0 + 34, 1303, "",spep_0 + 114, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 34, SE005, 73 );
setPitch( spep_0 + 34, SE005, -200 );
setTimeStretch( SE005, 0.87, 30, 4 );
SE006 = playSeVer2( spep_0 + 34, 1305, "",spep_0 + 168, 0, 54, -1);

SE008 = playSeVer2( spep_0 + 60, 1438, "", 0, 0, 0, -1);
--向かってくる
SE009 = playSeVer2( spep_0 + 166, 1119, "",spep_0 + 218, 8, 12, -1);
setSeVolumeByWorkId( spep_0 + 166, SE009, 84 );
setStartTimeMs( SE009,  400 );
SE010 = playSeVer2( spep_0 + 164, 44, "",spep_0 + 218, 0, 12, -1);
SE011 = playSeVer2( spep_0 + 164, 1117, "",spep_0 + 218, 0, 12, -1);
SE012 = playSeVer2( spep_0 + 164, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 180; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
-- stopSe( SP_dodge - 12, SE00, 0);
--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
spep_1 = spep_0 + MAX_FRAME_0;  -- 210

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinEx(spep_1, 0);

-------------------------------------------------
-- 画面手前からナンバー・ワンがIN～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 482;

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

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 56 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 + 18 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 0, 1, 124.3, -76.4 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 124.3, -76.4 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 200, -69.6 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 200, -69.6 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 169.1, -70.8 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 169.1, -70.8 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 150.7, -90.7 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 150.7, -90.7 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 210.6, -35.5 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 210.6, -35.5 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 242, 10.4 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 242, 10.4 , 0 );
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
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 252, 0 , 0 );

setScaleKey( spep_2 + 0, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.69, 2.69 );
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
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.84, 1.84 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, 0 );
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
setRotateKey( spep_2 + 56 + OFFSET_X, 1, 16.6 );

--敵の動き2
setDisp( spep_2 + 272 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 322 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 272 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 272 + OFFSET_X, 1, -236, -323.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -236, -323.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -236.1, -322.8 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -236.1, -322.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -236.4, -319.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -236.4, -319.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -236.8, -315.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -236.8, -315.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -237.5, -308.4 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -237.5, -308.4 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -238.3, -299.8 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -238.3, -299.8 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -239.3, -289.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -239.3, -289.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -240.4, -276.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -240.4, -276.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -241.8, -262.4 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -241.8, -262.4 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -243.3, -246.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -243.3, -246.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -245, -227.9 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -245, -227.9 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -246.9, -207.7 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -246.9, -207.7 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -249, -185.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -249, -185.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -251.1, -163.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -251.1, -163.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -253, -143.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -253, -143.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -254.7, -125.3 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -254.7, -125.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -256.2, -109 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -256.2, -109 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -257.6, -94.6 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -257.6, -94.6 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -258.8, -82.1 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -258.8, -82.1 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -259.8, -71.6 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -259.8, -71.6 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -264.6, -67 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -264.6, -67 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -253.2, -34.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -253.2, -34.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -267.7, -75.5 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -267.7, -75.5 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -247.9, 1.4 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -247.9, 1.4 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -262, -99.6 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -262, -99.6 , 0 );

setScaleKey( spep_2 + 272 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 2.22, 2.22 );

setRotateKey( spep_2 + 272 + OFFSET_X, 1, 40.9 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 40.9 );

--敵の動き3
setDisp( spep_2 + 344 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 482 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 344 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 344 + OFFSET_X, 1, -342.7, -0.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -342.7, -0.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -303.3, 24.2 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -303.3, 24.2 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -351, -22.2 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -351, -22.2 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -320.4, 6.6 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -320.4, 6.6 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -415.9, -18.4 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -415.9, -18.4 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -361.8, 10.1 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -361.8, 10.1 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -396.5, -33.2 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -396.5, -33.2 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -351.4, -0.9 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -351.4, -0.9 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -393.4, -47.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -393.4, -47.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -355.3, -7.8 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -355.3, -7.8 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -391.2, -34.3 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -391.2, -34.3 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -367.1, -24.7 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -367.1, -24.7 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -384.9, -39.2 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -384.9, -39.2 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -374.7, -25.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -374.7, -25.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -388.5, -36 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -388.5, -36 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -386.2, -34.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -386.2, -34.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -396, -40.9 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -396, -40.9 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -387.6, -33.3 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -387.6, -33.3 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -395.3, -37.7 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -395.3, -37.7 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -392.9, -36.1 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -392.9, -36.1 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -402.5, -42.5 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -402.5, -42.5 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -396.1, -38.8 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -396.1, -38.8 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -401.6, -39.2 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -401.6, -39.2 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -399.1, -37.6 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -399.1, -37.6 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -406.5, -39.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -406.5, -39.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -401.9, -34.3 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -401.9, -34.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -403.3, -34.6 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -403.3, -34.6 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -404.7, -34.9 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -404.7, -34.9 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -406, -35.2 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -406, -35.2 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -407.3, -35.6 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -407.3, -35.6 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -408.6, -35.9 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -408.6, -35.9 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -409.8, -36.2 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -409.8, -36.2 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -411, -36.5 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -411, -36.5 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -412.2, -36.7 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -412.2, -36.7 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -413.3, -37 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -413.3, -37 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -414.4, -37.3 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -414.4, -37.3 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -415.5, -37.5 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -415.5, -37.5 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -416.6, -37.8 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -416.6, -37.8 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -417.6, -38 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -417.6, -38 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -418.5, -38.3 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -418.5, -38.3 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -419.5, -38.5 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -419.5, -38.5 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -420.4, -38.7 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -420.4, -38.7 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -421.3, -38.9 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -421.3, -38.9 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -422.1, -39.1 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -422.1, -39.1 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -423, -39.3 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -423, -39.3 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -423.7, -39.5 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -423.7, -39.5 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -424.5, -39.7 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -424.5, -39.7 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -425.2, -39.9 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -425.2, -39.9 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -425.9, -40.1 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -425.9, -40.1 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -426.6, -40.2 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -426.6, -40.2 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -427.2, -40.4 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -427.2, -40.4 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -427.8, -40.5 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -427.8, -40.5 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -428.3, -40.6 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -428.3, -40.6 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -428.9, -40.8 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -428.9, -40.8 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -429.4, -40.9 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -429.4, -40.9 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -429.8, -41 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -429.8, -41 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -430.3, -41.1 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -430.3, -41.1 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -430.7, -41.2 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -430.7, -41.2 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -431, -41.3 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -431, -41.3 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -431.4, -41.4 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -431.4, -41.4 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -431.7, -41.5 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -431.7, -41.5 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -431.9, -41.5 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -431.9, -41.5 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -432.2, -41.6 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -432.2, -41.6 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -432.4, -41.6 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -432.4, -41.6 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -432.6, -41.7 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -432.6, -41.7 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -432.7, -41.7 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -432.7, -41.7 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -432.8, -41.7 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -432.8, -41.7 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -432.9, -41.7 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -432.9, -41.7 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -433, -41.8 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -433, -41.8 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -432.8, -41.8 , 0 );

setScaleKey( spep_2 + 344 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_2 + 344 + OFFSET_X, 1, -52.6 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -52.6 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -54.4 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -54.4 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -56.1 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -56.1 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, -57.6 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -57.6 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -60.4 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -60.4 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -60.7 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, -60.7 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -60.9 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, -60.9 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, -61.3 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, -61.3 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, -61.5 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, -61.5 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, -61.9 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, -61.9 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -62 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, -62 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -62.4 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, -62.6 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, -62.6 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -62.9 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, -62.9 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -63.1 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, -63.1 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, -63.4 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, -63.4 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -63.6 );
setRotateKey( spep_2 + 389 + OFFSET_X, 1, -63.6 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_2 + 391 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, -63.9 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, -63.9 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 395 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_2 + 397 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, -64.3 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, -64.3 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_2 + 401 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, -64.6 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, -64.6 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, -64.9 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, -64.9 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, -65 );
setRotateKey( spep_2 + 409 + OFFSET_X, 1, -65 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, -65.1 );
setRotateKey( spep_2 + 411 + OFFSET_X, 1, -65.1 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, -65.2 );
setRotateKey( spep_2 + 413 + OFFSET_X, 1, -65.2 );
setRotateKey( spep_2 + 414 + OFFSET_X, 1, -65.3 );
setRotateKey( spep_2 + 415 + OFFSET_X, 1, -65.3 );
setRotateKey( spep_2 + 416 + OFFSET_X, 1, -65.5 );
setRotateKey( spep_2 + 417 + OFFSET_X, 1, -65.5 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, -65.6 );
setRotateKey( spep_2 + 419 + OFFSET_X, 1, -65.6 );
setRotateKey( spep_2 + 420 + OFFSET_X, 1, -65.7 );
setRotateKey( spep_2 + 421 + OFFSET_X, 1, -65.7 );
setRotateKey( spep_2 + 422 + OFFSET_X, 1, -65.8 );
setRotateKey( spep_2 + 423 + OFFSET_X, 1, -65.8 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, -65.9 );
setRotateKey( spep_2 + 425 + OFFSET_X, 1, -65.9 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, -66 );
setRotateKey( spep_2 + 427 + OFFSET_X, 1, -66 );
setRotateKey( spep_2 + 428 + OFFSET_X, 1, -66.1 );
setRotateKey( spep_2 + 431 + OFFSET_X, 1, -66.1 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, -66.3 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, -66.3 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, -66.4 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, -66.4 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, -66.5 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, -66.5 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, -66.6 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, -66.6 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, -66.7 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, -66.7 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, -66.8 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, -66.8 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, -66.9 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, -66.9 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, -67 );
setRotateKey( spep_2 + 459 + OFFSET_X, 1, -67 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, -67.1 );
setRotateKey( spep_2 + 465 + OFFSET_X, 1, -67.1 );
setRotateKey( spep_2 + 466 + OFFSET_X, 1, -67.2 );
setRotateKey( spep_2 + 475 + OFFSET_X, 1, -67.2 );
setRotateKey( spep_2 + 476 + OFFSET_X, 1, -67.3 );
setRotateKey( spep_2 + 482 + OFFSET_X, 1, -67.3 );

-- ** 音 ** --

--斬り上げ
SE014 = playSeVer2( spep_2 + 4, 1003, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 16, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE015, 77 );
SE016 = playSeVer2( spep_2 + 16, 1032, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 20, 1143, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 20, 1179, "",spep_2 + 94, 0, 40, -1);
--連続斬り１
SE019 = playSeVer2( spep_2 + 60, 1003, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 64, 1143, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 64, 1142, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 64, 1032, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 64, 1009, "", 0, 0, 0, -1);
--連続斬り中背景（音切りたくない）
SE024 = playSeVer2( spep_2 + 64, 1264, "", 0, 0, 0, -1);
--連続斬り２
SE025 = playSeVer2( spep_2 + 90, 1003, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 96, 1141, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 96, 1142, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 96, 1010, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 96, 1032, "", 0, 0, 0, -1);
--連続斬り３
SE030 = playSeVer2( spep_2 + 132, 1003, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 138, 1143, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 138, 1142, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 138, 1110, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 138, 1032, "", 0, 0, 0, -1);
--連続斬り４
SE035 = playSeVer2( spep_2 + 162, 1003, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 168, 1141, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 168, 1142, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 168, 1110, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 168, 1032, "", 0, 0, 0, -1);
--連続斬り５
SE040 = playSeVer2( spep_2 + 194, 1003, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 198, 1143, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 198, 1142, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 198, 1110, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 198, 1032, "", 0, 0, 0, -1);
--飛び込んでくる
SE045 = playSeVer2( spep_2 + 248, 1000, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 248, 1117, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 274, 1207, "", 0, 4, 0, -1);
setStartTimeMs( SE047,  433 );
SE048 = playSeVer2( spep_2 + 248, 1014, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 282, 1360, "", 0, 0, 0, -1);
--ラスト斬りつけ
SE050 = playSeVer2( spep_2 + 334, 1426, "",spep_2 + 426, 4, 64, -1);
setSeVolumeByWorkId( spep_2 + 334, SE050, 56 );
setStartTimeMs( SE050,  233 );
SE051 = playSeVer2( spep_2 + 320, 1004, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 338, 1142, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 342, 1156, "",spep_2 + 474, 0, 70, -1);
SE054 = playSeVer2( spep_2 + 344, 1032, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 368); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 482

end