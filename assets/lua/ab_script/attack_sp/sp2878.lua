--4031440:LR_ザマス+ゴクウブラック(超サイヤ人ロゼ)_必殺技：神裂斬
--sp_effect_a6_00024
--sp2878

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 163886; --開幕構え ef_001
SP_02  = 163887; --突進から突き→回り込んで切りつけ→フィニッシュ ef_002
SP_02b = 163888; --突進から突き→回り込んで切りつけ→フィニッシュ_背景 ef_002_b

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

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 96;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 260);  -- スキップ先フレーム指定

        --斬りつける
        SE022 = playSeVer2( spep_2 + 263, 1240, "",spep_2 + 310, 0, 22, -1);
        setSeVolumeByWorkId( spep_2 + 263, SE022, 126 );
        SE023 = playSeVer2( spep_2 + 263, 1354, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 263, SE023, 63 );
        SE024 = playSeVer2( spep_2 + 263, 1257, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 263, SE024, 151 );
        SE025 = playSeVer2( spep_2 + 263, 1152, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 263, SE025, 68 );

    else
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕構え
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕構え(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -5, 515.5 , 0 );
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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 音 ** --
--手刀構える
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 118, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );
SE002 = playSeVer2( spep_0 + 0, 1161, "",spep_0 + 118, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );
setBandpassFilter( spep_0 + 0, SE002, 950, 24000 );

--手刀構える
SE004 = playSeVer2( spep_0 + 18, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 110 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --96f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--向かってくる
SE006 = playSeVer2( spep_1 + 86, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 90, 1117, "", 0, 0, 0, -1);


-------------------------------------------------
-- 突進から突き→回り込んで切りつけ→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 588;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 突進から突き→回り込んで切りつけ→フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 突進から突き→回り込んで切りつけ→フィニッシュ_背景(ef_002_b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 142 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 122 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 122 + OFFSET_X, 1, 146.9, 176.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 146.9, 176.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 144.4, 175.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 144.4, 175.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 141.8, 174.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 141.8, 174.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 139.3, 174 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 139.3, 174 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 136.7, 173 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 136.7, 173 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 134.2, 172.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 134.2, 172.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 131.7, 171.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 131.7, 171.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 129.1, 170.2 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 129.1, 170.2 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 126.6, 169.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 126.6, 169.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 124.1, 168.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 124.1, 168.4 , 0 );

setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_2 + 122 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -33.7 );


--敵の動き2
setDisp( spep_2 + 194 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 244 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 194 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 216 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 194 + OFFSET_X, 1, -457.4, 273.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -457.4, 273.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -453.8, 271.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -453.8, 271.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -443, 266.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -443, 266.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -425.1, 257.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -425.1, 257.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -400, 244.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -400, 244.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -367.7, 228.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -367.7, 228.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -328.2, 208.8 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -328.2, 208.8 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -281.6, 185.4 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -281.6, 185.4 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -227.7, 158.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -227.7, 158.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -166.7, 127.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -166.7, 127.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -98.5, 93.7 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -98.5, 93.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -142, 62.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -142, 62.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -162.5, 15.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -162.5, 15.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -170.9, 65.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -170.9, 65.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -185.7, 26.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -185.7, 26.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -206.4, 71.8 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -206.4, 71.8 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -219.4, 35 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -219.4, 35 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -224, 77.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -224, 77.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -236.5, 45.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -236.5, 45.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -253.7, 78.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -253.7, 78.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -256.5, 54.5 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -256.5, 54.5 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -264, 81.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -264, 81.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -279.8, 60.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -279.8, 60.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -280, 76.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -280, 76.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -291.3, 69.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -291.3, 69.1 , 0 );

setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.9, 0.9 );

setRotateKey( spep_2 + 194 + OFFSET_X, 1, 23 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 23 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 36.3 );


--敵の動き3
setDisp( spep_2 + 314 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 580 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 334 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 386 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 314 + OFFSET_X, 1, -45, -81.4 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -45, -81.4 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -62.9, -83.2 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -62.9, -83.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -80.8, -85.1 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -80.8, -85.1 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -98.8, -86.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -98.8, -86.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -116.7, -88.7 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -116.7, -88.7 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -134.6, -90.5 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -134.6, -90.5 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -152.5, -90.3 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -152.5, -90.3 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -170.5, -94.1 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -170.5, -94.1 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -188.4, -96 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -188.4, -96 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -206.3, -97.8 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -206.3, -97.8 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -277, -171.4 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -277, -171.4 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -349.1, -171.5 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -349.1, -171.5 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -452.7, -205 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -452.7, -205 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -503.8, -208.2 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -503.8, -208.2 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -499.9, -208 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -499.9, -208 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -504.1, -224.5 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -504.1, -224.5 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -538, -210.8 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -538, -210.8 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -544.5, -211.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -544.5, -211.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -541.8, -212.7 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -541.8, -212.7 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -544, -218 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -544, -218 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -550.6, -218.2 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -550.6, -218.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -552, -214 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -552, -214 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -553.4, -219.8 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -553.4, -219.8 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -550.4, -219.6 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -550.4, -219.6 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -558.3, -219.5 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -558.3, -219.5 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -640.5, -175 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -640.5, -175 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -680.1, -175 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -680.1, -175 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -687.3, -160.6 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -687.3, -160.6 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -676.5, -178.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -676.5, -178.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -676.5, -164.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -676.5, -164.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -676.5, -178.6 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -676.5, -178.6 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -683.7, -171.4 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -683.7, -171.4 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -676.5, -178.6 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -676.5, -178.6 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -680.1, -164.2 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -680.1, -164.2 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -669.3, -175 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -669.3, -175 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -665.7, -160.6 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -665.7, -160.6 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -13.1, -81.3 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -13.1, -81.3 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -19.7, -103.7 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -19.7, -103.7 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -20.6, -88.8 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -20.6, -88.8 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -28.5, -109.8 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -28.5, -109.8 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -35, -99.8 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -35, -99.8 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -37.1, -119.3 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -37.1, -119.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -46.2, -108.8 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -46.2, -108.8 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -47.8, -128.8 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -47.8, -128.8 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -57.4, -115.8 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -57.4, -115.8 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -57.6, -137.8 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -57.6, -137.8 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -67.2, -127.3 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -67.2, -127.3 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -74.3, -132.3 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -74.3, -132.3 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -78.9, -144.4 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -78.9, -144.4 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -79, -148.9 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -79, -148.9 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -88.5, -153.4 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -88.5, -153.4 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -93.1, -153.3 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -93.1, -153.3 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -97.7, -165.3 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -97.7, -165.3 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -95.2, -169.4 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -95.2, -169.4 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -105.1, -173.6 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -105.1, -173.6 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -110, -173.2 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -110, -173.2 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -114.8, -185.2 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -114.8, -185.2 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -119.6, -181.6 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -119.6, -181.6 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -124.4, -191.4 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -124.4, -191.4 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -127.8, -190.7 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -127.8, -190.7 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -96, -177 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -96, -177 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -82.2, -162.5 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -82.2, -162.5 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -64.6, -161.3 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -64.6, -161.3 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -54.5, -142.5 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -54.5, -142.5 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -42.4, -138.4 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -42.4, -138.4 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -25.8, -123.9 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -25.8, -123.9 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -29.4, -128.8 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -29.4, -128.8 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -28.4, -129 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -28.4, -129 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -27.5, -129.2 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -27.5, -129.2 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -26.5, -129.5 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -26.5, -129.5 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -25.5, -129.7 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -25.5, -129.7 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -26.9, -130.9 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -26.9, -130.9 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -28.2, -132 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -28.2, -132 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -30.3, -126.7 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -30.3, -126.7 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -34.8, -105.2 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -34.8, -105.2 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -30.3, -159.1 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -30.3, -159.1 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -30.3, -108.2 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -30.3, -108.2 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -30.3, -154.7 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -30.3, -154.7 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -30.3, -114.5 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -30.3, -114.5 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -30.3, -149.6 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -30.3, -149.6 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -30.3, -118.9 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -30.3, -118.9 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -30.3, -145.2 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -30.3, -145.2 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -30.3, -121.1 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -30.3, -121.1 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -30.3, -143.6 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -30.3, -143.6 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -30.3, -122.9 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -30.3, -122.9 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -30.3, -142.5 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -30.3, -142.5 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -30.3, -122.5 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -30.3, -122.5 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -30.3, -138.5 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -30.3, -138.5 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -30.3, -123.4 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -30.3, -123.4 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -30.3, -132.3 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -30.3, -132.3 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -30.3, -125.7 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -30.3, -125.7 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -30.3, -133.9 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -30.3, -133.9 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -30.3, -125.9 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -30.3, -125.9 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -30.3, -128.2 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -30.3, -128.2 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -30.3, -131.1 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -30.3, -131.1 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -30.3, -128.5 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -30.3, -128.5 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -30.3, -132 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, -30.3, -132 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, -30.3, -129.3 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -30.3, -129.3 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -30.3, -129.4 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -30.3, -129.4 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -30.3, -131.7 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -30.3, -131.7 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -30.3, -129.6 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -30.3, -129.6 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -30.3, -131.5 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -30.3, -131.5 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -30.3, -129.8 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -30.3, -129.8 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -30.3, -132.1 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, -30.3, -132.1 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, -30.3, -130.2 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, -30.3, -129.2 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, -30.3, -129.2 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, -30.3, -129.2 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, -30.3, -129.2 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, -30.3, -132.2 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -30.3, -129.2 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, -30.3, -129.2 , 0 );

setScaleKey( spep_2 + 314 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 580 + OFFSET_X, 1, 0.11, 0.11 );

setRotateKey( spep_2 + 314 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, -66 );
setRotateKey( spep_2 + 580 + OFFSET_X, 1, -66 );


-- ** 音 ** --
--向かってくる
SE008 = playSeVer2( spep_2 + 6, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE008, 45 );
setTimeStretch( SE008, 1.4, 30, 4 );
SE009 = playSeVer2( spep_2 + 6, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE009, 79 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--手刀突き刺す
SE010 = playSeVer2( spep_2 + 72, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 78, 1190, "",spep_2 + 114, 0, 12, -1);
SE012 = playSeVer2( spep_2 + 84, 1031, "", 0, 0, 0, 1.0);
SE013 = playSeVer2( spep_2 + 88, 1032, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_2 + 88, SE013, 126 );
SE014 = playSeVer2( spep_2 + 88, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 92, 1032, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_2 + 92, SE015, 77 );

--振り向く
SE016 = playSeVer2( spep_2 + 94, 1278, "",spep_2 + 244, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 94, SE016, 53 );
SE017 = playSeVer2( spep_2 + 124, 1116, "",spep_2 + 194, 0, 36, -1);

--斬りつける
SE018 = playSeVer2( spep_2 + 180, 1004, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 196, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE019, 65 );
SE020 = playSeVer2( spep_2 + 200, 1143, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 204, 1032, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 216, 1240, "",spep_2 + 310, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 216, SE022, 126 );
SE023 = playSeVer2( spep_2 + 228, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 228, SE023, 63 );
SE024 = playSeVer2( spep_2 + 228, 1257, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 228, SE024, 151 );
SE025 = playSeVer2( spep_2 + 228, 1152, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 228, SE025, 68 );

--向かっていく
SE026 = playSeVer2( spep_2 + 274, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 274, SE026, 79 );

--突き刺す
SE027 = playSeVer2( spep_2 + 318, 1032, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 318, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 318, SE028, 81 );
SE029 = playSeVer2( spep_2 + 320, 1172, "",spep_2 + 430, 0, 66, -1);
setPitch( spep_2 + 320, SE029, -600 );
setTimeStretch( SE029, 0.6, 30, 4 );
SE030 = playSeVer2( spep_2 + 328, 1141, "", 0, 0, 0, -1);

--敵飛んでいく
SE031 = playSeVer2( spep_2 + 356, 1121, "",spep_2 + 480, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 356, SE031, 68 );
SE032 = playSeVer2( spep_2 + 356, 1183, "",spep_2 + 480, 0, 34, -1);
SE033 = playSeVer2( spep_2 + 358, 1422, "", 0, 0, 0, -1);

--加速する
SE034 = playSeVer2( spep_2 + 366, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 366, SE034, 81 );

--壁激突
SE035 = playSeVer2( spep_2 + 442, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 386); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -6); -- 588f -6f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕構え
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕構え(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -5, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 音 ** --
--手刀構える
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 118, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );
SE002 = playSeVer2( spep_0 + 0, 1161, "",spep_0 + 118, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );
setBandpassFilter( spep_0 + 0, SE002, 950, 24000 );

--手刀構える
SE004 = playSeVer2( spep_0 + 18, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 110 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --96f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--向かってくる
SE006 = playSeVer2( spep_1 + 86, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 90, 1117, "", 0, 0, 0, -1);


-------------------------------------------------
-- 突進から突き→回り込んで切りつけ→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 588;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 突進から突き→回り込んで切りつけ→フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 突進から突き→回り込んで切りつけ→フィニッシュ_背景(ef_002_b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 142 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 122 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 122 + OFFSET_X, 1, -146.9, 176.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -146.9, 176.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -144.4, 175.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -144.4, 175.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -141.8, 174.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -141.8, 174.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -139.3, 174 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -139.3, 174 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -136.7, 173 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -136.7, 173 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -134.2, 172.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -134.2, 172.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -131.7, 171.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -131.7, 171.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -129.1, 170.2 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -129.1, 170.2 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -126.6, 169.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -126.6, 169.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -124.1, 168.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -124.1, 168.4 , 0 );

setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_2 + 122 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 33.7 );


--敵の動き2
setDisp( spep_2 + 194 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 244 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 194 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 216 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 194 + OFFSET_X, 1, 457.4, 273.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 457.4, 273.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 453.8, 271.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 453.8, 271.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 443, 266.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 443, 266.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 425.1, 257.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 425.1, 257.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 400, 244.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 400, 244.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 367.7, 228.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 367.7, 228.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 328.2, 208.8 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 328.2, 208.8 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 281.6, 185.4 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 281.6, 185.4 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 227.7, 158.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 227.7, 158.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 166.7, 127.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 166.7, 127.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 98.5, 93.7 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 98.5, 93.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 142, 62.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 142, 62.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 162.5, 15.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 162.5, 15.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 170.9, 65.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 170.9, 65.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 185.7, 26.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 185.7, 26.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 206.4, 71.8 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 206.4, 71.8 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 219.4, 35 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 219.4, 35 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 224, 77.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 224, 77.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 236.5, 45.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 236.5, 45.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 253.7, 78.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 253.7, 78.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 256.5, 54.5 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 256.5, 54.5 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 264, 81.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 264, 81.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 279.8, 60.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 279.8, 60.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 280, 76.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 280, 76.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 291.3, 69.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 291.3, 69.1 , 0 );

setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.9, 0.9 );

setRotateKey( spep_2 + 194 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -36.3 );


--敵の動き3
setDisp( spep_2 + 314 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 580 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 334 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 386 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 314 + OFFSET_X, 1, 45, -81.4 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 45, -81.4 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 62.9, -83.2 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 62.9, -83.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 80.8, -85.1 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 80.8, -85.1 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 98.8, -86.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 98.8, -86.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 116.7, -88.7 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 116.7, -88.7 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 134.6, -90.5 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 134.6, -90.5 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 152.5, -92.3 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 152.5, -92.3 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 170.5, -94.1 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 170.5, -94.1 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 188.4, -96 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 188.4, -96 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 206.3, -97.8 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 206.3, -97.8 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 277, -171.4 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 277, -171.4 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 349.1, -171.5 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 349.1, -171.5 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 452.7, -205 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 452.7, -205 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 503.8, -208.2 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 503.8, -208.2 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 499.9, -208 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 499.9, -208 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 504.1, -224.5 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 504.1, -224.5 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 538, -210.8 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 538, -210.8 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 544.5, -211.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 544.5, -211.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 541.8, -212.7 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 541.8, -212.7 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 544, -218 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 544, -218 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 550.6, -218.2 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 550.6, -218.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 552, -214 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 552, -214 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 553.4, -219.8 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 553.4, -219.8 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 550.4, -219.6 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 550.4, -219.6 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 558.3, -219.5 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 558.3, -219.5 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 640.5, -175 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 640.5, -175 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 680.1, -175 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 680.1, -175 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 687.3, -160.6 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 687.3, -160.6 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 676.5, -178.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 676.5, -178.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 676.5, -164.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 676.5, -164.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 676.5, -178.6 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 676.5, -178.6 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 683.7, -171.4 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 683.7, -171.4 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 676.5, -178.6 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 676.5, -178.6 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 680.1, -164.2 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 680.1, -164.2 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 669.3, -175 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 669.3, -175 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 665.7, -160.6 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 665.7, -160.6 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 13.1, -81.3 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 13.1, -81.3 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 19.7, -103.7 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 19.7, -103.7 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 20.6, -88.8 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 20.6, -88.8 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 28.5, -109.8 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 28.5, -109.8 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 35, -99.8 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 35, -99.8 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 37.1, -119.3 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 37.1, -119.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 46.2, -108.8 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 46.2, -108.8 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 47.8, -128.8 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 47.8, -128.8 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 57.4, -115.8 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 57.4, -115.8 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 57.6, -137.8 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 57.6, -137.8 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 67.2, -127.3 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 67.2, -127.3 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 74.3, -132.3 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 74.3, -132.3 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 78.9, -144.4 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 78.9, -144.4 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 79, -148.9 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 79, -148.9 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 88.5, -153.4 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 88.5, -153.4 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 93.1, -153.3 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 93.1, -153.3 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 97.7, -165.3 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 97.7, -165.3 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 95.2, -169.4 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 95.2, -169.4 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 105.1, -173.6 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 105.1, -173.6 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 110, -173.2 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 110, -173.2 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 114.8, -185.2 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 114.8, -185.2 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 119.6, -181.6 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 119.6, -181.6 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 124.4, -191.4 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 124.4, -191.4 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 127.8, -190.7 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 127.8, -190.7 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 96, -177 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 96, -177 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 82.2, -162.5 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 82.2, -162.5 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 64.6, -161.3 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 64.6, -161.3 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 54.5, -142.5 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 54.5, -142.5 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 42.4, -138.4 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 42.4, -138.4 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 25.8, -123.9 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 25.8, -123.9 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 29.4, -128.8 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 29.4, -128.8 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 28.4, -129 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 28.4, -129 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 27.5, -129.2 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 27.5, -129.2 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 26.5, -129.5 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 26.5, -129.5 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 25.5, -129.7 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 25.5, -129.7 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 26.9, -130.9 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 26.9, -130.9 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 28.2, -132 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 28.2, -132 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 30.3, -126.7 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 30.3, -126.7 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 34.8, -105.2 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 34.8, -105.2 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 30.3, -159.1 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 30.3, -159.1 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 30.3, -108.2 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 30.3, -108.2 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 30.3, -154.7 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 30.3, -154.7 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 30.3, -114.5 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 30.3, -114.5 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 30.3, -149.6 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 30.3, -149.6 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 30.3, -118.9 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 30.3, -118.9 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 30.3, -145.2 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 30.3, -145.2 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 30.3, -121.1 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 30.3, -121.1 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 30.3, -143.6 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 30.3, -143.6 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 30.3, -122.9 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 30.3, -122.9 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 30.3, -142.5 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 30.3, -142.5 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 30.3, -122.5 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 30.3, -122.5 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 30.3, -138.5 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 30.3, -138.5 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 30.3, -123.4 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 30.3, -123.4 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 30.3, -132.3 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 30.3, -132.3 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 30.3, -125.7 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 30.3, -125.7 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 30.3, -133.9 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 30.3, -133.9 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 30.3, -125.9 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 30.3, -125.9 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 30.3, -128.2 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 30.3, -128.2 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 30.3, -131.1 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 30.3, -131.1 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 30.3, -128.5 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 30.3, -128.5 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 30.3, -132 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 30.3, -132 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 30.3, -129.3 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 30.3, -129.3 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 30.3, -129.4 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 30.3, -129.4 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 30.3, -131.7 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 30.3, -131.7 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 30.3, -129.6 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 30.3, -129.6 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 30.3, -131.5 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 30.3, -131.5 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 30.3, -129.8 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 30.3, -129.8 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 30.3, -132.1 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 30.3, -132.1 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 30.3, -130.2 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 30.3, -129.2 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 30.3, -129.2 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 30.3, -129.2 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 30.3, -129.2 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 30.3, -129.2 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 30.3, -129.2 , 0 );

setScaleKey( spep_2 + 314 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 580 + OFFSET_X, 1, 0.11, 0.11 );

setRotateKey( spep_2 + 314 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, 66 );
setRotateKey( spep_2 + 580 + OFFSET_X, 1, 66 );


-- ** 音 ** --
--向かってくる
SE008 = playSeVer2( spep_2 + 6, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE008, 45 );
setTimeStretch( SE008, 1.4, 30, 4 );
SE009 = playSeVer2( spep_2 + 6, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE009, 79 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--手刀突き刺す
SE010 = playSeVer2( spep_2 + 72, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 78, 1190, "",spep_2 + 114, 0, 12, -1);
SE012 = playSeVer2( spep_2 + 84, 1031, "", 0, 0, 0, 1.0);
SE013 = playSeVer2( spep_2 + 88, 1032, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_2 + 88, SE013, 126 );
SE014 = playSeVer2( spep_2 + 88, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 92, 1032, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_2 + 92, SE015, 77 );

--振り向く
SE016 = playSeVer2( spep_2 + 94, 1278, "",spep_2 + 244, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 94, SE016, 53 );
SE017 = playSeVer2( spep_2 + 124, 1116, "",spep_2 + 194, 0, 36, -1);

--斬りつける
SE018 = playSeVer2( spep_2 + 180, 1004, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 196, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 196, SE019, 65 );
SE020 = playSeVer2( spep_2 + 200, 1143, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 204, 1032, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 216, 1240, "",spep_2 + 310, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 216, SE022, 126 );
SE023 = playSeVer2( spep_2 + 228, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 228, SE023, 63 );
SE024 = playSeVer2( spep_2 + 228, 1257, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 228, SE024, 151 );
SE025 = playSeVer2( spep_2 + 228, 1152, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 228, SE025, 68 );

--向かっていく
SE026 = playSeVer2( spep_2 + 274, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 274, SE026, 79 );

--突き刺す
SE027 = playSeVer2( spep_2 + 318, 1032, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 318, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 318, SE028, 81 );
SE029 = playSeVer2( spep_2 + 320, 1172, "",spep_2 + 430, 0, 66, -1);
setPitch( spep_2 + 320, SE029, -600 );
setTimeStretch( SE029, 0.6, 30, 4 );
SE030 = playSeVer2( spep_2 + 328, 1141, "", 0, 0, 0, -1);

--敵飛んでいく
SE031 = playSeVer2( spep_2 + 356, 1121, "",spep_2 + 480, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 356, SE031, 68 );
SE032 = playSeVer2( spep_2 + 356, 1183, "",spep_2 + 480, 0, 34, -1);
SE033 = playSeVer2( spep_2 + 358, 1422, "", 0, 0, 0, -1);

--加速する
SE034 = playSeVer2( spep_2 + 366, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 366, SE034, 81 );

--壁激突
SE035 = playSeVer2( spep_2 + 442, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 386); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -6); -- 588f -6f


end