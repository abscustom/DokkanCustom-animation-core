--1028790:UR_超サイヤ人3孫悟空(天使)_気弾系必殺技カウンター
--battle_301286
--c0023

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 3225; --ef_001  カウンター演出前面
SP_01b = 3226; --ef_001b カウンター演出背面
SP_02  = 3227; --ef_002  ガッの背景爆発

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
-- カウンター演出
------------------------------------------------------
MAX_FRAME_0 = 214;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カウンター演出前面(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -2, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -1, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 0);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カウンター演出背面(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -2, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -1, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 0);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 182 + OFFSET_X, 1, 1 );
--setDisp( spep_0 + 216 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 182 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 182 + OFFSET_X, 1, 325.2, -183.1 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 325.2, -183.1 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 267.3, -186 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 267.3, -186 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 245.6, -193.9 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 245.6, -193.9 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 228.5, -190.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 228.5, -190.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 213.3, -196.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 213.3, -196.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 201.7, -192.5 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 201.7, -192.5 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 193, -198.7 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 193, -198.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 184.4, -194.8 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 184.4, -194.8 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 175.4, -199.3 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 175.4, -199.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 168.8, -195.2 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 168.8, -195.2 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 164.3, -200.8 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 164.3, -200.8 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 159.3, -196.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 159.3, -196.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 153.6, -200.6 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 153.6, -200.6 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 149.9, -196.1 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 149.9, -196.1 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 148.2, -201.3 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 148.2, -201.3 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 145.7, -196.7 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 145.7, -196.7 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 142.5, -200.5 , 0 );

setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.06, 1.06 );

setRotateKey( spep_0 + 182 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, 9.1 );

-- ** 音 ** --
--気弾飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1145, "",spep_0 + 122, 0, 24, -1);
SE002 = playSeVer2( spep_0 + 30, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE002, 66 );
SE003 = playSeVer2( spep_0 + 30, 1022, "",spep_0 + 124, 0, 26, -1);

--振りかぶる
SE004 = playSeVer2( spep_0 + 54, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 54, 1056, "", 0, 0, 0, -1);

--跳ね返す
SE006 = playSeVer2( spep_0 + 88, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE006, 65 );
SE007 = playSeVer2( spep_0 + 88, 1120, "", 0, 0, 0, -1);

--気弾飛んでいく
SE008 = playSeVer2( spep_0 + 96, 1177, "",spep_0 + 244, 0, 18, -1);
SE009 = playSeVer2( spep_0 + 96, 1145, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 146, 1202, "",spep_0 + 244, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 146, SE010, 164 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 180; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042 );
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

    stopSe( spep_0 + 200, SE006, 0 );
    stopSe( spep_0 + 200, SE007, 0 );
    stopSe( spep_0 + 200, SE008, 0 );
    stopSe( spep_0 + 200, SE009, 0 );
    stopSe( spep_0 + 200, SE010, 0 );

    setDisp( spep_0 + 198, 1, 1 );
    endPhase( spep_0 + 200 );
     
else
------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- ガッの背景爆発
---------------------------------------------------------------------------------------------------
spep_N = spep_0 + MAX_FRAME_0; --　214

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
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
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

shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );

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
--ここまで

-- ** 音 ** --
--画面割れ
--SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
--SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

--爆発
SE011 = playSeVer2( spep_N + 0, 1025, "", 0, 0, 0, 0.6);

--画面割れる
SE012 = playSeVer2( spep_N + 6, 1023, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_N + 6, SE012, 68 );
SE013 = playSeVer2( spep_N + 10, 1054, "", 0, 0, 0, 0.6);

--終わり
dealDamage( spep_N + 6 );
endPhase( spep_N + 108 );

end