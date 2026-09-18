--1034070:LR_超サイヤ人孫悟飯(少年期)_EX必殺技：超かめはめ波
--sp_effect_b4_00453
--sp3042

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164553; -- スタート〜フィニッシュ ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);

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

--setAlphaKey( 0, 1, 255 );



ENABLE_AUTO_TIME_STRETCH(0.9);

DISABLE_VOICE_IF_DOUBLE_SPEED();

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 690;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --構える
        SE021 = playSeVer2( spep_0 + 690 + 3, 1147, "",spep_0 + 841, 0, 30, -1);
        setSeVolumeByWorkId( spep_0 + 690 + 3, SE021, 51 );
        SE023 = playSeVer2( spep_0 + 690 + 3, 1468, "",spep_0 + 806, 0, 47, -1);

    else
        setupMovie(0, SP_01, 0, 1);
    end

else

    setupMovie(0, SP_01, 0, 1);

    HIDE_EFFECT_PHRASE_TEXTURES();

    mirror = -1;

end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 1294;
CARD_FRAME = 550;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); --  スタート〜フィニッシュ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

--[[
-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 000; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

ctgogo_x = 0; -- 演出によって白目にかからないように調整

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, ctgogo_x * mirror, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0 * mirror, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09 * mirror, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39 * mirror, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69 * mirror, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]


--------------------------------------
-- カードカットイン(EX 94F)
--------------------------------------

showCardCutinEx(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き
setDisp( spep_0 + 186 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 330 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 186 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 186 + OFFSET_X, 1, -141.9 * mirror, -64.3 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -141.9 * mirror, -64.3 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -151.9 * mirror, -80.6 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -151.9 * mirror, -80.6 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -146.9 * mirror, -78.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -146.9 * mirror, -78.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -146.9 * mirror, -81.8 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -146.9 * mirror, -81.8 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -138.2 * mirror, -89.3 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -138.2 * mirror, -89.3 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -141.9 * mirror, -79.3 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -141.9 * mirror, -79.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -141.9 * mirror, -71.8 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -141.9 * mirror, -71.8 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -138.1 * mirror, -74.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -138.1 * mirror, -74.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -149.4 * mirror, -71.8 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -149.4 * mirror, -71.8 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -133.1 * mirror, -85.6 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -133.1 * mirror, -85.6 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -135.6 * mirror, -70.6 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -135.6 * mirror, -70.6 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -145.6 * mirror, -84.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -145.6 * mirror, -84.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -140.5 * mirror, -68.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -140.5 * mirror, -68.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -144.3 * mirror, -70.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -144.3 * mirror, -70.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -140.5 * mirror, -85.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -140.5 * mirror, -85.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -151.8 * mirror, -74.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -151.8 * mirror, -74.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -136.8 * mirror, -84.4 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -136.8 * mirror, -84.4 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -149.3 * mirror, -70.6 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -149.3 * mirror, -70.6 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -143 * mirror, -88.2 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -143 * mirror, -88.2 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -138 * mirror, -90.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -138 * mirror, -90.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -154.3 * mirror, -73.2 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -154.3 * mirror, -73.2 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -153 * mirror, -69.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -153 * mirror, -69.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -145.5 * mirror, -63.2 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -145.5 * mirror, -63.2 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -146.8 * mirror, -78.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -146.8 * mirror, -78.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -136.7 * mirror, -74.4 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -136.7 * mirror, -74.4 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -145.5 * mirror, -84.5 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -145.5 * mirror, -84.5 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -141.7 * mirror, -70.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -141.7 * mirror, -70.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -154.2 * mirror, -79.4 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -154.2 * mirror, -79.4 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -149.2 * mirror, -79.4 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -149.2 * mirror, -79.4 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -141.7 * mirror, -75.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -141.7 * mirror, -75.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -133 * mirror, -73.2 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -133 * mirror, -73.2 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -139.3 * mirror, -85.7 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -139.3 * mirror, -85.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -138 * mirror, -79.4 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -138 * mirror, -79.4 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -133 * mirror, -68.1 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -133 * mirror, -68.1 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -144.3 * mirror, -86.9 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -144.3 * mirror, -86.9 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -141.8 * mirror, -71.8 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -141.8 * mirror, -71.8 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -143 * mirror, -76.8 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -143 * mirror, -76.8 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -38 * mirror, -19.9 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -38 * mirror, -19.9 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -25.6 * mirror, -19.9 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -25.6 * mirror, -19.9 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -25.6 * mirror, -10.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -25.6 * mirror, -10.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -34.9 * mirror, -10.6 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -34.9 * mirror, -10.6 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -41.1 * mirror, -10.6 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -41.1 * mirror, -10.6 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -41.1 * mirror, -23 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -41.1 * mirror, -23 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -41.1 * mirror, -19.9 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -41.1 * mirror, -19.9 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -50.4 * mirror, -23 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -50.4 * mirror, -23 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -44.2 * mirror, -26.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -44.2 * mirror, -26.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -38 * mirror, -35.4 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -38 * mirror, -35.4 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -44.2 * mirror, -26.1 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -44.2 * mirror, -26.1 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -38 * mirror, -26.1 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -38 * mirror, -26.1 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -28.7 * mirror, -26.1 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -28.7 * mirror, -26.1 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -22.5 * mirror, -26.1 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -22.5 * mirror, -26.1 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -19.4 * mirror, -19.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -19.4 * mirror, -19.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -31.8 * mirror, -23 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -31.8 * mirror, -23 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -41.1 * mirror, -16.8 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -41.1 * mirror, -16.8 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -47.3 * mirror, -10.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -47.3 * mirror, -10.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -44.2 * mirror, -19.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -44.2 * mirror, -19.9 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -38 * mirror, -10.6 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -38 * mirror, -10.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -25.6 * mirror, -13.7 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -25.6 * mirror, -13.7 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -19.4 * mirror, -13.7 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -19.4 * mirror, -13.7 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -22.5 * mirror, -10.6 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -22.5 * mirror, -10.6 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -22.5 * mirror, -16.8 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -22.5 * mirror, -16.8 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -25.6 * mirror, -19.9 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -25.6 * mirror, -19.9 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -31.8 * mirror, -23 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -31.8 * mirror, -23 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -47.3 * mirror, -23 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -47.3 * mirror, -23 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -47.3 * mirror, -16.8 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -47.3 * mirror, -16.8 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -41.1 * mirror, -16.8 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -41.1 * mirror, -16.8 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -34.9 * mirror, -23 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -34.9 * mirror, -23 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -28.7 * mirror, -23 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -28.7 * mirror, -23 , 0 );

setScaleKey( spep_0 + 186 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 10.21, 10.21 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 10.21, 10.21 );

setRotateKey( spep_0 + 186 + OFFSET_X, 1, -16.5 * mirror );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -16.5 * mirror );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -15.4 * mirror );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -15.4 * mirror );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 585, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE002 = playSeVer2( spep_0 + 28, 1192, "",spep_0 + 63, 0, 11, -1);

--高速移動
SE003 = playSeVer2( spep_0 + 51, 1043, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 51, SE003, 72 );
SE004 = playSeVer2( spep_0 + 51, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 51, SE004, 170 );
SE005 = playSeVer2( spep_0 + 51, 9, "",spep_0 + 123, 0, 37, -1);
SE006 = playSeVer2( spep_0 + 55, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 55, SE006, 75 );

--飛んでくる
SE007 = playSeVer2( spep_0 + 95, 1121, "",spep_0 + 238, 0, 55, -1);
setSeVolumeByWorkId( spep_0 + 95, SE007, 50 );
SE008 = playSeVer2( spep_0 + 95, 1183, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 107, 1148, "",spep_0 + 200, 0, 31, -1);
setSeVolumeByWorkId( spep_0 + 107, SE009, 58 );

--パンチヒット
SE010 = playSeVer2( spep_0 + 144, 1116, "",spep_0 + 203, 0, 23, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 154; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 10, SE010, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------
--パンチヒット
SE011 = playSeVer2( spep_0 + 162, 1049, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 166, 1187, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 171, 1159, "", 0, 0, 0, -1);

--イナヅマ
SE014 = playSeVer2( spep_0 + 228, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE014, 69 );

--パンチ余韻
SE015 = playSeVer2( spep_0 + 239, 1188, "", 0, 30, 0, -1);
setStartTimeMs( SE015,  50 );

--離れる
SE016 = playSeVer2( spep_0 + 353, 1508, "",spep_0 + 417, 0, 27, -1);
setSeVolumeByWorkId( spep_0 + 353, SE016, 74 );

--イナヅマ
SE017 = playSeVer2( spep_0 + 449, 1148, "",spep_0 + 572, 0, 13, -1);
setSeVolumeByWorkId( spep_0 + 449, SE017, 76 );

--飛び上がる
SE018 = playSeVer2( spep_0 + 514, 1207, "",spep_0 + 573, 0, 17, -1);
SE019 = playSeVer2( spep_0 + 518, 1452, "",spep_0 + 569, 0, 12, -1);

--構える
SE021 = playSeVer2( spep_0 + 644, 1147, "",spep_0 + 841, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 644, SE021, 51 );
SE022 = playSeVer2( spep_0 + 644, 1233, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 649, 1468, "",spep_0 + 806, 0, 47, -1);
SE024 = playSeVer2( spep_0 + 672, 1501, "", 0, 0, 0, -1);

--かめはめ波溜め
SE027 = playSeVer2( spep_0 + 767, 1209, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 772, 1490, "",spep_0 + 1014, 22, 33, -1);
setSeVolumeByWorkId( spep_0 + 772, SE025, 114 );
setStartTimeMs( SE025,  917 );

--気ダメ
SE028 = playSeVer2( spep_0 + 808, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 808, SE028, 80 );
SE029 = playSeVer2( spep_0 + 808, 1503, "", 0, 0, 0, -1);

--かめはめ波発射
SE030 = playSeVer2( spep_0 + 965, 1133, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 965, 1146, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 965, 1284, "", 0, 0, 0, -1);

--かめはめ波飛んでいく
SE033 = playSeVer2( spep_0 + 999, 1422, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 999, SE033, 184 );
SE034 = playSeVer2( spep_0 + 1007, 1512, "",spep_0 + 1117, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 1007, SE034, 70 );

--爆発
SE035 = playSeVer2( spep_0 + 1058, 1159, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 1074, 1067, "", 0, 0, 0, -1);

--画面遷移
SE037 = playSeVer2( spep_0 + 1168, 8, "", 0, 0, 0, -1);


if (_IS_PLAYER_SIDE_ == 1) then

-- ** セリフカットインSE ** --
--セリフカットイン
SE026 = playSeVer2( spep_0 + 744, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 744, SE026, 63 );

-- ** ボイス ** --
--「かめはめ…波ーーー！！！」
playVoice( spep_0 + 744, 1240 );
setVoiceVolume( spep_0 + 744, 1240, 130 );

end


-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 1178); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 1294f