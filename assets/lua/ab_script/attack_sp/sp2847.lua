-- 1031060: UR_超サイヤ人3ベジータ(ミニ)(DAIMA)_必殺技：スラッシュアロー
-- sp_effect_b1_00318
-- sp2847

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163706;  -- 開幕～カットイン ef_001
SP_002 = 163707;  -- カットイン〜フィニッシュ ef_002
SP_002b = 163708;  -- カットイン〜フィニッシュ ef_002b

-- 敵側
SP_002r = 163709;  -- カットイン〜フィニッシュ ef_002r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕～カットイン ef_001
------------------------------------------------------
MAX_FRAME_0 = 104;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );  -- 開幕～カットイン ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--水中で腕組む
SE001 = playSeVer2( spep_0 + 0, 1471, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 117 );
setStartTimeMs( SE001,  1567 );
SE002 = playSeVer2( spep_0 + 0, 1164, "",spep_0 + 168, 14, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 68 );
setStartTimeMs( SE002,  500 );
SE003 = playSeVer2( spep_0 + 0, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 112 );
setStartTimeMs( SE003,  333 );
SE004 = playSeVer2( spep_0 + 0, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 81 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 104

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--蹴り
SE007 = playSeVer2( spep_1 + 86, 1116, "",spep_2 + 40, 0, 22, -1);

------------------------------------------------------
-- カットイン〜フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 754;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- カットイン〜フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- カットイン〜フィニッシュ ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 162 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 264 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 162 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 162 + OFFSET_X, 1, -513.5, 88.8 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -513.5, 88.8 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -151.9, 34.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -151.9, 34.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -138.8, 30.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -138.8, 30.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -75.8, 10.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -75.8, 10.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 27.2, -21.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 27.2, -21.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 90.1, -40.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 90.1, -40.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 124, -51.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 124, -51.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 142.6, -57.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 142.6, -57.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 152.7, -60.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 152.7, -60.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 157.8, -62 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 157.8, -62 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 159.6, -62.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 159.6, -62.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 159.3, -62.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 159.3, -62.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 158.2, -62.1 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 158.2, -62.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 157.5, -61.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 157.5, -61.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 157.6, -61.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 157.6, -61.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 157.7, -61.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 157.7, -61.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 157.8, -61.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 157.8, -61.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 157.9, -61.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 157.9, -61.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 158, -61.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 158, -61.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 158.1, -61.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 158.1, -61.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 158.2, -61.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 158.2, -61.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 158.3, -61.7 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 158.3, -61.7 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 158.4, -61.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 158.4, -61.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 158.5, -61.7 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 158.5, -61.7 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 158.6, -61.6 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 158.6, -61.6 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 158.7, -61.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 158.7, -61.6 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 158.8, -61.6 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 158.8, -61.6 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 158.9, -61.6 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 158.9, -61.6 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 159, -61.6 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 159, -61.6 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 159.1, -61.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 159.1, -61.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 159.2, -61.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 159.2, -61.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 159.3, -61.6 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 159.3, -61.6 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 159.4, -61.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 159.4, -61.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 159.5, -61.5 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 159.5, -61.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 159.6, -61.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 159.6, -61.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 159.7, -61.5 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 159.7, -61.5 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 159.8, -61.5 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 159.8, -61.5 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 159.9, -61.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 159.9, -61.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 160, -61.5 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 160, -61.5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 160.1, -61.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 160.1, -61.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 160.2, -61.4 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 160.2, -61.4 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 160.3, -61.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 160.3, -61.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 160.4, -61.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 160.4, -61.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 160.5, -61.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 160.5, -61.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 160.6, -61.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 160.6, -61.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 160.7, -61.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 160.7, -61.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 160.8, -61.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 160.8, -61.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 160.9, -61.4 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 160.9, -61.4 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 161, -61.3 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 161, -61.3 , 0 );

setScaleKey( spep_2 + 162 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.03, 0.03 );

setRotateKey( spep_2 + 162 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 53.2 );

-- 敵の動き2
setDisp( spep_2 + 282 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 432 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 282 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 288 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 292 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 300 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 306 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 312 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 320 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 326 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 332 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 338 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 344 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 350 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 356 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 362 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 368 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 376 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 382 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 388 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 394 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 400 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 406 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 416 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 282 + OFFSET_X, 1, 167, 36.1 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 167, 36.1 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 170, 40.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 170, 40.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 167.7, 36.1 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 167.7, 36.1 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 175.4, 96.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 175.4, 96.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 182.9, 107.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 182.9, 107.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 182.9, 107.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 182.9, 107.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 182.9, 117.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 182.9, 117.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 182.1, 111.7 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 182.1, 111.7 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 189.9, 112.8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 189.9, 112.8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 181.7, 100.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 181.7, 100.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 174.6, 100.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 174.6, 100.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 176.1, 89.2 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 176.1, 89.2 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 179.1, 98.2 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 179.1, 98.2 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 198.9, 104.5 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 198.9, 104.5 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 183.1, 113.5 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 183.1, 113.5 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 202.6, 110.5 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 202.6, 110.5 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 187.4, 119.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 187.4, 119.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 190.4, 110.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 190.4, 110.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 209.7, 92.6 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 209.7, 92.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 220.2, 76.1 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 220.2, 76.1 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 193.2, 81.3 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 193.2, 81.3 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 163, 90.4 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 163, 90.4 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 177.3, 103.2 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 177.3, 103.2 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 189.1, 100 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 189.1, 100 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 201.9, 112.7 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 201.9, 112.7 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 213.9, 106 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 213.9, 106 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 203.9, 105.7 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 203.9, 105.7 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 206.2, 114.7 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 206.2, 114.7 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 206.2, 101.2 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 206.2, 101.2 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 227.7, 78.3 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 227.7, 78.3 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 228.4, 65.6 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 228.4, 65.6 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 183.3, 90.4 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 183.3, 90.4 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 178, 81.4 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 178, 81.4 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 175.8, 91.9 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 175.8, 91.9 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 207.9, 87.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 207.9, 87.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 193.5, 102.2 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 193.5, 102.2 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 172.7, 89.3 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 172.7, 89.3 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 187.1, 109.1 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 187.1, 109.1 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 182.3, 95.9 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 182.3, 95.9 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 216.1, 81.9 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 216.1, 81.9 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 194.5, 71.1 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 194.5, 71.1 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 199.3, 78.3 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 199.3, 78.3 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 164.7, 89.5 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 164.7, 89.5 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 170.1, 106.9 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 170.1, 106.9 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 182.7, 99.2 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 182.7, 99.2 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 199.5, 120.2 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 199.5, 120.2 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 197.1, 116 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 197.1, 116 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 145.1, 116.3 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 145.1, 116.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 106.1, 118.7 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 106.1, 118.7 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 190.1, 119.9 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 190.1, 119.9 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 216.7, 100.5 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 216.7, 100.5 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 198.7, 65.7 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 198.7, 65.7 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 189.3, 93.1 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 189.3, 93.1 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 211.5, 90.7 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 211.5, 90.7 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 217.5, 85.9 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 217.5, 85.9 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 216.3, 90.7 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 216.3, 90.7 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 279.5, 106.2 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 279.5, 106.2 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 456.7, 231.9 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 456.7, 231.9 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 623.2, 277.2 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 623.2, 277.2 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 696.3, 373 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 696.3, 373 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 780.4, 408.4 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 780.4, 408.4 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 846, 445.6 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 846, 445.6 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 901.1, 483.7 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 901.1, 483.7 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 914.2, 491.2 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 914.2, 491.2 , 0 );

setScaleKey( spep_2 + 282 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 2.18, 2.18 );

setRotateKey( spep_2 + 282 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 415 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 416 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, 0 );

-- 敵の動き3
setDisp( spep_2 + 484 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 536 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 484 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 484 + OFFSET_X, 1, 60.7, 26.3 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 60.7, 26.3 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 60.6, 26.3 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 60.6, 26.3 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 60.6, 26.4 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 60.6, 26.4 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 60.7, 26.2 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 60.7, 26.2 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 60.8, 26 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 60.8, 26 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 60.9, 25.6 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 60.9, 25.6 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 61.2, 25 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 61.2, 25 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 61.6, 24.1 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 61.6, 24.1 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 62.2, 22.8 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 62.2, 22.8 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 63.1, 20.8 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 63.1, 20.8 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 64.4, 17.8 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 64.4, 17.8 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 66.4, 13.3 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 66.4, 13.3 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 69.4, 6.8 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 69.4, 6.8 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 73.5, -2.4 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 73.5, -2.4 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 78.8, -14.3 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 78.8, -14.3 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 86.9, -32.2 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 86.9, -32.2 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 108.3, -79.8 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 108.3, -79.8 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 165.9, -207.2 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 165.9, -207.2 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 191.1, -247.7 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 191.1, -247.7 , 0 );

setScaleKey( spep_2 + 484 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 509 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 510 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 517 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 518 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 527 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 529 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 530 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 531 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 532 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 533 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 534 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 536 + OFFSET_X, 1, 2.3, 2.3 );

setRotateKey( spep_2 + 484 + OFFSET_X, 1, 75.2 );
setRotateKey( spep_2 + 525 + OFFSET_X, 1, 75.2 );
setRotateKey( spep_2 + 526 + OFFSET_X, 1, 75.1 );
setRotateKey( spep_2 + 531 + OFFSET_X, 1, 75.1 );
setRotateKey( spep_2 + 532 + OFFSET_X, 1, 75 );
setRotateKey( spep_2 + 536 + OFFSET_X, 1, 75 );

-- 敵の動き4
setDisp( spep_2 + 574 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 624 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 618 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 574 + OFFSET_X, 1, -284.9, 142.8 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, -284.9, 142.8 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -282.6, 140.9 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, -282.6, 140.9 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -279.9, 139 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, -279.9, 139 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, -276.9, 136.9 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, -276.9, 136.9 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, -273.5, 134.6 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -273.5, 134.6 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -269.7, 132 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -269.7, 132 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -265.5, 128.8 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, -265.5, 128.8 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, -258.2, 127.4 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, -258.2, 127.4 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, -252.6, 123.1 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, -252.6, 123.1 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, -244, 117.7 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, -244, 117.7 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, -231.9, 109.9 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, -231.9, 109.9 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, -212.5, 98.5 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, -212.5, 98.5 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, -179.5, 75.4 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, -179.5, 75.4 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, -138.7, 50.8 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, -138.7, 50.8 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, -99.5, 25.8 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, -99.5, 25.8 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, -65.8, 4.6 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, -65.8, 4.6 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, -37, -13.9 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, -37, -13.9 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, -15.3, -27.4 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, -15.3, -27.4 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, 0.6, -37.2 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, 0.6, -37.2 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 11, -43.6 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 11, -43.6 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 19.6, -48.8 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 19.6, -48.8 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 21.6, -48.9 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 21.6, -48.9 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 70.4, -206.3 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, 70.4, -206.3 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, 60.4, -236.3 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 60.4, -236.3 , 0 );

setScaleKey( spep_2 + 574 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 579 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 580 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 585 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 586 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 589 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 590 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 591 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 592 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 593 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 594 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 595 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 596 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 597 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 598 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 599 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 600 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 601 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 602 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 603 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 604 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 605 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 606 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 607 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 608 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 609 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 610 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 611 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 612 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 613 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 614 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 617 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 618 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 624 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_2 + 574 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 617 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 618 + OFFSET_X, 1, 100 );
setRotateKey( spep_2 + 624 + OFFSET_X, 1, 100 );

-- 敵の動き5
setDisp( spep_2 + 636 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 692 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 636 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 636 + OFFSET_X, 1, -88, -37.9 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, -88, -37.9 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, -94.3, -33.6 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, -94.3, -33.6 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, -97.1, -31.8 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, -97.1, -31.8 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, -99.1, -30.4 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, -99.1, -30.4 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, -100.8, -29.3 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, -100.8, -29.3 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, -102.2, -29 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, -102.2, -29 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, -103.4, -28.2 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, -103.4, -28.2 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, -104.5, -28.3 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, -104.5, -28.3 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, -105.5, -27.6 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, -105.5, -27.6 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, -106.4, -27 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, -106.4, -27 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, -106.6, -28.2 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, -106.6, -28.2 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, -107.4, -27.7 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, -107.4, -27.7 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, -107.5, -29 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, -107.5, -29 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, -108.1, -28.6 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, -108.1, -28.6 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, -108.7, -28.1 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, -108.7, -28.1 , 0 );
setMoveKey( spep_2 + 666 + OFFSET_X, 1, -109.3, -28.4 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, -109.3, -28.4 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, -109.9, -28 , 0 );
setMoveKey( spep_2 + 669 + OFFSET_X, 1, -109.9, -28 , 0 );
setMoveKey( spep_2 + 670 + OFFSET_X, 1, -110.4, -28.3 , 0 );
setMoveKey( spep_2 + 671 + OFFSET_X, 1, -110.4, -28.3 , 0 );
setMoveKey( spep_2 + 672 + OFFSET_X, 1, -110.8, -28 , 0 );
setMoveKey( spep_2 + 673 + OFFSET_X, 1, -110.8, -28 , 0 );
setMoveKey( spep_2 + 674 + OFFSET_X, 1, -111.3, -27.7 , 0 );
setMoveKey( spep_2 + 675 + OFFSET_X, 1, -111.3, -27.7 , 0 );
setMoveKey( spep_2 + 676 + OFFSET_X, 1, -111.7, -28 , 0 );
setMoveKey( spep_2 + 677 + OFFSET_X, 1, -111.7, -28 , 0 );
setMoveKey( spep_2 + 678 + OFFSET_X, 1, -112.1, -27.8 , 0 );
setMoveKey( spep_2 + 679 + OFFSET_X, 1, -112.1, -27.8 , 0 );
setMoveKey( spep_2 + 680 + OFFSET_X, 1, -112.4, -28.1 , 0 );
setMoveKey( spep_2 + 681 + OFFSET_X, 1, -112.4, -28.1 , 0 );
setMoveKey( spep_2 + 682 + OFFSET_X, 1, -112.7, -28.8 , 0 );
setMoveKey( spep_2 + 683 + OFFSET_X, 1, -112.7, -28.8 , 0 );
setMoveKey( spep_2 + 684 + OFFSET_X, 1, -113, -28.6 , 0 );
setMoveKey( spep_2 + 685 + OFFSET_X, 1, -113, -28.6 , 0 );
setMoveKey( spep_2 + 686 + OFFSET_X, 1, -113.3, -29.1 , 0 );
setMoveKey( spep_2 + 687 + OFFSET_X, 1, -113.3, -29.1 , 0 );
setMoveKey( spep_2 + 688 + OFFSET_X, 1, -113.6, -30 , 0 );
setMoveKey( spep_2 + 689 + OFFSET_X, 1, -113.6, -30 , 0 );
setMoveKey( spep_2 + 690 + OFFSET_X, 1, -113.6, -22.9 , 0 );
setMoveKey( spep_2 + 692 + OFFSET_X, 1, -113.6, -22.9 , 0 );

setScaleKey( spep_2 + 636 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 637 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 638 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 639 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 640 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 641 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 642 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 643 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 644 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 645 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 646 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 647 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 648 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 649 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 650 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 651 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 652 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 653 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 654 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 655 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 656 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 657 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 658 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 659 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 660 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 661 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 662 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 663 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 664 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 665 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 666 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 669 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 670 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 671 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 672 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 673 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 674 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 677 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 678 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 679 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 680 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 683 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 684 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 687 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 688 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 692 + OFFSET_X, 1, 0.05, 0.05 );

setRotateKey( spep_2 + 636 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_2 + 679 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_2 + 680 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 692 + OFFSET_X, 1, -40.3 );

-- ** 音 ** --
--蹴り
SE008 = playSeVer2( spep_2 + 16, 1022, "",spep_2 + 96, 0, 46, -1);
SE009 = playSeVer2( spep_2 + 24, 1032, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 28, 1179, "", 0, 0, 0, -1);

--蹴りの波動
SE011 = playSeVer2( spep_2 + 62, 1027, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 62, 1032, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 62, 1180, "", 0, 0, 0, -1);

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 72;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 10, SE011, 0);
stopSe( SP_dodge - 10, SE012, 0);
stopSe( SP_dodge - 10, SE013, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--海割れる
SE014 = playSeVer2( spep_2 + 76, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE014, 54 );
SE015 = playSeVer2( spep_2 + 80, 1424, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 80, 1423, "",spep_2 + 280, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 80, SE016, 75 );
SE017 = playSeVer2( spep_2 + 80, 1166, "",spep_2 + 278, 0, 30, -1);
SE018 = playSeVer2( spep_2 + 86, 1296, "",spep_2 + 188, 0, 76, -1);
setSeVolumeByWorkId( spep_2 + 86, SE018, 75 );

--敵吹き飛ぶ
SE019 = playSeVer2( spep_2 + 142, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 142, 1121, "",spep_2 + 302, 0, 108, -1);

--追いかける
SE021 = playSeVer2( spep_2 + 182, 1182, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 182, 1117, "", 0, 0, 0, -1);

--水あふれる
SE023 = playSeVer2( spep_2 + 216, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 216, SE023, 158 );
SE024 = playSeVer2( spep_2 + 234, 1165, "",spep_2 + 330, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 234, SE024, 164 );
SE025 = playSeVer2( spep_2 + 238, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 238, SE025, 67 );

--連続キック
SE026 = playSeVer2( spep_2 + 272, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 272, SE026, 123 );
SE027 = playSeVer2( spep_2 + 278, 1425, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 278, 1009, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 296, 1010, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 324, 1009, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 342, 1010, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 362, 1425, "",spep_2 + 426, 0, 18, -1);
SE033 = playSeVer2( spep_2 + 366, 1009, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 388, 1010, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 412, 1120, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 412, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 412, SE036, 73 );

--気ダメして追いかける
SE037 = playSeVer2( spep_2 + 438, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 438, SE037, 132 );
setPitch( spep_2 + 438, SE037, -200 );
setTimeStretch( SE037, 0.87, 30, 4 );
SE038 = playSeVer2( spep_2 + 446, 1182, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 446, 1277, "", 0, 0, 0, -1);

--敵飛んでくる
SE040 = playSeVer2( spep_2 + 468, 1183, "",0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 502, 8, "", 0, 0, 0, -1);

--追い抜く
SE042 = playSeVer2( spep_2 + 530, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 530, SE042, 133 );
SE043 = playSeVer2( spep_2 + 540, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 540, SE043, 58 );

--振りかぶる
SE044 = playSeVer2( spep_2 + 584, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 584, SE044, 85 );

--蹴り落とす
SE045 = playSeVer2( spep_2 + 610, 1016, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 612, 1123, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 612, 1032, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 614, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 614, SE048, 84 );
SE049 = playSeVer2( spep_2 + 618, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 618, SE049, 92 );

--敵飛んでいく
SE050 = playSeVer2( spep_2 + 630, 1121, "",spep_2 + 718, 0, 42, -1);

--水面落ちる
SE051 = playSeVer2( spep_2 + 654, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 654, SE051, 145 );
SE052 = playSeVer2( spep_2 + 680, 1159, "",spep_2 + 756, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 680, SE052, 67 );
SE053 = playSeVer2( spep_2 + 690, 1471, "",spep_2 + 756, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 690, SE053, 72 );

-- ** おわり ** --
dealDamage( spep_2 + 646 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 754

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕～カットイン ef_001
------------------------------------------------------
MAX_FRAME_0 = 104;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );  -- 開幕～カットイン ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--水中で腕組む
SE001 = playSeVer2( spep_0 + 0, 1471, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 117 );
setStartTimeMs( SE001,  1567 );
SE002 = playSeVer2( spep_0 + 0, 1164, "",spep_0 + 168, 14, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 68 );
setStartTimeMs( SE002,  500 );
SE003 = playSeVer2( spep_0 + 0, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 112 );
setStartTimeMs( SE003,  333 );
SE004 = playSeVer2( spep_0 + 0, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 81 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 104

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--蹴り
SE007 = playSeVer2( spep_1 + 86, 1116, "",spep_2 + 40, 0, 22, -1);

------------------------------------------------------
-- カットイン〜フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 754;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );  -- カットイン〜フィニッシュ ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- カットイン〜フィニッシュ ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 162 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 264 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 162 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 162 + OFFSET_X, 1, -513.5, 88.8 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -513.5, 88.8 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -151.9, 34.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -151.9, 34.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -138.8, 30.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -138.8, 30.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -75.8, 10.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -75.8, 10.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 27.2, -21.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 27.2, -21.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 90.1, -40.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 90.1, -40.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 124, -51.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 124, -51.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 142.6, -57.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 142.6, -57.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 152.7, -60.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 152.7, -60.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 157.8, -62 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 157.8, -62 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 159.6, -62.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 159.6, -62.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 159.3, -62.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 159.3, -62.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 158.2, -62.1 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 158.2, -62.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 157.5, -61.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 157.5, -61.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 157.6, -61.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 157.6, -61.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 157.7, -61.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 157.7, -61.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 157.8, -61.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 157.8, -61.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 157.9, -61.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 157.9, -61.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 158, -61.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 158, -61.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 158.1, -61.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 158.1, -61.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 158.2, -61.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 158.2, -61.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 158.3, -61.7 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 158.3, -61.7 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 158.4, -61.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 158.4, -61.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 158.5, -61.7 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 158.5, -61.7 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 158.6, -61.6 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 158.6, -61.6 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 158.7, -61.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 158.7, -61.6 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 158.8, -61.6 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 158.8, -61.6 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 158.9, -61.6 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 158.9, -61.6 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 159, -61.6 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 159, -61.6 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 159.1, -61.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 159.1, -61.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 159.2, -61.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 159.2, -61.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 159.3, -61.6 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 159.3, -61.6 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 159.4, -61.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 159.4, -61.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 159.5, -61.5 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 159.5, -61.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 159.6, -61.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 159.6, -61.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 159.7, -61.5 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 159.7, -61.5 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 159.8, -61.5 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 159.8, -61.5 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 159.9, -61.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 159.9, -61.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 160, -61.5 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 160, -61.5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 160.1, -61.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 160.1, -61.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 160.2, -61.4 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 160.2, -61.4 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 160.3, -61.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 160.3, -61.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 160.4, -61.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 160.4, -61.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 160.5, -61.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 160.5, -61.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 160.6, -61.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 160.6, -61.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 160.7, -61.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 160.7, -61.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 160.8, -61.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 160.8, -61.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 160.9, -61.4 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 160.9, -61.4 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 161, -61.3 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 161, -61.3 , 0 );

setScaleKey( spep_2 + 162 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.03, 0.03 );

setRotateKey( spep_2 + 162 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 53.2 );

-- 敵の動き2
setDisp( spep_2 + 282 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 432 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 282 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 288 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 292 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 300 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 306 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 312 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 320 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 326 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 332 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 338 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 344 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 350 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 356 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 362 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 368 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 376 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 382 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 388 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 394 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 400 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 406 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 416 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 282 + OFFSET_X, 1, 167, 36.1 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 167, 36.1 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 170, 40.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 170, 40.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 167.7, 36.1 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 167.7, 36.1 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 175.4, 96.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 175.4, 96.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 182.9, 107.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 182.9, 107.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 182.9, 107.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 182.9, 107.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 182.9, 117.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 182.9, 117.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 182.1, 111.7 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 182.1, 111.7 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 189.9, 112.8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 189.9, 112.8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 181.7, 100.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 181.7, 100.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 174.6, 100.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 174.6, 100.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 176.1, 89.2 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 176.1, 89.2 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 179.1, 98.2 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 179.1, 98.2 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 198.9, 104.5 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 198.9, 104.5 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 183.1, 113.5 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 183.1, 113.5 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 202.6, 110.5 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 202.6, 110.5 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 187.4, 119.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 187.4, 119.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 190.4, 110.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 190.4, 110.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 209.7, 92.6 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 209.7, 92.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 220.2, 76.1 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 220.2, 76.1 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 193.2, 81.3 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 193.2, 81.3 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 163, 90.4 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 163, 90.4 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 177.3, 103.2 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 177.3, 103.2 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 189.1, 100 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 189.1, 100 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 201.9, 112.7 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 201.9, 112.7 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 213.9, 106 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 213.9, 106 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 203.9, 105.7 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 203.9, 105.7 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 206.2, 114.7 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 206.2, 114.7 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 206.2, 101.2 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 206.2, 101.2 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 227.7, 78.3 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 227.7, 78.3 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 228.4, 65.6 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 228.4, 65.6 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 183.3, 90.4 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 183.3, 90.4 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 178, 81.4 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 178, 81.4 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 175.8, 91.9 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 175.8, 91.9 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 207.9, 87.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 207.9, 87.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 193.5, 102.2 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 193.5, 102.2 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 172.7, 89.3 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 172.7, 89.3 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 187.1, 109.1 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 187.1, 109.1 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 182.3, 95.9 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 182.3, 95.9 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 216.1, 81.9 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 216.1, 81.9 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 194.5, 71.1 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 194.5, 71.1 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 199.3, 78.3 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 199.3, 78.3 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 164.7, 89.5 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 164.7, 89.5 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 170.1, 106.9 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 170.1, 106.9 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 182.7, 99.2 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 182.7, 99.2 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 199.5, 120.2 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 199.5, 120.2 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 197.1, 116 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 197.1, 116 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 145.1, 116.3 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 145.1, 116.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 106.1, 118.7 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 106.1, 118.7 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 190.1, 119.9 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 190.1, 119.9 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 216.7, 100.5 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 216.7, 100.5 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 198.7, 65.7 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 198.7, 65.7 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 189.3, 93.1 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 189.3, 93.1 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 211.5, 90.7 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 211.5, 90.7 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 217.5, 85.9 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 217.5, 85.9 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 216.3, 90.7 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 216.3, 90.7 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 279.5, 106.2 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 279.5, 106.2 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 456.7, 231.9 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 456.7, 231.9 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 623.2, 277.2 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 623.2, 277.2 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 696.3, 373 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 696.3, 373 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 780.4, 408.4 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 780.4, 408.4 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 846, 445.6 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 846, 445.6 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 901.1, 483.7 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 901.1, 483.7 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 914.2, 491.2 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 914.2, 491.2 , 0 );

setScaleKey( spep_2 + 282 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 2.18, 2.18 );

setRotateKey( spep_2 + 282 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 415 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 416 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, 0 );

-- 敵の動き3
setDisp( spep_2 + 484 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 536 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 484 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 484 + OFFSET_X, 1, 60.7, 26.3 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 60.7, 26.3 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 60.6, 26.3 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 60.6, 26.3 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 60.6, 26.4 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 60.6, 26.4 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 60.7, 26.2 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 60.7, 26.2 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 60.8, 26 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 60.8, 26 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 60.9, 25.6 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 60.9, 25.6 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 61.2, 25 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 61.2, 25 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 61.6, 24.1 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 61.6, 24.1 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 62.2, 22.8 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 62.2, 22.8 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 63.1, 20.8 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 63.1, 20.8 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 64.4, 17.8 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 64.4, 17.8 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 66.4, 13.3 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 66.4, 13.3 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 69.4, 6.8 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 69.4, 6.8 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 73.5, -2.4 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 73.5, -2.4 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 78.8, -14.3 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 78.8, -14.3 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 86.9, -32.2 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 86.9, -32.2 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 108.3, -79.8 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 108.3, -79.8 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 165.9, -207.2 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 165.9, -207.2 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 191.1, -247.7 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 191.1, -247.7 , 0 );

setScaleKey( spep_2 + 484 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 509 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 510 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 517 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 518 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 527 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 529 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 530 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 531 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 532 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 533 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 534 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 536 + OFFSET_X, 1, 2.3, 2.3 );

setRotateKey( spep_2 + 484 + OFFSET_X, 1, 75.2 );
setRotateKey( spep_2 + 525 + OFFSET_X, 1, 75.2 );
setRotateKey( spep_2 + 526 + OFFSET_X, 1, 75.1 );
setRotateKey( spep_2 + 531 + OFFSET_X, 1, 75.1 );
setRotateKey( spep_2 + 532 + OFFSET_X, 1, 75 );
setRotateKey( spep_2 + 536 + OFFSET_X, 1, 75 );

-- 敵の動き4
setDisp( spep_2 + 574 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 624 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 618 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 574 + OFFSET_X, 1, -284.9, 142.8 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, -284.9, 142.8 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -282.6, 140.9 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, -282.6, 140.9 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -279.9, 139 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, -279.9, 139 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, -276.9, 136.9 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, -276.9, 136.9 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, -273.5, 134.6 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -273.5, 134.6 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -269.7, 132 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -269.7, 132 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -265.5, 128.8 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, -265.5, 128.8 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, -258.2, 127.4 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, -258.2, 127.4 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, -252.6, 123.1 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, -252.6, 123.1 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, -244, 117.7 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, -244, 117.7 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, -231.9, 109.9 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, -231.9, 109.9 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, -212.5, 98.5 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, -212.5, 98.5 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, -179.5, 75.4 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, -179.5, 75.4 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, -138.7, 50.8 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, -138.7, 50.8 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, -99.5, 25.8 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, -99.5, 25.8 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, -65.8, 4.6 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, -65.8, 4.6 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, -37, -13.9 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, -37, -13.9 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, -15.3, -27.4 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, -15.3, -27.4 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, 0.6, -37.2 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, 0.6, -37.2 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 11, -43.6 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 11, -43.6 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 19.6, -48.8 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 19.6, -48.8 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 21.6, -48.9 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 21.6, -48.9 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 70.4, -206.3 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, 70.4, -206.3 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, 60.4, -236.3 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 60.4, -236.3 , 0 );

setScaleKey( spep_2 + 574 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 579 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 580 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 585 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 586 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 589 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 590 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 591 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 592 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 593 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 594 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 595 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 596 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 597 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 598 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 599 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 600 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 601 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 602 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 603 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 604 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 605 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 606 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 607 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 608 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 609 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 610 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 611 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 612 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 613 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 614 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 617 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 618 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 624 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_2 + 574 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 617 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 618 + OFFSET_X, 1, 100 );
setRotateKey( spep_2 + 624 + OFFSET_X, 1, 100 );

-- 敵の動き5
setDisp( spep_2 + 636 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 692 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 636 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 636 + OFFSET_X, 1, -88, -37.9 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, -88, -37.9 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, -94.3, -33.6 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, -94.3, -33.6 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, -97.1, -31.8 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, -97.1, -31.8 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, -99.1, -30.4 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, -99.1, -30.4 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, -100.8, -29.3 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, -100.8, -29.3 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, -102.2, -29 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, -102.2, -29 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, -103.4, -28.2 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, -103.4, -28.2 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, -104.5, -28.3 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, -104.5, -28.3 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, -105.5, -27.6 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, -105.5, -27.6 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, -106.4, -27 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, -106.4, -27 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, -106.6, -28.2 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, -106.6, -28.2 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, -107.4, -27.7 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, -107.4, -27.7 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, -107.5, -29 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, -107.5, -29 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, -108.1, -28.6 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, -108.1, -28.6 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, -108.7, -28.1 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, -108.7, -28.1 , 0 );
setMoveKey( spep_2 + 666 + OFFSET_X, 1, -109.3, -28.4 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, -109.3, -28.4 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, -109.9, -28 , 0 );
setMoveKey( spep_2 + 669 + OFFSET_X, 1, -109.9, -28 , 0 );
setMoveKey( spep_2 + 670 + OFFSET_X, 1, -110.4, -28.3 , 0 );
setMoveKey( spep_2 + 671 + OFFSET_X, 1, -110.4, -28.3 , 0 );
setMoveKey( spep_2 + 672 + OFFSET_X, 1, -110.8, -28 , 0 );
setMoveKey( spep_2 + 673 + OFFSET_X, 1, -110.8, -28 , 0 );
setMoveKey( spep_2 + 674 + OFFSET_X, 1, -111.3, -27.7 , 0 );
setMoveKey( spep_2 + 675 + OFFSET_X, 1, -111.3, -27.7 , 0 );
setMoveKey( spep_2 + 676 + OFFSET_X, 1, -111.7, -28 , 0 );
setMoveKey( spep_2 + 677 + OFFSET_X, 1, -111.7, -28 , 0 );
setMoveKey( spep_2 + 678 + OFFSET_X, 1, -112.1, -27.8 , 0 );
setMoveKey( spep_2 + 679 + OFFSET_X, 1, -112.1, -27.8 , 0 );
setMoveKey( spep_2 + 680 + OFFSET_X, 1, -112.4, -28.1 , 0 );
setMoveKey( spep_2 + 681 + OFFSET_X, 1, -112.4, -28.1 , 0 );
setMoveKey( spep_2 + 682 + OFFSET_X, 1, -112.7, -28.8 , 0 );
setMoveKey( spep_2 + 683 + OFFSET_X, 1, -112.7, -28.8 , 0 );
setMoveKey( spep_2 + 684 + OFFSET_X, 1, -113, -28.6 , 0 );
setMoveKey( spep_2 + 685 + OFFSET_X, 1, -113, -28.6 , 0 );
setMoveKey( spep_2 + 686 + OFFSET_X, 1, -113.3, -29.1 , 0 );
setMoveKey( spep_2 + 687 + OFFSET_X, 1, -113.3, -29.1 , 0 );
setMoveKey( spep_2 + 688 + OFFSET_X, 1, -113.6, -30 , 0 );
setMoveKey( spep_2 + 689 + OFFSET_X, 1, -113.6, -30 , 0 );
setMoveKey( spep_2 + 690 + OFFSET_X, 1, -113.6, -22.9 , 0 );
setMoveKey( spep_2 + 692 + OFFSET_X, 1, -113.6, -22.9 , 0 );

setScaleKey( spep_2 + 636 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 637 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 638 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 639 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 640 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 641 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 642 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 643 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 644 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 645 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 646 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 647 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 648 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 649 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 650 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 651 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 652 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 653 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 654 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 655 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 656 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 657 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 658 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 659 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 660 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 661 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 662 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 663 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 664 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 665 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 666 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 669 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 670 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 671 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 672 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 673 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 674 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 677 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 678 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 679 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 680 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 683 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 684 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 687 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 688 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 692 + OFFSET_X, 1, 0.05, 0.05 );

setRotateKey( spep_2 + 636 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_2 + 679 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_2 + 680 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 692 + OFFSET_X, 1, -40.3 );

-- ** 音 ** --
--蹴り
SE008 = playSeVer2( spep_2 + 16, 1022, "",spep_2 + 96, 0, 46, -1);
SE009 = playSeVer2( spep_2 + 24, 1032, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 28, 1179, "", 0, 0, 0, -1);

--蹴りの波動
SE011 = playSeVer2( spep_2 + 62, 1027, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 62, 1032, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 62, 1180, "", 0, 0, 0, -1);

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 72;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 10, SE011, 0);
stopSe( SP_dodge - 10, SE012, 0);
stopSe( SP_dodge - 10, SE013, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--海割れる
SE014 = playSeVer2( spep_2 + 76, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE014, 54 );
SE015 = playSeVer2( spep_2 + 80, 1424, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 80, 1423, "",spep_2 + 280, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 80, SE016, 75 );
SE017 = playSeVer2( spep_2 + 80, 1166, "",spep_2 + 278, 0, 30, -1);
SE018 = playSeVer2( spep_2 + 86, 1296, "",spep_2 + 188, 0, 76, -1);
setSeVolumeByWorkId( spep_2 + 86, SE018, 75 );

--敵吹き飛ぶ
SE019 = playSeVer2( spep_2 + 142, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 142, 1121, "",spep_2 + 302, 0, 108, -1);

--追いかける
SE021 = playSeVer2( spep_2 + 182, 1182, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 182, 1117, "", 0, 0, 0, -1);

--水あふれる
SE023 = playSeVer2( spep_2 + 216, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 216, SE023, 158 );
SE024 = playSeVer2( spep_2 + 234, 1165, "",spep_2 + 330, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 234, SE024, 164 );
SE025 = playSeVer2( spep_2 + 238, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 238, SE025, 67 );

--連続キック
SE026 = playSeVer2( spep_2 + 272, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 272, SE026, 123 );
SE027 = playSeVer2( spep_2 + 278, 1425, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 278, 1009, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 296, 1010, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 324, 1009, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 342, 1010, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 362, 1425, "",spep_2 + 426, 0, 18, -1);
SE033 = playSeVer2( spep_2 + 366, 1009, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 388, 1010, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 412, 1120, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 412, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 412, SE036, 73 );

--気ダメして追いかける
SE037 = playSeVer2( spep_2 + 438, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 438, SE037, 132 );
setPitch( spep_2 + 438, SE037, -200 );
setTimeStretch( SE037, 0.87, 30, 4 );
SE038 = playSeVer2( spep_2 + 446, 1182, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 446, 1277, "", 0, 0, 0, -1);

--敵飛んでくる
SE040 = playSeVer2( spep_2 + 468, 1183, "",0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 502, 8, "", 0, 0, 0, -1);

--追い抜く
SE042 = playSeVer2( spep_2 + 530, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 530, SE042, 133 );
SE043 = playSeVer2( spep_2 + 540, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 540, SE043, 58 );

--振りかぶる
SE044 = playSeVer2( spep_2 + 584, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 584, SE044, 85 );

--蹴り落とす
SE045 = playSeVer2( spep_2 + 610, 1016, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 612, 1123, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 612, 1032, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 614, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 614, SE048, 84 );
SE049 = playSeVer2( spep_2 + 618, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 618, SE049, 92 );

--敵飛んでいく
SE050 = playSeVer2( spep_2 + 630, 1121, "",spep_2 + 718, 0, 42, -1);

--水面落ちる
SE051 = playSeVer2( spep_2 + 654, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 654, SE051, 145 );
SE052 = playSeVer2( spep_2 + 680, 1159, "",spep_2 + 756, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 680, SE052, 67 );
SE053 = playSeVer2( spep_2 + 690, 1471, "",spep_2 + 756, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 690, SE053, 72 );

-- ** おわり ** --
dealDamage( spep_2 + 646 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 754

end
