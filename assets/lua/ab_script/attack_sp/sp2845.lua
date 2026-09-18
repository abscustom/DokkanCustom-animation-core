--1031100:UR_チチ(少女期)_必殺技：ビーム攻撃
--sp_effect_a3_00116
--sp2845

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163683;  --ef_001 カード前
SP_01b = 163685;  --ef_001b カード前 敵側
SP_02  = 163686;  --ef_002 カード後
SP_02b = 163688;  --ef_002b カード後 背面

--エフェクト(敵)
SP_01r = 163684;  --ef_001r カード前 敵側
SP_02r = 163687;  --ef_002r カード後 敵側


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
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 268;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カード前 背面(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
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

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 146 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 172 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 146 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 146 + OFFSET_X, 1, 173.4, 74.8 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 173.4, 74.8 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 154.7, 61.2 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 154.7, 61.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 135.9, 47.6 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 135.9, 47.6 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 117.2, 34 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 117.2, 34 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 111.4, 29.7 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 111.4, 29.7 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 105.5, 25.5 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 105.5, 25.5 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 99.7, 21.2 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 99.7, 21.2 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 93.8, 17 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 93.8, 17 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 88, 12.7 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 88, 12.7 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 82.1, 8.5 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 82.1, 8.5 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 76.3, 4.2 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 76.3, 4.2 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 70.4, 0 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 70.4, 0 , 0 );

setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_0 + 146 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 206 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 222 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 206 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 206 + OFFSET_X, 1, 176.3, 78.2 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 176.3, 78.2 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 231, 95.7 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 231, 95.7 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 285.3, 113 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 285.3, 113 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 339.1, 130.2 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 339.1, 130.2 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 392.3, 147.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 392.3, 147.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 444.8, 163.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 444.8, 163.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 495.8, 179.5 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 495.8, 179.5 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 544.8, 197.3 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 544.8, 197.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 593.3, 215.3 , 0 );

setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.93, 0.93 );

setRotateKey( spep_0 + 206 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 292, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--顔カットイン
--SE002 = playSeVer2( spep_0 + 4, 1018, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 16, 1013, "", 0, 0, 0, -1);

--アイスラッガー投げる
SE004 = playSeVer2( spep_0 + 90, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE004, 63 );
SE005 = playSeVer2( spep_0 + 90, 1117, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 94, 1118, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE006, 60 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 160; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);

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
--斬る
SE007 = playSeVer2( spep_0 + 166, 1032, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 166, 1009, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 184, 1032, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 184, 1010, "", 0, 0, 0, -1);

--戻ってくる
SE011 = playSeVer2( spep_0 + 204, 1388, "",spep_0 + 270, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 204, SE011, 130 );
SE012 = playSeVer2( spep_0 + 204, 1453, "",spep_0 + 270, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 204, SE012, 61 );

--受け取る
SE013 = playSeVer2( spep_0 + 228, 1142, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 242, 1141, "",spep_0 + 290, 0, 16, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --268f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 236;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カード後 背面(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 70 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 86 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 70 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 70 + OFFSET_X, 1, 108.8, 23.7 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 108.8, 23.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 110.2, 23.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 110.2, 23.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 111.6, 24 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 111.6, 24 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 113, 24.2 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 113, 24.2 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 114.4, 24.3 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 114.4, 24.3 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 115.8, 24.5 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 115.8, 24.5 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 117.2, 24.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 117.2, 24.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 118.7, 24.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 118.7, 24.8 , 0 );

setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 70 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--ビーム放つ
SE016 = playSeVer2( spep_2 + 6, 1177, "",spep_2 + 112, 0, 32, -1);
SE017 = playSeVer2( spep_2 + 6, 1249, "",spep_2 + 114, 0, 32, -1);
SE018 = playSeVer2( spep_2 + 6, 1204, "",spep_2 + 112, 0, 32, -1);

--爆発
SE019 = playSeVer2( spep_2 + 76, 1024, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 84, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 88); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  236f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 268;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- カード前 敵側(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カード前 背面(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 146 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 172 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 146 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 146 + OFFSET_X, 1, 173.4, 74.8 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 173.4, 74.8 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 154.7, 61.2 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 154.7, 61.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 135.9, 47.6 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 135.9, 47.6 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 117.2, 34 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 117.2, 34 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 111.4, 29.7 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 111.4, 29.7 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 105.5, 25.5 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 105.5, 25.5 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 99.7, 21.2 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 99.7, 21.2 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 93.8, 17 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 93.8, 17 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 88, 12.7 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 88, 12.7 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 82.1, 8.5 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 82.1, 8.5 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 76.3, 4.2 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 76.3, 4.2 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 70.4, 0 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 70.4, 0 , 0 );

setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_0 + 146 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 206 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 222 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 206 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 206 + OFFSET_X, 1, 176.3, 78.2 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 176.3, 78.2 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 231, 95.7 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 231, 95.7 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 285.3, 113 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 285.3, 113 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 339.1, 130.2 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 339.1, 130.2 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 392.3, 147.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 392.3, 147.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 444.8, 163.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 444.8, 163.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 495.8, 179.5 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 495.8, 179.5 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 544.8, 197.3 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 544.8, 197.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 593.3, 215.3 , 0 );

setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.93, 0.93 );

setRotateKey( spep_0 + 206 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 292, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--顔カットイン
--SE002 = playSeVer2( spep_0 + 4, 1018, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 16, 1013, "", 0, 0, 0, -1);

--アイスラッガー投げる
SE004 = playSeVer2( spep_0 + 90, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE004, 63 );
SE005 = playSeVer2( spep_0 + 90, 1117, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 94, 1118, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE006, 60 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 160; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);

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
--斬る
SE007 = playSeVer2( spep_0 + 166, 1032, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 166, 1009, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 184, 1032, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 184, 1010, "", 0, 0, 0, -1);

--戻ってくる
SE011 = playSeVer2( spep_0 + 204, 1388, "",spep_0 + 270, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 204, SE011, 130 );
SE012 = playSeVer2( spep_0 + 204, 1453, "",spep_0 + 270, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 204, SE012, 61 );

--受け取る
SE013 = playSeVer2( spep_0 + 228, 1142, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 242, 1141, "",spep_0 + 290, 0, 16, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --268f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 236;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- カード後 敵側(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カード後 背面(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 70 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 86 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 70 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 70 + OFFSET_X, 1, 108.8, 23.7 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 108.8, 23.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 110.2, 23.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 110.2, 23.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 111.6, 24 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 111.6, 24 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 113, 24.2 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 113, 24.2 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 114.4, 24.3 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 114.4, 24.3 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 115.8, 24.5 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 115.8, 24.5 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 117.2, 24.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 117.2, 24.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 118.7, 24.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 118.7, 24.8 , 0 );

setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 70 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--ビーム放つ
SE016 = playSeVer2( spep_2 + 6, 1177, "",spep_2 + 112, 0, 32, -1);
SE017 = playSeVer2( spep_2 + 6, 1249, "",spep_2 + 114, 0, 32, -1);
SE018 = playSeVer2( spep_2 + 6, 1204, "",spep_2 + 112, 0, 32, -1);

--爆発
SE019 = playSeVer2( spep_2 + 76, 1024, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 84, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 88); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  236f -4


end
