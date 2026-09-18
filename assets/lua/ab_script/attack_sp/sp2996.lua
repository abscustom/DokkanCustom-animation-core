--4032930:LR_超サイヤ人ゴッドSSべジータ(進化)+孫悟空(身勝手の極意"兆")_必殺技：戦闘民族の誇り
--sp_effect_b4_00416
--sp2996

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164433; --開幕～ベジータの顔のアップまで ef_001
SP_02  = 164434; --蹴り～フィニッシュ ef_002
SP_03  = 164440; --KOループ ef_003

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

ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_2 = 218 + 94;

        skipFrame(0, spep_2 + 562);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 562, SP_01, spep_2 + 562 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
        --オーラ
        SE042 = playSeVer2( spep_2 + 562+3, 1176, "",spep_2 + 816, 0, 42, -1);
        setSeVolumeByWorkId( spep_2 + 562+3, SE042, 56 );
        SE043 = playSeVer2( spep_2 + 562+3, 1474, "",spep_2 + 820, 0, 42, -1);
        setSeVolumeByWorkId( spep_2 + 562+3, SE043, 200 );

    else
        setupMovie(0, SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～ベジータの顔のアップまで
-------------------------------------------------
MAX_FRAME_0 = 218;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～ベジータの顔のアップまで ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** -- 
--敵の動き1
setDisp( spep_0 + 140 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 156 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 140 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 160 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 140 + OFFSET_X, 1, -351.3, -540.5 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -351.3, -540.5 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -273.6, -438.7 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -273.6, -438.7 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -191.7, -344.8 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -191.7, -344.8 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -137.4, -271.3 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -137.4, -271.3 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -128.3, -253.4 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -128.3, -253.4 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -129.9, -212.6 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -129.9, -212.6 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -131.6, -197 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -131.6, -197 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -133.5, -185.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -133.5, -185.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -133.1, -185.3 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -133.1, -185.3 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -138.2, -170.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -138.2, -170.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -143, -160.2 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -143, -160.2 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -148.2, -155.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -148.2, -155.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -150.5, -152.1 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -150.5, -152.1 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -152.3, -150.4 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -152.3, -150.4 , 0 );

setScaleKey( spep_0 + 140 + OFFSET_X, 1, 7.29, 7.29 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 7.29, 7.29 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.09, 0.09 );

setRotateKey( spep_0 + 140 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -59 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -59 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -58.7 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -58.7 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -58.2 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -58.2 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -57.6 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -57.6 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -56.8 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -56.8 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -55.1 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, -55.1 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -53.7 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, -53.7 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -52.6 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -52.6 );

-- ** 音 ** --
--イナヅマ走る
SE001 = playSeVer2( spep_0 + 0, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 130 );
SE002 = playSeVer2( spep_0 + 0, 1043, "",spep_0 + 66, 0, 20, -1);	
setSeVolumeByWorkId( spep_0 + 0, SE002, 130 );
SE003 = playSeVer2( spep_0 + 2, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 68 );
SE004 = playSeVer2( spep_0 + 26, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 79 );

--向かっていく
SE005 = playSeVer2( spep_0 + 38, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 44, 1277, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 68, 1117, "",spep_0 + 156, 0, 26, -1);

--回転する
SE008 = playSeVer2( spep_0 + 74, 1388, "",spep_0 + 154, 44, 16, -1);
setStartTimeMs( SE008,  100 );
SE009 = playSeVer2( spep_0 + 68, 1450, "",spep_0 + 154, 0, 24, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止 

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
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
-- ** 音 ** --
--蹴り
SE010 = playSeVer2( spep_0 + 120, 1187, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 120, 1120, "", 0, 0, 0, -1);

--譜面激突
SE012 = playSeVer2( spep_0 + 154, 1159, "",spep_0 + 236, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 154, SE012, 71 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 218f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--蹴り１
SE014 = playSeVer2( spep_1 + 88, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 88, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE015, 80 );
SE016 = playSeVer2( spep_1 + 92, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE016, 80 );

-------------------------------------------------
-- 蹴り～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 870;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 蹴り～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

spep_3 = spep_2 + MAX_FRAME_2-2;

KO = entryEffectLife( spep_3 + 0, SP_03, 120, 0x100, -1, 0, 0, 0); -- KOループ(ef_003)
setEffMoveKey( spep_3 + 0, KO, 0, 0 , 0);
setEffMoveKey( spep_3 + 120, KO, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, KO, 1.0, 1.0);
setEffScaleKey( spep_3 + 120, KO, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, KO, 0);
setEffRotateKey( spep_3 + 120, KO, 0);
setEffAlphaKey( spep_3 + 0, KO, 255);
setEffAlphaKey( spep_3 + 120, KO, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 420;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 48 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 38 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 0 + OFFSET_X, 1, -561.6, 237.2 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -196.4, 83 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -196.4, 83 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -145.7, 61.5 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -145.7, 61.5 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -212.6, 80.5 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -212.6, 80.5 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -142.2, 41.8 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -142.2, 41.8 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -92, 58.6 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -92, 58.6 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -98.2, 41.5 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -98.2, 41.5 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -95.4, 40.3 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -95.4, 40.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -130.1, 24.1 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -130.1, 24.1 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -35.7, 78.8 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -35.7, 78.8 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -69.4, 58.1 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -69.4, 58.1 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -92, 38.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -92, 38.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -92.1, 38.9 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -92.1, 38.9 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -91.9, 38.8 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -91.9, 38.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -131.7, 121.1 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -131.7, 121.1 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -118.9, 84 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -118.9, 84 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -184.5, 77.5 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -184.5, 77.5 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -130.4, 47 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -130.4, 47 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -126.7, 76 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -126.7, 76 , 0 );

setScaleKey( spep_2 + 0 + OFFSET_X, 1, 13.25, 13.26 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 2.44, 2.45 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 2.44, 2.45 );

setRotateKey( spep_2 + 0, 1, 52 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, 19 );

--敵の動き2
setDisp( spep_2 + 82 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 114 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 104 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 82 + OFFSET_X, 1, -474.2, -349.5 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -474.2, -349.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -482.1, -338.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -482.1, -338.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -460.2, -207.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -460.2, -207.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -482.2, -121.8 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -482.2, -121.8 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -82.8, -219.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -82.8, -219.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -242, -133.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -242, -133.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -264.5, 121.5 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -264.5, 121.5 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -376.4, 367 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -376.4, 367 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -365.4, 353 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -365.4, 353 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -469.2, 464.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -469.2, 464.9 , 0 );

setScaleKey( spep_2 + 82 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 7.22, 7.22 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 7.22, 7.22 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 8.95, 8.95 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 8.95, 8.95 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 11.34, 11.34 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 11.34, 11.34 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.43, 1.43 );

setRotateKey( spep_2 + 82 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 0 );

--敵の動き3
setDisp( spep_2 + 232 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 274 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 232 + OFFSET_X, 1, 260.9, -422.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 260.9, -422.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 261, -422.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 261, -422.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 146.9, -302.4 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 146.9, -302.4 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 68.6, -219.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 68.6, -219.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 44.5, -194.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 44.5, -194.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 9.7, -157.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 9.7, -157.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -3.6, -143.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -3.6, -143.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -24.5, -121.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -24.5, -121.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -32.9, -112.3 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -32.9, -112.3 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -46.6, -97.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -46.6, -97.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -52.2, -91.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -52.2, -91.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -61.5, -82.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -61.5, -82.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -65.3, -78 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -65.3, -78 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -71.7, -71.3 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -71.7, -71.3 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -74.3, -68.6 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -74.3, -68.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -78.5, -64 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -78.5, -64 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -80.4, -62.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -80.4, -62.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -83.3, -59 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -83.3, -59 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -84.5, -57.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -84.5, -57.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -86.4, -55.8 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -86.4, -55.8 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -87.1, -55 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -87.1, -55 , 0 );

setScaleKey( spep_2 + 232 + OFFSET_X, 1, 11.28, 11.28 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 11.28, 11.28 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 11.16, 11.17 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 11.16, 11.17 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 7.69, 7.7 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 7.69, 7.7 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.3, 1.31 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 1.3, 1.31 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.33, 0.33 );

setRotateKey( spep_2 + 232 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 0 );

--敵の動き4
setDisp( spep_2 + 320 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 384 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 320 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 372 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 320 + OFFSET_X, 1, -1026, -180.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -1026, -180.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -688.3, -180.1 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -688.3, -180.1 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -556.7, -180.2 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -556.7, -180.2 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -451.5, -180.2 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -451.5, -180.2 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -384.3, -180.2 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -384.3, -180.2 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -325.2, -180.1 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -325.2, -180.1 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -289.7, -180.1 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -289.7, -180.1 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -271.7, -180.1 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -271.7, -180.1 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -258.7, -180.1 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -258.7, -180.1 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -247.7, -180.1 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -247.7, -180.1 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -238.7, -180.1 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -238.7, -180.1 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -231.1, -180.1 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -231.1, -180.1 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -224.8, -180.1 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -224.8, -180.1 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -216.7, -180.1 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -216.7, -180.1 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -210.9, -180.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -210.9, -180.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -204.2, -180.1 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -204.2, -180.1 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -198.8, -180.1 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -198.8, -180.1 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -194.5, -180.1 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -194.5, -180.1 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -191.5, -180.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -191.5, -180.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -189.7, -180.1 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -189.7, -180.1 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -188.2, -180.1 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -188.2, -180.1 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 142, 22.1 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 142, 22.1 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -237.7, 22.1 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -237.7, 22.1 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -630.6, 22.1 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -630.6, 22.1 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -471.3, 22.1 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -471.3, 22.1 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -385.5, 22.1 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -385.5, 22.1 , 0 );

setScaleKey( spep_2 + 320 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.76, 0.76 );

setRotateKey( spep_2 + 320 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, 0 );

--敵の動き5
setDisp( spep_2 + 522 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 562 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 522 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 522 + OFFSET_X, 1, 62.7, -138.4 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 62.7, -138.4 , 0 );

setScaleKey( spep_2 + 522 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 562 + OFFSET_X, 1, 2.26, 2.26 );

setRotateKey( spep_2 + 522 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 562 + OFFSET_X, 1, -2 );

--敵の動き6
setDisp( spep_2 + 698 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 752 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 698 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 698 + OFFSET_X, 1, 134.6, 381.5 , 0 );
setMoveKey( spep_2 + 752 + OFFSET_X, 1, 134.6, 381.5 , 0 );

setScaleKey( spep_2 + 698 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_2 + 752 + OFFSET_X, 1, 5.06, 5.06 );

setRotateKey( spep_2 + 698 + OFFSET_X, 1, 75 );
setRotateKey( spep_2 + 752 + OFFSET_X, 1, 75 );

-- ** 音 ** --
--蹴り２
SE017 = playSeVer2( spep_2 + 26, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 26, 1414, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 26, 1187, "", 0, 0, 0, -1);

--振りかぶる
SE020 = playSeVer2( spep_2 + 54, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE021 = playSeVer2( spep_2 + 96, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE021, 158 );
SE022 = playSeVer2( spep_2 + 102, 1120, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 102, 1187, "", 0, 0, 0, -1);

--気ダメ
SE024 = playSeVer2( spep_2 + 140, 1035, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 140, 1503, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 154, 1504, "", 0, 0, 0, -1);

--追いかける
SE027 = playSeVer2( spep_2 + 206, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 206, SE027, 150 );
SE028 = playSeVer2( spep_2 + 210, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE028, 150 );

--敵飛んでいく
SE029 = playSeVer2( spep_2 + 230, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE029, 71 );
SE030 = playSeVer2( spep_2 + 230, 1121, "",spep_2 + 368, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 230, SE030, 68 );
SE031 = playSeVer2( spep_2 + 230, 1183, "",spep_2 + 354, 0, 32, -1);

--ベジータアップ
SE032 = playSeVer2( spep_2 + 272, 1019, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 272, 1278, "",spep_2 + 390, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 272, SE033, 45 );
SE034 = playSeVer2( spep_2 + 272, 1474, "",spep_2 + 394, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 272, SE034, 300 );

--追いつく
SE035 = playSeVer2( spep_2 + 314, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE035, 63 );
SE036 = playSeVer2( spep_2 + 314, 1232, "", 0, 0, 0, -1);

--敵ヒット
SE037 = playSeVer2( spep_2 + 362, 1049, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 362, 1114, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 362, 1187, "", 0, 0, 0, -1);

--壁激突
SE040 = playSeVer2( spep_2 + 390, 1159, "",spep_2 + 630, 0, 204, -1);

--オーラ
SE042 = playSeVer2( spep_2 + 424, 1176, "",spep_2 + 816, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 424, SE042, 56 );
SE043 = playSeVer2( spep_2 + 424, 1474, "",spep_2 + 820, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 424, SE043, 320 );

--気弾溜め
SE044 = playSeVer2( spep_2 + 576, 1116, "",spep_2 + 620, 0, 20, -1);
SE045 = playSeVer2( spep_2 + 604, 1043, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 604, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 604, SE046, 100 );
SE047 = playSeVer2( spep_2 + 604, 1441, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 648, 1215, "",spep_2 + 836, 82, 56, -1);
setStartTimeMs( SE048,  733 );
SE049 = playSeVer2( spep_2 + 610, 1199, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 682, 1199, "", 0, 0, 0, -1);

--爆発
SE051 = playSeVer2( spep_2 + 778, 1511, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 778, 1213, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 788, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_2 + 770); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 870F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕～ベジータの顔のアップまで
-------------------------------------------------
MAX_FRAME_0 = 218;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～ベジータの顔のアップまで ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** -- 
--敵の動き1
setDisp( spep_0 + 140 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 156 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 140 + OFFSET_X, 1,5 );
changeAnime( spep_0 + 160 + OFFSET_X, 1,6 );

setMoveKey( spep_0 + 140 + OFFSET_X, 1, 351.3, -540.5 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 351.3, -540.5 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 273.6, -438.7 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 273.6, -438.7 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 191.7, -344.8 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 191.7, -344.8 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 137.4, -271.3 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 137.4, -271.3 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 128.3, -253.4 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 128.3, -253.4 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 129.9, -212.6 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 129.9, -212.6 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 131.6, -197 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 131.6, -197 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 133.5, -185.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 133.5, -185.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 133.1, -185.3 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 133.1, -185.3 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 138.2, -170.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 138.2, -170.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 143, -160.2 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 143, -160.2 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 148.2, -155.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 148.2, -155.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 150.5, -152.1 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 150.5, -152.1 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 152.3, -150.4 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 152.3, -150.4 , 0 );

setScaleKey( spep_0 + 140 + OFFSET_X, 1, 7.29, 7.29 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 7.29, 7.29 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.09, 0.09 );

setRotateKey( spep_0 + 140 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, 59.3 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 59.3 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, 59 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, 59 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, 58.2 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, 58.2 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, 57.6 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, 57.6 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, 56.8 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, 56.8 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 55.1 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, 55.1 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 52.6 );

-- ** 音 ** --
--イナヅマ走る
SE001 = playSeVer2( spep_0 + 0, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 130 );
SE002 = playSeVer2( spep_0 + 0, 1043, "",spep_0 + 66, 0, 20, -1);	
setSeVolumeByWorkId( spep_0 + 0, SE002, 130 );
SE003 = playSeVer2( spep_0 + 2, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 68 );
SE004 = playSeVer2( spep_0 + 26, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 79 );

--向かっていく
SE005 = playSeVer2( spep_0 + 38, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 44, 1277, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 68, 1117, "",spep_0 + 156, 0, 26, -1);

--回転する
SE008 = playSeVer2( spep_0 + 74, 1388, "",spep_0 + 154, 44, 16, -1);
setStartTimeMs( SE008,  100 );
SE009 = playSeVer2( spep_0 + 68, 1450, "",spep_0 + 154, 0, 24, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止 

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
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
-- ** 音 ** --
--蹴り
SE010 = playSeVer2( spep_0 + 120, 1187, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 120, 1120, "", 0, 0, 0, -1);

--譜面激突
SE012 = playSeVer2( spep_0 + 154, 1159, "",spep_0 + 236, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 154, SE012, 71 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 218f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--蹴り１
SE014 = playSeVer2( spep_1 + 88, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 88, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE015, 80 );
SE016 = playSeVer2( spep_1 + 92, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE016, 80 );

-------------------------------------------------
-- 蹴り～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 870;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 蹴り～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
-- spep_x = spep_2 + 420;

-- -- ** 顔カットイン ** --
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- --顔カットイン
-- SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 48 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0 + OFFSET_X, 1, 106  );
changeAnime( spep_2 + 38 + OFFSET_X, 1, 108  );

setMoveKey( spep_2 + 0 + OFFSET_X, 1, 561.6, 237.2 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 196.4, 83 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 196.4, 83 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 145.7, 61.5 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 145.7, 61.5 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 212.6, 80.5 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 212.6, 80.5 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 142.2, 41.8 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 142.2, 41.8 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 92, 58.6 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 92, 58.6 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 98.2, 41.5 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 98.2, 41.5 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 95.4, 40.3 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 95.4, 40.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 130.1, 24.1 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 130.1, 24.1 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 35.7, 78.8 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 35.7, 78.8 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 69.4, 58.1 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 69.4, 58.1 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 92, 38.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 92, 38.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 92.1, 38.9 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 92.1, 38.9 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 91.9, 38.8 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 91.9, 38.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 131.7, 121.1 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 131.7, 121.1 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 118.9, 84 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 118.9, 84 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 184.5, 77.5 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 184.5, 77.5 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 130.4, 47 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 130.4, 47 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 126.7, 76 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 126.7, 76 , 0 );

setScaleKey( spep_2 + 0 + OFFSET_X, 1, 13.25, 13.26 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 2.44, 2.45 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 2.44, 2.45 );

setRotateKey( spep_2 + 0, 1, -52 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -19 );

--敵の動き2
setDisp( spep_2 + 82 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 114 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 104 + OFFSET_X, 1, 105  );

setMoveKey( spep_2 + 82 + OFFSET_X, 1, 474.2, -349.5 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 474.2, -349.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 482.1, -338.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 482.1, -338.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 460.2, -207.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 460.2, -207.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 482.2, -121.8 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 482.2, -121.8 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 82.8, -219.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 82.8, -219.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 242, -133.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 242, -133.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 264.5, 121.5 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 264.5, 121.5 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 376.4, 367 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 376.4, 367 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 365.4, 353 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 365.4, 353 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 469.2, 464.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 469.2, 464.9 , 0 );

setScaleKey( spep_2 + 82 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 7.22, 7.22 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 7.22, 7.22 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 8.95, 8.95 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 8.95, 8.95 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 11.34, 11.34 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 11.34, 11.34 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.43, 1.43 );

setRotateKey( spep_2 + 82 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 0 );

--敵の動き3
setDisp( spep_2 + 232 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 274 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 232 + OFFSET_X, 1, -260.9, -422.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -260.9, -422.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -261, -422.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -261, -422.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -146.9, -302.4 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -146.9, -302.4 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -68.6, -219.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -68.6, -219.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -44.5, -194.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -44.5, -194.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -9.7, -157.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -9.7, -157.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 3.6, -143.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 3.6, -143.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 24.5, -121.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 24.5, -121.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 32.9, -112.3 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 32.9, -112.3 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 46.6, -97.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 46.6, -97.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 52.2, -91.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 52.2, -91.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 61.5, -82.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 61.5, -82.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 65.3, -78 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 65.3, -78 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 71.7, -71.3 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 71.7, -71.3 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 74.3, -68.6 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 74.3, -68.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 78.5, -64 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 78.5, -64 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 80.4, -62.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 80.4, -62.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 83.3, -59 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 83.3, -59 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 84.5, -57.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 84.5, -57.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 86.4, -55.8 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 86.4, -55.8 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 87.1, -55 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 87.1, -55 , 0 );

setScaleKey( spep_2 + 232 + OFFSET_X, 1, 11.28, 11.28 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 11.28, 11.28 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 11.16, 11.17 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 11.16, 11.17 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 7.69, 7.7 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 7.69, 7.7 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.3, 1.31 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 1.3, 1.31 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.33, 0.33 );

setRotateKey( spep_2 + 232 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 0 );


--敵の動き4
setDisp( spep_2 + 320 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 384 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 320 + OFFSET_X, 1, 106  );
changeAnime( spep_2 + 372 + OFFSET_X, 1, 108  );

setMoveKey( spep_2 + 320 + OFFSET_X, 1, 1026, -180.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 1026, -180.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 688.3, -180.1 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 688.3, -180.1 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 556.7, -180.2 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 556.7, -180.2 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 451.5, -180.2 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 451.5, -180.2 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 384.3, -180.2 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 384.3, -180.2 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 325.2, -180.1 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 325.2, -180.1 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 289.7, -180.1 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 289.7, -180.1 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 271.7, -180.1 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 271.7, -180.1 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 258.7, -180.1 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 258.7, -180.1 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 247.7, -180.1 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 247.7, -180.1 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 238.7, -180.1 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 238.7, -180.1 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 231.1, -180.1 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 231.1, -180.1 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 224.8, -180.1 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 224.8, -180.1 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 216.7, -180.1 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 216.7, -180.1 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 210.9, -180.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 210.9, -180.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 204.2, -180.1 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 204.2, -180.1 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 198.8, -180.1 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 198.8, -180.1 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 194.5, -180.1 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 194.5, -180.1 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 191.5, -180.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 191.5, -180.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 189.7, -180.1 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 189.7, -180.1 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 188.2, -180.1 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 188.2, -180.1 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -142, 22.1 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -142, 22.1 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 237.7, 22.1 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 237.7, 22.1 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 630.6, 22.1 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 630.6, 22.1 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 471.3, 22.1 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 471.3, 22.1 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 385.5, 22.1 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 385.5, 22.1 , 0 );

setScaleKey( spep_2 + 320 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.76, 0.76 );

setRotateKey( spep_2 + 320 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, 0 );

--敵の動き5
setDisp( spep_2 + 522 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 562 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 522 + OFFSET_X, 1,5 );

setMoveKey( spep_2 + 522 + OFFSET_X, 1, -62.7, -138.4 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -62.7, -138.4 , 0 );

setScaleKey( spep_2 + 522 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 562 + OFFSET_X, 1, 2.26, 2.26 );

setRotateKey( spep_2 + 522 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 562 + OFFSET_X, 1, 2 );

--敵の動き6
setDisp( spep_2 + 698 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 752 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 698 + OFFSET_X, 1, 107  );

setMoveKey( spep_2 + 698 + OFFSET_X, 1, -134.6, 381.5 , 0 );
setMoveKey( spep_2 + 752 + OFFSET_X, 1, -134.6, 381.5 , 0 );

setScaleKey( spep_2 + 698 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_2 + 752 + OFFSET_X, 1, 5.06, 5.06 );

setRotateKey( spep_2 + 698 + OFFSET_X, 1, -75 );
setRotateKey( spep_2 + 752 + OFFSET_X, 1, -75 );

-- ** 音 ** --
--蹴り２
SE017 = playSeVer2( spep_2 + 26, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 26, 1414, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 26, 1187, "", 0, 0, 0, -1);

--振りかぶる
SE020 = playSeVer2( spep_2 + 54, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE021 = playSeVer2( spep_2 + 96, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE021, 158 );
SE022 = playSeVer2( spep_2 + 102, 1120, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 102, 1187, "", 0, 0, 0, -1);

--気ダメ
SE024 = playSeVer2( spep_2 + 140, 1035, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 140, 1503, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 154, 1504, "", 0, 0, 0, -1);

--追いかける
SE027 = playSeVer2( spep_2 + 206, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 206, SE027, 150 );
SE028 = playSeVer2( spep_2 + 210, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE028, 150 );

--敵飛んでいく
SE029 = playSeVer2( spep_2 + 230, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE029, 71 );
SE030 = playSeVer2( spep_2 + 230, 1121, "",spep_2 + 368, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 230, SE030, 68 );
SE031 = playSeVer2( spep_2 + 230, 1183, "",spep_2 + 354, 0, 32, -1);

--ベジータアップ
SE032 = playSeVer2( spep_2 + 272, 1019, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 272, 1278, "",spep_2 + 390, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 272, SE033, 45 );
SE034 = playSeVer2( spep_2 + 272, 1474, "",spep_2 + 394, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 272, SE034, 300 );

--追いつく
SE035 = playSeVer2( spep_2 + 314, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE035, 63 );
SE036 = playSeVer2( spep_2 + 314, 1232, "", 0, 0, 0, -1);

--敵ヒット
SE037 = playSeVer2( spep_2 + 362, 1049, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 362, 1114, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 362, 1187, "", 0, 0, 0, -1);

--壁激突
SE040 = playSeVer2( spep_2 + 390, 1159, "",spep_2 + 630, 0, 204, -1);

--オーラ
SE042 = playSeVer2( spep_2 + 424, 1176, "",spep_2 + 816, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 424, SE042, 56 );
SE043 = playSeVer2( spep_2 + 424, 1474, "",spep_2 + 820, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 424, SE043, 320 );

--気弾溜め
SE044 = playSeVer2( spep_2 + 576, 1116, "",spep_2 + 620, 0, 20, -1);
SE045 = playSeVer2( spep_2 + 604, 1043, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 604, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 604, SE046, 100 );
SE047 = playSeVer2( spep_2 + 604, 1441, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 648, 1215, "",spep_2 + 836, 82, 56, -1);
setStartTimeMs( SE048,  733 );
SE049 = playSeVer2( spep_2 + 610, 1199, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 682, 1199, "", 0, 0, 0, -1);

--爆発
SE051 = playSeVer2( spep_2 + 778, 1511, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 778, 1213, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 788, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 770); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 870F

end