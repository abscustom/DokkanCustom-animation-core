--1034120:LR_パーフェクトセル_EX必殺技：パーフェクトデスビーム
--sp_effect_a3_00128
--sp3045

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164531; --セルと敵～ビーム～フィニッシュ ef_001

--エフェクト(敵側)
--SP_01r  = 000000; --エフェクトのコメント ef_001r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);

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
--[[
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
]]
--setAlphaKey( 0, 1, 255 );



ENABLE_AUTO_TIME_STRETCH(0.9);

DISABLE_VOICE_IF_DOUBLE_SPEED();

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 670;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --

    else
        setupMovie(0, SP_01, 0, 1);
    end

else

    setupMovie(0, SP_01, 0, 1);

    mirror = -1;

    HIDE_EFFECT_PHRASE_TEXTURES();

    --SP_01  = SP_01r; -- 必要ない場合は削除

end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- セルと敵～ビーム～フィニッシュ
-------------------------------------------------
MAX_FRAME_0 = 1112;
CARD_FRAME = 430;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- セルと敵～ビーム～フィニッシュ(ef_001)
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

-----------------------------
-- 顔カットイン
-----------------------------
--[[
spep_x = spep_0 + 524; --spep名とフレーム数を置き換える

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
-- 敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 83.5 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 83.5 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 83.5 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 88 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 88 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 88 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 88 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 92.3 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 92.3 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 96.9 * mirror, -110.2 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 96.9 * mirror, -110.2 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 101.2 * mirror, -110.2 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 101.2 * mirror, -110.2 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 105.5 * mirror, -110.2 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 105.5 * mirror, -110.2 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 109.9 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 109.9 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 114.2 * mirror, -110.2 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 114.2 * mirror, -110.2 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 118 * mirror, -110.2 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 118 * mirror, -110.2 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 121.3 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 121.3 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 123.8 * mirror, -110.2 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 123.8 * mirror, -110.2 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 125.8 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 125.8 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 127.1 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 127.1 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 127.8 * mirror, -110.2 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 127.8 * mirror, -110.2 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 128.1 * mirror, -110.3 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 128.1 * mirror, -110.3 , 0 );

setScaleKey( spep_0 + 0, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.68, 0.68 );

setRotateKey( spep_0 + 0, 1, 0 * mirror );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 * mirror );

-- 敵の動き2
setDisp( spep_0 + 192 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 204 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 192 + OFFSET_X, 1, 117 );
changeAnimeBySide( spep_0 + 196 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 192 + OFFSET_X, 1, 135.1 * mirror, -42.2 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 135.1 * mirror, -42.2 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 240 * mirror, -0.2 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 240 * mirror, -0.2 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 380 * mirror, 60.0, 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 380 * mirror, 60.0, 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 310 * mirror, -0.2 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 310 * mirror, -0.2 , 0 );

setScaleKey( spep_0 + 192 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 3.82, 3.82 );

setRotateKey( spep_0 + 192 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, 0 * mirror );


-- 敵の動き3
setDisp( spep_0 + 212 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 252 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 212 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 212 + OFFSET_X, 1, 254.1 * mirror, 316.3 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 254.1 * mirror, 316.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 181.4 * mirror, 243.7 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 181.4 * mirror, 243.7 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 226.5 * mirror, 285.1 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 226.5 * mirror, 285.1 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 219.1 * mirror, 223 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 219.1 * mirror, 223 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 200.2 * mirror, 254.5 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 200.2 * mirror, 254.5 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 215.5 * mirror, 257.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 215.5 * mirror, 257.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 206.4 * mirror, 235.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 206.4 * mirror, 235.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 193.3 * mirror, 259.7 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 193.3 * mirror, 259.7 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 198.2 * mirror, 256.3 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 198.2 * mirror, 256.3 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 223.7 * mirror, 255 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 223.7 * mirror, 255 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 219.7 * mirror, 255.4 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 219.7 * mirror, 255.4 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 220.7 * mirror, 253.9 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 220.7 * mirror, 253.9 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 219.5 * mirror, 251.7 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 219.5 * mirror, 251.7 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 223.9 * mirror, 253.5 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 223.9 * mirror, 253.5 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 220.3 * mirror, 254.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 220.3 * mirror, 254.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 222.7 * mirror, 255.6 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 222.7 * mirror, 255.6 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 226 * mirror, 255.5 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 226 * mirror, 255.5 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 223.5 * mirror, 254.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 223.5 * mirror, 254.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 224.1 * mirror, 252.2 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 224.1 * mirror, 252.2 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 224.8 * mirror, 252.9 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 224.8 * mirror, 252.9 , 0 );

setScaleKey( spep_0 + 212 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 0.55, 0.55 );

setRotateKey( spep_0 + 212 + OFFSET_X, 1, 22 * mirror );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, 22 * mirror );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, 22.3 * mirror );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, 22.3 * mirror );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 22.6 * mirror );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, 22.6 * mirror );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, 23.1 * mirror );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, 23.1 * mirror );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, 23.8 * mirror );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, 23.8 * mirror );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, 24.6 * mirror );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, 24.6 * mirror );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, 25.1 * mirror );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, 25.1 * mirror );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, 25.8 * mirror );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, 25.8 * mirror );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 26.3 * mirror );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, 26.3 * mirror );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 26.8 * mirror );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 26.8 * mirror );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 27.1 * mirror );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, 27.1 * mirror );

-- 敵の動き4
setDisp( spep_0 + 342 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 372 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 342 + OFFSET_X, 1, -11.9 * mirror, 36 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -11.9 * mirror, 36 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -11.9 * mirror, 29.1 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -11.9 * mirror, 29.1 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -11.7 * mirror, 22.3 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -11.7 * mirror, 22.3 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -11.9 * mirror, 15.4 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -11.9 * mirror, 15.4 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -11.9 * mirror, 12 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -11.9 * mirror, 12 , 0 );

setScaleKey( spep_0 + 342 + OFFSET_X, 1, 11.58, 11.58 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 11.58, 11.58 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 2.24, 2.24 );

setRotateKey( spep_0 + 342 + OFFSET_X, 1, -37.1 * mirror );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -37.1 * mirror );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -37 * mirror );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -37 * mirror );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, -37.1 * mirror );
setRotateKey( spep_0 + 365 + OFFSET_X, 1, -37.1 * mirror );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, -37 * mirror );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -37 * mirror );

-- 敵の動き5
setDisp( spep_0 + 374 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 398 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 374 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 374 + OFFSET_X, 1, 95.5 * mirror, -16.6 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 95.5 * mirror, -16.6 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 179.7 * mirror, 48.5 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 179.7 * mirror, 48.5 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 93.2 * mirror, 20.7 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 93.2 * mirror, 20.7 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 162.6 * mirror, -8.3 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 162.6 * mirror, -8.3 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 40.5 * mirror, 1.4 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 40.5 * mirror, 1.4 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 219.6 * mirror, 51 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 219.6 * mirror, 51 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 438.4 * mirror, 187.7 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 438.4 * mirror, 187.7 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 625.1 * mirror, 287.1 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 625.1 * mirror, 287.1 , 0 );

setScaleKey( spep_0 + 374 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.11, 1.11 );

setRotateKey( spep_0 + 374 + OFFSET_X, 1, -37 * mirror );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, -37 * mirror );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, -32.1 * mirror );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, -32.1 * mirror );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, -27.3 * mirror );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -27.3 * mirror );

-- 敵の動き6
setDisp( spep_0 + 744 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 840 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 744 + OFFSET_X, 1, 105 );
changeAnimeBySide( spep_0 + 824 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 744 + OFFSET_X, 1, 1.1 * mirror, -45.3 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 1.1 * mirror, -45.3 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 0 * mirror, -44.6 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 0 * mirror, -44.6 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 3.3 * mirror, -48.8 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 3.3 * mirror, -48.8 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 0.8 * mirror, -44.3 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 0.8 * mirror, -44.3 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 3.2 * mirror, -43.3 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 3.2 * mirror, -43.3 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 0.8 * mirror, -43.5 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 0.8 * mirror, -43.5 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 1.4 * mirror, -46.7 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 1.4 * mirror, -46.7 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, -0.3 * mirror, -47 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, -0.3 * mirror, -47 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 2.5 * mirror, -47.8 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 2.5 * mirror, -47.8 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 0 * mirror, -47.5 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 0 * mirror, -47.5 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 0.1 * mirror, -45.4 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, 0.1 * mirror, -45.4 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, -0.2 * mirror, -45.8 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, -0.2 * mirror, -45.8 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, 1 * mirror, -47.8 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, 1 * mirror, -47.8 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, -0.2 * mirror, -45.3 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, -0.2 * mirror, -45.3 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, -0.5 * mirror, -45.1 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, -0.5 * mirror, -45.1 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 3 * mirror, -46 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, 3 * mirror, -46 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, -0.4 * mirror, -45.3 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, -0.4 * mirror, -45.3 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, 2.8 * mirror, -47.4 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, 2.8 * mirror, -47.4 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, 2 * mirror, -48 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, 2 * mirror, -48 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, 0.2 * mirror, -47.2 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, 0.2 * mirror, -47.2 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, 1 * mirror, -47.8 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, 1 * mirror, -47.8 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, -1 * mirror, -47.3 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, -1 * mirror, -47.3 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, 1.6 * mirror, -47.1 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, 1.6 * mirror, -47.1 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, -0.6 * mirror, -47.4 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, -0.6 * mirror, -47.4 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, 3.3 * mirror, -45.5 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, 3.3 * mirror, -45.5 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, 1.4 * mirror, -48.1 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 1.4 * mirror, -48.1 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, -1.4 * mirror, -45.8 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, -1.4 * mirror, -45.8 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, -0.7 * mirror, -46.7 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, -0.7 * mirror, -46.7 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 0.2 * mirror, -44.2 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 0.2 * mirror, -44.2 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 0.3 * mirror, -47.2 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 0.3 * mirror, -47.2 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 1.2 * mirror, -46 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 1.2 * mirror, -46 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 2.2 * mirror, -47.5 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, 2.2 * mirror, -47.5 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, -0.8 * mirror, -47.1 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, -0.8 * mirror, -47.1 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, 2 * mirror, -46.4 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, 2 * mirror, -46.4 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, 2.9 * mirror, -43.9 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, 2.9 * mirror, -43.9 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, 1.9 * mirror, -47.8 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, 1.9 * mirror, -47.8 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, -0.1 * mirror, -45.5 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, -0.1 * mirror, -45.5 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, 1 * mirror, -46.5 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, 1 * mirror, -46.5 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, 0 * mirror, -46.7 , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, 0 * mirror, -46.7 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, 0.6 * mirror, -47.8 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, -1018.1 * mirror, -140.5 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, -1018.1 * mirror, -140.5 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, -649.5 * mirror, -147.3 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, -649.5 * mirror, -147.3 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, -462.1 * mirror, -151.9 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, -462.1 * mirror, -151.9 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, -70.3 * mirror, -162.3 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, -70.3 * mirror, -162.3 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, 132.9 * mirror, -165 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, 132.9 * mirror, -165 , 0 );

setScaleKey( spep_0 + 744 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 747 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 748 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 751 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 752 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 755 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 759 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 760 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 763 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 764 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 767 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 768 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 771 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 772 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 775 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 776 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 779 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 780 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 783 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 784 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 787 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 788 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 791 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 792 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 795 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 796 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 799 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 800 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 803 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 804 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 807 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 808 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 811 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 812 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 815 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 816 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 819 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 820 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 823 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 824 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 827 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 828 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 829 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 830 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 833 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 834 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_0 + 840 + OFFSET_X, 1, 5.4, 5.4 );

setRotateKey( spep_0 + 744 + OFFSET_X, 1, -68.5 * mirror );
setRotateKey( spep_0 + 747 + OFFSET_X, 1, -68.5 * mirror );
setRotateKey( spep_0 + 748 + OFFSET_X, 1, -66.2 * mirror );
setRotateKey( spep_0 + 751 + OFFSET_X, 1, -66.2 * mirror );
setRotateKey( spep_0 + 752 + OFFSET_X, 1, -63.7 * mirror );
setRotateKey( spep_0 + 755 + OFFSET_X, 1, -63.7 * mirror );
setRotateKey( spep_0 + 756 + OFFSET_X, 1, -61.2 * mirror );
setRotateKey( spep_0 + 759 + OFFSET_X, 1, -61.2 * mirror );
setRotateKey( spep_0 + 760 + OFFSET_X, 1, -58.6 * mirror );
setRotateKey( spep_0 + 763 + OFFSET_X, 1, -58.6 * mirror );
setRotateKey( spep_0 + 764 + OFFSET_X, 1, -56.1 * mirror );
setRotateKey( spep_0 + 767 + OFFSET_X, 1, -56.1 * mirror );
setRotateKey( spep_0 + 768 + OFFSET_X, 1, -53.6 * mirror );
setRotateKey( spep_0 + 771 + OFFSET_X, 1, -53.6 * mirror );
setRotateKey( spep_0 + 772 + OFFSET_X, 1, -51.1 * mirror );
setRotateKey( spep_0 + 775 + OFFSET_X, 1, -51.1 * mirror );
setRotateKey( spep_0 + 776 + OFFSET_X, 1, -48.6 * mirror );
setRotateKey( spep_0 + 779 + OFFSET_X, 1, -48.6 * mirror );
setRotateKey( spep_0 + 780 + OFFSET_X, 1, -46.1 * mirror );
setRotateKey( spep_0 + 783 + OFFSET_X, 1, -46.1 * mirror );
setRotateKey( spep_0 + 784 + OFFSET_X, 1, -43.6 * mirror );
setRotateKey( spep_0 + 787 + OFFSET_X, 1, -43.6 * mirror );
setRotateKey( spep_0 + 788 + OFFSET_X, 1, -41.1 * mirror );
setRotateKey( spep_0 + 791 + OFFSET_X, 1, -41.1 * mirror );
setRotateKey( spep_0 + 792 + OFFSET_X, 1, -38.6 * mirror );
setRotateKey( spep_0 + 795 + OFFSET_X, 1, -38.6 * mirror );
setRotateKey( spep_0 + 796 + OFFSET_X, 1, -36.1 * mirror );
setRotateKey( spep_0 + 799 + OFFSET_X, 1, -36.1 * mirror );
setRotateKey( spep_0 + 800 + OFFSET_X, 1, -33.6 * mirror );
setRotateKey( spep_0 + 803 + OFFSET_X, 1, -33.6 * mirror );
setRotateKey( spep_0 + 804 + OFFSET_X, 1, -31.1 * mirror );
setRotateKey( spep_0 + 807 + OFFSET_X, 1, -31.1 * mirror );
setRotateKey( spep_0 + 808 + OFFSET_X, 1, -28.6 * mirror );
setRotateKey( spep_0 + 811 + OFFSET_X, 1, -28.6 * mirror );
setRotateKey( spep_0 + 812 + OFFSET_X, 1, -26.1 * mirror );
setRotateKey( spep_0 + 815 + OFFSET_X, 1, -26.1 * mirror );
setRotateKey( spep_0 + 816 + OFFSET_X, 1, -23.6 * mirror );
setRotateKey( spep_0 + 819 + OFFSET_X, 1, -23.6 * mirror );
setRotateKey( spep_0 + 820 + OFFSET_X, 1, -21.1 * mirror );
setRotateKey( spep_0 + 823 + OFFSET_X, 1, -21.1 * mirror );
setRotateKey( spep_0 + 824 + OFFSET_X, 1, 31.8 * mirror );
setRotateKey( spep_0 + 827 + OFFSET_X, 1, 31.8 * mirror );
setRotateKey( spep_0 + 828 + OFFSET_X, 1, 36.1 * mirror );
setRotateKey( spep_0 + 829 + OFFSET_X, 1, 36.1 * mirror );
setRotateKey( spep_0 + 830 + OFFSET_X, 1, 38.4 * mirror );
setRotateKey( spep_0 + 833 + OFFSET_X, 1, 38.4 * mirror );
setRotateKey( spep_0 + 834 + OFFSET_X, 1, 42.8 * mirror );
setRotateKey( spep_0 + 837 + OFFSET_X, 1, 42.8 * mirror );
setRotateKey( spep_0 + 838 + OFFSET_X, 1, 45 * mirror );
setRotateKey( spep_0 + 840 + OFFSET_X, 1, 45 * mirror );

-- 敵の動き7
setDisp( spep_0 + 844 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 994 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 844 + OFFSET_X, 1, 8 );
changeAnimeBySide( spep_0 + 934 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 844 + OFFSET_X, 1, -118 * mirror, -90.9 , 0 );
setMoveKey( spep_0 + 845 + OFFSET_X, 1, -118 * mirror, -90.9 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, 23.8 * mirror, -93.9 , 0 );
setMoveKey( spep_0 + 847 + OFFSET_X, 1, 23.8 * mirror, -93.9 , 0 );
setMoveKey( spep_0 + 848 + OFFSET_X, 1, -76.2 * mirror, -113.3 , 0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, -76.2 * mirror, -113.3 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, -9.1 * mirror, -74.5 , 0 );
setMoveKey( spep_0 + 851 + OFFSET_X, 1, -9.1 * mirror, -74.5 , 0 );
setMoveKey( spep_0 + 852 + OFFSET_X, 1, -86.7 * mirror, -79 , 0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, -86.7 * mirror, -79 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, -25.5 * mirror, -108.8 , 0 );
setMoveKey( spep_0 + 855 + OFFSET_X, 1, -25.5 * mirror, -108.8 , 0 );
setMoveKey( spep_0 + 856 + OFFSET_X, 1, -62.8 * mirror, -86.4 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, -62.8 * mirror, -86.4 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, -38.8 * mirror, -82.3 , 0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, -38.8 * mirror, -82.3 , 0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, -55.7 * mirror, -90.6 , 0 );
setMoveKey( spep_0 + 861 + OFFSET_X, 1, -55.7 * mirror, -90.6 , 0 );
setMoveKey( spep_0 + 862 + OFFSET_X, 1, -43.5 * mirror, -88.6 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, -43.5 * mirror, -88.6 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, -46.3 * mirror, -89.2 , 0 );
setMoveKey( spep_0 + 871 + OFFSET_X, 1, -46.3 * mirror, -89.2 , 0 );
setMoveKey( spep_0 + 872 + OFFSET_X, 1, -50 * mirror, -90 , 0 );
setMoveKey( spep_0 + 879 + OFFSET_X, 1, -50 * mirror, -90 , 0 );
setMoveKey( spep_0 + 880 + OFFSET_X, 1, -53.8 * mirror, -90.8 , 0 );
setMoveKey( spep_0 + 887 + OFFSET_X, 1, -53.8 * mirror, -90.8 , 0 );
setMoveKey( spep_0 + 888 + OFFSET_X, 1, -57.6 * mirror, -91.6 , 0 );
setMoveKey( spep_0 + 895 + OFFSET_X, 1, -57.6 * mirror, -91.6 , 0 );
setMoveKey( spep_0 + 896 + OFFSET_X, 1, -61.3 * mirror, -92.4 , 0 );
setMoveKey( spep_0 + 905 + OFFSET_X, 1, -61.3 * mirror, -92.4 , 0 );
setMoveKey( spep_0 + 906 + OFFSET_X, 1, -65.9 * mirror, -93.4 , 0 );
setMoveKey( spep_0 + 915 + OFFSET_X, 1, -65.9 * mirror, -93.4 , 0 );
setMoveKey( spep_0 + 916 + OFFSET_X, 1, -70.6 * mirror, -94.4 , 0 );
setMoveKey( spep_0 + 923 + OFFSET_X, 1, -70.6 * mirror, -94.4 , 0 );
setMoveKey( spep_0 + 924 + OFFSET_X, 1, -74.4 * mirror, -95.3 , 0 );
setMoveKey( spep_0 + 933 + OFFSET_X, 1, -74.4 * mirror, -95.3 , 0 );
setMoveKey( spep_0 + 934 + OFFSET_X, 1, -76.4 * mirror, -173.9 , 0 );
setMoveKey( spep_0 + 935 + OFFSET_X, 1, -76.4 * mirror, -173.9 , 0 );
setMoveKey( spep_0 + 936 + OFFSET_X, 1, -87 * mirror, -163.3 , 0 );
setMoveKey( spep_0 + 937 + OFFSET_X, 1, -87 * mirror, -163.3 , 0 );
setMoveKey( spep_0 + 938 + OFFSET_X, 1, -64.3 * mirror, -176.4 , 0 );
setMoveKey( spep_0 + 939 + OFFSET_X, 1, -64.3 * mirror, -176.4 , 0 );
setMoveKey( spep_0 + 940 + OFFSET_X, 1, -67 * mirror, -152.6 , 0 );
setMoveKey( spep_0 + 941 + OFFSET_X, 1, -67 * mirror, -152.6 , 0 );
setMoveKey( spep_0 + 942 + OFFSET_X, 1, -77.1 * mirror, -175.3 , 0 );
setMoveKey( spep_0 + 943 + OFFSET_X, 1, -77.1 * mirror, -175.3 , 0 );
setMoveKey( spep_0 + 944 + OFFSET_X, 1, -71.8 * mirror, -159.4 , 0 );
setMoveKey( spep_0 + 945 + OFFSET_X, 1, -71.8 * mirror, -159.4 , 0 );
setMoveKey( spep_0 + 946 + OFFSET_X, 1, -66.5 * mirror, -154.3 , 0 );
setMoveKey( spep_0 + 949 + OFFSET_X, 1, -66.5 * mirror, -154.3 , 0 );
setMoveKey( spep_0 + 950 + OFFSET_X, 1, -58.4 * mirror, -151.8 , 0 );
setMoveKey( spep_0 + 955 + OFFSET_X, 1, -58.4 * mirror, -151.8 , 0 );
setMoveKey( spep_0 + 956 + OFFSET_X, 1, -47.9 * mirror, -153.7 , 0 );
setMoveKey( spep_0 + 961 + OFFSET_X, 1, -47.9 * mirror, -153.7 , 0 );
setMoveKey( spep_0 + 962 + OFFSET_X, 1, -41.1 * mirror, -167.5 , 0 );
setMoveKey( spep_0 + 965 + OFFSET_X, 1, -41.1 * mirror, -167.5 , 0 );
setMoveKey( spep_0 + 966 + OFFSET_X, 1, -37.6 * mirror, -180.2 , 0 );
setMoveKey( spep_0 + 971 + OFFSET_X, 1, -37.6 * mirror, -180.2 , 0 );
setMoveKey( spep_0 + 972 + OFFSET_X, 1, -33.8 * mirror, -202 , 0 );
setMoveKey( spep_0 + 975 + OFFSET_X, 1, -33.8 * mirror, -202 , 0 );
setMoveKey( spep_0 + 976 + OFFSET_X, 1, -31.8 * mirror, -217.5 , 0 );
setMoveKey( spep_0 + 981 + OFFSET_X, 1, -31.8 * mirror, -217.5 , 0 );
setMoveKey( spep_0 + 982 + OFFSET_X, 1, -29.7 * mirror, -240.7 , 0 );
setMoveKey( spep_0 + 985 + OFFSET_X, 1, -29.7 * mirror, -240.7 , 0 );
setMoveKey( spep_0 + 986 + OFFSET_X, 1, -28.5 * mirror, -254.9 , 0 );
setMoveKey( spep_0 + 989 + OFFSET_X, 1, -28.5 * mirror, -254.9 , 0 );
setMoveKey( spep_0 + 990 + OFFSET_X, 1, -27.5 * mirror, -266.1 , 0 );
setMoveKey( spep_0 + 994 + OFFSET_X, 1, -27.5 * mirror, -266.1 , 0 );

setScaleKey( spep_0 + 844 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_0 + 933 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_0 + 934 + OFFSET_X, 1, 7.46, 7.46 );
setScaleKey( spep_0 + 937 + OFFSET_X, 1, 7.46, 7.46 );
setScaleKey( spep_0 + 938 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_0 + 941 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_0 + 942 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_0 + 945 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_0 + 946 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 949 + OFFSET_X, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 950 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 955 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 956 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 961 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 962 + OFFSET_X, 1, 2.11, 2.12 );
setScaleKey( spep_0 + 965 + OFFSET_X, 1, 2.11, 2.12 );
setScaleKey( spep_0 + 966 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 971 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 972 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 975 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 976 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 981 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 982 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 985 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 986 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 989 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 990 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 994 + OFFSET_X, 1, 1.18, 1.18 );

setRotateKey( spep_0 + 844 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 933 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 934 + OFFSET_X, 1, 1 * mirror );
setRotateKey( spep_0 + 937 + OFFSET_X, 1, 1 * mirror );
setRotateKey( spep_0 + 938 + OFFSET_X, 1, 3.5 * mirror );
setRotateKey( spep_0 + 941 + OFFSET_X, 1, 3.5 * mirror );
setRotateKey( spep_0 + 942 + OFFSET_X, 1, 6.3 * mirror );
setRotateKey( spep_0 + 945 + OFFSET_X, 1, 6.3 * mirror );
setRotateKey( spep_0 + 946 + OFFSET_X, 1, 9.3 * mirror );
setRotateKey( spep_0 + 949 + OFFSET_X, 1, 9.3 * mirror );
setRotateKey( spep_0 + 950 + OFFSET_X, 1, 12 * mirror );
setRotateKey( spep_0 + 955 + OFFSET_X, 1, 12 * mirror );
setRotateKey( spep_0 + 956 + OFFSET_X, 1, 16 * mirror );
setRotateKey( spep_0 + 961 + OFFSET_X, 1, 16 * mirror );
setRotateKey( spep_0 + 962 + OFFSET_X, 1, 19.8 * mirror );
setRotateKey( spep_0 + 965 + OFFSET_X, 1, 19.8 * mirror );
setRotateKey( spep_0 + 966 + OFFSET_X, 1, 21.8 * mirror );
setRotateKey( spep_0 + 971 + OFFSET_X, 1, 21.8 * mirror );
setRotateKey( spep_0 + 972 + OFFSET_X, 1, 24.6 * mirror );
setRotateKey( spep_0 + 975 + OFFSET_X, 1, 24.6 * mirror );
setRotateKey( spep_0 + 976 + OFFSET_X, 1, 26.1 * mirror );
setRotateKey( spep_0 + 981 + OFFSET_X, 1, 26.1 * mirror );
setRotateKey( spep_0 + 982 + OFFSET_X, 1, 27.8 * mirror );
setRotateKey( spep_0 + 985 + OFFSET_X, 1, 27.8 * mirror );
setRotateKey( spep_0 + 986 + OFFSET_X, 1, 28.6 * mirror );
setRotateKey( spep_0 + 989 + OFFSET_X, 1, 28.6 * mirror );
setRotateKey( spep_0 + 990 + OFFSET_X, 1, 29.1 * mirror );
setRotateKey( spep_0 + 994 + OFFSET_X, 1, 29.1 * mirror );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );
SE004 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 50 );
SE005 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE005, 50 );
SE007 = playSeVer2( spep_0 + 56, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE007, 63 );
SE008 = playSeVer2( spep_0 + 80, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE008, 63 );
SE009 = playSeVer2( spep_0 + 104, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE009, 63 );
SE010 = playSeVer2( spep_0 + 128, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE010, 63 );
SE011 = playSeVer2( spep_0 + 152, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE011, 63 );


--イナヅマ
SE002 = playSeVer2( spep_0 + 0, 1148, "",spep_0 + 90, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 45 );
SE006 = playSeVer2( spep_0 + 56, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE006, 39 );

--入り
SE003 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 64 );

--回し蹴り
SE012 = playSeVer2( spep_0 + 166, 1004, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 180; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);

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

--回し蹴り
SE014 = playSeVer2( spep_0 + 182, 1521, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE014, 127 );
SE016 = playSeVer2( spep_0 + 197, 1187, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 197, 1009, "", 0, 0, 0, -1);

--オーラ
SE013 = playSeVer2( spep_0 + 176, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE013, 63 );
SE015 = playSeVer2( spep_0 + 200, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE015, 63 );
SE019 = playSeVer2( spep_0 + 224, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE019, 63 );
SE020 = playSeVer2( spep_0 + 248, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE020, 63 );
SE025 = playSeVer2( spep_0 + 272, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE025, 63 );
SE037 = playSeVer2( spep_0 + 363, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 363, SE037, 56 );
SE041 = playSeVer2( spep_0 + 387, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 387, SE041, 56 );
SE042 = playSeVer2( spep_0 + 411, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 411, SE042, 56 );

--敵飛んでいく
SE018 = playSeVer2( spep_0 + 213, 1121, "",spep_0 + 338, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 213, SE018, 56 );
stopSeIfDoubleSpeed( spep_0 + 213, SE018 );

--走ってくる
SE021 = playSeVer2( spep_0 + 255, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 255, SE021, 48 );
setTimeStretch( SE021, 1.67, 30, 4 );
SE022 = playSeVer2( spep_0 + 255, 1192, "",spep_0 + 283, 0, 9, 0.6);
stopSeIfDoubleSpeed( spep_0 + 255, SE022 );
SE023 = playSeVer2( spep_0 + 256, 1135, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 256, SE023, 59 );
SE024 = playSeVer2( spep_0 + 270, 1135, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 270, SE024, 65 );
setPitch( spep_0 + 270, SE024, -200 );
setTimeStretch( SE024, 0.87, 30, 4 );
SE026 = playSeVer2( spep_0 + 280, 1192, "",spep_0 + 307, 0, 12, 0.6);
stopSeIfDoubleSpeed( spep_0 + 280, SE026 );
SE027 = playSeVer2( spep_0 + 288, 1135, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 288, SE027, 74 );
SE028 = playSeVer2( spep_0 + 295, 1192, "",spep_0 + 322, 0, 10, 0.6);
stopSeIfDoubleSpeed( spep_0 + 295, SE028 );
SE029 = playSeVer2( spep_0 + 303, 1135, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 303, SE029, 59 );
setPitch( spep_0 + 303, SE029, 100 );
setTimeStretch( SE029, 1.07, 30, 4 );
SE030 = playSeVer2( spep_0 + 313, 1192, "",spep_0 + 339, 0, 7, 0.6);
stopSeIfDoubleSpeed( spep_0 + 313, SE030 );
SE031 = playSeVer2( spep_0 + 320, 1135, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 320, SE031, 57 );
SE032 = playSeVer2( spep_0 + 326, 1192, "",spep_0 + 354, 0, 9, 0.6);
SE033 = playSeVer2( spep_0 + 336, 1117, "",spep_0 + 403, 0, 32, 0.6);
SE034 = playSeVer2( spep_0 + 337, 1135, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 337, SE034, 60 );
SE035 = playSeVer2( spep_0 + 346, 1192, "", 0, 0, 0, 0.6);

--手刀で吹き飛ばす
SE036 = playSeVer2( spep_0 + 363, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 363, SE036, 153 );
SE038 = playSeVer2( spep_0 + 369, 1049, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 374, 1110, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 378, 1120, "", 0, 0, 0, -1);

--セリフカットイン
SE044 = playSeVer2( spep_0 + 519, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 519, SE044, 63 );

--オーラ
SE045 = playSeVer2( spep_0 + 520, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 520, SE045, 50 );
SE047 = playSeVer2( spep_0 + 544, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE047, 50 );
SE048 = playSeVer2( spep_0 + 568, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 568, SE048, 50 );
SE049 = playSeVer2( spep_0 + 592, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 592, SE049, 50 );
SE050 = playSeVer2( spep_0 + 616, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 616, SE050, 50 );
SE051 = playSeVer2( spep_0 + 640, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 640, SE051, 50 );
SE055 = playSeVer2( spep_0 + 664, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 664, SE055, 50 );
--SE063 = playSeVer2( spep_0 + 688, 1036, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_0 + 688, SE063, 50 );

--イナヅマ
SE046 = playSeVer2( spep_0 + 523, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 523, SE046, 49 );
SE054 = playSeVer2( spep_0 + 657, 1147, "",spep_0 + 733, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 657, SE054, 47 );

--気弾溜め
SE052 = playSeVer2( spep_0 + 648, 1191, "",spep_0 + 705, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 648, SE052, 120 );
SE053 = playSeVer2( spep_0 + 648, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 648, SE053, 90 );

--気弾発射
SE056 = playSeVer2( spep_0 + 680, 1328, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 680, SE056, 160 );
setStartTimeMs( SE056,  133 );
SE058 = playSeVer2( spep_0 + 682, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 682, SE058, 140 );
SE059 = playSeVer2( spep_0 + 682, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 682, SE059, 140 );
SE060 = playSeVer2( spep_0 + 682, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 682, SE060, 160 );
setPitch( spep_0 + 682, SE060, -300 );
setTimeStretch( SE060, 0.8, 30, 4 );
SE061 = playSeVer2( spep_0 + 682, 1202, "",spep_0 + 717, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 682, SE061, 240 );
SE062 = playSeVer2( spep_0 + 690, 1328, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 690, SE062, 160 );
setStartTimeMs( SE062,  133 );
SE064 = playSeVer2( spep_0 + 694, 1202, "",spep_0 + 757, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 694, SE064, 240 );
SE065 = playSeVer2( spep_0 + 700, 1328, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 700, SE065, 160 );
setStartTimeMs( SE065,  133 );
SE066 = playSeVer2( spep_0 + 701, 1177, "",spep_0 + 856, 16, 13, -1);
setSeVolumeByWorkId( spep_0 + 701, SE066, 95 );
setStartTimeMs( SE066,  150 );
SE067 = playSeVer2( spep_0 + 703, 1202, "",spep_0 + 768, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 703, SE067, 260 );
SE068 = playSeVer2( spep_0 + 713, 1513, "",spep_0 + 857, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 713, SE068, 70 );
SE057 = playSeVer2( spep_0 + 720, 1212, "",spep_0 + 859, 3, 16, -1);
setSeVolumeByWorkId( spep_0 + 720, SE057, 100 );
setStartTimeMs( SE057,  717 );

--敵つらぬく
SE069 = playSeVer2( spep_0 + 833, 1179, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_0 + 833, 1187, "", 0, 0, 0, -1);
SE071 = playSeVer2( spep_0 + 833, 1178, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_0 + 833, 1145, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE073 = playSeVer2( spep_0 + 930, 1116, "",spep_0 + 1033, 0, 56, -1);

--イナヅマ
SE074 = playSeVer2( spep_0 + 997, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 997, SE074, 42 );

--画面遷移
SE075 = playSeVer2( spep_0 + 991, 1232, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_0 + 993, 8, "", 0, 0, 0, -1);

--オーラ
SE076 = playSeVer2( spep_0 + 991, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 991, SE076, 63 );
SE078 = playSeVer2( spep_0 + 1015, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1015, SE078, 63 );
SE079 = playSeVer2( spep_0 + 1039, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1039, SE079, 63 );
SE080 = playSeVer2( spep_0 + 1063, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1063, SE080, 63 );
SE081 = playSeVer2( spep_0 + 1087, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1087, SE081, 63 );


if (_IS_PLAYER_SIDE_ == 1) then

-- ** ボイス ** --
--「あっけないものだな」
playVoice( spep_0 + 517, 1245 );
setVoiceVolume( spep_0 + 517, 1245, 122 );

end



-----------------------------
-- 終了
-----------------------------
hideKoScreen();
fadeKoLabel(1.0,0.5)
dealDamage( spep_0 + 938); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム  1112f