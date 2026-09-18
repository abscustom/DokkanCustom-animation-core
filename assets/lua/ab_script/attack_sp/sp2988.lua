--4032890:LR_超サイヤ人4孫悟空+超サイヤ人4べジータ_必殺技：メテオスマッシュ
--sp_effect_a1_00526
--sp2988

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_02 = 164423;  -- カードカットイン後 ef_002


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

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 94;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 548);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 548, SP_02, spep_2 + 548 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
        --瞬間移動
        SE040 = playSeVer2( spep_2 + 552, 1109, "", 0, 0, 0, -1);
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
MAX_FRAME_0 = 94;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 000;

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

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );

--入り
SE003 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE004, 71 );
SE005 = playSeVer2( spep_0 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE005, 71 );
SE006 = playSeVer2( spep_0 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE006, 71 );
SE007 = playSeVer2( spep_0 + 84, 1036, "",spep_0 + 108, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 84, SE007, 71 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --94F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--オーラ
SE009 = playSeVer2( spep_1 + 82, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE009, 40 );

-------------------------------------------------
-- カードカットイン後
-------------------------------------------------
MAX_FRAME_2 = 994;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン後(エフェクト名)
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

--敵の動き1

setDisp( spep_2 + 124 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 126 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 124 + OFFSET_X, 1, 100 );

setMoveKey( spep_2 + 124 + OFFSET_X, 1, 338.9, -40 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 338.9, -40 , 0 );

setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_2 + 124 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 0 );

--敵の動き2

setDisp( spep_2 + 132 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 244 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 132 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 156 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 204 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 230 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 232 + OFFSET_X, 1, 101 );
changeAnime( spep_2 + 238 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 132 + OFFSET_X, 1, 85.7, 3.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 85.7, 3.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 97.7, 3.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 97.7, 3.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 141.7, 3.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 141.7, 3.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 126.7, -15.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 126.7, -15.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 138.7, 17.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 138.7, 17.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 153.7, -14.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 153.7, -14.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 163.7, -14.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 163.7, -14.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 153.7, 3.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 153.7, 3.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 153.7, -16.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 153.7, -16.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 146.7, -10.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 146.7, -10.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 149.7, -8.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 149.7, -8.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -232.5, -369.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -232.5, -369.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -213.7, -369.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -213.7, -369.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -196.8, -370 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -196.8, -370 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -181.6, -370.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -181.6, -370.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -168.1, -370.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -168.1, -370.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -156.2, -370.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -156.2, -370.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -145.9, -371.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -145.9, -371.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -137.5, -371.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -137.5, -371.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -130.7, -371.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -130.7, -371.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -125.6, -371.7 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -125.6, -371.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -122.2, -371.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -122.2, -371.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -120.5, -371.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -120.5, -371.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -120.3, -371.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -120.3, -371.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 340.1, -550.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 340.1, -550.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 382.8, -572.6 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 382.8, -572.6 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 485, -637.4 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 485, -637.4 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 638.4, -734.8 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 638.4, -734.8 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 936.6, -924.8 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 936.6, -924.8 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -90.2, -246.5 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -90.2, -246.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -87.5, -225.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -87.5, -225.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 151.8, 37.3 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 151.8, 37.3 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 246.3, 125.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 246.3, 125.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 410.3, 303.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 410.3, 303.6 , 0 );

e = 0.3

setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.27 + e, 1.27 + e );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.27 + e, 1.27 + e );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 6.26, 6.26 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 6.26, 6.26 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 9.01, 9.01 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 9.01, 9.01 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.85, 0.85 );

setRotateKey( spep_2 + 132 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -54 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -54 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -52.5 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -52.5 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -47.1 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -47.1 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -46.4 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -46.4 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 58.6 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 58.6 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 58.7 );

--敵の動き3

setDisp( spep_2 + 424 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 454 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 424 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 424 + OFFSET_X, 1, 297.1, 288 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 297.1, 288 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 295.8, 248 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 295.8, 248 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 357.1, 349.3 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 357.1, 349.3 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 215.8, 150.7 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 215.8, 150.7 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 154.5, 206.7 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 154.5, 206.7 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 194.5, 188 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 194.5, 188 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 194.5, 124.1 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 194.5, 124.1 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 226.5, 210.7 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 226.5, 210.7 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 226.5, 177.4 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 226.5, 177.4 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 221.2, 198.7 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 221.2, 198.7 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 230.6, 201.4 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 230.6, 201.4 , 0 );

setScaleKey( spep_2 + 424 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 4.25, 4.25 );

setRotateKey( spep_2 + 424 + OFFSET_X, 1, -53.4 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, -53.4 );

--敵の動き4

setDisp( spep_2 + 500 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 502 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 500 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 500 + OFFSET_X, 1, 89.8, 215.3 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 89.8, 215.3 , 0 );

setScaleKey( spep_2 + 500 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 502 + OFFSET_X, 1, 2.47, 2.47 );

setRotateKey( spep_2 + 500 + OFFSET_X, 1, -111 );
setRotateKey( spep_2 + 502 + OFFSET_X, 1, -111 );

--敵の動き5

setDisp( spep_2 + 506 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 548 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 506 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 506 + OFFSET_X, 1, 86.9, 221.2 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 86.9, 221.2 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 125.4, 306.5 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 125.4, 306.5 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 157.7, 313 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 157.7, 313 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 129.7, 278.3 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 129.7, 278.3 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 139, 263.6 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 139, 263.6 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 147, 226.3 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 147, 226.3 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 92.4, 283.6 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 92.4, 283.6 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 93.8, 222.3 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 93.8, 222.3 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 100.4, 208.9 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 100.4, 208.9 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 117.7, 281 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 117.7, 281 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 121.7, 234.3 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 121.7, 234.3 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 120.5, 299.7 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 120.5, 299.7 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 147.2, 247.7 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 147.2, 247.7 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 109.8, 253 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 109.8, 253 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 112.5, 277 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 112.5, 277 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 103.2, 255.6 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 103.2, 255.6 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 103.2, 269 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 103.2, 269 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 116.5, 266.3 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 116.5, 266.3 , 0 );

r = 0.5
setScaleKey( spep_2 + 506 + OFFSET_X, 1, 2.8 + r, 2.8 + r );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 2.8 + r, 2.8 + r );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 2.68 + r, 2.68 + r );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 2.68 + r, 2.68 + r );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 2.64 + r, 2.64 + r );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 2.64 + r, 2.64 + r );

setRotateKey( spep_2 + 506 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 513 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 514 + OFFSET_X, 1, -61 );
setRotateKey( spep_2 + 548 + OFFSET_X, 1, -61 );

-- ** 音 ** --

--オーラ
SE010 = playSeVer2( spep_2 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE010, 40 );
SE011 = playSeVer2( spep_2 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE011, 40 );

--向かっていく
SE012 = playSeVer2( spep_2 + 38, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 38, SE012, 68 );
SE013 = playSeVer2( spep_2 + 46, 1182, "", 0, 0, 0, -1);

--オーラ
SE014 = playSeVer2( spep_2 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE014, 40 );

--向かっていく
SE015 = playSeVer2( spep_2 + 60, 1452, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 90; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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

--向かっていく
SE016 = playSeVer2( spep_2 + 84, 1117, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 84, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE017, 50 );

--パンチ
SE018 = playSeVer2( spep_2 + 120, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE018, 79 );
SE019 = playSeVer2( spep_2 + 120, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE019, 80 );
SE020 = playSeVer2( spep_2 + 120, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE020, 80 );

--蹴り上げる
SE021 = playSeVer2( spep_2 + 212, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE021, 141 );
SE022 = playSeVer2( spep_2 + 222, 1187, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 222, 1120, "", 0, 0, 0, -1);

--気ダメ
SE024 = playSeVer2( spep_2 + 272, 1503, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 272, 1035, "", 0, 0, 0, -1);

--追いかける
SE026 = playSeVer2( spep_2 + 294, 1182, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 298, 1304, "", 0, 0, 0, -1);
setPitch( spep_2 + 298, SE027, 500 );
setTimeStretch( SE027, 1.33, 30, 4 );
SE028 = playSeVer2( spep_2 + 298, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 298, SE028, 66 );
SE029 = playSeVer2( spep_2 + 304, 1019, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 304, 1278, "",spep_2 + 504, 0, 78, -1);
setSeVolumeByWorkId( spep_2 + 304, SE030, 63 );
SE031 = playSeVer2( spep_2 + 316, 1508, "", 0, 0, 0, -1);
setTimeStretch( SE031, 1.41, 30, 4 );
SE032 = playSeVer2( spep_2 + 368, 1019, "", 0, 0, 0, -1);

--パンチ
SE033 = playSeVer2( spep_2 + 420, 1110, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 420, 1414, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 426, 1153, "", 0, 0, 0, -1);

--アッパー
SE036 = playSeVer2( spep_2 + 472, 1116, "",spep_2 + 516, 0, 18, -1);
SE037 = playSeVer2( spep_2 + 492, 1187, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 492, 1359, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 498, 1190, "", 0, 0, 0, -1);

--瞬間移動
SE040 = playSeVer2( spep_2 + 542, 1109, "", 0, 0, 0, -1);

--叩きつける
SE041 = playSeVer2( spep_2 + 572, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 572, SE041, 79 );
SE042 = playSeVer2( spep_2 + 596, 1004, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 602, 1123, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 606, 1187, "", 0, 0, 0, -1);

--敵落ちていく
SE045 = playSeVer2( spep_2 + 620, 1121, "",spep_2 + 708, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 620, SE045, 77 );

--地面激突
SE046 = playSeVer2( spep_2 + 680, 1159, "", 0, 0, 0, -1);

--気弾溜め
SE047 = playSeVer2( spep_2 + 728, 1489, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 738, 1296, "",spep_2 + 858, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 738, SE048, 82 );
setPitch( spep_2 + 738, SE048, -400 );
setTimeStretch( SE048, 0.73, 30, 4 );
SE049 = playSeVer2( spep_2 + 738, 1362, "",spep_2 + 860, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 738, SE049, 155 );
setPitch( spep_2 + 738, SE049, -550 );
setTimeStretch( SE049, 0.63, 30, 4 );
SE050 = playSeVer2( spep_2 + 738, 1412, "",spep_2 + 860, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 738, SE050, 135 );
setPitch( spep_2 + 738, SE050, -250 );
setTimeStretch( SE050, 0.83, 30, 4 );
SE051 = playSeVer2( spep_2 + 742, 1204, "",spep_2 + 864, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 742, SE051, 133 );
setPitch( spep_2 + 742, SE051, -200 );
setTimeStretch( SE051, 0.87, 30, 4 );

--気弾発射
SE052 = playSeVer2( spep_2 + 836, 1145, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 836, 1021, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 836, 1030, "", 0, 0, 0, -1);

--爆発
SE055 = playSeVer2( spep_2 + 876, 1067, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 876, 1159, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 876, 1128, "", 0, 0, 0, 0.5);
setPitch( spep_2 + 876, SE057, -1200 );
setTimeStretch( SE057, 0.2, 30, 4 );
SE058 = playSeVer2( spep_2 + 892, 1044, "", 0, 84, 0, -1);
setSeVolumeByWorkId( spep_2 + 892, SE058, 186 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 890); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム 994F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_02, 0, 1);

-------------------------------------------------
-- カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 94;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 000;

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

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );

--入り
SE003 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE004, 71 );
SE005 = playSeVer2( spep_0 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE005, 71 );
SE006 = playSeVer2( spep_0 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE006, 71 );
SE007 = playSeVer2( spep_0 + 84, 1036, "",spep_0 + 108, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 84, SE007, 71 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --94F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--オーラ
SE009 = playSeVer2( spep_1 + 82, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE009, 40 );

-------------------------------------------------
-- カードカットイン後
-------------------------------------------------
MAX_FRAME_2 = 994;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン後(エフェクト名)
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

--敵の動き1

setDisp( spep_2 + 124 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 126 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 124 + OFFSET_X, 1,0 );

setMoveKey( spep_2 + 124 + OFFSET_X, 1, -338.9, -40 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -338.9, -40 , 0 );

setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_2 + 124 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 0 );

--敵の動き2

setDisp( spep_2 + 132 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 244 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 132 + OFFSET_X, 1,8 );
changeAnime( spep_2 + 156 + OFFSET_X, 1,6 );
changeAnime( spep_2 + 204 + OFFSET_X, 1,7 );
changeAnime( spep_2 + 230 + OFFSET_X, 1,8 );
changeAnime( spep_2 + 232 + OFFSET_X, 1,1 );
changeAnime( spep_2 + 238 + OFFSET_X, 1,105 );

setMoveKey( spep_2 + 132 + OFFSET_X, 1, -85.7, 3.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -85.7, 3.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -97.7, 3.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -97.7, 3.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -141.7, 3.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -141.7, 3.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -126.7, -15.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -126.7, -15.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -138.7, 17.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -138.7, 17.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -153.7, -14.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -153.7, -14.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -163.7, -14.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -163.7, -14.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -153.7, 3.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -153.7, 3.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -153.7, -16.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -153.7, -16.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -146.7, -10.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -146.7, -10.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -149.7, -8.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -149.7, -8.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 232.5, -369.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 232.5, -369.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 213.7, -369.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 213.7, -369.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 196.8, -370 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 196.8, -370 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 181.6, -370.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 181.6, -370.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 168.1, -370.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 168.1, -370.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 156.2, -370.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 156.2, -370.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 145.9, -371.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 145.9, -371.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 137.5, -371.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 137.5, -371.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 130.7, -371.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 130.7, -371.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 125.6, -371.7 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 125.6, -371.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 122.2, -371.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 122.2, -371.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 120.5, -371.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 120.5, -371.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 120.3, -371.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 120.3, -371.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -340.1, -550.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -340.1, -550.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -382.8, -572.6 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -382.8, -572.6 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -485, -637.4 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -485, -637.4 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -638.4, -734.8 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -638.4, -734.8 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -936.6, -924.8 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -936.6, -924.8 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 90.2, -246.5 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 90.2, -246.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 87.5, -225.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 87.5, -225.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -151.8, 37.3 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -151.8, 37.3 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -246.3, 125.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -246.3, 125.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -410.3, 303.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -410.3, 303.6 , 0 );

setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 6.26, 6.26 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 6.26, 6.26 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 9.01, 9.01 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 9.01, 9.01 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.85, 0.85 );

setRotateKey( spep_2 + 132 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 48.8 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 48.8 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 47.1 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 47.1 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 46.4 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 46.4 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 45.8 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 45.8 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -58.6 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -58.6 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -58.7 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -58.7 );

--敵の動き3

setDisp( spep_2 + 424 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 454 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 424 + OFFSET_X, 1,8 );

setMoveKey( spep_2 + 424 + OFFSET_X, 1, -297.1, 288 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -297.1, 288 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -295.8, 248 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -295.8, 248 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -357.1, 349.3 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -357.1, 349.3 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -215.8, 150.7 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -215.8, 150.7 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -154.5, 206.7 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -154.5, 206.7 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -194.5, 188 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -194.5, 188 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -194.5, 124.1 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -194.5, 124.1 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -226.5, 210.7 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -226.5, 210.7 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -226.5, 177.4 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -226.5, 177.4 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -221.2, 198.7 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -221.2, 198.7 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -230.6, 201.4 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -230.6, 201.4 , 0 );

setScaleKey( spep_2 + 424 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 3.75, 3.75 );

setRotateKey( spep_2 + 424 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, 53.4 );

--敵の動き4

setDisp( spep_2 + 500 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 502 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 500 + OFFSET_X, 1,6 );

setMoveKey( spep_2 + 500 + OFFSET_X, 1, -89.8, 215.3 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -89.8, 215.3 , 0 );

setScaleKey( spep_2 + 500 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 502 + OFFSET_X, 1, 1.97, 1.97 );

setRotateKey( spep_2 + 500 + OFFSET_X, 1, 111 );
setRotateKey( spep_2 + 502 + OFFSET_X, 1, 111 );

--敵の動き5

setDisp( spep_2 + 506 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 548 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 506 + OFFSET_X, 1,8 );

setMoveKey( spep_2 + 506 + OFFSET_X, 1, -86.9, 221.2 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -86.9, 221.2 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -125.4, 306.5 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -125.4, 306.5 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -157.7, 313 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -157.7, 313 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -129.7, 278.3 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -129.7, 278.3 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -139, 263.6 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -139, 263.6 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -147, 226.3 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -147, 226.3 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -92.4, 283.6 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, -92.4, 283.6 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, -93.8, 222.3 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, -93.8, 222.3 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, -100.4, 208.9 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, -100.4, 208.9 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, -117.7, 281 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, -117.7, 281 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, -121.7, 234.3 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, -121.7, 234.3 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, -120.5, 299.7 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, -120.5, 299.7 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -147.2, 247.7 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -147.2, 247.7 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, -109.8, 253 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -109.8, 253 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, -112.5, 277 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, -112.5, 277 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, -103.2, 255.6 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, -103.2, 255.6 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, -103.2, 269 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -103.2, 269 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -116.5, 266.3 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -116.5, 266.3 , 0 );

setScaleKey( spep_2 + 506 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 2.64, 2.64 );

setRotateKey( spep_2 + 506 + OFFSET_X, 1, 60 );
setRotateKey( spep_2 + 513 + OFFSET_X, 1, 60 );
setRotateKey( spep_2 + 514 + OFFSET_X, 1, 61 );
setRotateKey( spep_2 + 548 + OFFSET_X, 1, 61 );

-- ** 音 ** --

--オーラ
SE010 = playSeVer2( spep_2 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE010, 40 );
SE011 = playSeVer2( spep_2 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE011, 40 );

--向かっていく
SE012 = playSeVer2( spep_2 + 38, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 38, SE012, 68 );
SE013 = playSeVer2( spep_2 + 46, 1182, "", 0, 0, 0, -1);

--オーラ
SE014 = playSeVer2( spep_2 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE014, 40 );

--向かっていく
SE015 = playSeVer2( spep_2 + 60, 1452, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 90; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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

--向かっていく
SE016 = playSeVer2( spep_2 + 84, 1117, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 84, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE017, 50 );

--パンチ
SE018 = playSeVer2( spep_2 + 120, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE018, 79 );
SE019 = playSeVer2( spep_2 + 120, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE019, 80 );
SE020 = playSeVer2( spep_2 + 120, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE020, 80 );

--蹴り上げる
SE021 = playSeVer2( spep_2 + 212, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE021, 141 );
SE022 = playSeVer2( spep_2 + 222, 1187, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 222, 1120, "", 0, 0, 0, -1);

--気ダメ
SE024 = playSeVer2( spep_2 + 272, 1503, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 272, 1035, "", 0, 0, 0, -1);

--追いかける
SE026 = playSeVer2( spep_2 + 294, 1182, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 298, 1304, "", 0, 0, 0, -1);
setPitch( spep_2 + 298, SE027, 500 );
setTimeStretch( SE027, 1.33, 30, 4 );
SE028 = playSeVer2( spep_2 + 298, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 298, SE028, 66 );
SE029 = playSeVer2( spep_2 + 304, 1019, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 304, 1278, "",spep_2 + 504, 0, 78, -1);
setSeVolumeByWorkId( spep_2 + 304, SE030, 63 );
SE031 = playSeVer2( spep_2 + 316, 1508, "", 0, 0, 0, -1);
setTimeStretch( SE031, 1.41, 30, 4 );
SE032 = playSeVer2( spep_2 + 368, 1019, "", 0, 0, 0, -1);

--パンチ
SE033 = playSeVer2( spep_2 + 420, 1110, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 420, 1414, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 426, 1153, "", 0, 0, 0, -1);

--アッパー
SE036 = playSeVer2( spep_2 + 472, 1116, "",spep_2 + 516, 0, 18, -1);
SE037 = playSeVer2( spep_2 + 492, 1187, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 492, 1359, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 498, 1190, "", 0, 0, 0, -1);

--瞬間移動
SE040 = playSeVer2( spep_2 + 542, 1109, "", 0, 0, 0, -1);

--叩きつける
SE041 = playSeVer2( spep_2 + 572, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 572, SE041, 79 );
SE042 = playSeVer2( spep_2 + 596, 1004, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 602, 1123, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 606, 1187, "", 0, 0, 0, -1);

--敵落ちていく
SE045 = playSeVer2( spep_2 + 620, 1121, "",spep_2 + 708, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 620, SE045, 77 );

--地面激突
SE046 = playSeVer2( spep_2 + 680, 1159, "", 0, 0, 0, -1);

--気弾溜め
SE047 = playSeVer2( spep_2 + 728, 1489, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 738, 1296, "",spep_2 + 858, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 738, SE048, 82 );
setPitch( spep_2 + 738, SE048, -400 );
setTimeStretch( SE048, 0.73, 30, 4 );
SE049 = playSeVer2( spep_2 + 738, 1362, "",spep_2 + 860, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 738, SE049, 155 );
setPitch( spep_2 + 738, SE049, -550 );
setTimeStretch( SE049, 0.63, 30, 4 );
SE050 = playSeVer2( spep_2 + 738, 1412, "",spep_2 + 860, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 738, SE050, 135 );
setPitch( spep_2 + 738, SE050, -250 );
setTimeStretch( SE050, 0.83, 30, 4 );
SE051 = playSeVer2( spep_2 + 742, 1204, "",spep_2 + 864, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 742, SE051, 133 );
setPitch( spep_2 + 742, SE051, -200 );
setTimeStretch( SE051, 0.87, 30, 4 );

--気弾発射
SE052 = playSeVer2( spep_2 + 836, 1145, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 836, 1021, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 836, 1030, "", 0, 0, 0, -1);

--爆発
SE055 = playSeVer2( spep_2 + 876, 1067, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 876, 1159, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 876, 1128, "", 0, 0, 0, 0.5);
setPitch( spep_2 + 876, SE057, -1200 );
setTimeStretch( SE057, 0.2, 30, 4 );
SE058 = playSeVer2( spep_2 + 892, 1044, "", 0, 84, 0, -1);
setSeVolumeByWorkId( spep_2 + 892, SE058, 186 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 890); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム 994F


end
