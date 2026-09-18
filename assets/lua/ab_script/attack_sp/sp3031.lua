--1033940:LR_ターレス_必殺技：クラッシャージェノサイド
--sp_effect_a9_00172
--sp3031

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_02  = 164509; --ダイーズがIN～フィニッシュまで ef_002

--エフェクト(敵)
SP_02r  = 164512; --ダイーズがIN～フィニッシュまで ef_002r

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 172;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        timing_skip = 288;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_2 + timing_skip , SP_02, spep_2 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --

    else
        setupMovie(0, SP_02, 0, 1);
    end

else

    setupMovie(0, SP_02, 0, 1);
    SP_02 = SP_02r
    mirror = -1;

end

------------------------------------------------------------------------------------------------------------
-- 共通演出
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 冒頭 〜 カードカットイン前まで
-------------------------------------------------
MAX_FRAME_0 = 172;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 90; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   --speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   --setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end
--[[
ctgogo_x = 50 -- 演出によって白目にかからないように調整

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

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 189, 0, 17, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 30; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
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

--仲間登場する
SE002 = playSeVer2( spep_0 + 18, 8, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 31, 44, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 53, 1072, "", 0, 0, 0, -1);
setTimeStretch( SE004, 1.43, 30, 4 );
SE005 = playSeVer2( spep_0 + 70, 1240, "",spep_0 + 165, 0, 15, -1);
setSeVolumeByWorkId( spep_0 + 70, SE005, 141 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- フレーム数

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--ダイーズ殴る
SE008 = playSeVer2( spep_1 + 83, 1117, "",spep_1 + 139, 0, 29, -1);

-------------------------------------------------
-- 素材が前後、２つあるシーン
-------------------------------------------------
MAX_FRAME_2 = 568;


-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ダイーズがIN～フィニッシュまで(ef_002)
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

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 106 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 0, 1, 17 );
changeAnimeBySide( spep_2 + 20 + OFFSET_X, 1, 4 );
changeAnimeBySide( spep_2 + 28 + OFFSET_X, 1, 8 );
changeAnimeBySide( spep_2 + 96 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 0, 1, -250.5 * mirror, -35.5 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -250.5 * mirror, -35.5 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -195.1 * mirror, -35.5 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -195.1 * mirror, -35.5 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -175.2 * mirror, -35.5 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -175.2 * mirror, -35.5 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -163.6 * mirror, -35.5 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -163.6 * mirror, -35.5 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -156.4 * mirror, -35.5 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -156.4 * mirror, -35.5 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -170.6 * mirror, -51.2 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -170.6 * mirror, -51.2 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -168.8 * mirror, -51.2 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -168.8 * mirror, -51.2 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -240.2 * mirror, -34.3 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -240.2 * mirror, -34.3 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -338 * mirror, -21.8 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -338 * mirror, -21.8 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -189 * mirror, 12.2 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -189 * mirror, 12.2 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -191.7 * mirror, -18.3 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -191.7 * mirror, -18.3 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -312.2 * mirror, 0.1 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -312.2 * mirror, 0.1 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -310.1 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -310.1 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -270.1 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -270.1 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -271.3 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -271.3 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -272.7 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -272.7 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -273.9 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -273.9 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -275.1 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -275.1 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -276.5 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -276.5 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -277.8 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -277.8 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -279 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -279 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -280.4 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -280.4 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -281.6 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -281.6 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -283 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -283 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -284.3 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -284.3 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -285.6 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -285.6 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -287 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -287 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -288.2 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -288.2 * mirror, -9.3 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -270.7 * mirror, -95.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -270.7 * mirror, -95.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -269.7 * mirror, -125.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -269.7 * mirror, -125.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -120.8 * mirror, -91.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -120.8 * mirror, -91.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -122.3 * mirror, -121.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -122.3 * mirror, -121.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -638.7 * mirror, -103.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -638.7 * mirror, -103.2 , 0 );

setScaleKey( spep_2 + 0, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 3.8, 3.8 );

setRotateKey( spep_2 + 0, 1, 0 * mirror );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 0 * mirror );

--敵の動き2

setDisp( spep_2 + 132 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 288 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 178 + OFFSET_X, 1, 7 );
changeAnimeBySide( spep_2 + 204 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_2 + 260 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 132 + OFFSET_X, 1, 713 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 713 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 467.5 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 467.5 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 363.9 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 363.9 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 292.8 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 292.8 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 239.9 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 239.9 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 199.2 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 199.2 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 167.5 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 167.5 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 143.1 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 143.1 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 133 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 133 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 124.3 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 124.3 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 110.2 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 110.2 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 100.3 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 100.3 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 96.7 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 96.7 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 93.9 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 93.9 * mirror, -166.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 15.5 * mirror, -156 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 15.5 * mirror, -156 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -9.1 * mirror, -128.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -9.1 * mirror, -128.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 25.5 * mirror, -176.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 25.5 * mirror, -176.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 11 * mirror, -142.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 11 * mirror, -142.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 24 * mirror, -161 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 24 * mirror, -161 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -92.9 * mirror, -104.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -92.9 * mirror, -104.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -204.1 * mirror, -51.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -204.1 * mirror, -51.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -238.5 * mirror, -35.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -238.5 * mirror, -35.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -250.2 * mirror, -29.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -250.2 * mirror, -29.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 11.2 * mirror, 33.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 11.2 * mirror, 33.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -71.7 * mirror, -85 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -71.7 * mirror, -85 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 54.7 * mirror, 17.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 54.7 * mirror, 17.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -0.3 * mirror, -65.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -0.3 * mirror, -65.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 54.9 * mirror, -35.3 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 54.9 * mirror, -35.3 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 68.8 * mirror, -35.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 68.8 * mirror, -35.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 72.6 * mirror, -35.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 72.6 * mirror, -35.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 74 * mirror, -34.8 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 74 * mirror, -34.8 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 77.1 * mirror, -33 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 77.1 * mirror, -33 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 79.2 * mirror, -31.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 79.2 * mirror, -31.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 81.4 * mirror, -30.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 81.4 * mirror, -30.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 83.9 * mirror, -29.1 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 83.9 * mirror, -29.1 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 86.5 * mirror, -26.7 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 86.5 * mirror, -26.7 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 89.2 * mirror, -22.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 89.2 * mirror, -22.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 92 * mirror, -18.6 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 92 * mirror, -18.6 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 95 * mirror, -14.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 95 * mirror, -14.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 98.1 * mirror, -11.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 98.1 * mirror, -11.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 98.1 * mirror, -13.8 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 98.1 * mirror, -13.8 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 104.6 * mirror, -14.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 104.6 * mirror, -14.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 104.6 * mirror, -18.7 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 104.6 * mirror, -18.7 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 111.6 * mirror, -16.6 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 111.6 * mirror, -16.6 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 111.6 * mirror, -16.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 111.6 * mirror, -16.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 102.8 * mirror, -123.6 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 102.8 * mirror, -123.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 102.8 * mirror, -122.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 102.8 * mirror, -122.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -24.8 * mirror, -226.5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -24.8 * mirror, -226.5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -17.7 * mirror, -161.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -17.7 * mirror, -161.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -63 * mirror, -337.8 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -63 * mirror, -337.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -47 * mirror, -251.9 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -47 * mirror, -251.9 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -75 * mirror, -362.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -75 * mirror, -362.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -65.2 * mirror, -314.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -65.2 * mirror, -314.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -83.8 * mirror, -390.3 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -83.8 * mirror, -390.3 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -74.4 * mirror, -346.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -74.4 * mirror, -346.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -86.4 * mirror, -398 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -86.4 * mirror, -398 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -82.2 * mirror, -378.7 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -82.2 * mirror, -378.7 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -87.4 * mirror, -402.4 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -87.4 * mirror, -402.4 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -85.7 * mirror, -394.4 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -85.7 * mirror, -394.4 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -87.4 * mirror, -403.9 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -87.4 * mirror, -403.9 , 0 );

setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 5.9, 5.9 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 5.9, 5.9 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 6.43, 6.43 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 6.43, 6.43 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 5.7, 5.7 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 5.7, 5.7 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 6.55, 6.55 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 6.55, 6.55 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 6.23, 6.23 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 6.23, 6.23 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 6.45, 6.45 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 6.45, 6.45 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 6.56, 6.56 );

setRotateKey( spep_2 + 132 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -15 * mirror );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -15 * mirror );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 19 * mirror );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 19 * mirror );

--敵の動き3

setDisp( spep_2 + 382 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 418 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 382 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 382 + OFFSET_X, 1, -195.6 * mirror, -140.2 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -195.6 * mirror, -140.2 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -198.3 * mirror, -138.9 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -198.3 * mirror, -138.9 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -198.7 * mirror, -145 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -198.7 * mirror, -145 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -199.3 * mirror, -145.9 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -199.3 * mirror, -145.9 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -203.1 * mirror, -152.5 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -203.1 * mirror, -152.5 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -202.5 * mirror, -151.7 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -202.5 * mirror, -151.7 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -206.8 * mirror, -159.3 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -206.8 * mirror, -159.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -206.3 * mirror, -162.6 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -206.3 * mirror, -162.6 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -210.8 * mirror, -171 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -210.8 * mirror, -171 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -208.8 * mirror, -168.1 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -208.8 * mirror, -168.1 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -213.2 * mirror, -175.6 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -213.2 * mirror, -175.6 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -213.9 * mirror, -178.7 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -213.9 * mirror, -178.7 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -216.3 * mirror, -184.1 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -216.3 * mirror, -184.1 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -215.5 * mirror, -183.5 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -215.5 * mirror, -183.5 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -220.1 * mirror, -189.5 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -220.1 * mirror, -189.5 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -217.8 * mirror, -192.1 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -217.8 * mirror, -192.1 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -223.3 * mirror, -195.3 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -223.3 * mirror, -195.3 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -221.5 * mirror, -193.4 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -221.5 * mirror, -193.4 , 0 );

setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_2 + 382 + OFFSET_X, 1, -35.6 * mirror );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, -35.6 * mirror );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, -36.4 * mirror );
setRotateKey( spep_2 + 389 + OFFSET_X, 1, -36.4 * mirror );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, -37.3 * mirror );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, -37.3 * mirror );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, -38.1 * mirror );
setRotateKey( spep_2 + 397 + OFFSET_X, 1, -38.1 * mirror );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, -38.9 * mirror );
setRotateKey( spep_2 + 401 + OFFSET_X, 1, -38.9 * mirror );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, -39.6 * mirror );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, -39.6 * mirror );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, -40.6 * mirror );
setRotateKey( spep_2 + 409 + OFFSET_X, 1, -40.6 * mirror );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, -41.3 * mirror );
setRotateKey( spep_2 + 413 + OFFSET_X, 1, -41.3 * mirror );
setRotateKey( spep_2 + 414 + OFFSET_X, 1, -42.1 * mirror );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, -42.1 * mirror );

-- ** 音 ** --

--ダイーズ殴る
SE009 = playSeVer2( spep_2 + 16, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 26, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 26, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 26, 1414, "", 0, 0, 0, -1);

--瞬間移動
SE013 = playSeVer2( spep_2 + 43, 43, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 43, 1109, "", 0, 0, 0, -1);

--カカオパンチ
SE015 = playSeVer2( spep_2 + 90, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 90, 1359, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 91, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE018 = playSeVer2( spep_2 + 106, 1121, "", 0, 0, 0, -1);

--レズン＆ラカセイ蹴る
SE019 = playSeVer2( spep_2 + 151, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 171, 1001, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 171, 1010, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 175, 1006, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 197, 1001, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 197, 1110, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 204, 1007, "", 0, 0, 0, -1);

--画面遷移
SE026 = playSeVer2( spep_2 + 224, 1232, "", 0, 0, 0, -1);

--アモンど殴りとばす
SE027 = playSeVer2( spep_2 + 252, 1187, "", 0, 0, 0, -1);

--気弾溜め
SE028 = playSeVer2( spep_2 + 314, 1443, "",spep_2 + 416, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 314, SE028, 184 );
SE029 = playSeVer2( spep_2 + 314, 1209, "",spep_2 + 426, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 314, SE029, 58 );
SE030 = playSeVer2( spep_2 + 322, 1440, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 322, 1394, "",spep_2 + 411, 0, 15, -1);
setSeVolumeByWorkId( spep_2 + 322, SE031, 77 );

--気弾発射
SE032 = playSeVer2( spep_2 + 384, 1357, "",spep_2 + 487, 0, 22, -1);
SE033 = playSeVer2( spep_2 + 384, 1353, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 384, 1406, "",spep_2 + 496, 0, 32, -1);

--爆発
SE035 = playSeVer2( spep_2 + 409, 1017, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 432, 1024, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 451, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 442); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 566F