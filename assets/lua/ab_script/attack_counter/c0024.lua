--1028850:UR_魔人ブウ(純粋悪)_気弾系必殺技カウンター
--sp_effect_b1_00278
--c0024

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162834; --気弾カウンター ef_001
SP_01b = 162836; --気弾カウンター ef_001b
SP_02 = 162837; --ガッ    ef_002b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
 
setVisibleUI( 0, 0);
 
changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);
 
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
 
ENABLE_AUTO_TIME_STRETCH(0.8);
 
OFFSET_X = -1;
 
------------------------------------------------------------------------------------------------------------
-- カウンター
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 28; --冒頭顔カットイン入るため28F固定
 
 
------------------------------------------------------
-- 気弾カウンター
------------------------------------------------------
 
MAX_FRAME_0 = 246;
 
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 気弾カウンター ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
 
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 気弾カウンター ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 218 + OFFSET_X, 1, 1 );
--setDisp( spep_0 + 166 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 218 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 244 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 218 + OFFSET_X, 1, 402.3, -222.6 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 402.3, -222.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 366.9, -203.8 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 366.9, -203.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 331.5, -185 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 331.5, -185 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 297.9, -167.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 297.9, -167.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 267.2, -150.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 267.2, -150.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 240.3, -136.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 240.3, -136.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 217.2, -124.2 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 217.2, -124.2 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 197.8, -113.9 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 197.8, -113.9 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 181.8, -105.4 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 181.8, -105.4 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 168.8, -98.5 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 168.8, -98.5 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 158.5, -93 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 158.5, -93 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 150.4, -88.6 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 150.4, -88.6 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 144.8, -85.7 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 144.8, -85.7 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 140.8, -83.6 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 140.8, -83.6 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 138.2, -82.2 , 0 );

setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_0 + 218 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--気弾飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1177, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1022, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 22, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE003, 153 );
--息を吸う
SE004 = playSeVer2( spep_0 + 60, 1004, "", 0, 0, 0, -1);
--息を吹く
SE005 = playSeVer2( spep_0 + 118, 1219, "",spep_0 + 290, 8, 24, -1);
setSeVolumeByWorkId( spep_0 + 118, SE005, 224 );
setStartTimeMs( SE005,  533 );
SE006 = playSeVer2( spep_0 + 118, 1313, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 118, SE006, 302 );
setStartTimeMs( SE006,  233 );
setPitch( spep_0 + 118, SE006, -800 );
setTimeStretch( SE006, 0.47, 60, 4 );
SE007 = playSeVer2( spep_0 + 120, 1027, "", 0, 0, 0, -1);
--跳ね返す
SE008 = playSeVer2( spep_0 + 170, 1258, "",spep_0 + 278, 0, 20, -1);
SE009 = playSeVer2( spep_0 + 170, 1026, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 170, 1177, "",spep_0 + 278, 0, 20, -1);


------------------------------------------------------
-- 回避
------------------------------------------------------
 
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 190; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge -12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    pauseAll( SP_dodge, 67 );
 
    speff = entryEffectUnpausable( SP_dodge -12, 1504, 0x100, -1, 0, 0, -350 ); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 ); -- カットイン差し替え
     
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350 ); -- 回避の文字表示
 
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    endPhase( SP_dodge + 10 );
 
do return end
else end
 
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if ( _IS_DEAD_ == 1 ) then

    stopSe( spep_0 + 210, SE001, 0 );
    stopSe( spep_0 + 210, SE002, 0 );
    stopSe( spep_0 + 210, SE003, 0 );
    stopSe( spep_0 + 210, SE004, 0 ); 
    stopSe( spep_0 + 210, SE005, 0 );
    stopSe( spep_0 + 210, SE006, 0 );
    stopSe( spep_0 + 210, SE007, 0 );
    stopSe( spep_0 + 210, SE008, 0 );
    stopSe( spep_0 + 210, SE009, 0 );
    stopSe( spep_0 + 210, SE010, 0 );
 
    setDisp( spep_0 + 208, 1, 1 );
    endPhase( spep_0 + 210 );
     
else
------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------
---------------------------------------------------------------------------------------------------
-- ガッの背景爆発
---------------------------------------------------------------------------------------------------
spep_N = spep_0 + MAX_FRAME_0; --　274

-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 8, 1692, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 8, finish_1f, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 0, 0 , 0 );
setEffScaleKey( spep_N + 8, finish_1f, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1f, 1.0, 1.0 );
setEffRotateKey( spep_N + 8, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 8, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

finish_1b = entryEffectLife( spep_N + 0, SP_02, spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_005)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 0,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 0, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_N + 0, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_N + 0, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_N + 0, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_N + 0, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );

-- ** 音 ** --
--爆発
SE011 = playSeVer2( spep_N + 6, 1025, "", 0, 0, 0, -1);

--画面割れる
SE012 = playSeVer2( spep_N + 12, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_N + 12, SE012, 68 );
SE013 = playSeVer2( spep_N + 18, 1054, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_N + 6 );
endPhase( spep_N + 108 );

end