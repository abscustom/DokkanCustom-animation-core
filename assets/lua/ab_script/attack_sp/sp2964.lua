--1032850:UR_魔人クウ_必殺技：最高のフィニッシュ
--sp_effect_b2_00067
--sp2964

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164334; --開幕、セリフカットイン～カードカットインまで ef_001
SP_01b = 164335; --開幕、セリフカットイン～カードカットインまで ef_001b
SP_02  = 164336; --カードカットイン～殴打、フィニッシュ前まで ef_002
SP_02b = 164337; --カードカットイン～殴打、フィニッシュ前まで ef_002b
SP_03  = 164338; --「ガッ」追加素材 ef_003

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

ENABLE_AUTO_TIME_STRETCH(0.88);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

   if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 132;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 186 - 1);  -- スキップ先フレーム指定
    else end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕、セリフカットイン～カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 132;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕、セリフカットイン～カードカットインまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕、セリフカットイン～カードカットインまで(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


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
--[[
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

-- ** 敵キャラクター ** --

setDisp( spep_0 + 92 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 134 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 92 + OFFSET_X, 1, 18 );

setMoveKey( spep_0 + 92 + OFFSET_X, 1, -17, 0 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -17, 0 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -17.1, 0 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -17.1, 0 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -17.2, 0 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -17.2, 0 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -17.3, 0 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -17.3, 0 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -17.4, 0 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -17.4, 0 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -17.5, 0 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -17.5, 0 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -17.6, 0 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -17.6, 0 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -17.7, 0 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -17.7, 0 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -17.8, 0 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -17.8, 0 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -17.9, 0 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -17.9, 0 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -18, 0 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -18, 0 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -18.1, 0 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -18.1, 0 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -18.2, 0 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -18.2, 0 , 0 );

setScaleKey( spep_0 + 92 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 1.4, 1.4 );

setRotateKey( spep_0 + 92 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 0 );


-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 162, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1173, "",spep_0 + 160, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
--顔カットイン
--SE003 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
--カードカットイン
--SE004 = playSeVer2( spep_1 + 4, 1035, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 132

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カードカットイン～殴打、フィニッシュ前まで
-------------------------------------------------
MAX_FRAME_2 = 240;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン～殴打、フィニッシュ前まで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 0);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カードカットイン～殴打、フィニッシュ前まで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_0 + 184 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 214 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 184 + OFFSET_X, 1, 18 );
changeAnime( spep_2 + 196 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 184 + OFFSET_X, 1, 165.2, 6.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 165.2, 6.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 146.6, 6.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 146.6, 6.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 128, 6.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 128, 6.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 109.4, 6.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 109.4, 6.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 90.7, 6.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 90.7, 6.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 125.2, 42.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 125.2, 42.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 133.2, 36.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 133.2, 36.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 157.2, 19.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 157.2, 19.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 197.2, -9.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 197.2, -9.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 253.3, -49.5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 253.3, -49.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 263.3, -37 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 263.3, -37 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 475.4, -246.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 475.4, -246.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 433.4, -320.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 433.4, -320.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 723.6, -246.6 , 0 );

setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.57, 1.57 );

setRotateKey( spep_2 + 184 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 69 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 69 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 69.5 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 69.5 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 70.9 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 70.9 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 73.3 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 73.3 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 76.7 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 76.7 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 81 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 81 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 86.3 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 86.3 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 92.5 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 92.5 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 99.7 );

-- ** 音 ** --
--振りかぶる
SE005 = playSeVer2( spep_2 + 10, 1117, "", 0, 10, 0, -1);
setStartTimeMs( SE005, 167 );
SE006 = playSeVer2( spep_2 + 4, 1116, "",spep_2 + 58, 0, 30, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 120; --エンドフェイズのフレーム数を置き換える

--pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
--pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
--stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

--殴る
SE007 = playSeVer2( spep_2 + 186, 1437, "",spep_2 + 280, 2, 60, -1);
setSeVolumeByWorkId( spep_2 + 186, SE007, 68 );
setStartTimeMs( SE007, 2267 );
--飛びかかる
SE008 = playSeVer2( spep_2 + 116, 1264, "",spep_2 + 242, 0, 74, -1);
setSeVolumeByWorkId( spep_2 + 116, SE008, 60 );
SE009 = playSeVer2( spep_2 + 116, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE009, 79 );
SE010 = playSeVer2( spep_2 + 126, 1119, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE010, 71 );
--殴る
SE011 = playSeVer2( spep_2 + 180, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 192, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 192, 1126, "",spep_2 + 318, 0, 50, 0.5);
setSeVolumeByWorkId( spep_2 + 192, SE013, 51 );
setPitch( spep_2 + 192, SE013, -400 );
setTimeStretch( SE013, 0.73, 30, 4 );
--画面割れる
--SE014 = playSeVer2( spep_2 + 254, 1025, "", 0, 0, 0, -1);
--SE015 = playSeVer2( spep_2 + 254, 1054, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;  --240

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --

-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

-- 背景差し替えがある場合のみ
finish_1b = entryEffectLife( spep_N + 0, SP_03 , spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_003)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );

-- ** 爆発 ** --
--[[
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）  

setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );

setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );

setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );

--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );

setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
--ここまで

--上から飛んでくる場合
--[[
setMoveKey( spep_N + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_N + 1, 1, 32.5, 228 , 0 );
setMoveKey( spep_N + 2, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, 17, 57.3 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, 7.1, -32 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -1.9, -42 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );

setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
--ここまで
]]
-- ** 音 ** --
--爆発
SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開幕、セリフカットイン～カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 132;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕、セリフカットイン～カードカットインまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕、セリフカットイン～カードカットインまで(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


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
--[[
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

-- ** 敵キャラクター ** --

setDisp( spep_0 + 92 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 134 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 92 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 92 + OFFSET_X, 1, 17, 0 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 17, 0 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 17.1, 0 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 17.1, 0 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 17.2, 0 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 17.2, 0 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 17.3, 0 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 17.3, 0 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 17.4, 0 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 17.4, 0 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 17.5, 0 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 17.5, 0 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 17.6, 0 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 17.6, 0 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 17.7, 0 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 17.7, 0 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 17.8, 0 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 17.8, 0 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 17.9, 0 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 17.9, 0 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 18, 0 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 18, 0 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 18.1, 0 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 18.1, 0 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 18.2, 0 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 18.2, 0 , 0 );

setScaleKey( spep_0 + 92 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 1.4, 1.4 );

setRotateKey( spep_0 + 92 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 0 );


-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 162, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1173, "",spep_0 + 160, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 132

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カードカットイン～殴打、フィニッシュ前まで
-------------------------------------------------
MAX_FRAME_2 = 240;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン～殴打、フィニッシュ前まで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 0);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カードカットイン～殴打、フィニッシュ前まで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --

setDisp( spep_0 + 184 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 214 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 184 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 196 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 184 + OFFSET_X, 1, -165.2, 6.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -165.2, 6.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -146.6, 6.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -146.6, 6.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -128, 6.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -128, 6.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -109.4, 6.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -109.4, 6.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -90.7, 6.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -90.7, 6.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -125.2, 42.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -125.2, 42.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -133.2, 36.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -133.2, 36.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -157.2, 19.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -157.2, 19.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -197.2, -9.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -197.2, -9.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -253.3, -49.5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -253.3, -49.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -263.3, -37 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -263.3, -37 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -475.4, -246.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -475.4, -246.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -433.4, -320.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -433.4, -320.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -723.6, -246.6 , 0 );

setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.57, 1.57 );

setRotateKey( spep_2 + 184 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -69 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -69 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -69.5 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -69.5 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -70.9 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -70.9 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -73.3 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -73.3 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -76.7 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -76.7 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -86.3 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -86.3 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -92.5 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, -92.5 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -99.7 );

-- ** 音 ** --
--振りかぶる
SE005 = playSeVer2( spep_2 + 10, 1117, "", 0, 10, 0, -1);
setStartTimeMs( SE005, 167 );
SE006 = playSeVer2( spep_2 + 4, 1116, "",spep_2 + 58, 0, 30, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 120; --エンドフェイズのフレーム数を置き換える

--pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
--pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
--stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

--殴る
SE007 = playSeVer2( spep_2 + 186, 1437, "",spep_2 + 280, 2, 60, -1);
setSeVolumeByWorkId( spep_2 + 186, SE007, 68 );
setStartTimeMs( SE007, 2267 );
--飛びかかる
SE008 = playSeVer2( spep_2 + 116, 1264, "",spep_2 + 242, 0, 74, -1);
setSeVolumeByWorkId( spep_2 + 116, SE008, 60 );
SE009 = playSeVer2( spep_2 + 116, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE009, 79 );
SE010 = playSeVer2( spep_2 + 126, 1119, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE010, 71 );
--殴る
SE011 = playSeVer2( spep_2 + 180, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 192, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 192, 1126, "",spep_2 + 318, 0, 50, 0.5);
setSeVolumeByWorkId( spep_2 + 192, SE013, 51 );
setPitch( spep_2 + 192, SE013, -400 );
setTimeStretch( SE013, 0.73, 30, 4 );

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;  --240

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --

-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, -1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, -1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

-- 背景差し替えがある場合のみ
finish_1b = entryEffectLife( spep_N + 0, SP_03 , spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_003)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, -1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, -1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );

-- ** 爆発 ** --
--[[
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）  

setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, -3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );

setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_N + 14, ctga, 10.9 );
setEffRotateKey( spep_N + 15, ctga, 10.9 );
setEffRotateKey( spep_N + 16, ctga, 14.9 );
setEffRotateKey( spep_N + 17, ctga, 14.9 );
setEffRotateKey( spep_N + 18, ctga, 10.9 );
setEffRotateKey( spep_N + 19, ctga, 10.9 );
setEffRotateKey( spep_N + 20, ctga, 14.9 );
setEffRotateKey( spep_N + 21, ctga, 14.9 );
setEffRotateKey( spep_N + 22, ctga, 10.9 );
setEffRotateKey( spep_N + 23, ctga, 10.9 );
setEffRotateKey( spep_N + 24, ctga, 14.9 );
setEffRotateKey( spep_N + 25, ctga, 14.9 );
setEffRotateKey( spep_N + 26, ctga, 10.9 );
setEffRotateKey( spep_N + 27, ctga, 10.9 );
setEffRotateKey( spep_N + 28, ctga, 14.9 );
setEffRotateKey( spep_N + 112, ctga, 14.9 );

setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );

--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, -21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, -0.16, 0.16 );
setScaleKey( spep_N + 2, 1, -0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, -0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, -0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, -0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, -1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, -1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, -1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, -1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, -1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, -1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, -1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, -1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, -1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, -1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, -1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, -1.73, 1.725 );
setScaleKey( spep_N + 112, 1, -1.73, 1.725 );

setRotateKey( spep_N + 0, 1, 354.8 );
setRotateKey( spep_N + 2, 1, 122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, 1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, -120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, -242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, -364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, -486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, -607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, -729.5 );
setRotateKey( spep_N + 112, 1, -729.5 );
--ここまで

--上から飛んでくる場合
--[[
setMoveKey( spep_N + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_N + 1, 1, 32.5, 228 , 0 );
setMoveKey( spep_N + 2, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, 17, 57.3 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, 7.1, -32 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -1.9, -42 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );

setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
--ここまで
]]
-- ** 音 ** --
--爆発
SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

end