--1027900:UR_暗黒王フュー_必殺技：サプライズジャッジメント
--sp_effect_a9_00113
--sp2622

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162359;		--ef_001
SP_02 = 162361;		--ef_002	ef_002bと同時再生
SP_02b = 162362;	--ef_002b	ef_002と同時再生

--エフェクト(てき)
SP_01r = 162360;	--ef_001r
SP_02r = 162363;	--ef_002r	敵側　敵側　反転　ef_002brと同時再生
SP_02br = 162364;	--ef_002br	敵側　反転　ef_002rと同時再生


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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～カードまで
-------------------------------------------------

MAX_FRAME_0 = 192;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------

spep_x = spep_0 + 104;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -30, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -30, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -30, 515.5 , 0 );
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
--光の玉空へ
SE001 = playSeVer2( spep_0 + 14, 1004, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 14, 1191, "",spep_0 + 216, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 14, SE002, 81 );
SE003 = playSeVer2( spep_0 + 14, 1252, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 14, 1270, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE004, 87 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 70; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
--魔法陣出現
SE005 = playSeVer2( spep_0 + 82, 1231, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 88, 1170, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 94, 1240, "",spep_0 + 190, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 94, SE007, 126 );
SE008 = playSeVer2( spep_0 + 94, 1362, "",spep_0 + 210, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 94, SE008, 132 );
setPitch( spep_0 + 94, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;-- 192

--------------------------------------
--カードカットイン(94F)
--------------------------------------

spep_1 = showCardCutin(spep_c, 1);

-------------------------------------------------
-- フィニッシュまで
-------------------------------------------------

MAX_FRAME_1 = 416;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1+ 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);


-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 0 + OFFSET_X, 1, 1);
setDisp( spep_1 + 60 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 0 + OFFSET_X, 1, 118 );

setMoveKey( spep_1 + 0 + OFFSET_X, 1, 176.4, -236.1 , 0 );
setMoveKey( spep_1 + 2 + OFFSET_X, 1, 175.5, -238.4 , 0 );
setMoveKey( spep_1 + 4 + OFFSET_X, 1, 174.5, -240.9 , 0 );
setMoveKey( spep_1 + 6 + OFFSET_X, 1, 173.6, -243.3 , 0 );
setMoveKey( spep_1 + 8 + OFFSET_X, 1, 172.7, -245.7 , 0 );
setMoveKey( spep_1 + 10 + OFFSET_X, 1, 171.8, -248.1 , 0 );
setMoveKey( spep_1 + 12 + OFFSET_X, 1, 170.9, -250.6 , 0 );
setMoveKey( spep_1 + 14 + OFFSET_X, 1, 169.9, -253.1 , 0 );
setMoveKey( spep_1 + 16 + OFFSET_X, 1, 168.9, -255.5 , 0 );
setMoveKey( spep_1 + 18 + OFFSET_X, 1, 168, -258 , 0 );
setMoveKey( spep_1 + 20 + OFFSET_X, 1, 167, -260.5 , 0 );
setMoveKey( spep_1 + 22 + OFFSET_X, 1, 166, -263 , 0 );
setMoveKey( spep_1 + 24 + OFFSET_X, 1, 165, -265.5 , 0 );
setMoveKey( spep_1 + 26 + OFFSET_X, 1, 164, -268.1 , 0 );
setMoveKey( spep_1 + 28 + OFFSET_X, 1, 163, -270.6 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, 162, -273.1 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, 160.9, -275.7 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, 159.8, -278.3 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, 158.8, -280.9 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_X, 1, 157.7, -283.5 , 0 );
setMoveKey( spep_1 + 40 + OFFSET_X, 1, 156.6, -286.1 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 155.5, -288.7 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 154.4, -291.3 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 153.3, -294 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 152.2, -296.6 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, 151, -299.3 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, 149.9, -301.9 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, 148.8, -304.7 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, 147.6, -307.3 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, 146.4, -310.1 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 146.4, -310.1 , 0 );

setScaleKey( spep_1 + 0 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_1 + 2 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_1 + 4 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_1 + 6 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 8 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_1 + 10 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_1 + 12 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_1 + 14 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_1 + 16 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_1 + 18 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_1 + 20 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_1 + 22 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_1 + 24 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_1 + 26 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_1 + 28 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_1 + 30 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_1 + 32 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_1 + 34 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_1 + 36 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_1 + 38 + OFFSET_X, 1, 2.86, 2.86 )
setScaleKey( spep_1 + 40 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_1 + 42 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_1 + 44 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_1 + 46 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_1 + 48 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_1 + 50 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_1 + 52 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_1 + 54 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_1 + 56 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_1 + 58 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_1 + 60 + OFFSET_X, 1, 3.18, 3.18 );

setRotateKey( spep_1 + 0 + OFFSET_X, 1, 16 );
setRotateKey( spep_1 + 12 + OFFSET_X, 1, 16 );
setRotateKey( spep_1 + 14 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_1 + 40 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_1 + 60 + OFFSET_X, 1, 15.8 );

-- 敵の動き2
setDisp( spep_1 + 176 + OFFSET_X, 1, 1);
setDisp( spep_1 + 416 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 194 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 258 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 176 + OFFSET_X, 1, 156.1, -132 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, 155.6, -131.2 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, 155.1, -130.5 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, 154.7, -129.7 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 154.2, -129 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 153.7, -128.2 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, 153.3, -127.5 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, 152.8, -126.8 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, 152.3, -126 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, 152.3, -126 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 175.7, -208.8 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, 175.7, -208.8 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 187.6, -220.6 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, 187.6, -220.6 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 151.6, -264.5 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, 151.6, -264.5 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 198.6, -255.1 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, 198.6, -255.1 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 221.7, -242.9 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 221.7, -242.9 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 186.7, -224.6 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 186.7, -224.6 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 152, -227.7 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 152, -227.7 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 150.7, -255.2 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 150.7, -255.2 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 160.5, -303 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 160.5, -303 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 172.6, -313.3 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 172.6, -313.3 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 178.9, -338.9 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 178.9, -338.9 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 153.3, -309.2 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 153.3, -309.2 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 133.7, -292.9 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 133.7, -292.9 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 164.8, -303.4 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, 164.8, -303.4 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 195.8, -335.3 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 195.8, -335.3 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 183.5, -350.1 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 183.5, -350.1 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 182.3, -385.3 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 182.3, -385.3 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 211.6, -357 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, 211.6, -357 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 234.8, -344.1 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, 234.8, -344.1 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 193.9, -348.5 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, 193.9, -348.5 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 159.1, -366.3 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, 159.1, -366.3 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, 193.2, -366.2 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, 193.2, -366.2 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, 227.3, -387.5 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, 227.3, -387.5 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, 187, -364 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, 187, -364 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, 157.9, -354 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, 157.9, -354 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, 197.5, -362.1 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, 197.5, -362.1 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 246, -360.2 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, 246, -360.2 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, 194, -352.8 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, 194, -352.8 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 151.1, -363.5 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, 151.1, -363.5 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 201.8, -391.8 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 201.8, -391.8 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 235.2, -407.1 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 235.2, -407.1 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 225.5, -412.7 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 225.5, -412.7 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 2, -34.1 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 2, -34.1 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, -1.9, -36.8 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, -1.9, -36.8 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, -20.7, -37.4 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, -20.7, -37.4 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, -4.2, -56.1 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, -4.2, -56.1 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 23.3, -65.7 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, 23.3, -65.7 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, -2.7, -62.4 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, -2.7, -62.4 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, -20.6, -87 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, -20.6, -87 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 3.3, -80.6 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, 3.3, -80.6 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 23.1, -83.1 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 23.1, -83.1 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, -8.3, -83.7 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, -8.3, -83.7 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, -30.7, -102.2 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, -30.7, -102.2 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 0.3, -111.8 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X, 1, 0.3, -111.8 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 14.2, -108.2 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, 14.2, -108.2 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, 15.4, -127.7 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, 15.4, -127.7 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, -33.4, -117.1 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, -33.4, -117.1 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, 14.1, -119.6 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, 14.1, -119.6 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, 8.5, -142 , 0 );
setMoveKey( spep_1 + 291 + OFFSET_X, 1, 8.5, -142 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, 1.1, -147 , 0 );
setMoveKey( spep_1 + 293 + OFFSET_X, 1, 1.1, -147 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X, 1, -13, -150.5 , 0 );
setMoveKey( spep_1 + 295 + OFFSET_X, 1, -13, -150.5 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X, 1, 2.4, -156.5 , 0 );
setMoveKey( spep_1 + 297 + OFFSET_X, 1, 2.4, -156.5 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X, 1, 24.7, -166 , 0 );
setMoveKey( spep_1 + 299 + OFFSET_X, 1, 24.7, -166 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X, 1, 2.6, -169.8 , 0 );
setMoveKey( spep_1 + 301 + OFFSET_X, 1, 2.6, -169.8 , 0 );
setMoveKey( spep_1 + 302 + OFFSET_X, 1, -21, -177.7 , 0 );
setMoveKey( spep_1 + 303 + OFFSET_X, 1, -21, -177.7 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, -1.2, -183.6 , 0 );
setMoveKey( spep_1 + 305 + OFFSET_X, 1, -1.2, -183.6 , 0 );
setMoveKey( spep_1 + 306 + OFFSET_X, 1, 15.9, -188.5 , 0 );
setMoveKey( spep_1 + 307 + OFFSET_X, 1, 15.9, -188.5 , 0 );
setMoveKey( spep_1 + 308 + OFFSET_X, 1, -3.8, -196.3 , 0 );
setMoveKey( spep_1 + 309 + OFFSET_X, 1, -3.8, -196.3 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, -23, -201.1 , 0 );
setMoveKey( spep_1 + 311 + OFFSET_X, 1, -23, -201.1 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, 1.1, -207.1 , 0 );
setMoveKey( spep_1 + 313 + OFFSET_X, 1, 1.1, -207.1 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, 27.4, -215.2 , 0 );
setMoveKey( spep_1 + 315 + OFFSET_X, 1, 27.4, -215.2 , 0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, 8.3, -219.5 , 0 );
setMoveKey( spep_1 + 317 + OFFSET_X, 1, 8.3, -219.5 , 0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, -12.9, -227.2 , 0 );
setMoveKey( spep_1 + 319 + OFFSET_X, 1, -12.9, -227.2 , 0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, 4.1, -232.9 , 0 );
setMoveKey( spep_1 + 321 + OFFSET_X, 1, 4.1, -232.9 , 0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, 18.4, -237.6 , 0 );
setMoveKey( spep_1 + 323 + OFFSET_X, 1, 18.4, -237.6 , 0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, -7.7, -245.2 , 0 );
setMoveKey( spep_1 + 325 + OFFSET_X, 1, -7.7, -245.2 , 0 );
setMoveKey( spep_1 + 326 + OFFSET_X, 1, -33.1, -249.8 , 0 );
setMoveKey( spep_1 + 327 + OFFSET_X, 1, -33.1, -249.8 , 0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, -11.2, -255.7 , 0 );
setMoveKey( spep_1 + 329 + OFFSET_X, 1, -11.2, -255.7 , 0 );
setMoveKey( spep_1 + 330 + OFFSET_X, 1, 12.9, -263.7 , 0 );
setMoveKey( spep_1 + 331 + OFFSET_X, 1, 12.9, -263.7 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, -0.3, -267.7 , 0 );
setMoveKey( spep_1 + 333 + OFFSET_X, 1, -0.3, -267.7 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, -15.7, -275.2 , 0 );
setMoveKey( spep_1 + 335 + OFFSET_X, 1, -15.7, -275.2 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, 0.4, -280.8 , 0 );
setMoveKey( spep_1 + 337 + OFFSET_X, 1, 0.4, -280.8 , 0 );
setMoveKey( spep_1 + 338 + OFFSET_X, 1, 65.8, -309.4 , 0 );
setMoveKey( spep_1 + 339 + OFFSET_X, 1, 65.8, -309.4 , 0 );
setMoveKey( spep_1 + 340 + OFFSET_X, 1, -55.2, -248.8 , 0 );
setMoveKey( spep_1 + 341 + OFFSET_X, 1, -55.2, -248.8 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, 56.4, -227.3 , 0 );
setMoveKey( spep_1 + 343 + OFFSET_X, 1, 56.4, -227.3 , 0 );
setMoveKey( spep_1 + 344 + OFFSET_X, 1, -64.4, -372.9 , 0 );
setMoveKey( spep_1 + 345 + OFFSET_X, 1, -64.4, -372.9 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, 13, -310.8 , 0 );
setMoveKey( spep_1 + 347 + OFFSET_X, 1, 13, -310.8 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, 0.1, -314.6 , 0 );
setMoveKey( spep_1 + 349 + OFFSET_X, 1, 0.1, -314.6 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, -15.1, -322 , 0 );
setMoveKey( spep_1 + 351 + OFFSET_X, 1, -15.1, -322 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, 10.7, -327.4 , 0 );
setMoveKey( spep_1 + 353 + OFFSET_X, 1, 10.7, -327.4 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, 33.7, -331.8 , 0 );
setMoveKey( spep_1 + 355 + OFFSET_X, 1, 33.7, -331.8 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, 34.1, -332.8 , 0 );
setMoveKey( spep_1 + 357 + OFFSET_X, 1, 34.1, -332.8 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, 35.1, -330.9 , 0 );
setMoveKey( spep_1 + 359 + OFFSET_X, 1, 35.1, -330.9 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, 35, -330.4 , 0 );
setMoveKey( spep_1 + 361 + OFFSET_X, 1, 35, -330.4 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, 35, -329.9 , 0 );
setMoveKey( spep_1 + 363 + OFFSET_X, 1, 35, -329.9 , 0 );
setMoveKey( spep_1 + 364 + OFFSET_X, 1, 34.9, -329.3 , 0 );
setMoveKey( spep_1 + 365 + OFFSET_X, 1, 34.9, -329.3 , 0 );
setMoveKey( spep_1 + 366 + OFFSET_X, 1, 34.9, -328.8 , 0 );
setMoveKey( spep_1 + 367 + OFFSET_X, 1, 34.9, -328.8 , 0 );
setMoveKey( spep_1 + 368 + OFFSET_X, 1, 34.8, -328.2 , 0 );
setMoveKey( spep_1 + 369 + OFFSET_X, 1, 34.8, -328.2 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, 34.8, -327.7 , 0 );
setMoveKey( spep_1 + 371 + OFFSET_X, 1, 34.8, -327.7 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, 34.7, -327.2 , 0 );
setMoveKey( spep_1 + 373 + OFFSET_X, 1, 34.7, -327.2 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, 34.7, -326.7 , 0 );
setMoveKey( spep_1 + 375 + OFFSET_X, 1, 34.7, -326.7 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, 34.6, -326.1 , 0 );
setMoveKey( spep_1 + 377 + OFFSET_X, 1, 34.6, -326.1 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, 34.6, -325.6 , 0 );
setMoveKey( spep_1 + 379 + OFFSET_X, 1, 34.6, -325.6 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, 34.5, -325 , 0 );
setMoveKey( spep_1 + 381 + OFFSET_X, 1, 34.5, -325 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, 34.5, -324.5 , 0 );
setMoveKey( spep_1 + 383 + OFFSET_X, 1, 34.5, -324.5 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, 34.4, -323.9 , 0 );
setMoveKey( spep_1 + 385 + OFFSET_X, 1, 34.4, -323.9 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, 34.4, -323.4 , 0 );
setMoveKey( spep_1 + 387 + OFFSET_X, 1, 34.4, -323.4 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, 34.3, -322.8 , 0 );
setMoveKey( spep_1 + 389 + OFFSET_X, 1, 34.3, -322.8 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, 34.2, -322.2 , 0 );
setMoveKey( spep_1 + 391 + OFFSET_X, 1, 34.2, -322.2 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, 34.2, -321.6 , 0 );
setMoveKey( spep_1 + 393 + OFFSET_X, 1, 34.2, -321.6 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, 34.1, -321.1 , 0 );
setMoveKey( spep_1 + 395 + OFFSET_X, 1, 34.1, -321.1 , 0 );
setMoveKey( spep_1 + 396 + OFFSET_X, 1, 34.1, -320.5 , 0 );
setMoveKey( spep_1 + 397 + OFFSET_X, 1, 34.1, -320.5 , 0 );
setMoveKey( spep_1 + 398 + OFFSET_X, 1, 34, -319.9 , 0 );
setMoveKey( spep_1 + 399 + OFFSET_X, 1, 34, -319.9 , 0 );
setMoveKey( spep_1 + 400 + OFFSET_X, 1, 34, -319.4 , 0 );
setMoveKey( spep_1 + 401 + OFFSET_X, 1, 34, -319.4 , 0 );
setMoveKey( spep_1 + 402 + OFFSET_X, 1, 33.9, -318.8 , 0 );
setMoveKey( spep_1 + 403 + OFFSET_X, 1, 33.9, -318.8 , 0 );
setMoveKey( spep_1 + 404 + OFFSET_X, 1, 33.9, -318.2 , 0 );
setMoveKey( spep_1 + 405 + OFFSET_X, 1, 33.9, -318.2 , 0 );
setMoveKey( spep_1 + 406 + OFFSET_X, 1, 33.8, -317.6 , 0 );
setMoveKey( spep_1 + 407 + OFFSET_X, 1, 33.8, -317.6 , 0 );
setMoveKey( spep_1 + 408 + OFFSET_X, 1, 33.8, -317 , 0 );
setMoveKey( spep_1 + 409 + OFFSET_X, 1, 33.8, -317 , 0 );
setMoveKey( spep_1 + 410 + OFFSET_X, 1, 33.7, -316.5 , 0 );
setMoveKey( spep_1 + 411 + OFFSET_X, 1, 33.7, -316.5 , 0 );
setMoveKey( spep_1 + 412 + OFFSET_X, 1, 33.7, -315.8 , 0 );
setMoveKey( spep_1 + 413 + OFFSET_X, 1, 33.7, -315.8 , 0 );
setMoveKey( spep_1 + 414 + OFFSET_X, 1, 33.6, -315.3 , 0 );
setMoveKey( spep_1 + 415 + OFFSET_X, 1, 33.6, -315.3 , 0 );
setMoveKey( spep_1 + 416 + OFFSET_X, 1, 33.6, -314.6 , 0 );

setScaleKey( spep_1 + 176 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_1 + 180 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_1 + 184 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_1 + 188 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_1 + 195 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_1 + 196 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_1 + 197 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_1 + 198 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_1 + 199 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_1 + 200 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_1 + 201 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_1 + 202 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 203 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_1 + 205 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_1 + 206 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_1 + 207 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_1 + 209 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_1 + 210 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_1 + 211 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_1 + 212 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_1 + 213 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_1 + 215 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_1 + 217 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_1 + 219 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_1 + 220 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_1 + 221 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_1 + 223 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_1 + 227 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_1 + 229 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_1 + 230 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_1 + 231 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_1 + 232 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_1 + 233 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_1 + 237 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_1 + 239 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_1 + 240 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_1 + 241 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_1 + 242 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_1 + 243 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_1 + 244 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_1 + 245 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_1 + 246 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_1 + 247 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_1 + 248 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_1 + 249 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_1 + 250 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_1 + 251 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 253 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 254 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_1 + 255 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_1 + 256 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_1 + 257 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_1 + 258 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 259 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 261 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 262 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 263 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 264 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 265 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 266 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 267 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 268 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 269 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 270 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 271 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 272 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 273 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 274 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 275 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 276 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 277 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 278 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 279 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 280 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 281 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 283 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 284 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 285 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 287 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 288 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 289 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 290 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 291 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 292 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 293 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 294 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 295 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 296 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 297 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 298 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 299 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 300 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 301 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 302 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 303 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 304 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 305 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 306 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 307 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 308 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 309 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 310 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 311 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 312 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 313 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 314 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 315 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 316 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 317 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 318 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 319 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 320 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 321 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 322 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 323 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 324 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 325 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 326 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 327 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 328 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 329 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 330 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 331 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 332 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 333 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 334 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 335 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 336 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 337 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 338 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 339 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 340 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 341 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 342 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 343 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 344 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 345 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 346 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 347 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 348 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 349 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 350 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 351 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 352 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 353 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 354 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 416 + OFFSET_X, 1, 1.16, 1.16 );

setRotateKey( spep_1 + 176 + OFFSET_X, 1, 12 );
setRotateKey( spep_1 + 182 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_1 + 190 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_1 + 193 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_1 + 194 + OFFSET_X, 1, -39.8 );
setRotateKey( spep_1 + 195 + OFFSET_X, 1, -39.8 );
setRotateKey( spep_1 + 196 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_1 + 197 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_1 + 198 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_1 + 199 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_1 + 200 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_1 + 201 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_1 + 202 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 203 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 204 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_1 + 205 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_1 + 206 + OFFSET_X, 1, -25 );
setRotateKey( spep_1 + 207 + OFFSET_X, 1, -25 );
setRotateKey( spep_1 + 208 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_1 + 209 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_1 + 210 + OFFSET_X, 1, -20 );
setRotateKey( spep_1 + 211 + OFFSET_X, 1, -20 );
setRotateKey( spep_1 + 212 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_1 + 213 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_1 + 214 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_1 + 215 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_1 + 216 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_1 + 217 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_1 + 218 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_1 + 219 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_1 + 220 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_1 + 221 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_1 + 222 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_1 + 223 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_1 + 224 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_1 + 225 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_1 + 226 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_1 + 227 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_1 + 228 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_1 + 229 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_1 + 230 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_1 + 231 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_1 + 232 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_1 + 233 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_1 + 234 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_1 + 235 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_1 + 236 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_1 + 237 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_1 + 238 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_1 + 239 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_1 + 240 + OFFSET_X, 1, 17 );
setRotateKey( spep_1 + 241 + OFFSET_X, 1, 17 );
setRotateKey( spep_1 + 242 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_1 + 243 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_1 + 244 + OFFSET_X, 1, 22 );
setRotateKey( spep_1 + 245 + OFFSET_X, 1, 22 );
setRotateKey( spep_1 + 246 + OFFSET_X, 1, 24.4 );
setRotateKey( spep_1 + 247 + OFFSET_X, 1, 24.4 );
setRotateKey( spep_1 + 248 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_1 + 249 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_1 + 250 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_1 + 251 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_1 + 252 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_1 + 253 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_1 + 254 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_1 + 255 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_1 + 256 + OFFSET_X, 1, 36.8 );
setRotateKey( spep_1 + 257 + OFFSET_X, 1, 36.8 );
setRotateKey( spep_1 + 258 + OFFSET_X, 1, -31 );
setRotateKey( spep_1 + 259 + OFFSET_X, 1, -31 );
setRotateKey( spep_1 + 260 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_1 + 261 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_1 + 262 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_1 + 263 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_1 + 264 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_1 + 265 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_1 + 266 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_1 + 267 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_1 + 268 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_1 + 269 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_1 + 270 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_1 + 271 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_1 + 272 + OFFSET_X, 1, -21 );
setRotateKey( spep_1 + 273 + OFFSET_X, 1, -21 );
setRotateKey( spep_1 + 274 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_1 + 275 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_1 + 276 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_1 + 277 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_1 + 278 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_1 + 279 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_1 + 280 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_1 + 281 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_1 + 282 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_1 + 283 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_1 + 284 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_1 + 285 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_1 + 286 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_1 + 287 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_1 + 288 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_1 + 289 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_1 + 290 + OFFSET_X, 1, -8.1 );
setRotateKey( spep_1 + 291 + OFFSET_X, 1, -8.1 );
setRotateKey( spep_1 + 292 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_1 + 293 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_1 + 294 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_1 + 295 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_1 + 296 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_1 + 297 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_1 + 298 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_1 + 299 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_1 + 300 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_1 + 301 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_1 + 302 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_1 + 303 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_1 + 304 + OFFSET_X, 1, 2 );
setRotateKey( spep_1 + 305 + OFFSET_X, 1, 2 );
setRotateKey( spep_1 + 306 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_1 + 307 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_1 + 308 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_1 + 309 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_1 + 310 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_1 + 311 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_1 + 312 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_1 + 313 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_1 + 314 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_1 + 315 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_1 + 316 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_1 + 317 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_1 + 318 + OFFSET_X, 1, 12 );
setRotateKey( spep_1 + 319 + OFFSET_X, 1, 12 );
setRotateKey( spep_1 + 320 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_1 + 321 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_1 + 322 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_1 + 323 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_1 + 324 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_1 + 325 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_1 + 326 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_1 + 327 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_1 + 328 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_1 + 329 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_1 + 330 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_1 + 331 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_1 + 332 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_1 + 333 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_1 + 334 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_1 + 335 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_1 + 336 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_1 + 337 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_1 + 338 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_1 + 339 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_1 + 340 + OFFSET_X, 1, 27.8 );
setRotateKey( spep_1 + 341 + OFFSET_X, 1, 27.8 );
setRotateKey( spep_1 + 342 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_1 + 343 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_1 + 344 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_1 + 345 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_1 + 346 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_1 + 347 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_1 + 348 + OFFSET_X, 1, 33.5 );
setRotateKey( spep_1 + 349 + OFFSET_X, 1, 33.5 );
setRotateKey( spep_1 + 350 + OFFSET_X, 1, 35 );
setRotateKey( spep_1 + 351 + OFFSET_X, 1, 35 );
setRotateKey( spep_1 + 352 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_1 + 353 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_1 + 354 + OFFSET_X, 1, 37.8 );
setRotateKey( spep_1 + 355 + OFFSET_X, 1, 37.8 );
setRotateKey( spep_1 + 356 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_1 + 357 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_1 + 358 + OFFSET_X, 1, 38 );
setRotateKey( spep_1 + 359 + OFFSET_X, 1, 38 );
setRotateKey( spep_1 + 360 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_1 + 361 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_1 + 362 + OFFSET_X, 1, 38.2 );
setRotateKey( spep_1 + 365 + OFFSET_X, 1, 38.2 );
setRotateKey( spep_1 + 366 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_1 + 367 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_1 + 368 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_1 + 369 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_1 + 370 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_1 + 371 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_1 + 372 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_1 + 373 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_1 + 374 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_1 + 375 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_1 + 376 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_1 + 379 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_1 + 380 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_1 + 381 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_1 + 382 + OFFSET_X, 1, 39 );
setRotateKey( spep_1 + 383 + OFFSET_X, 1, 39 );
setRotateKey( spep_1 + 384 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_1 + 385 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_1 + 386 + OFFSET_X, 1, 39.2 );
setRotateKey( spep_1 + 387 + OFFSET_X, 1, 39.2 );
setRotateKey( spep_1 + 388 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_1 + 389 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_1 + 390 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_1 + 393 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_1 + 394 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_1 + 395 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_1 + 396 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_1 + 397 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_1 + 398 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_1 + 399 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_1 + 400 + OFFSET_X, 1, 39.8 );
setRotateKey( spep_1 + 401 + OFFSET_X, 1, 39.8 );
setRotateKey( spep_1 + 402 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_1 + 405 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_1 + 406 + OFFSET_X, 1, 40 );
setRotateKey( spep_1 + 407 + OFFSET_X, 1, 40 );
setRotateKey( spep_1 + 408 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_1 + 409 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_1 + 410 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_1 + 411 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_1 + 412 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_1 + 413 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_1 + 414 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_1 + 415 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_1 + 416 + OFFSET_X, 1, 40.5 );

--魔法陣音
SE011 = playSeVer2( spep_1 + 0, 1240, "",spep_1 + 196, 0, 46, -1);
setSeVolumeByWorkId( spep_1 + 0, SE011, 120 );
SE012 = playSeVer2( spep_1 + 0, 1362, "",spep_1 + 234, 0, 88, -1);
setSeVolumeByWorkId( spep_1 + 0, SE012, 120 );
setPitch( spep_1 + 0, SE012, -400 );
setTimeStretch( SE012, 0.73, 30, 4 );
SE013 = playSeVer2( spep_1 + 0, 1264, "",spep_1 + 176, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 0, SE013, 120 );
setPitch( spep_1 + 0, SE013, -800 );
setTimeStretch( SE013, 0.47, 30, 4 );

--画面遷移
SE014 = playSeVer2( spep_1 + 54, 1232, "", 0, 0, 0, -1);
--気弾発射
SE015 = playSeVer2( spep_1 + 130, 1406, "", 0, 0, 0, 0.5);
SE016 = playSeVer2( spep_1 + 130, 1409, "",spep_1 + 374, 0, 40, -1);
SE017 = playSeVer2( spep_1 + 130, 1312, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 130, 1357, "", 0, 0, 0, -1);
--連続爆発
SE019 = playSeVer2( spep_1 + 190, 1011, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 218, 1023, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 258, 1024, "", 0, 0, 0, 0.5);
--気弾発射
SE020 = playSeVer2( spep_1 + 210, 1406, "", 0, 0, 0, 0.5);

--時止まる
SE023 = playSeVer2( spep_1 + 322, 8, "", 0, 0, 0, 0.5);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 300); 
endPhase( spep_1 + MAX_FRAME_1 -4); -- 416

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開幕～カードまで
-------------------------------------------------

MAX_FRAME_0 = 192;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- ef_001r
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------

spep_x = spep_0 + 104;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -30, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -30, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -30, 515.5 , 0 );
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
--光の玉空へ
SE001 = playSeVer2( spep_0 + 14, 1004, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 14, 1191, "",spep_0 + 216, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 14, SE002, 81 );
SE003 = playSeVer2( spep_0 + 14, 1252, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 14, 1270, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE004, 87 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 70; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
--魔法陣出現
SE005 = playSeVer2( spep_0 + 82, 1231, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 88, 1170, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 94, 1240, "",spep_0 + 190, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 94, SE007, 126 );
SE008 = playSeVer2( spep_0 + 94, 1362, "",spep_0 + 210, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 94, SE008, 132 );
setPitch( spep_0 + 94, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;-- 192

--------------------------------------
--カードカットイン(94F)
--------------------------------------

spep_1 = showCardCutin(spep_c, 1);

-------------------------------------------------
-- フィニッシュまで
-------------------------------------------------

MAX_FRAME_1 = 416;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1+ 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002r
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_003r
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);


-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 0 + OFFSET_X, 1, 1);
setDisp( spep_1 + 60 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 0 + OFFSET_X, 1, 118 );

setMoveKey( spep_1 + 0 + OFFSET_X, 1, 176.4, -236.1 , 0 );
setMoveKey( spep_1 + 2 + OFFSET_X, 1, 175.5, -238.4 , 0 );
setMoveKey( spep_1 + 4 + OFFSET_X, 1, 174.5, -240.9 , 0 );
setMoveKey( spep_1 + 6 + OFFSET_X, 1, 173.6, -243.3 , 0 );
setMoveKey( spep_1 + 8 + OFFSET_X, 1, 172.7, -245.7 , 0 );
setMoveKey( spep_1 + 10 + OFFSET_X, 1, 171.8, -248.1 , 0 );
setMoveKey( spep_1 + 12 + OFFSET_X, 1, 170.9, -250.6 , 0 );
setMoveKey( spep_1 + 14 + OFFSET_X, 1, 169.9, -253.1 , 0 );
setMoveKey( spep_1 + 16 + OFFSET_X, 1, 168.9, -255.5 , 0 );
setMoveKey( spep_1 + 18 + OFFSET_X, 1, 168, -258 , 0 );
setMoveKey( spep_1 + 20 + OFFSET_X, 1, 167, -260.5 , 0 );
setMoveKey( spep_1 + 22 + OFFSET_X, 1, 166, -263 , 0 );
setMoveKey( spep_1 + 24 + OFFSET_X, 1, 165, -265.5 , 0 );
setMoveKey( spep_1 + 26 + OFFSET_X, 1, 164, -268.1 , 0 );
setMoveKey( spep_1 + 28 + OFFSET_X, 1, 163, -270.6 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, 162, -273.1 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, 160.9, -275.7 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, 159.8, -278.3 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, 158.8, -280.9 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_X, 1, 157.7, -283.5 , 0 );
setMoveKey( spep_1 + 40 + OFFSET_X, 1, 156.6, -286.1 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 155.5, -288.7 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 154.4, -291.3 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 153.3, -294 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 152.2, -296.6 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, 151, -299.3 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, 149.9, -301.9 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, 148.8, -304.7 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, 147.6, -307.3 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, 146.4, -310.1 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 146.4, -310.1 , 0 );

setScaleKey( spep_1 + 0 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_1 + 2 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_1 + 4 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_1 + 6 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 8 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_1 + 10 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_1 + 12 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_1 + 14 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_1 + 16 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_1 + 18 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_1 + 20 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_1 + 22 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_1 + 24 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_1 + 26 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_1 + 28 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_1 + 30 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_1 + 32 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_1 + 34 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_1 + 36 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_1 + 38 + OFFSET_X, 1, 2.86, 2.86 )
setScaleKey( spep_1 + 40 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_1 + 42 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_1 + 44 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_1 + 46 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_1 + 48 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_1 + 50 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_1 + 52 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_1 + 54 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_1 + 56 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_1 + 58 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_1 + 60 + OFFSET_X, 1, 3.18, 3.18 );

setRotateKey( spep_1 + 0 + OFFSET_X, 1, 16 );
setRotateKey( spep_1 + 12 + OFFSET_X, 1, 16 );
setRotateKey( spep_1 + 14 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_1 + 40 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_1 + 60 + OFFSET_X, 1, 15.8 );

-- 敵の動き2
setDisp( spep_1 + 176 + OFFSET_X, 1, 1);
setDisp( spep_1 + 416 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 194 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 258 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 176 + OFFSET_X, 1, 156.1, -132 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, 155.6, -131.2 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, 155.1, -130.5 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, 154.7, -129.7 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 154.2, -129 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 153.7, -128.2 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, 153.3, -127.5 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, 152.8, -126.8 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, 152.3, -126 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, 152.3, -126 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 175.7, -208.8 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, 175.7, -208.8 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 187.6, -220.6 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, 187.6, -220.6 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 151.6, -264.5 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, 151.6, -264.5 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 198.6, -255.1 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, 198.6, -255.1 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 221.7, -242.9 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 221.7, -242.9 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 186.7, -224.6 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 186.7, -224.6 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 152, -227.7 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 152, -227.7 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 150.7, -255.2 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 150.7, -255.2 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 160.5, -303 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 160.5, -303 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 172.6, -313.3 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 172.6, -313.3 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 178.9, -338.9 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 178.9, -338.9 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 153.3, -309.2 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 153.3, -309.2 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 133.7, -292.9 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 133.7, -292.9 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 164.8, -303.4 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, 164.8, -303.4 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 195.8, -335.3 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 195.8, -335.3 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 183.5, -350.1 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 183.5, -350.1 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 182.3, -385.3 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 182.3, -385.3 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 211.6, -357 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, 211.6, -357 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 234.8, -344.1 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, 234.8, -344.1 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 193.9, -348.5 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, 193.9, -348.5 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 159.1, -366.3 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, 159.1, -366.3 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, 193.2, -366.2 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, 193.2, -366.2 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, 227.3, -387.5 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, 227.3, -387.5 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, 187, -364 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, 187, -364 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, 157.9, -354 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, 157.9, -354 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, 197.5, -362.1 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, 197.5, -362.1 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 246, -360.2 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, 246, -360.2 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, 194, -352.8 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, 194, -352.8 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 151.1, -363.5 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, 151.1, -363.5 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 201.8, -391.8 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 201.8, -391.8 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 235.2, -407.1 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 235.2, -407.1 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 225.5, -412.7 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 225.5, -412.7 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 2, -34.1 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 2, -34.1 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, -1.9, -36.8 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, -1.9, -36.8 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, -20.7, -37.4 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, -20.7, -37.4 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, -4.2, -56.1 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, -4.2, -56.1 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 23.3, -65.7 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, 23.3, -65.7 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, -2.7, -62.4 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, -2.7, -62.4 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, -20.6, -87 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, -20.6, -87 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 3.3, -80.6 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, 3.3, -80.6 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 23.1, -83.1 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 23.1, -83.1 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, -8.3, -83.7 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, -8.3, -83.7 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, -30.7, -102.2 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, -30.7, -102.2 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 0.3, -111.8 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X, 1, 0.3, -111.8 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 14.2, -108.2 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, 14.2, -108.2 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, 15.4, -127.7 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, 15.4, -127.7 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, -33.4, -117.1 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, -33.4, -117.1 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, 14.1, -119.6 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, 14.1, -119.6 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, 8.5, -142 , 0 );
setMoveKey( spep_1 + 291 + OFFSET_X, 1, 8.5, -142 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, 1.1, -147 , 0 );
setMoveKey( spep_1 + 293 + OFFSET_X, 1, 1.1, -147 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X, 1, -13, -150.5 , 0 );
setMoveKey( spep_1 + 295 + OFFSET_X, 1, -13, -150.5 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X, 1, 2.4, -156.5 , 0 );
setMoveKey( spep_1 + 297 + OFFSET_X, 1, 2.4, -156.5 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X, 1, 24.7, -166 , 0 );
setMoveKey( spep_1 + 299 + OFFSET_X, 1, 24.7, -166 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X, 1, 2.6, -169.8 , 0 );
setMoveKey( spep_1 + 301 + OFFSET_X, 1, 2.6, -169.8 , 0 );
setMoveKey( spep_1 + 302 + OFFSET_X, 1, -21, -177.7 , 0 );
setMoveKey( spep_1 + 303 + OFFSET_X, 1, -21, -177.7 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, -1.2, -183.6 , 0 );
setMoveKey( spep_1 + 305 + OFFSET_X, 1, -1.2, -183.6 , 0 );
setMoveKey( spep_1 + 306 + OFFSET_X, 1, 15.9, -188.5 , 0 );
setMoveKey( spep_1 + 307 + OFFSET_X, 1, 15.9, -188.5 , 0 );
setMoveKey( spep_1 + 308 + OFFSET_X, 1, -3.8, -196.3 , 0 );
setMoveKey( spep_1 + 309 + OFFSET_X, 1, -3.8, -196.3 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, -23, -201.1 , 0 );
setMoveKey( spep_1 + 311 + OFFSET_X, 1, -23, -201.1 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, 1.1, -207.1 , 0 );
setMoveKey( spep_1 + 313 + OFFSET_X, 1, 1.1, -207.1 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, 27.4, -215.2 , 0 );
setMoveKey( spep_1 + 315 + OFFSET_X, 1, 27.4, -215.2 , 0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, 8.3, -219.5 , 0 );
setMoveKey( spep_1 + 317 + OFFSET_X, 1, 8.3, -219.5 , 0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, -12.9, -227.2 , 0 );
setMoveKey( spep_1 + 319 + OFFSET_X, 1, -12.9, -227.2 , 0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, 4.1, -232.9 , 0 );
setMoveKey( spep_1 + 321 + OFFSET_X, 1, 4.1, -232.9 , 0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, 18.4, -237.6 , 0 );
setMoveKey( spep_1 + 323 + OFFSET_X, 1, 18.4, -237.6 , 0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, -7.7, -245.2 , 0 );
setMoveKey( spep_1 + 325 + OFFSET_X, 1, -7.7, -245.2 , 0 );
setMoveKey( spep_1 + 326 + OFFSET_X, 1, -33.1, -249.8 , 0 );
setMoveKey( spep_1 + 327 + OFFSET_X, 1, -33.1, -249.8 , 0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, -11.2, -255.7 , 0 );
setMoveKey( spep_1 + 329 + OFFSET_X, 1, -11.2, -255.7 , 0 );
setMoveKey( spep_1 + 330 + OFFSET_X, 1, 12.9, -263.7 , 0 );
setMoveKey( spep_1 + 331 + OFFSET_X, 1, 12.9, -263.7 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, -0.3, -267.7 , 0 );
setMoveKey( spep_1 + 333 + OFFSET_X, 1, -0.3, -267.7 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, -15.7, -275.2 , 0 );
setMoveKey( spep_1 + 335 + OFFSET_X, 1, -15.7, -275.2 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, 0.4, -280.8 , 0 );
setMoveKey( spep_1 + 337 + OFFSET_X, 1, 0.4, -280.8 , 0 );
setMoveKey( spep_1 + 338 + OFFSET_X, 1, 65.8, -309.4 , 0 );
setMoveKey( spep_1 + 339 + OFFSET_X, 1, 65.8, -309.4 , 0 );
setMoveKey( spep_1 + 340 + OFFSET_X, 1, -55.2, -248.8 , 0 );
setMoveKey( spep_1 + 341 + OFFSET_X, 1, -55.2, -248.8 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, 56.4, -227.3 , 0 );
setMoveKey( spep_1 + 343 + OFFSET_X, 1, 56.4, -227.3 , 0 );
setMoveKey( spep_1 + 344 + OFFSET_X, 1, -64.4, -372.9 , 0 );
setMoveKey( spep_1 + 345 + OFFSET_X, 1, -64.4, -372.9 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, 13, -310.8 , 0 );
setMoveKey( spep_1 + 347 + OFFSET_X, 1, 13, -310.8 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, 0.1, -314.6 , 0 );
setMoveKey( spep_1 + 349 + OFFSET_X, 1, 0.1, -314.6 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, -15.1, -322 , 0 );
setMoveKey( spep_1 + 351 + OFFSET_X, 1, -15.1, -322 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, 10.7, -327.4 , 0 );
setMoveKey( spep_1 + 353 + OFFSET_X, 1, 10.7, -327.4 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, 33.7, -331.8 , 0 );
setMoveKey( spep_1 + 355 + OFFSET_X, 1, 33.7, -331.8 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, 34.1, -332.8 , 0 );
setMoveKey( spep_1 + 357 + OFFSET_X, 1, 34.1, -332.8 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, 35.1, -330.9 , 0 );
setMoveKey( spep_1 + 359 + OFFSET_X, 1, 35.1, -330.9 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, 35, -330.4 , 0 );
setMoveKey( spep_1 + 361 + OFFSET_X, 1, 35, -330.4 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, 35, -329.9 , 0 );
setMoveKey( spep_1 + 363 + OFFSET_X, 1, 35, -329.9 , 0 );
setMoveKey( spep_1 + 364 + OFFSET_X, 1, 34.9, -329.3 , 0 );
setMoveKey( spep_1 + 365 + OFFSET_X, 1, 34.9, -329.3 , 0 );
setMoveKey( spep_1 + 366 + OFFSET_X, 1, 34.9, -328.8 , 0 );
setMoveKey( spep_1 + 367 + OFFSET_X, 1, 34.9, -328.8 , 0 );
setMoveKey( spep_1 + 368 + OFFSET_X, 1, 34.8, -328.2 , 0 );
setMoveKey( spep_1 + 369 + OFFSET_X, 1, 34.8, -328.2 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, 34.8, -327.7 , 0 );
setMoveKey( spep_1 + 371 + OFFSET_X, 1, 34.8, -327.7 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, 34.7, -327.2 , 0 );
setMoveKey( spep_1 + 373 + OFFSET_X, 1, 34.7, -327.2 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, 34.7, -326.7 , 0 );
setMoveKey( spep_1 + 375 + OFFSET_X, 1, 34.7, -326.7 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, 34.6, -326.1 , 0 );
setMoveKey( spep_1 + 377 + OFFSET_X, 1, 34.6, -326.1 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, 34.6, -325.6 , 0 );
setMoveKey( spep_1 + 379 + OFFSET_X, 1, 34.6, -325.6 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, 34.5, -325 , 0 );
setMoveKey( spep_1 + 381 + OFFSET_X, 1, 34.5, -325 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, 34.5, -324.5 , 0 );
setMoveKey( spep_1 + 383 + OFFSET_X, 1, 34.5, -324.5 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, 34.4, -323.9 , 0 );
setMoveKey( spep_1 + 385 + OFFSET_X, 1, 34.4, -323.9 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, 34.4, -323.4 , 0 );
setMoveKey( spep_1 + 387 + OFFSET_X, 1, 34.4, -323.4 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, 34.3, -322.8 , 0 );
setMoveKey( spep_1 + 389 + OFFSET_X, 1, 34.3, -322.8 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, 34.2, -322.2 , 0 );
setMoveKey( spep_1 + 391 + OFFSET_X, 1, 34.2, -322.2 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, 34.2, -321.6 , 0 );
setMoveKey( spep_1 + 393 + OFFSET_X, 1, 34.2, -321.6 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, 34.1, -321.1 , 0 );
setMoveKey( spep_1 + 395 + OFFSET_X, 1, 34.1, -321.1 , 0 );
setMoveKey( spep_1 + 396 + OFFSET_X, 1, 34.1, -320.5 , 0 );
setMoveKey( spep_1 + 397 + OFFSET_X, 1, 34.1, -320.5 , 0 );
setMoveKey( spep_1 + 398 + OFFSET_X, 1, 34, -319.9 , 0 );
setMoveKey( spep_1 + 399 + OFFSET_X, 1, 34, -319.9 , 0 );
setMoveKey( spep_1 + 400 + OFFSET_X, 1, 34, -319.4 , 0 );
setMoveKey( spep_1 + 401 + OFFSET_X, 1, 34, -319.4 , 0 );
setMoveKey( spep_1 + 402 + OFFSET_X, 1, 33.9, -318.8 , 0 );
setMoveKey( spep_1 + 403 + OFFSET_X, 1, 33.9, -318.8 , 0 );
setMoveKey( spep_1 + 404 + OFFSET_X, 1, 33.9, -318.2 , 0 );
setMoveKey( spep_1 + 405 + OFFSET_X, 1, 33.9, -318.2 , 0 );
setMoveKey( spep_1 + 406 + OFFSET_X, 1, 33.8, -317.6 , 0 );
setMoveKey( spep_1 + 407 + OFFSET_X, 1, 33.8, -317.6 , 0 );
setMoveKey( spep_1 + 408 + OFFSET_X, 1, 33.8, -317 , 0 );
setMoveKey( spep_1 + 409 + OFFSET_X, 1, 33.8, -317 , 0 );
setMoveKey( spep_1 + 410 + OFFSET_X, 1, 33.7, -316.5 , 0 );
setMoveKey( spep_1 + 411 + OFFSET_X, 1, 33.7, -316.5 , 0 );
setMoveKey( spep_1 + 412 + OFFSET_X, 1, 33.7, -315.8 , 0 );
setMoveKey( spep_1 + 413 + OFFSET_X, 1, 33.7, -315.8 , 0 );
setMoveKey( spep_1 + 414 + OFFSET_X, 1, 33.6, -315.3 , 0 );
setMoveKey( spep_1 + 415 + OFFSET_X, 1, 33.6, -315.3 , 0 );
setMoveKey( spep_1 + 416 + OFFSET_X, 1, 33.6, -314.6 , 0 );

setScaleKey( spep_1 + 176 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_1 + 180 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_1 + 184 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_1 + 188 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_1 + 195 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_1 + 196 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_1 + 197 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_1 + 198 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_1 + 199 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_1 + 200 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_1 + 201 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_1 + 202 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 203 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_1 + 205 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_1 + 206 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_1 + 207 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_1 + 209 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_1 + 210 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_1 + 211 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_1 + 212 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_1 + 213 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_1 + 215 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_1 + 217 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_1 + 219 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_1 + 220 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_1 + 221 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_1 + 223 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_1 + 227 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_1 + 229 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_1 + 230 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_1 + 231 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_1 + 232 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_1 + 233 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_1 + 237 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_1 + 239 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_1 + 240 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_1 + 241 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_1 + 242 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_1 + 243 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_1 + 244 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_1 + 245 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_1 + 246 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_1 + 247 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_1 + 248 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_1 + 249 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_1 + 250 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_1 + 251 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 253 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 254 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_1 + 255 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_1 + 256 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_1 + 257 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_1 + 258 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 259 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 261 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 262 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 263 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 264 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 265 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 266 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 267 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 268 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 269 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 270 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 271 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 272 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 273 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 274 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 275 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 276 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 277 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 278 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 279 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 280 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 281 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 283 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 284 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 285 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 287 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 288 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 289 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 290 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 291 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 292 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 293 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 294 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 295 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 296 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 297 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 298 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 299 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_1 + 300 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 301 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 302 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 303 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 304 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 305 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 306 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 307 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 308 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 309 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 310 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 311 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 312 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 313 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 314 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 315 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 316 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 317 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 318 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 319 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_1 + 320 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 321 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 322 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 323 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 324 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 325 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_1 + 326 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 327 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 328 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 329 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_1 + 330 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 331 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 332 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 333 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 334 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 335 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 336 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 337 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 338 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 339 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 340 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 341 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 342 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 343 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 344 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 345 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 346 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 347 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 348 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 349 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 350 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 351 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 352 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 353 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 354 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 416 + OFFSET_X, 1, 1.16, 1.16 );

setRotateKey( spep_1 + 176 + OFFSET_X, 1, 12 );
setRotateKey( spep_1 + 182 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_1 + 190 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_1 + 193 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_1 + 194 + OFFSET_X, 1, -39.8 );
setRotateKey( spep_1 + 195 + OFFSET_X, 1, -39.8 );
setRotateKey( spep_1 + 196 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_1 + 197 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_1 + 198 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_1 + 199 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_1 + 200 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_1 + 201 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_1 + 202 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 203 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 204 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_1 + 205 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_1 + 206 + OFFSET_X, 1, -25 );
setRotateKey( spep_1 + 207 + OFFSET_X, 1, -25 );
setRotateKey( spep_1 + 208 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_1 + 209 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_1 + 210 + OFFSET_X, 1, -20 );
setRotateKey( spep_1 + 211 + OFFSET_X, 1, -20 );
setRotateKey( spep_1 + 212 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_1 + 213 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_1 + 214 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_1 + 215 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_1 + 216 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_1 + 217 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_1 + 218 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_1 + 219 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_1 + 220 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_1 + 221 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_1 + 222 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_1 + 223 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_1 + 224 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_1 + 225 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_1 + 226 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_1 + 227 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_1 + 228 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_1 + 229 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_1 + 230 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_1 + 231 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_1 + 232 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_1 + 233 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_1 + 234 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_1 + 235 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_1 + 236 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_1 + 237 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_1 + 238 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_1 + 239 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_1 + 240 + OFFSET_X, 1, 17 );
setRotateKey( spep_1 + 241 + OFFSET_X, 1, 17 );
setRotateKey( spep_1 + 242 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_1 + 243 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_1 + 244 + OFFSET_X, 1, 22 );
setRotateKey( spep_1 + 245 + OFFSET_X, 1, 22 );
setRotateKey( spep_1 + 246 + OFFSET_X, 1, 24.4 );
setRotateKey( spep_1 + 247 + OFFSET_X, 1, 24.4 );
setRotateKey( spep_1 + 248 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_1 + 249 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_1 + 250 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_1 + 251 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_1 + 252 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_1 + 253 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_1 + 254 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_1 + 255 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_1 + 256 + OFFSET_X, 1, 36.8 );
setRotateKey( spep_1 + 257 + OFFSET_X, 1, 36.8 );
setRotateKey( spep_1 + 258 + OFFSET_X, 1, -31 );
setRotateKey( spep_1 + 259 + OFFSET_X, 1, -31 );
setRotateKey( spep_1 + 260 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_1 + 261 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_1 + 262 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_1 + 263 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_1 + 264 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_1 + 265 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_1 + 266 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_1 + 267 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_1 + 268 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_1 + 269 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_1 + 270 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_1 + 271 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_1 + 272 + OFFSET_X, 1, -21 );
setRotateKey( spep_1 + 273 + OFFSET_X, 1, -21 );
setRotateKey( spep_1 + 274 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_1 + 275 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_1 + 276 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_1 + 277 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_1 + 278 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_1 + 279 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_1 + 280 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_1 + 281 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_1 + 282 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_1 + 283 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_1 + 284 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_1 + 285 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_1 + 286 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_1 + 287 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_1 + 288 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_1 + 289 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_1 + 290 + OFFSET_X, 1, -8.1 );
setRotateKey( spep_1 + 291 + OFFSET_X, 1, -8.1 );
setRotateKey( spep_1 + 292 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_1 + 293 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_1 + 294 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_1 + 295 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_1 + 296 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_1 + 297 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_1 + 298 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_1 + 299 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_1 + 300 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_1 + 301 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_1 + 302 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_1 + 303 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_1 + 304 + OFFSET_X, 1, 2 );
setRotateKey( spep_1 + 305 + OFFSET_X, 1, 2 );
setRotateKey( spep_1 + 306 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_1 + 307 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_1 + 308 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_1 + 309 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_1 + 310 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_1 + 311 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_1 + 312 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_1 + 313 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_1 + 314 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_1 + 315 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_1 + 316 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_1 + 317 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_1 + 318 + OFFSET_X, 1, 12 );
setRotateKey( spep_1 + 319 + OFFSET_X, 1, 12 );
setRotateKey( spep_1 + 320 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_1 + 321 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_1 + 322 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_1 + 323 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_1 + 324 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_1 + 325 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_1 + 326 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_1 + 327 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_1 + 328 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_1 + 329 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_1 + 330 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_1 + 331 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_1 + 332 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_1 + 333 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_1 + 334 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_1 + 335 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_1 + 336 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_1 + 337 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_1 + 338 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_1 + 339 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_1 + 340 + OFFSET_X, 1, 27.8 );
setRotateKey( spep_1 + 341 + OFFSET_X, 1, 27.8 );
setRotateKey( spep_1 + 342 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_1 + 343 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_1 + 344 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_1 + 345 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_1 + 346 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_1 + 347 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_1 + 348 + OFFSET_X, 1, 33.5 );
setRotateKey( spep_1 + 349 + OFFSET_X, 1, 33.5 );
setRotateKey( spep_1 + 350 + OFFSET_X, 1, 35 );
setRotateKey( spep_1 + 351 + OFFSET_X, 1, 35 );
setRotateKey( spep_1 + 352 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_1 + 353 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_1 + 354 + OFFSET_X, 1, 37.8 );
setRotateKey( spep_1 + 355 + OFFSET_X, 1, 37.8 );
setRotateKey( spep_1 + 356 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_1 + 357 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_1 + 358 + OFFSET_X, 1, 38 );
setRotateKey( spep_1 + 359 + OFFSET_X, 1, 38 );
setRotateKey( spep_1 + 360 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_1 + 361 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_1 + 362 + OFFSET_X, 1, 38.2 );
setRotateKey( spep_1 + 365 + OFFSET_X, 1, 38.2 );
setRotateKey( spep_1 + 366 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_1 + 367 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_1 + 368 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_1 + 369 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_1 + 370 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_1 + 371 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_1 + 372 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_1 + 373 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_1 + 374 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_1 + 375 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_1 + 376 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_1 + 379 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_1 + 380 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_1 + 381 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_1 + 382 + OFFSET_X, 1, 39 );
setRotateKey( spep_1 + 383 + OFFSET_X, 1, 39 );
setRotateKey( spep_1 + 384 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_1 + 385 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_1 + 386 + OFFSET_X, 1, 39.2 );
setRotateKey( spep_1 + 387 + OFFSET_X, 1, 39.2 );
setRotateKey( spep_1 + 388 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_1 + 389 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_1 + 390 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_1 + 393 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_1 + 394 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_1 + 395 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_1 + 396 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_1 + 397 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_1 + 398 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_1 + 399 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_1 + 400 + OFFSET_X, 1, 39.8 );
setRotateKey( spep_1 + 401 + OFFSET_X, 1, 39.8 );
setRotateKey( spep_1 + 402 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_1 + 405 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_1 + 406 + OFFSET_X, 1, 40 );
setRotateKey( spep_1 + 407 + OFFSET_X, 1, 40 );
setRotateKey( spep_1 + 408 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_1 + 409 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_1 + 410 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_1 + 411 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_1 + 412 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_1 + 413 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_1 + 414 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_1 + 415 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_1 + 416 + OFFSET_X, 1, 40.5 );

--魔法陣音
SE011 = playSeVer2( spep_1 + 0, 1240, "",spep_1 + 196, 0, 46, -1);
setSeVolumeByWorkId( spep_1 + 0, SE011, 120 );
SE012 = playSeVer2( spep_1 + 0, 1362, "",spep_1 + 234, 0, 88, -1);
setSeVolumeByWorkId( spep_1 + 0, SE012, 120 );
setPitch( spep_1 + 0, SE012, -400 );
setTimeStretch( SE012, 0.73, 30, 4 );
SE013 = playSeVer2( spep_1 + 0, 1264, "",spep_1 + 176, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 0, SE013, 120 );
setPitch( spep_1 + 0, SE013, -800 );
setTimeStretch( SE013, 0.47, 30, 4 );

--画面遷移
SE014 = playSeVer2( spep_1 + 54, 1232, "", 0, 0, 0, -1);
--気弾発射
SE015 = playSeVer2( spep_1 + 130, 1406, "", 0, 0, 0, 0.5);
SE016 = playSeVer2( spep_1 + 130, 1409, "",spep_1 + 374, 0, 40, -1);
SE017 = playSeVer2( spep_1 + 130, 1312, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 130, 1357, "", 0, 0, 0, -1);
--連続爆発
SE019 = playSeVer2( spep_1 + 190, 1011, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 218, 1023, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 258, 1024, "", 0, 0, 0, 0.5);
--気弾発射
SE020 = playSeVer2( spep_1 + 210, 1406, "", 0, 0, 0, 0.5);
--時止まる
SE023 = playSeVer2( spep_1 + 322, 8, "", 0, 0, 0, 0.5);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 300); 
endPhase( spep_1 + MAX_FRAME_1 -4); -- 416

end
