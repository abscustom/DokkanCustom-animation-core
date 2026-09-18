--1032390:UR_仮面の魔人(パンジ)_必殺技
--sp_effect_a8_00047
--sp2943

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164223;  -- パンジ登場～ ef_001
SP_02 = 164225;  -- 爆弾投げる～フィニッシュ ef_002
SP_02b = 164226;  -- 爆弾投げる～フィニッシュ ef_002b


--エフェクト(敵)
SP_01r = 164224;  -- パンジ登場～ ef_001r
SP_02r = 164227;  -- 爆弾投げる～フィニッシュ ef_002r
SP_02br = 164228;  -- 爆弾投げる～フィニッシュ ef_002br


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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- パンジ登場～
-------------------------------------------------
MAX_FRAME_0 = 252;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- パンジ登場～(ef_001)
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
spep_x = spep_0 + 2;

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

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 266, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--探す
SE004 = playSeVer2( spep_0 + 96, 1331, "", 0, 0, 0, -1);

--爆弾取り出す
SE005 = playSeVer2( spep_0 + 158, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 190, 1243, "",spep_0 + 268, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 190, SE006, 142 );
setBandpassFilter ( spep_0 + 190, SE006, 3850, 24000 );
SE007 = playSeVer2( spep_0 + 190, 1176, "",spep_0 + 266, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 190, SE007, 55 );
setBandpassFilter ( spep_0 + 190, SE007, 3850, 24000 );

--集中線
SE008 = playSeVer2( spep_0 + 204, 3, "",spep_0 + 272, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 204, SE008, 110 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --254F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--振りかぶる
SE010 = playSeVer2( spep_1 + 84, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE010, 40 );
SE011 = playSeVer2( spep_1 + 84, 44, "", 0, 0, 0, -1);

-------------------------------------------------
-- 爆弾投げる～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 384;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 爆弾投げる～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 爆弾投げる～フィニッシュ(ef_002b)
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

setDisp( spep_2 + 134 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 250 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 134 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 212 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 134 + OFFSET_X, 1, 149.7, -69.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 149.7, -69.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 149.6, -69.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 149.6, -69.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 149.5, -69.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 149.5, -69.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 149.5, -69.5 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 149.5, -69.5 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 149.4, -69.7 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 149.4, -69.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 149.4, -69.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 149.4, -69.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 149.3, -69.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 149.3, -69.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 149.3, -70 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 149.3, -70 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 149.2, -70.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 149.2, -70.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 149.2, -70.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 149.2, -70.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 169.2, -54.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 169.2, -54.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 137.2, -92.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 137.2, -92.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 138.7, -58.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 138.7, -58.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 158.7, -82.7 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 158.7, -82.7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 154.2, -63.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 154.2, -63.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 149.2, -75.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 149.2, -75.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 154.7, -68.2 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 154.7, -68.2 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 146.2, -65.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 146.2, -65.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 149.2, -79.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 149.2, -79.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 153.7, -64.7 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 153.7, -64.7 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 144.2, -71.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 144.2, -71.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 149.2, -64.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 149.2, -64.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 152.7, -77.7 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 152.7, -77.7 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 142.7, -70.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 142.7, -70.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 145.7, -65.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 145.7, -65.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 148.2, -73.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 148.2, -73.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 151.2, -67.7 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 151.2, -67.7 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 150.7, -74.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 150.7, -74.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 147.7, -67.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 147.7, -67.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 149.2, -70.2 , 0 );

setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 134 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--振りかぶる
SE012 = playSeVer2( spep_2 + 8, 1332, "", 0, 0, 0, -1);

--投げる
SE013 = playSeVer2( spep_2 + 76, 1027, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 76, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 90; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
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

--投げる
SE015 = playSeVer2( spep_2 + 106, 1243, "",spep_2 + 216, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 106, SE015, 158 );
setBandpassFilter ( spep_2 + 106, SE015, 3850, 24000 );
SE016 = playSeVer2( spep_2 + 106, 1118, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE016, 61 );

--爆発
SE017 = playSeVer2( spep_2 + 198, 1219, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_2 + 198, SE017, 214 );
setStartTimeMs( SE017, 533 );
SE021 = playSeVer2( spep_2 + 198, 1060, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 198, 1214, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 198, SE022, 79 );
SE023 = playSeVer2( spep_2 + 198, 31, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 198, 1159, "", 0, 0, 0, -1);

--爆弾地面に落ちる
SE018 = playSeVer2( spep_2 + 172, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 172, SE018, 200 );
setPitch( spep_2 + 172, SE018, -600 );
setTimeStretch( SE018, 0.6, 30, 4 );
SE019 = playSeVer2( spep_2 + 172, 1111, "",spep_2 + 204, 0, 6, -1);
SE020 = playSeVer2( spep_2 + 190, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE020, 209 );
setPitch( spep_2 + 190, SE020, -600 );
setTimeStretch( SE020, 0.6, 30, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 268); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 384F-2

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- パンジ登場～
-------------------------------------------------
MAX_FRAME_0 = 252;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- パンジ登場～(ef_001r)
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
spep_x = spep_0 + 2;

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

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 266, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--探す
SE004 = playSeVer2( spep_0 + 96, 1331, "", 0, 0, 0, -1);

--爆弾取り出す
SE005 = playSeVer2( spep_0 + 158, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 190, 1243, "",spep_0 + 268, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 190, SE006, 142 );
setBandpassFilter ( spep_0 + 190, SE006, 3850, 24000 );
SE007 = playSeVer2( spep_0 + 190, 1176, "",spep_0 + 266, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 190, SE007, 55 );
setBandpassFilter ( spep_0 + 190, SE007, 3850, 24000 );

--集中線
SE008 = playSeVer2( spep_0 + 204, 3, "",spep_0 + 272, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 204, SE008, 110 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --254F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--振りかぶる
SE010 = playSeVer2( spep_1 + 84, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE010, 40 );
SE011 = playSeVer2( spep_1 + 84, 44, "", 0, 0, 0, -1);

-------------------------------------------------
-- 爆弾投げる～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 384;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 爆弾投げる～フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 爆弾投げる～フィニッシュ(ef_002br)
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

setDisp( spep_2 + 134 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 250 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 134 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 212 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 134 + OFFSET_X, 1, 149.7, -69.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 149.7, -69.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 149.6, -69.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 149.6, -69.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 149.5, -69.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 149.5, -69.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 149.5, -69.5 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 149.5, -69.5 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 149.4, -69.7 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 149.4, -69.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 149.4, -69.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 149.4, -69.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 149.3, -69.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 149.3, -69.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 149.3, -70 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 149.3, -70 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 149.2, -70.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 149.2, -70.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 149.2, -70.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 149.2, -70.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 169.2, -54.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 169.2, -54.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 137.2, -92.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 137.2, -92.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 138.7, -58.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 138.7, -58.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 158.7, -82.7 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 158.7, -82.7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 154.2, -63.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 154.2, -63.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 149.2, -75.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 149.2, -75.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 154.7, -68.2 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 154.7, -68.2 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 146.2, -65.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 146.2, -65.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 149.2, -79.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 149.2, -79.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 153.7, -64.7 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 153.7, -64.7 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 144.2, -71.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 144.2, -71.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 149.2, -64.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 149.2, -64.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 152.7, -77.7 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 152.7, -77.7 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 142.7, -70.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 142.7, -70.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 145.7, -65.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 145.7, -65.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 148.2, -73.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 148.2, -73.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 151.2, -67.7 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 151.2, -67.7 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 150.7, -74.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 150.7, -74.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 147.7, -67.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 147.7, -67.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 149.2, -70.2 , 0 );

setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_2 + 134 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--振りかぶる
SE012 = playSeVer2( spep_2 + 8, 1332, "", 0, 0, 0, -1);

--投げる
SE013 = playSeVer2( spep_2 + 76, 1027, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 76, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 90; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
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

--投げる
SE015 = playSeVer2( spep_2 + 106, 1243, "",spep_2 + 216, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 106, SE015, 158 );
setBandpassFilter ( spep_2 + 106, SE015, 3850, 24000 );
SE016 = playSeVer2( spep_2 + 106, 1118, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE016, 61 );

--爆発
SE017 = playSeVer2( spep_2 + 198, 1219, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_2 + 198, SE017, 214 );
setStartTimeMs( SE017, 533 );
SE021 = playSeVer2( spep_2 + 198, 1060, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 198, 1214, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 198, SE022, 79 );
SE023 = playSeVer2( spep_2 + 198, 31, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 198, 1159, "", 0, 0, 0, -1);

--爆弾地面に落ちる
SE018 = playSeVer2( spep_2 + 172, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 172, SE018, 200 );
setPitch( spep_2 + 172, SE018, -600 );
setTimeStretch( SE018, 0.6, 30, 4 );
SE019 = playSeVer2( spep_2 + 172, 1111, "",spep_2 + 204, 0, 6, -1);
SE020 = playSeVer2( spep_2 + 190, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE020, 209 );
setPitch( spep_2 + 190, SE020, -600 );
setTimeStretch( SE020, 0.6, 30, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 268); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 384F-2

end
