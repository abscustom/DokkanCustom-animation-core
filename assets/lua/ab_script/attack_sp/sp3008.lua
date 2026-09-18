--1033550:UR_ベジータ+ナッパ_必殺技：ギャリックビーム
--sp_effect_a2_00276
--sp3008

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_02 = 164408;  -- カードカットイン以降→フィニッシュまで ef_002



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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 114;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 110);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 110, SP_02, spep_2 + 110 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
        --気弾溜め
        SE008 = playSeVer2( spep_2 + 113, 1189, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 113, SE008, 146 );
        SE009 = playSeVer2( spep_2 + 113, 1393, "",spep_2 + 168, 0, 16, -1);
        SE010 = playSeVer2( spep_2 + 113, 1296, "",spep_2 + 166, 0, 12, -1);
        SE011 = playSeVer2( spep_2 + 113, 1440, "", 0, 0, 0, -1);

    else

        setupMovie(0 , SP_02, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 114;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 26;

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

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 132, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 74 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --114F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--振り返り腕のばす
SE005 = playSeVer2( spep_1 + 70, 1229, "",spep_1 + 384, 0, 70, -1);
setSeVolumeByWorkId( spep_1 + 70, SE005, 47 );

-------------------------------------------------
-- カードカットイン以降→フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 404;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン以降→フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 182 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 280 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 182 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 226 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 182 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -7, 4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -7, 4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 3, -3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 3, -3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 6, 5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 6, 5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -1, -5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -1, -5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 4, -2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 4, -2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -3, 4 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -3, 4 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 7, 5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 7, 5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -4, -3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -4, -3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -7, 4 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -7, 4 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 3, -3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 3, -3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 6, 5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 6, 5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -1, -5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -1, -5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 4, -2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 4, -2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -3, 4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -3, 4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 7, 5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 7, 5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -4, -3 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -4, -3 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -7, 4 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -7, 4 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 21, 17 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 21, 17 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -30, -26 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -30, -26 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -19, 19 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -19, 19 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 17, -21 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 17, -21 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 57, 32 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 57, 32 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 28.3, -27.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 28.3, -27.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 32.7, -3 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 32.7, -3 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 25.1, 38 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 25.1, 38 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 64.4, -27 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 64.4, -27 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 42.8, 43 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 42.8, 43 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 33.3, -5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 33.3, -5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 11.6, -14 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 11.6, -14 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 29.4, 4 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 29.4, 4 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 38.3, 5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 38.3, 5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 26.2, -3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 26.2, -3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 22.2, 4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 22.2, 4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 31.3, -3 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 31.3, -3 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 33.4, 5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 33.4, 5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 25.6, -5 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 25.6, -5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 29.9, -2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 29.9, -2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 22.2, 4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 22.2, 4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 31.6, 5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 31.6, 5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 20, -3 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 20, -3 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 19.5, -3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 19.5, -3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 16.1, 4 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 16.1, 4 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 25.8, -3 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 25.8, -3 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 28.5, 5 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 28.5, 5 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 21.2, -5 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 21.2, -5 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 26.1, -2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 26.1, -2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 19, 4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 19, 4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 29, 5 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 29, 5 , 0 );

setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.91, 0.91 );

setRotateKey( spep_2 + 182 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--振り返り腕のばす
SE006 = playSeVer2( spep_2 + 14, 1116, "",spep_2 + 60, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 14, SE006, 63 );
SE007 = playSeVer2( spep_2 + 22, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE007, 56 );

--気弾溜め
SE008 = playSeVer2( spep_2 + 78, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE008, 146 );
SE009 = playSeVer2( spep_2 + 92, 1393, "",spep_2 + 168, 0, 16, -1);
SE010 = playSeVer2( spep_2 + 92, 1296, "",spep_2 + 166, 0, 12, -1);
SE011 = playSeVer2( spep_2 + 92, 1440, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 150; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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

--気弾発射
SE012 = playSeVer2( spep_2 + 154, 1016, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 154, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE013, 60 );
SE014 = playSeVer2( spep_2 + 154, 1338, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE014, 200 );
SE015 = playSeVer2( spep_2 + 154, 1028, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 156, 1479, "", 0, 0, 0, -1);

--爆発
SE017 = playSeVer2( spep_2 + 224, 1024, "", 0, 0, 0, -1);

--環境音
SE018 = playSeVer2( spep_2 + 244, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 244, SE018, 25 );

--腕おろす
SE019 = playSeVer2( spep_2 + 298, 1013, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 300); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム 404F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_02, 0, 1);
-------------------------------------------------
-- カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 114;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 26;

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

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 132, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 74 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --114F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--振り返り腕のばす
SE005 = playSeVer2( spep_1 + 70, 1229, "",spep_1 + 384, 0, 70, -1);
setSeVolumeByWorkId( spep_1 + 70, SE005, 47 );

-------------------------------------------------
-- カードカットイン以降→フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 404;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン以降→フィニッシュまで(ef_002)
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

setDisp( spep_2 + 182 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 280 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 182 + OFFSET_X, 1,4 );
changeAnime( spep_2 + 226 + OFFSET_X, 1,8 );

setMoveKey( spep_2 + 182 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 0, 0 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 7, 4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 7, 4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -3, -3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -3, -3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -6, 5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -6, 5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 1, -5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 1, -5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -4, -2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -4, -2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 3, 4 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 3, 4 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -7, 5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -7, 5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 4, -3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 4, -3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 7, 4 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 7, 4 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -3, -3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -3, -3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -6, 5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -6, 5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 1, -5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 1, -5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -4, -2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -4, -2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 3, 4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 3, 4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -7, 5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -7, 5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 4, -3 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 4, -3 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 7, 4 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 7, 4 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -21, 17 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -21, 17 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 30, -26 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 30, -26 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 19, 19 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 19, 19 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -17, -21 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -17, -21 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -57, 32 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -57, 32 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -28.3, -27.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -28.3, -27.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -32.7, -3 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -32.7, -3 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -25.1, 38 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -25.1, 38 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -64.4, -27 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -64.4, -27 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -42.8, 43 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -42.8, 43 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -33.3, -5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -33.3, -5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -11.6, -14 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -11.6, -14 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -29.4, 4 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -29.4, 4 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -38.3, 5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -38.3, 5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -26.2, -3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -26.2, -3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -22.2, 4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -22.2, 4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -31.3, -3 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -31.3, -3 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -33.4, 5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -33.4, 5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -25.6, -5 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -25.6, -5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -29.9, -2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -29.9, -2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -22.2, 4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -22.2, 4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -31.6, 5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -31.6, 5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -20, -3 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -20, -3 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -19.5, -3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -19.5, -3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -16.1, 4 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -16.1, 4 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -25.8, -3 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -25.8, -3 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -28.5, 5 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -28.5, 5 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -21.2, -5 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -21.2, -5 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -26.1, -2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -26.1, -2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -19, 4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -19, 4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -29, 5 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -29, 5 , 0 );

setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.91, 0.91 );

setRotateKey( spep_2 + 182 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--振り返り腕のばす
SE006 = playSeVer2( spep_2 + 14, 1116, "",spep_2 + 60, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 14, SE006, 63 );
SE007 = playSeVer2( spep_2 + 22, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE007, 56 );

--気弾溜め
SE008 = playSeVer2( spep_2 + 78, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE008, 146 );
SE009 = playSeVer2( spep_2 + 92, 1393, "",spep_2 + 168, 0, 16, -1);
SE010 = playSeVer2( spep_2 + 92, 1296, "",spep_2 + 166, 0, 12, -1);
SE011 = playSeVer2( spep_2 + 92, 1440, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 150; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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

--気弾発射
SE012 = playSeVer2( spep_2 + 154, 1016, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 154, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE013, 60 );
SE014 = playSeVer2( spep_2 + 154, 1338, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE014, 200 );
SE015 = playSeVer2( spep_2 + 154, 1028, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 156, 1479, "", 0, 0, 0, -1);

--爆発
SE017 = playSeVer2( spep_2 + 224, 1024, "", 0, 0, 0, -1);

--環境音
SE018 = playSeVer2( spep_2 + 244, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 244, SE018, 25 );

--腕おろす
SE019 = playSeVer2( spep_2 + 298, 1013, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 300); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム 404F


end
