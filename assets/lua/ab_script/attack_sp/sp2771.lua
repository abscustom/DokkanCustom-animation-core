--1029550:LR_アニラーザ_超必殺技：マジェスティックラーヴァ
--sp_effect_a1_00462
--sp2771

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_02  = 163410; --気弾発射～爆発してフィニッシュ ef_002
SP_03  = 906; --集中線_ef_007

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

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場〜気弾ため
-------------------------------------------------
MAX_FRAME_0 = 92;

setupMovie(0, SP_02, 0, 0);

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

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -30, 515.5 , 0 );
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


-- ** 音 ** --
--気弾溜め
SE001 = playSeVer2( spep_0 + 0, 1356, "",spep_0 + 136, 0, 128, -1);
setPitch( spep_0 + 0, SE001, 400 );
setTimeStretch( SE001, 1.27, 30, 4 );
SE003 = playSeVer2( spep_0 + 4, 1122, "",spep_0 + 128, 0, 120, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 54 );
SE004 = playSeVer2( spep_0 + 4, 1465, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE004, 87 );
SE005 = playSeVer2( spep_0 + 4, 1254, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE005, 122 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --92f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--投げ前気弾溜め
SE007 = playSeVer2( spep_1 + 88, 1356, "",spep_2 + 168, 16, 46, -1);
setStartTimeMs( SE007,  1067 );

-------------------------------------------------
-- 気弾発射～爆発してフィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 742;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾発射～爆発してフィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 集中線 ** --
concentr_el_1 = entryEffectLife( spep_2 + 78 + OFFSET_X, SP_03, 52 + OFFSET_X, 0x100, -1, 0, 0, 0 ); -- 集中線_白(ef_007)
setEffShake( spep_2 + 0, concentr_el_1, 90, 20 );
setEffMoveKey( spep_2 + 0, concentr_el_1, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, concentr_el_1, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, concentr_el_1, 1.6, 1.6 );
setEffScaleKey( spep_2 + MAX_FRAME_2, concentr_el_1, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, concentr_el_1, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, concentr_el_1, 0 );
setEffAlphaKey( spep_2 + 0, concentr_el_1, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, concentr_el_1, 255 );

concentr_el_2 = entryEffectLife( spep_2 + 360 + OFFSET_X, SP_03, 64 + OFFSET_X, 0x100, -1, 0, 0, 0 ); -- 集中線_白(ef_007)
setEffShake( spep_2 + 0, concentr_el_2, 90, 20 );
setEffMoveKey( spep_2 + 0, concentr_el_2, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, concentr_el_2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, concentr_el_2, 1.6, 1.6 );
setEffScaleKey( spep_2 + MAX_FRAME_2, concentr_el_2, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, concentr_el_2, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, concentr_el_2, 0 );
setEffAlphaKey( spep_2 + 0, concentr_el_2, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, concentr_el_2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 130 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 204 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 130 + OFFSET_X, 1, 117 );

setMoveKey( spep_2 + 130 + OFFSET_X, 1, 516.4, -289.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 516.4, -289.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 465.4, -323.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 465.4, -323.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 463.2, -314.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 463.2, -314.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 393.9, -314.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 393.9, -314.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 389.5, -335.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 389.5, -335.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 360, -303.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 360, -303.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 328.5, -328.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 328.5, -328.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 315.1, -329.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 315.1, -329.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 285.5, -321.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 285.5, -321.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 265.9, -324 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 265.9, -324 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 248.2, -326.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 248.2, -326.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 232.5, -328.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 232.5, -328.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 218.7, -330.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 218.7, -330.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 206.7, -332.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 206.7, -332.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 196.7, -333.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 196.7, -333.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 188.6, -335.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 188.6, -335.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 182.3, -336.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 182.3, -336.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 178, -337.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 178, -337.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 175.5, -338 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 175.5, -338 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 174.9, -338.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 174.9, -338.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 175.3, -338.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 175.3, -338.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 175.7, -339.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 175.7, -339.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 176.1, -339.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 176.1, -339.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 159.1, -356.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 159.1, -356.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 189.1, -345.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 189.1, -345.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 154.1, -337.6 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 154.1, -337.6 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 177.1, -357.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 177.1, -357.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 176.1, -339.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 176.1, -339.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 159.1, -356.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 159.1, -356.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 189.1, -345.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 189.1, -345.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 154.1, -337.6 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 154.1, -337.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 177.1, -357.6 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 177.1, -357.6 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 176.1, -339.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 176.1, -339.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 159.1, -356.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 159.1, -356.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 189.1, -345.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 189.1, -345.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 154.1, -337.6 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 154.1, -337.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 177.1, -357.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 177.1, -357.6 , 0 );

setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.48, 0.48 );

setRotateKey( spep_2 + 130 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_2 + 284 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 424 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 284 + OFFSET_X, 1, 2.4, 1048.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 2.4, 1048.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 5.5, 963.9 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 5.5, 963.9 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -3.4, 900.6 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -3.4, 900.6 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 7.7, 834.2 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 7.7, 834.2 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -0.1, 764.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -0.1, 764.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 3, 716.4 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 3, 716.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 6.1, 646.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 6.1, 646.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -2.8, 598.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -2.8, 598.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 8.3, 546.6 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 8.3, 546.6 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 0.4, 492 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 0.4, 492 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 3.4, 458.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 3.4, 458.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 6.5, 403.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 6.5, 403.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -2.4, 369.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -2.4, 369.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 8.7, 332.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 8.7, 332.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 0.7, 292.9 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 0.7, 292.9 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 3.8, 273.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 3.8, 273.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 6.8, 233.9 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 6.8, 233.9 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -2.1, 214.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -2.1, 214.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 8.9, 192.7 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 8.9, 192.7 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 1, 167.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 1, 167.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 4, 163.3 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 4, 163.3 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 7, 138 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 7, 138 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -1.9, 133.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -1.9, 133.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 9.1, 126.3 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 9.1, 126.3 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 1.1, 115.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 1.1, 115.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 4.1, 126.4 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 4.1, 126.4 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 7.1, 114.4 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 7.1, 114.4 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -1.9, 120.4 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -1.9, 120.4 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 9.1, 120.4 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 9.1, 120.4 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 1.1, 114.4 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 1.1, 114.4 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 4.1, 126.4 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 4.1, 126.4 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 7.1, 114.4 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 7.1, 114.4 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -1.9, 120.4 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -1.9, 120.4 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 9.1, 120.4 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 9.1, 120.4 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 1.1, 114.4 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 1.1, 114.4 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 4.1, 126.4 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 4.1, 126.4 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 7.1, 114.4 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 7.1, 114.4 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -1.9, 120.4 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -1.9, 120.4 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 9.1, 120.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 9.1, 120.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 0.1, 113.4 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 0.1, 113.4 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 4.1, 134.4 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 4.1, 134.4 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 9.1, 104.4 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 9.1, 104.4 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -10.9, 122.4 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -10.9, 122.4 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 18.1, 119.4 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 18.1, 119.4 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -5.9, 102.4 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -5.9, 102.4 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 4.1, 134.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 4.1, 134.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 9.1, 104.4 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 9.1, 104.4 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -10.9, 122.4 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -10.9, 122.4 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 18.1, 119.4 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 18.1, 119.4 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -5.9, 102.4 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -5.9, 102.4 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 4.1, 134.4 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 4.1, 134.4 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 9.1, 104.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 9.1, 104.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -10.9, 122.4 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -10.9, 122.4 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 18.1, 119.4 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 18.1, 119.4 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -5.9, 102.4 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -5.9, 102.4 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 4.1, 134.4 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 4.1, 134.4 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 9.1, 104.4 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 9.1, 104.4 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -10.9, 122.4 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -10.9, 122.4 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 18.1, 119.4 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 18.1, 119.4 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -5.9, 102.4 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -5.9, 102.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 4.1, 134.4 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 4.1, 134.4 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 9.1, 104.4 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 9.1, 104.4 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -10.9, 122.4 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -10.9, 122.4 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 18.1, 119.4 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 18.1, 119.4 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -5.9, 102.4 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -5.9, 102.4 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 4.1, 134.4 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 4.1, 134.4 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 9.1, 104.4 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 9.1, 104.4 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -10.9, 122.4 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -10.9, 122.4 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 18.1, 119.4 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 18.1, 119.4 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -5.9, 102.4 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -5.9, 102.4 , 0 );

setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 0.38, 0.38 );

setRotateKey( spep_2 + 284 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--振りかぶる
SE008 = playSeVer2( spep_2 + 24, 1278, "",spep_2 + 168, 12, 52, -1);
setSeVolumeByWorkId( spep_2 + 24, SE008, 73 );
setStartTimeMs( SE008,  1200 );

--投げ前気弾溜め
SE009 = playSeVer2( spep_1 + 88, 1281, "",spep_2 + 272, 0, 152, -1);
SE010 = playSeVer2( spep_1 + 88, 1441, "",spep_2 + 168, 0, 48, -1);

--振りかぶる
SE011 = playSeVer2( spep_2 + 20, 1116, "",spep_2 + 128, 0, 10, -1);
SE012 = playSeVer2( spep_2 + 20, 1004, "", 0, 0, 0, -1);

--気弾投げ
SE013 = playSeVer2( spep_2 + 112, 1027, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 112, 1193, "",spep_2 + 230, 0, 48, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 176; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
--気弾弾ける
SE015 = playSeVer2( spep_2 + 178, 1212, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_2 + 178, SE015, 72 );
setStartTimeMs( SE015,  333 );
SE016 = playSeVer2( spep_2 + 172, 1178, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 172, 1190, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 172, 1217, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 172, SE018, 79 );

--気弾分裂する
SE019 = playSeVer2( spep_2 + 226, 1047, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 226, 1401, "", 0, 0, 0, -1);

--気弾分裂する2
SE021 = playSeVer2( spep_2 + 248, 1047, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 248, 1401, "", 0, 0, 0, -1);

--気弾飛んでいく
SE023 = playSeVer2( spep_2 + 278, 1423, "",spep_2 + 432, 0, 58, -1);
SE024 = playSeVer2( spep_2 + 278, 1177, "",spep_2 + 442, 0, 82, -1);
SE025 = playSeVer2( spep_2 + 302, 1406, "",spep_2 + 462, 0, 62, -1);

--連続爆発
SE026 = playSeVer2( spep_2 + 326, 1023, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 346, 1024, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 364, 1159, "", 0, 0, 0, -1);

--顔アップ
SE029 = playSeVer2( spep_2 + 416, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 416, SE029, 81 );

--口から光線吐く
SE030 = playSeVer2( spep_2 + 466, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE030, 74 );
SE031 = playSeVer2( spep_2 + 466, 1285, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE031, 60 );
SE032 = playSeVer2( spep_2 + 466, 1306, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 466, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE033, 200 );
SE034 = playSeVer2( spep_2 + 466, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE034, 58 );

--地響き
SE035 = playSeVer2( spep_2 + 496, 1024, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 524, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 524, SE036, 78 );
SE037 = playSeVer2( spep_2 + 524, 1044, "",spep_2 + 640, 0, 24, -1);

--ラスト爆発
SE038 = playSeVer2( spep_2 + 586, 1159, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 600, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 592); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 742f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場〜気弾ため
-------------------------------------------------
MAX_FRAME_0 = 92;

setupMovie(0, SP_02, 0, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -30, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 音 ** --
--気弾溜め
SE001 = playSeVer2( spep_0 + 0, 1356, "",spep_0 + 136, 0, 128, -1);
setPitch( spep_0 + 0, SE001, 400 );
setTimeStretch( SE001, 1.27, 30, 4 );
SE003 = playSeVer2( spep_0 + 4, 1122, "",spep_0 + 128, 0, 120, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 54 );
SE004 = playSeVer2( spep_0 + 4, 1465, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE004, 87 );
SE005 = playSeVer2( spep_0 + 4, 1254, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE005, 122 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --92f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--投げ前気弾溜め
SE007 = playSeVer2( spep_1 + 88, 1356, "",spep_2 + 168, 16, 46, -1);
setStartTimeMs( SE007,  1067 );

-------------------------------------------------
-- 気弾発射～爆発してフィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 742;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾発射～爆発してフィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 集中線 ** --
concentr_el_1 = entryEffectLife( spep_2 + 78 + OFFSET_X, SP_03, 52 + OFFSET_X, 0x100, -1, 0, 0, 0 ); -- 集中線_白(ef_007)
setEffShake( spep_2 + 0, concentr_el_1, 90, 20 );
setEffMoveKey( spep_2 + 0, concentr_el_1, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, concentr_el_1, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, concentr_el_1, 1.6, 1.6 );
setEffScaleKey( spep_2 + MAX_FRAME_2, concentr_el_1, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, concentr_el_1, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, concentr_el_1, 0 );
setEffAlphaKey( spep_2 + 0, concentr_el_1, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, concentr_el_1, 255 );

concentr_el_2 = entryEffectLife( spep_2 + 360 + OFFSET_X, SP_03, 64 + OFFSET_X, 0x100, -1, 0, 0, 0 ); -- 集中線_白(ef_007)
setEffShake( spep_2 + 0, concentr_el_2, 90, 20 );
setEffMoveKey( spep_2 + 0, concentr_el_2, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, concentr_el_2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, concentr_el_2, 1.6, 1.6 );
setEffScaleKey( spep_2 + MAX_FRAME_2, concentr_el_2, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, concentr_el_2, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, concentr_el_2, 0 );
setEffAlphaKey( spep_2 + 0, concentr_el_2, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, concentr_el_2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 130 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 204 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 130 + OFFSET_X, 1,17 );

setMoveKey( spep_2 + 130 + OFFSET_X, 1, -516.4, -289.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -516.4, -289.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -465.4, -323.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -465.4, -323.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -463.2, -314.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -463.2, -314.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -393.9, -314.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -393.9, -314.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -389.5, -335.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -389.5, -335.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -360, -303.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -360, -303.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -328.5, -328.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -328.5, -328.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -315.1, -329.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -315.1, -329.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -285.5, -321.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -285.5, -321.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -265.9, -324 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -265.9, -324 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -248.2, -326.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -248.2, -326.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -232.5, -328.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -232.5, -328.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -218.7, -330.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -218.7, -330.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -206.7, -332.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -206.7, -332.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -196.7, -333.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -196.7, -333.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -188.6, -335.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -188.6, -335.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -182.3, -336.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -182.3, -336.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -178, -337.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -178, -337.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -175.5, -338 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -175.5, -338 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -174.9, -338.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -174.9, -338.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -175.3, -338.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -175.3, -338.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -175.7, -339.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -175.7, -339.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -176.1, -339.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -176.1, -339.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -159.1, -356.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -159.1, -356.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -189.1, -345.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -189.1, -345.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -154.1, -337.6 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -154.1, -337.6 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -177.1, -357.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -177.1, -357.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -176.1, -339.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -176.1, -339.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -159.1, -356.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -159.1, -356.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -189.1, -345.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -189.1, -345.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -154.1, -337.6 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -154.1, -337.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -177.1, -357.6 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -177.1, -357.6 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -176.1, -339.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -176.1, -339.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -159.1, -356.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -159.1, -356.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -189.1, -345.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -189.1, -345.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -154.1, -337.6 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -154.1, -337.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -177.1, -357.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -177.1, -357.6 , 0 );

setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.48, 0.48 );

setRotateKey( spep_2 + 130 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_2 + 284 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 424 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 284 + OFFSET_X, 1, -2.4, 1048.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -2.4, 1048.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -5.5, 963.9 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -5.5, 963.9 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 3.4, 900.6 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 3.4, 900.6 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -7.7, 834.2 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -7.7, 834.2 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 0.1, 764.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 0.1, 764.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -3, 716.4 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -3, 716.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -6.1, 646.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -6.1, 646.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 2.8, 598.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 2.8, 598.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -8.3, 546.6 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -8.3, 546.6 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -0.4, 492 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -0.4, 492 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -3.4, 458.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -3.4, 458.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -6.5, 403.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -6.5, 403.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 2.4, 369.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 2.4, 369.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -8.7, 332.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -8.7, 332.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -0.7, 292.9 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -0.7, 292.9 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -3.8, 273.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -3.8, 273.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -6.8, 233.9 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -6.8, 233.9 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 2.1, 214.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 2.1, 214.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -8.9, 192.7 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -8.9, 192.7 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -1, 167.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -1, 167.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -4, 163.3 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -4, 163.3 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -7, 138 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -7, 138 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 1.9, 133.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 1.9, 133.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -9.1, 126.3 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -9.1, 126.3 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -1.1, 115.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -1.1, 115.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -4.1, 126.4 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -4.1, 126.4 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -7.1, 114.4 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -7.1, 114.4 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 1.9, 120.4 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 1.9, 120.4 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -9.1, 120.4 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -9.1, 120.4 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -1.1, 114.4 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -1.1, 114.4 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -4.1, 126.4 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -4.1, 126.4 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -7.1, 114.4 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -7.1, 114.4 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 1.9, 120.4 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 1.9, 120.4 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -9.1, 120.4 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -9.1, 120.4 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -1.1, 114.4 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -1.1, 114.4 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -4.1, 126.4 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -4.1, 126.4 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -7.1, 114.4 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -7.1, 114.4 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 1.9, 120.4 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 1.9, 120.4 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -9.1, 120.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -9.1, 120.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -0.1, 113.4 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -0.1, 113.4 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -4.1, 134.4 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -4.1, 134.4 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -9.1, 104.4 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -9.1, 104.4 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 10.9, 122.4 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 10.9, 122.4 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -18.1, 119.4 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -18.1, 119.4 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 5.9, 102.4 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 5.9, 102.4 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -4.1, 134.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -4.1, 134.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -9.1, 104.4 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -9.1, 104.4 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 10.9, 122.4 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 10.9, 122.4 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -18.1, 119.4 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -18.1, 119.4 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 5.9, 102.4 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 5.9, 102.4 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -4.1, 134.4 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -4.1, 134.4 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -9.1, 104.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -9.1, 104.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 10.9, 122.4 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 10.9, 122.4 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -18.1, 119.4 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -18.1, 119.4 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 5.9, 102.4 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 5.9, 102.4 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -4.1, 134.4 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -4.1, 134.4 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -9.1, 104.4 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -9.1, 104.4 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 10.9, 122.4 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 10.9, 122.4 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -18.1, 119.4 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -18.1, 119.4 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 5.9, 102.4 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 5.9, 102.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -4.1, 134.4 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -4.1, 134.4 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -9.1, 104.4 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -9.1, 104.4 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 10.9, 122.4 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 10.9, 122.4 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -18.1, 119.4 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -18.1, 119.4 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 5.9, 102.4 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 5.9, 102.4 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -4.1, 134.4 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -4.1, 134.4 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -9.1, 104.4 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -9.1, 104.4 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 10.9, 122.4 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 10.9, 122.4 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -18.1, 119.4 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -18.1, 119.4 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 5.9, 102.4 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 5.9, 102.4 , 0 );

setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 0.38, 0.38 );

setRotateKey( spep_2 + 284 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--振りかぶる
SE008 = playSeVer2( spep_2 + 24, 1278, "",spep_2 + 168, 12, 52, -1);
setSeVolumeByWorkId( spep_2 + 24, SE008, 73 );
setStartTimeMs( SE008,  1200 );

--投げ前気弾溜め
SE009 = playSeVer2( spep_1 + 88, 1281, "",spep_2 + 272, 0, 152, -1);
SE010 = playSeVer2( spep_1 + 88, 1441, "",spep_2 + 168, 0, 48, -1);

--振りかぶる
SE011 = playSeVer2( spep_2 + 20, 1116, "",spep_2 + 128, 0, 10, -1);
SE012 = playSeVer2( spep_2 + 20, 1004, "", 0, 0, 0, -1);

--気弾投げ
SE013 = playSeVer2( spep_2 + 112, 1027, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 112, 1193, "",spep_2 + 230, 0, 48, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 176; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
--気弾弾ける
SE015 = playSeVer2( spep_2 + 178, 1212, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_2 + 178, SE015, 72 );
setStartTimeMs( SE015,  333 );
SE016 = playSeVer2( spep_2 + 172, 1178, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 172, 1190, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 172, 1217, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 172, SE018, 79 );

--気弾分裂する
SE019 = playSeVer2( spep_2 + 226, 1047, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 226, 1401, "", 0, 0, 0, -1);

--気弾分裂する2
SE021 = playSeVer2( spep_2 + 248, 1047, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 248, 1401, "", 0, 0, 0, -1);

--気弾飛んでいく
SE023 = playSeVer2( spep_2 + 278, 1423, "",spep_2 + 432, 0, 58, -1);
SE024 = playSeVer2( spep_2 + 278, 1177, "",spep_2 + 442, 0, 82, -1);
SE025 = playSeVer2( spep_2 + 302, 1406, "",spep_2 + 462, 0, 62, -1);

--連続爆発
SE026 = playSeVer2( spep_2 + 326, 1023, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 346, 1024, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 364, 1159, "", 0, 0, 0, -1);

--顔アップ
SE029 = playSeVer2( spep_2 + 416, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 416, SE029, 81 );

--口から光線吐く
SE030 = playSeVer2( spep_2 + 466, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE030, 74 );
SE031 = playSeVer2( spep_2 + 466, 1285, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE031, 60 );
SE032 = playSeVer2( spep_2 + 466, 1306, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 466, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE033, 200 );
SE034 = playSeVer2( spep_2 + 466, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE034, 58 );

--地響き
SE035 = playSeVer2( spep_2 + 496, 1024, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 524, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 524, SE036, 78 );
SE037 = playSeVer2( spep_2 + 524, 1044, "",spep_2 + 640, 0, 24, -1);

--ラスト爆発
SE038 = playSeVer2( spep_2 + 586, 1159, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 600, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 592); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 742f

end