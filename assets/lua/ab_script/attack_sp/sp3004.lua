--4033070:LR_超サイヤ人2孫悟空(天使)+魔人ベジータ_必殺技：超気功波
--sp_effect_a1_00528
--sp3004

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164414; --スタートからカードカットインまで ef_001
SP_02  = 164415; --カードカットイン～フィニッシュ ef_002

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

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 424;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 138 );  -- スキップ先フレーム指定
        setupMovie(spep_2 + 138 , SP_01, spep_2 + 138 -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --気弾発射
        SE030 = playSeVer2( spep_2 + 138 + 3, 1338, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 138 + 3, SE030, 130 );
        SE031 = playSeVer2( spep_2 + 138 + 3, 1022, "", 0, 0, 0, -1);
        SE033 = playSeVer2( spep_2 + 138 + 3, 1145, "", 0, 0, 0, -1);

        --気弾飛んでいく
        SE035 = playSeVer2( spep_2 + 138 + 3, 1193, "",spep_2 + 232, 22, 24, -1);
        setStartTimeMs( SE035,  733 );
        SE037 = playSeVer2( spep_2 + 138 + 3, 1202, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 138 + 3, SE037, 166 );

    else 

        setupMovie(0, SP_01, 0, 1);  -- スキップしない時の通常再生時用のsetupMovie関数

    end
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- スタートからカードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 424;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- スタートからカードカットインまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 316;

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


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 204 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 324 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 204 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 204 + OFFSET_X, 1, 11.4, 266 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 11.4, 266 , 0 );

setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 204 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 63 );
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 63 );
SE006 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE006, 63 );
SE007 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE007, 63 );
SE008 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE008, 63 );
SE009 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE009, 63 );
SE010 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE010, 63 );
SE011 = playSeVer2( spep_0 + 192, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE011, 63 );
SE013 = playSeVer2( spep_0 + 216, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE013, 63 );
SE014 = playSeVer2( spep_0 + 240, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE014, 63 );
SE016 = playSeVer2( spep_0 + 264, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE016, 63 );
SE017 = playSeVer2( spep_0 + 288, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE017, 63 );
SE021 = playSeVer2( spep_0 + 312, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 312, SE021, 63 );
SE023 = playSeVer2( spep_0 + 336, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE023, 63 );
SE026 = playSeVer2( spep_0 + 360, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE026, 63 );
SE027 = playSeVer2( spep_0 + 384, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE027, 63 );
SE028 = playSeVer2( spep_0 + 408, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE028, 63 );

--電気走る音
SE002 = playSeVer2( spep_0 + 0, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );

--入り
SE003 = playSeVer2( spep_0 + 4, 44, "", 0, 0, 0, -1);

--電気走る音
SE012 = playSeVer2( spep_0 + 196, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE012, 50 );

--気弾溜め
SE015 = playSeVer2( spep_0 + 238, 1442, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE015, 209 );
SE018 = playSeVer2( spep_0 + 328, 1210, "",spep_0 + 442, 14, 14, -1);
setStartTimeMs( SE018,  833 );
SE024 = playSeVer2( spep_0 + 328, 1209, "",spep_0 + 442, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 328, SE024, 153 );

--手前に出す
SE019 = playSeVer2( spep_0 + 296, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE019, 150 );
SE020 = playSeVer2( spep_0 + 302, 1006, "", 0, 0, 0, -1);

--電気走る音
SE025 = playSeVer2( spep_0 + 332, 1147, "",spep_0 + 450, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 332, SE025, 50 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 424f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カードカットイン～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 326;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 + 76 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 204 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 76 + OFFSET_X, 1, 17 );
changeAnime( spep_2 + 98 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 138 + OFFSET_X, 1, 108 )

setMoveKey( spep_2 + 76 + OFFSET_X, 1, -163.2, -53.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -163.2, -53.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -163.3, -53.5 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -163.3, -53.5 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -163.4, -53.5 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -163.4, -53.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -163.6, -53.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -163.6, -53.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -163.7, -53.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -163.7, -53.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -164.1, -53.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -164.1, -53.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -148.6, -57.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -148.6, -57.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -134.6, -55.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -134.6, -55.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -121, -57.5 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -121, -57.5 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -105.8, -56.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -105.8, -56.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -163.9, -51.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -163.9, -51.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -315.1, -77.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -315.1, -77.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -326.2, -77.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -326.2, -77.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -337.4, -77.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -337.4, -77.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -348.6, -78.1 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -348.6, -78.1 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -359.8, -78.5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -359.8, -78.5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -371, -78.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -371, -78.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -382.1, -79.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -382.1, -79.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -393.3, -79.5 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -393.3, -79.5 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -404.5, -79.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -404.5, -79.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -415.7, -80.2 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -415.7, -80.2 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -426.8, -80.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -426.8, -80.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -438, -80.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -438, -80.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -449.2, -81.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -449.2, -81.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -460.4, -81.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -460.4, -81.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -471.5, -81.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -471.5, -81.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -471.6, -81.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -471.6, -81.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 240.8, 502.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 240.8, 502.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 231.9, 477.6 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 231.9, 477.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 222.9, 452.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 222.9, 452.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 214, 426.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 214, 426.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 205.1, 401.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 205.1, 401.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 196.2, 376.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 196.2, 376.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 187.2, 350.7 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 187.2, 350.7 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 178.3, 325.3 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 178.3, 325.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 169.4, 300 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 169.4, 300 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 160.5, 274.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 160.5, 274.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 151.5, 249.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 151.5, 249.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 142.6, 223.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 142.6, 223.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 133.7, 198.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 133.7, 198.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 124.8, 173.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 124.8, 173.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 115.9, 147.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 115.9, 147.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 109.4, 104.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 109.4, 104.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 99.8, 64.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 99.8, 64.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 47, -15.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 47, -15.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 38.1, -57.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 38.1, -57.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 24, -85.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 24, -85.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 20, -95.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 20, -95.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 16.7, -106.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 16.7, -106.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 13.6, -116.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 13.6, -116.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 13.3, -112.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 13.3, -112.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 11.4, -115.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 11.4, -115.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 11.7, -119.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 11.7, -119.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 10.7, -125.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 10.7, -125.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 10.1, -130.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 10.1, -130.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 11, -124 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 11, -124 , 0 );

setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.18, 0.18 );

setRotateKey( spep_2 + 76 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--気弾発射
SE030 = playSeVer2( spep_2 + 0, 1338, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE030, 130 );
SE031 = playSeVer2( spep_2 + 0, 1022, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 0, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE032, 72 );
SE033 = playSeVer2( spep_2 + 0, 1145, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 46; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );  -- 一時停止
pauseMovie( SP_dodge + 5, 0 );  -- 一時停止解除
stopMovie( SP_dodge + 9 );  -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
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
--気弾飛んでいく
SE034 = playSeVer2( spep_2 + 76, 1021, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 94, 1011, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 108, 1193, "",spep_2 + 232, 22, 24, -1);
setStartTimeMs( SE035,  433 );
SE037 = playSeVer2( spep_2 + 134, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE037, 166 );

--爆発
SE038 = playSeVer2( spep_2 + 196, 1159, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 240, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 210); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 326f -0f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- スタートからカードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 424;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- スタートからカードカットインまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
--spep_x = spep_0 + 316;

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
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 204 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 324 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 204 + OFFSET_X, 1, 17 );

setMoveKey( spep_0 + 204 + OFFSET_X, 1, -11.4, 266 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -11.4, 266 , 0 );

setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 204 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 63 );
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 63 );
SE006 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE006, 63 );
SE007 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE007, 63 );
SE008 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE008, 63 );
SE009 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE009, 63 );
SE010 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE010, 63 );
SE011 = playSeVer2( spep_0 + 192, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE011, 63 );
SE013 = playSeVer2( spep_0 + 216, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE013, 63 );
SE014 = playSeVer2( spep_0 + 240, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE014, 63 );
SE016 = playSeVer2( spep_0 + 264, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE016, 63 );
SE017 = playSeVer2( spep_0 + 288, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE017, 63 );
SE021 = playSeVer2( spep_0 + 312, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 312, SE021, 63 );
SE023 = playSeVer2( spep_0 + 336, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE023, 63 );
SE026 = playSeVer2( spep_0 + 360, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE026, 63 );
SE027 = playSeVer2( spep_0 + 384, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE027, 63 );
SE028 = playSeVer2( spep_0 + 408, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE028, 63 );

--電気走る音
SE002 = playSeVer2( spep_0 + 0, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );

--入り
SE003 = playSeVer2( spep_0 + 4, 44, "", 0, 0, 0, -1);

--電気走る音
SE012 = playSeVer2( spep_0 + 196, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE012, 50 );

--気弾溜め
SE015 = playSeVer2( spep_0 + 238, 1442, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE015, 209 );
SE018 = playSeVer2( spep_0 + 328, 1210, "",spep_0 + 442, 14, 14, -1);
setStartTimeMs( SE018,  833 );
SE024 = playSeVer2( spep_0 + 328, 1209, "",spep_0 + 442, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 328, SE024, 153 );

--手前に出す
SE019 = playSeVer2( spep_0 + 296, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE019, 150 );
SE020 = playSeVer2( spep_0 + 302, 1006, "", 0, 0, 0, -1);

--電気走る音
SE025 = playSeVer2( spep_0 + 332, 1147, "",spep_0 + 450, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 332, SE025, 50 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 424f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カードカットイン～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 326;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 + 76 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 204 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 76 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 98 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 138 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 76 + OFFSET_X, 1, 163.2, -53.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 163.2, -53.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 163.3, -53.5 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 163.3, -53.5 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 163.4, -53.5 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 163.4, -53.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 163.6, -53.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 163.6, -53.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 163.7, -53.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 163.7, -53.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 164.1, -53.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 164.1, -53.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 148.6, -57.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 148.6, -57.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 134.6, -55.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 134.6, -55.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 121, -57.5 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 121, -57.5 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 105.8, -56.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 105.8, -56.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 163.9, -51.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 163.9, -51.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 315.1, -77.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 315.1, -77.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 326.2, -77.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 326.2, -77.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 337.4, -77.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 337.4, -77.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 348.6, -78.1 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 348.6, -78.1 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 359.8, -78.5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 359.8, -78.5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 371, -78.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 371, -78.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 382.1, -79.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 382.1, -79.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 393.3, -79.5 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 393.3, -79.5 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 404.5, -79.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 404.5, -79.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 415.7, -80.2 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 415.7, -80.2 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 426.8, -80.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 426.8, -80.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 438, -80.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 438, -80.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 449.2, -81.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 449.2, -81.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 460.4, -81.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 460.4, -81.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 471.5, -81.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 471.5, -81.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 471.6, -81.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 471.6, -81.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -240.8, 502.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -240.8, 502.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -231.9, 477.6 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -231.9, 477.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -222.9, 452.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -222.9, 452.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -214, 426.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -214, 426.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -205.1, 401.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -205.1, 401.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -196.2, 376.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -196.2, 376.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -187.2, 350.7 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -187.2, 350.7 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -178.3, 325.3 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -178.3, 325.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -169.4, 300 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -169.4, 300 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -160.5, 274.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -160.5, 274.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -151.5, 249.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -151.5, 249.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -142.6, 223.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -142.6, 223.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -133.7, 198.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -133.7, 198.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -124.8, 173.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -124.8, 173.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -115.9, 147.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -115.9, 147.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -109.4, 104.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -109.4, 104.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -99.8, 64.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -99.8, 64.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -47, -15.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -47, -15.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -38.1, -57.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -38.1, -57.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -24, -85.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -24, -85.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -20, -95.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -20, -95.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -16.7, -106.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -16.7, -106.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -13.6, -116.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -13.6, -116.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -13.3, -112.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -13.3, -112.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -11.4, -115.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -11.4, -115.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -11.7, -119.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -11.7, -119.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -10.7, -125.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -10.7, -125.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -10.1, -130.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -10.1, -130.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -11, -124 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -11, -124 , 0 );

setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.18, 0.18 );

setRotateKey( spep_2 + 76 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--気弾発射
SE030 = playSeVer2( spep_2 + 0, 1338, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE030, 130 );
SE031 = playSeVer2( spep_2 + 0, 1022, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 0, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE032, 72 );
SE033 = playSeVer2( spep_2 + 0, 1145, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 46; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );  -- 一時停止
pauseMovie( SP_dodge + 5, 0 );  -- 一時停止解除
stopMovie( SP_dodge + 9 );  -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
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
--気弾飛んでいく
SE034 = playSeVer2( spep_2 + 76, 1021, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 94, 1011, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 108, 1193, "",spep_2 + 232, 22, 24, -1);
setStartTimeMs( SE035,  433 );
SE037 = playSeVer2( spep_2 + 134, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE037, 166 );

--爆発
SE038 = playSeVer2( spep_2 + 196, 1159, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 240, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 210); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 326f -0f


end