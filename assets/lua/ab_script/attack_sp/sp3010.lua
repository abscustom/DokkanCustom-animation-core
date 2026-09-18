--1033590:LR_超サイヤ人ゴッドベジータ(超極悪化)_必殺技：ワイルドスティンガー
--sp_effect_b1_00368
--sp3010

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_02  = 164480; --カード後〜フィニッシュ ef_001

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

ENABLE_AUTO_TIME_STRETCH(0.86);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 102;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        timing_skip = 188;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_2 + timing_skip , SP_02, spep_2 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --向かってくる
        SE015 = playSeVer2( spep_2 + 191, 1508, "",spep_2 + 232, 0, 16, -1);
        SE016 = playSeVer2( spep_2 + 191, 1117, "", 0, 0, 0, -1);

    else
        setupMovie(0, SP_02, 0, 1);
    end

else

    setupMovie(0, SP_02, 0, 1);

    mirror = -1;

end

------------------------------------------------------------------------------------------------------------
-- 共通演出
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 冒頭 〜 カードカットイン前まで
-------------------------------------------------
MAX_FRAME_0 = 102;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 18; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

ctgogo_x = -90 -- 演出によって白目にかからないように調整

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

-- ** 音 ** --

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 114, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 56 );
SE002 = playSeVer2( spep_0 + 0, 1513, "",spep_0 + 114, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 40 );

--環境音
SE003 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 126, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 32 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 102F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--向かってくる
SE006 = playSeVer2( spep_1 + 80, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 84, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE007, 56 );
setTimeStretch( SE007, 2, 30, 4 );
SE008 = playSeVer2( spep_1 + 84, 1117, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 84, 1019, "", 0, 0, 0, -1);

-------------------------------------------------
-- カード後〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 430;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後〜フィニッシュ(ef_001)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_2 + 92 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 102 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 92 + OFFSET_X, 1, 117 );
changeAnimeBySide( spep_2 + 96 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 92 + OFFSET_X, 1, 207.9 * mirror, -505.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 207.9 * mirror, -505.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -1.5 * mirror, -959.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -1.5 * mirror, -959.6 , 0 );

setScaleKey( spep_2 + 92 + OFFSET_X, 1, 12.98, 12.98 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 12.98, 12.98 );

setRotateKey( spep_2 + 92 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -53.7 * mirror );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -53.7 * mirror );

--敵の動き2

setDisp( spep_2 + 112 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 158 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 112 + OFFSET_X, 1, 11.8 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 11.8 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -23.4 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -23.4 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 11.8 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 11.8 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -23.4 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -23.4 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 43.4 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 43.4 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -14.6 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -14.6 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 41.6 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 41.6 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -19.9 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -19.9 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 41.6 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 41.6 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -16.3 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -16.3 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 43.3 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 43.3 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -14.5 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -14.5 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 31 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 31 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -0.5 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -0.5 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 11.8 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 11.8 * mirror, -940.2 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 104.5 * mirror, -54 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 104.5 * mirror, -54 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 201.4 * mirror, -76.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 201.4 * mirror, -76.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 297.5 * mirror, -98.3 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 297.5 * mirror, -98.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 393.1 * mirror, -119.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 393.1 * mirror, -119.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 488.2 * mirror, -139.1 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 488.2 * mirror, -139.1 , 0 );

setScaleKey( spep_2 + 112 + OFFSET_X, 1, 12.98, 12.98 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 12.98, 12.98 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_2 + 112 + OFFSET_X, 1, -53.7 * mirror );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -53.7 * mirror );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -37.1 * mirror );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -37.1 * mirror );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -27.4 * mirror );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -27.4 * mirror );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -17.7 * mirror );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -17.7 * mirror );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -8 * mirror );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -8 * mirror );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 1.6 * mirror );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 1.6 * mirror );

--敵の動き3

setDisp( spep_2 + 288 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 320 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 288 + OFFSET_X, 1, 105 );
changeAnimeBySide( spep_2 + 302 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 288 + OFFSET_X, 1, 316.1 * mirror, -54.5 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 316.1 * mirror, -54.5 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 194.1 * mirror, -54.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 194.1 * mirror, -54.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 178.1 * mirror, -54.5 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 178.1 * mirror, -54.5 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 158.1 * mirror, -54.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 158.1 * mirror, -54.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 139.1 * mirror, -54.5 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 139.1 * mirror, -54.5 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 122.1 * mirror, -54.5 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 122.1 * mirror, -54.5 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 110.1 * mirror, -54.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 110.1 * mirror, -54.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 146.6 * mirror, -31.4 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 146.6 * mirror, -31.4 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 179 * mirror, -18.7 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 179 * mirror, -18.7 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 191 * mirror, -18.5 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 191 * mirror, -18.5 , 0 );

setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.12, 0.12 );

setRotateKey( spep_2 + 288 + OFFSET_X, 1, 6.7 * mirror );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 6.7 * mirror );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -13.7 * mirror );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -13.7 * mirror );

-- ** 音 ** --

--向かってくる
SE010 = playSeVer2( spep_2 + 54, 1019, "",spep_2 + 104, 0, 18, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 80; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

--蹴りヒット
SE011 = playSeVer2( spep_2 + 72, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 86, 1153, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 86, 1187, "", 0, 0, 0, -1);

--吹き飛ばす
SE014 = playSeVer2( spep_2 + 134, 1027, "", 0, 0, 0, -1);

--向かってくる
SE015 = playSeVer2( spep_2 + 172, 1508, "",spep_2 + 232, 0, 16, -1);
SE016 = playSeVer2( spep_2 + 172, 1117, "", 0, 0, 0, -1);

--気ダメ
SE017 = playSeVer2( spep_2 + 232, 1035, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 232, 1503, "", 0, 0, 0, -1);

--向かっていく
SE019 = playSeVer2( spep_2 + 262, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 262, SE019, 200 );

--ラスト蹴り
SE020 = playSeVer2( spep_2 + 286, 1190, "",spep_2 + 336, 0, 28, -1);
SE021 = playSeVer2( spep_2 + 286, 1120, "", 0, 0, 0, -1);

--爆発
SE022 = playSeVer2( spep_2 + 316, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 310); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 430F