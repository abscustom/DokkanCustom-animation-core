--4034670:UR_バータ+ジース_必殺技：ブルーインパルス
--sp_effect_b4_00448
--sp3074

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164540; --最初〜最後まで ef_001

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

-- アタッカーラベル
adjustAttackerLabel( 0, 205);

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 180;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --

    else
        setupMovie(0, SP_01, 0, 1);
    end

else

    setupMovie(0, SP_01, 0, 1);

    mirror = -1;

    --SP_01  = SP_01r; -- 敵側エフェクトがある場合のみ

end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 380;
CARD_FRAME = 84;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初〜最後まで(ef_001)
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
spep_x = spep_0 + 000; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   --speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   --setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

ctgogo_x = 0; -- 演出によって白目にかからないように調整

--[[
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
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き
setDisp( spep_0 + 212 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 266 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 212 + OFFSET_X, 1, 117 );
changeAnimeBySide( spep_0 + 240 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 212 + OFFSET_X, 1, 175.2 * mirror, -50.2 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 175.2 * mirror, -50.2 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 175.2 * mirror, -51.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 175.2 * mirror, -51.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 175.2 * mirror, -47.2 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 175.2 * mirror, -47.2 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 175.2 * mirror, -51.5 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 175.2 * mirror, -51.5 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 175.2 * mirror, -48.3 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 175.2 * mirror, -48.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 175.2 * mirror, -51.3 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 175.2 * mirror, -51.3 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 175.2 * mirror, -49 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 175.2 * mirror, -49 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 175.2 * mirror, -51.5 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 175.2 * mirror, -51.5 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 175.2 * mirror, -49.1 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 175.2 * mirror, -49.1 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 175.2 * mirror, -51.2 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 175.2 * mirror, -51.2 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 175.2 * mirror, -49.4 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 175.2 * mirror, -49.4 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 175.2 * mirror, -51.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 175.2 * mirror, -51.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 175.2 * mirror, -49.2 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 175.2 * mirror, -49.2 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 175.2 * mirror, -51.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 175.2 * mirror, -51.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 232.8 * mirror, -49 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 232.8 * mirror, -49 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 222.4 * mirror, -54.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 222.4 * mirror, -54.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 214.1 * mirror, -45.4 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 214.1 * mirror, -45.4 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 214.5 * mirror, -54.2 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 214.5 * mirror, -54.2 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 221.5 * mirror, -47 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 221.5 * mirror, -47 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 227 * mirror, -53 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 227 * mirror, -53 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 229.9 * mirror, -48.5 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 229.9 * mirror, -48.5 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 235.4 * mirror, -53.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 235.4 * mirror, -53.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 241.6 * mirror, -49 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 241.6 * mirror, -49 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 247.7 * mirror, -52.7 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 247.7 * mirror, -52.7 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 253.8 * mirror, -52.3 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 253.8 * mirror, -52.3 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 259.9 * mirror, -49.7 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 259.9 * mirror, -49.7 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 266 * mirror, -51.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 266 * mirror, -51.8 , 0 );

setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 0.45, 0.45 );

setRotateKey( spep_0 + 212 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 13.8 * mirror );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 13.8 * mirror );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--構える
SE002 = playSeVer2( spep_0 + 14, 1004, "", 0, 0, 0, -1);

--気弾覇者
SE004 = playSeVer2( spep_0 + 183, 1133, "",spep_0 + 239, 0, 30, 1.0);
SE005 = playSeVer2( spep_0 + 183, 1177, "",spep_0 + 289, 0, 16, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 222; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
-- 回避しなかった場合
-----------------------------
--気弾ヒット
SE006 = playSeVer2( spep_0 + 226, 1202, "", 0, 0, 0, 0.6);
SE007 = playSeVer2( spep_0 + 234, 1011, "", 0, 0, 0, -1);

--爆発
SE008 = playSeVer2( spep_0 + 264, 1159, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 272, 1024, "", 0, 0, 0, -1);


-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 278); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 380f