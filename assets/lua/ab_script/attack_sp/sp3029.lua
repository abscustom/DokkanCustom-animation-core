--1034380:LR_セルマックス_必殺技：マキシマムスマッシュ
--sp_effect_b1_00366
--sp3029

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_02 = 164501 --カード後～殴りつけフィニッシュ ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 134;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 202);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 202, SP_02, spep_2 + 202 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --爆発
        SE018 = playSeVer2( spep_2 + 202+3, 1179, "", 0, 0, 0, -1);
        SE019 = playSeVer2( spep_2 + 202+3, 1061, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 202+3, SE019, 141 );
        SE020 = playSeVer2( spep_2 + 202+3, 1160, "", 0, 0, 0, -1);
    else
        setupMovie(0 , SP_02, 0, 1);
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
-- 前半演出
-------------------------------------------------
MAX_FRAME_0 = 134;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
--    speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--    setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

-- ** 音 ** --
--吠える
SE002 = playSeVer2( spep_0 + 26, 1125, "",spep_0 + 153, 0, 23, -1);
setSeVolumeByWorkId( spep_0 + 26, SE002, 76 );
SE003 = playSeVer2( spep_0 + 26, 1068, "", 0, 0, 0, -1);	
SE004 = playSeVer2( spep_0 + 26, 1321, "",spep_0 + 156, 0, 25, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 68 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 134F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--始動
SE006 = playSeVer2( spep_1 + 89, 1170, "", 0, 0, 0, -1);	
SE007 = playSeVer2( spep_1 + 89, 1182, "", 0, 0, 0, -1);	
SE008 = playSeVer2( spep_1 + 89, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 89, SE008, 295 );

-------------------------------------------------
-- カード後～殴りつけフィニッシュ ef_002
-------------------------------------------------
MAX_FRAME_2 = 408;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後～殴りつけフィニッシュ ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp(spep_2 + 148 + OFFSET_X, 1, 1);
setDisp(spep_2 + 162 + OFFSET_X, 1, 0);

changeAnimeBySide( spep_2 + 148 + OFFSET_X, 1, 104 );
changeAnimeBySide( spep_2 + 160 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 148 + OFFSET_X, 1, 154.1 * mirror, -5.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 154.1 * mirror, -5.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 143.8 * mirror, -6.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 143.8 * mirror, -6.5 , 0 );

setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.7, 0.7 );

setRotateKey( spep_2 + 148 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 0 * mirror );

setBlendColor(spep_2 + 160 + OFFSET_X, 1, 3, 0, 0, 0, 1.0 );

--敵の動き2
setDisp(spep_2 + 168 + OFFSET_X, 1, 1);
setDisp(spep_2 + 202 + OFFSET_X, 1, 0);

setMoveKey( spep_2 + 168 + OFFSET_X, 1, 158.3 * mirror, 14.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 158.3 * mirror, 14.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 190.3 * mirror, 82.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 190.3 * mirror, 82.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 190.3 * mirror, 62.6 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 190.3 * mirror, 62.6 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 183.3 * mirror, 45.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 183.3 * mirror, 45.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 181.7 * mirror, 44.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 181.7 * mirror, 44.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 180.1 * mirror, 43.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 180.1 * mirror, 43.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 178.4 * mirror, 42.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 178.4 * mirror, 42.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 176.8 * mirror, 41.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 176.8 * mirror, 41.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 175.1 * mirror, 40.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 175.1 * mirror, 40.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 173.5 * mirror, 39.8 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 173.5 * mirror, 39.8 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 171.8 * mirror, 38.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 171.8 * mirror, 38.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 170.2 * mirror, 37.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 170.2 * mirror, 37.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 168.5 * mirror, 36.9 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 168.5 * mirror, 36.9 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 166.9 * mirror, 36 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 166.9 * mirror, 36 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 165.2 * mirror, 35 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 165.2 * mirror, 35 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 163.6 * mirror, 34.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 163.6 * mirror, 34.1 , 0 );

setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.7, 0.7 );

setRotateKey( spep_2 + 168 + OFFSET_X, 1, -11 * mirror );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -11 * mirror );

setBlendColor( spep_2 + 202 + OFFSET_X, 1, 3, 0, 0, 0, 0.0 );

-- ** 音 ** --
--振りかぶる
SE009 = playSeVer2( spep_2 + 28, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 28, SE009, 115 );
SE010 = playSeVer2( spep_2 + 36, 15, "",spep_2 + 137, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 36, SE010, 71 );
SE011 = playSeVer2( spep_2 + 36, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE011, 48 );
setPitch( spep_2 + 36, SE011, -600 );
setTimeStretch( SE011, 1, 30, 4 );
SE012 = playSeVer2( spep_2 + 36, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE012, 178 );
SE013 = playSeVer2( spep_2 + 42, 1116, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 100; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);

stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);

pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); --回避後の敵の色戻す

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
--パンチヒット
SE014 = playSeVer2( spep_2 + 148, 1049, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 152, 1153, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 152, 1414, "", 0, 0, 0, -1);

--爆発
SE017 = playSeVer2( spep_2 + 182, 1069, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 198, 1179, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 198, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 198, SE019, 141 );
SE020 = playSeVer2( spep_2 + 198, 1160, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE021 = playSeVer2( spep_2 + 218, 1044, "",spep_2 + 337, 0, 57, -1);
SE022 = playSeVer2( spep_2 + 218, 1226, "",spep_2 + 393, 0, 111, -1);

--ラスト爆発
SE023 = playSeVer2( spep_2 + 332, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 280); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 410F