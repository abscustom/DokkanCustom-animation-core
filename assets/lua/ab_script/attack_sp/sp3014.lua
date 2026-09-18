--1033660:UR_ジレン(フルパワー)(超極悪化)   _必殺技：パワーウォール
--sp_effect_b1_00365
--sp3014

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164476; --セリフカットイン ef_001
SP_02  = 164477; --パワーウォール ef_002


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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
--[[
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
]]
ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 408;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        timing_skip = 50;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_2 + timing_skip , SP_01, spep_2 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --振りかぶる
        SE016 = playSeVer2( spep_2 + 53, 1147, "",spep_2 + 140, 0, 16, -1);
        setSeVolumeByWorkId( spep_2 + 53, SE016, 51 );
        SE017 = playSeVer2( spep_2 + 53, 1268, "",spep_2 + 136, 0, 22, -1);
        SE018 = playSeVer2( spep_2 + 53, 1267, "", 0, 0, 0, -1);
    else
        setupMovie(0, SP_01, 0, 1);
    end

else

    setupMovie(0, SP_01, 0, 1);

    mirror = -1;

end

------------------------------------------------------------------------------------------------------------
-- 共通演出
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- セリフカットイン
-------------------------------------------------
MAX_FRAME_0 = 408;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- セリフカットイン(ef_001)
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
spep_x = spep_0 + 302; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

ctgogo_x = 100 -- 演出によって白目にかからないように調整

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

-- ** 敵キャラクター ** --

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 80 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 194.2 * mirror, -106.8 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 194.2 * mirror, -106.8 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 194.2 * mirror, -106.8 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 194.2 * mirror, -106.8 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 194.2 * mirror, -106.8 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 194.2 * mirror, -106.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 194.2 * mirror, -106.8 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 194.2 * mirror, -106.8 , 0 );

s = 0.7;

setScaleKey( spep_0 + 0, 1, 1.58 + s, 1.58 + s );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.58 + s, 1.58 + s );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.58 + s, 1.58 + s );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.58 + s, 1.58 + s );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.58 + s, 1.58 + s );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.58 + s, 1.58 + s );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.58 + s, 1.58 + s );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 1.58 + s, 1.58 + s );

setRotateKey( spep_0 + 0, 1, 0 * mirror );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 80 + OFFSET_X, 1, 0 * mirror );

-- ** 音 ** --

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 428, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE002 = playSeVer2( spep_0 + 0, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );

--環境音
SE003 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 32 );

--カメラ移動
SE004 = playSeVer2( spep_0 + 68, 1271, "",spep_0 + 254, 0, 74, -1);
SE005 = playSeVer2( spep_0 + 74, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE005, 63 );
setTimeStretch( SE005, 2, 30, 4 );

--オーラ
SE006 = playSeVer2( spep_0 + 194, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 194, SE006, 50 );

--拳握る
SE008 = playSeVer2( spep_0 + 318, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE008, 132 );

--オーラ
SE009 = playSeVer2( spep_0 + 328, 1147, "",spep_0 + 434, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 328, SE009, 50 );

--拳握る
SE010 = playSeVer2( spep_0 + 326, 1258, "",spep_0 + 400, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 326, SE010, 65 );
SE011 = playSeVer2( spep_0 + 330, 1006, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 330, 1268, "",spep_0 + 410, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 330, SE012, 138 );
SE013 = playSeVer2( spep_0 + 330, 1267, "",spep_0 + 410, 0, 42, -1);
SE014 = playSeVer2( spep_0 + 330, 1465, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE014, 141 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 408F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--振りかぶる
SE016 = playSeVer2( spep_1 + 82, 1147, "",spep_1 + 192, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 82, SE016, 51 );
SE017 = playSeVer2( spep_1 + 82, 1268, "",spep_1 + 188, 0, 22, -1);
SE018 = playSeVer2( spep_1 + 82, 1267, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 82, 1116, "",spep_1 + 128, 0, 26, -1);
SE020 = playSeVer2( spep_1 + 82, 1182, "", 0, 0, 0, -1);

-------------------------------------------------
-- パワーウォール
-------------------------------------------------
MAX_FRAME_2 = 258;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- パワーウォール(ef_002)
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

setDisp( spep_2 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 258 + OFFSET_X, 1, 1 );

changeAnimeBySide( spep_2 + 120 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 120 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 255.6 * mirror, -14.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 250.8 * mirror, -28.5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 262.5 * mirror, -21.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 247.8 * mirror, -21.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 257.5 * mirror, -28.6 , 0 );

setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.09, 1.09 );

setRotateKey( spep_2 + 120 + OFFSET_X, 1, 14 * mirror );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 14 * mirror );

setBlendColor( spep_2 + 122 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 124 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 126 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 128 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 132 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 134 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 136 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 138 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 142 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 144 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 146 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 148 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 152 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 154 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 156 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 158 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 162 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 164 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 166 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 168 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 172 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 174 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 176 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 178 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 182 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 184 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 186 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 188 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 192 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 194 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 196 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 198 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 202 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 204 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 206 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 208 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 212 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 214 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 216 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 218 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 222 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 224 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 226 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 228 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 232 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 234 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 236 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 238 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 242 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 244 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 246 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 248 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 252 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 254 + OFFSET_X, 1, 0, 1, 1, 1, 0.7 );
setBlendColor( spep_2 + 256 + OFFSET_X, 1, 0, 1, 1, 1, 0.3 );
setBlendColor( spep_2 + 258 + OFFSET_X, 1, 0, 0, 0, 0, 0 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 60; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
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
--回避しなかった場合
-----------------------------

-- ** 音 ** --

--敵にたたきつける
SE021 = playSeVer2( spep_2 + 78, 1258, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 108, 1172, "", 0, 0, 0, -1);
setPitch( spep_2 + 114, SE022, -600 );
setTimeStretch( SE022, 0.6, 30, 4 );
SE023 = playSeVer2( spep_2 + 108, 1188, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 144, 1268, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 144, SE024, 188 );
SE025 = playSeVer2( spep_2 + 144, 1226, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 144); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム 254F