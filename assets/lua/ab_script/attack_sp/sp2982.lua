--1032710:LR_ルード_必殺技：ルード・ストンピング
--sp_effect_b4_00415
--sp2982

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--共通
SP_01  = 164353; --あおり正面構図 ef_001
SP_01b = 164354; --あおり正面構図 ef_001b
SP_02  = 164355; --あおり、足を持ち上げる動き～フィニッシュ ef_002
SP_02b = 164356; --あおり、足を持ち上げる動き～フィニッシュ ef_002b

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
]]--

ENABLE_AUTO_TIME_STRETCH(0.86);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_1 = spep_0 + 236;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 46);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 46, SP_01, spep_2 + 46 - 1 + 2, 1);

        -- ** 敵キャラクター ** --
        --敵の動き
        setMoveKey( spep_2 + 46, 1, 0, -5000, 0 );  -- スキップ時に敵が映り込むため記載

        -- ** 音 ** --
        --環境音
        SE009 = playSeVer2( spep_2 + 46 + 3, 1175, "",spep_2 + 244, 0, 104, -1);
        setSeVolumeByWorkId( spep_2 + 46 + 3, SE009, 25 );

        --足うごく
        SE011 = playSeVer2( spep_2 + 46 + 3, 1173, "",spep_2 + 126, 0, 26, -1);
        setSeVolumeByWorkId( spep_2 + 46 + 3, SE011, 126 );
        SE010 = playSeVer2( spep_2 + 46 + 3, 1182, "", 0, 8, 0, -1);
        setStartTimeMs( SE010,  133 );
        SE012 = playSeVer2( spep_2 + 46 + 3, 1438, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 46 + 3, SE012, 136 );
        setPitch( spep_2 + 46 + 3, SE012, -600 );
        setTimeStretch( SE012, 0.6, 30, 4 );

    else 

        setupMovie(0 , SP_01, 0, 1);

    end
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- あおり正面構図
-------------------------------------------------
MAX_FRAME_0 = 236;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- あおり正面構図(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- あおり正面構図(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 148;

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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 130 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, -9.3, -445.7 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -9.1, -438.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -9.1, -438.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -9, -432.2 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -9, -432.2 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -8.8, -425.5 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -8.8, -425.5 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -8.7, -418.7 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -8.7, -418.7 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -8.5, -412 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -8.5, -412 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -8.3, -405.3 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -8.3, -405.3 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -8.2, -398.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -8.2, -398.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -8, -391.8 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -8, -391.8 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -7.9, -385.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -7.9, -385.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -7.7, -378.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -7.7, -378.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -7.6, -371.6 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -7.6, -371.6 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -7.4, -364.9 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -7.4, -364.9 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -7.2, -358.2 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -7.2, -358.2 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -7.1, -351.5 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -7.1, -351.5 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -6.9, -344.7 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -6.9, -344.7 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -6.8, -338 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -6.8, -338 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -6.6, -331.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -6.6, -331.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -6.4, -324.5 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -6.4, -324.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -6.3, -317.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -6.3, -317.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -6.1, -311.1 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -6.1, -311.1 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -6, -304.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -6, -304.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -5.8, -297.6 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -5.8, -297.6 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -5.6, -290.9 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -5.6, -290.9 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -5.6, -286 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -5.6, -286 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -5.6, -281.1 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -5.6, -281.1 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -5.6, -276.1 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -5.6, -276.1 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -5.6, -271.2 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -5.6, -271.2 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -5.6, -266.3 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -5.6, -266.3 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -5.6, -261.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -5.6, -261.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -5.6, -256.5 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -5.6, -256.5 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -5.6, -251.6 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -5.6, -251.6 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -5.6, -246.6 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -5.6, -246.6 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -5.6, -241.7 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -5.6, -241.7 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -5.6, -236.8 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -5.6, -236.8 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -5.6, -231.9 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -5.6, -231.9 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -5.6, -227 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -5.6, -227 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -5.6, -222.1 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -5.6, -222.1 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -5.6, -217.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -5.6, -217.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -5.6, -212.2 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -5.6, -212.2 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -5.6, -207.3 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -5.6, -207.3 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -5.6, -202.4 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -5.6, -202.4 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -5.6, -197.5 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -5.6, -197.5 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -5.5, -192.6 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -5.5, -192.6 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -5.5, -187.6 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -5.5, -187.6 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -5.5, -184.6 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -5.5, -184.6 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -5.5, -181.6 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -5.5, -181.6 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -5.4, -178.6 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -5.4, -178.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -5.4, -175.6 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -5.4, -175.6 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -5.3, -172.6 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -5.3, -172.6 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -5.3, -169.6 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -5.3, -169.6 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -5.2, -166.6 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -5.2, -166.6 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -5.2, -163.6 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -5.2, -163.6 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -5.1, -160.6 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -5.1, -160.6 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -5.1, -157.6 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -5.1, -157.6 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -5, -154.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -5, -154.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -5, -151.6 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -5, -151.6 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -4.9, -148.6 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -4.9, -148.6 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -4.9, -145.6 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -4.9, -145.6 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -4.8, -142.6 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -4.8, -142.6 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -5.1, -142.3 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -5.1, -142.3 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -5.3, -142 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -5.3, -142 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -5.5, -141.7 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -5.5, -141.7 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -5.7, -141.5 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -5.7, -141.5 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -5.9, -141.2 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -5.9, -141.2 , 0 );

setScaleKey( spep_0 + 0, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 0.97, 0.97 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 264, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--首うごく
SE003 = playSeVer2( spep_0 + 12, 1229, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 150, 1190, "", 0, 12, 0, -1);
setStartTimeMs( SE004,  100 );
SE006 = playSeVer2( spep_0 + 158, 1438, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 176, 1153, "", 0, 20, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 236f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--環境音
SE009 = playSeVer2( spep_1 + 84, 1175, "",spep_2 + 244, 0, 104, -1);
setSeVolumeByWorkId( spep_1 + 84, SE009, 25 );


-------------------------------------------------
-- あおり、足を持ち上げる動き～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 264;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- あおり、足を持ち上げる動き～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- あおり、足を持ち上げる動き～フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 + 86 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 140 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 86 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 86 + OFFSET_X, 1, -7.7, -87 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -7.7, -87 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -7.7, -87.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -7.7, -87.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -7.7, -87.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -7.7, -87.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -7.7, -87.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -7.7, -87.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -7.7, -87.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -7.7, -87.4 , 0 );

setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.39, 1.39 );

setRotateKey( spep_2 + 86 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--足うごく
SE011 = playSeVer2( spep_2 + 22, 1173, "",spep_2 + 126, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 22, SE011, 126 );
SE010 = playSeVer2( spep_2 + 24, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE010,  133 );
SE012 = playSeVer2( spep_2 + 32, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE012, 136 );
setPitch( spep_2 + 32, SE012, -600 );
setTimeStretch( SE012, 0.6, 30, 4 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 62; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);

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
--踏みつけ
SE013 = playSeVer2( spep_2 + 110, 1190, "", 0, 10, 0, -1);
setStartTimeMs( SE013,  100 );
SE014 = playSeVer2( spep_2 + 134, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE014, 79 );
SE015 = playSeVer2( spep_2 + 134, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 144); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 264f -2f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- あおり正面構図
-------------------------------------------------
MAX_FRAME_0 = 236;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- あおり正面構図(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- あおり正面構図(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 148;

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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 130 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 2 );

setMoveKey( spep_0 + 0, 1, 9.3, -445.7 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 9.1, -438.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 9.1, -438.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 9, -432.2 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 9, -432.2 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 8.8, -425.5 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 8.8, -425.5 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 8.7, -418.7 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 8.7, -418.7 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 8.5, -412 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 8.5, -412 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 8.3, -405.3 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 8.3, -405.3 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 8.2, -398.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 8.2, -398.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 8, -391.8 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 8, -391.8 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 7.9, -385.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 7.9, -385.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 7.7, -378.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 7.7, -378.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 7.6, -371.6 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 7.6, -371.6 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 7.4, -364.9 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 7.4, -364.9 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 7.2, -358.2 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 7.2, -358.2 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 7.1, -351.5 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 7.1, -351.5 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 6.9, -344.7 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 6.9, -344.7 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 6.8, -338 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 6.8, -338 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 6.6, -331.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 6.6, -331.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 6.4, -324.5 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 6.4, -324.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 6.3, -317.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 6.3, -317.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 6.1, -311.1 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 6.1, -311.1 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 6, -304.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 6, -304.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 5.8, -297.6 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 5.8, -297.6 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 5.6, -290.9 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 5.6, -290.9 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 5.6, -286 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 5.6, -286 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 5.6, -281.1 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 5.6, -281.1 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 5.6, -276.1 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 5.6, -276.1 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 5.6, -271.2 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 5.6, -271.2 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 5.6, -266.3 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 5.6, -266.3 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 5.6, -261.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 5.6, -261.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 5.6, -256.5 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 5.6, -256.5 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 5.6, -251.6 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 5.6, -251.6 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 5.6, -246.6 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 5.6, -246.6 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 5.6, -241.7 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 5.6, -241.7 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 5.6, -236.8 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 5.6, -236.8 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 5.6, -231.9 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 5.6, -231.9 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 5.6, -227 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 5.6, -227 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 5.6, -222.1 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 5.6, -222.1 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 5.6, -217.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 5.6, -217.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 5.6, -212.2 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 5.6, -212.2 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 5.6, -207.3 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 5.6, -207.3 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 5.6, -202.4 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 5.6, -202.4 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 5.6, -197.5 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 5.6, -197.5 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 5.5, -192.6 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 5.5, -192.6 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 5.5, -187.6 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 5.5, -187.6 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 5.5, -184.6 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 5.5, -184.6 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 5.5, -181.6 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 5.5, -181.6 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 5.4, -178.6 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 5.4, -178.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 5.4, -175.6 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 5.4, -175.6 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 5.3, -172.6 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 5.3, -172.6 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 5.3, -169.6 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 5.3, -169.6 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 5.2, -166.6 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 5.2, -166.6 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 5.2, -163.6 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 5.2, -163.6 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 5.1, -160.6 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 5.1, -160.6 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 5.1, -157.6 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 5.1, -157.6 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 5, -154.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 5, -154.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 5, -151.6 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 5, -151.6 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 4.9, -148.6 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 4.9, -148.6 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 4.9, -145.6 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 4.9, -145.6 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 4.8, -142.6 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 4.8, -142.6 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 5.1, -142.3 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 5.1, -142.3 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 5.3, -142 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 5.3, -142 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 5.5, -141.7 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 5.5, -141.7 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 5.7, -141.5 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 5.7, -141.5 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 5.9, -141.2 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 5.9, -141.2 , 0 );

setScaleKey( spep_0 + 0, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 0.97, 0.97 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 264, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--首うごく
SE003 = playSeVer2( spep_0 + 12, 1229, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 150, 1190, "", 0, 12, 0, -1);
setStartTimeMs( SE004,  100 );
SE006 = playSeVer2( spep_0 + 158, 1438, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 176, 1153, "", 0, 20, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 236f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--環境音
SE009 = playSeVer2( spep_1 + 84, 1175, "",spep_2 + 244, 0, 104, -1);
setSeVolumeByWorkId( spep_1 + 84, SE009, 25 );


-------------------------------------------------
-- あおり、足を持ち上げる動き～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 264;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- あおり、足を持ち上げる動き～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- あおり、足を持ち上げる動き～フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 + 86 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 140 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 86 + OFFSET_X, 1, 4 );

setMoveKey( spep_2 + 86 + OFFSET_X, 1, 7.7, -87 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 7.7, -87 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 7.7, -87.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 7.7, -87.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 7.7, -87.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 7.7, -87.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 7.7, -87.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 7.7, -87.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 7.7, -87.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 7.7, -87.4 , 0 );

setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.39, 1.39 );

setRotateKey( spep_2 + 86 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--足うごく
SE011 = playSeVer2( spep_2 + 22, 1173, "",spep_2 + 126, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 22, SE011, 126 );
SE010 = playSeVer2( spep_2 + 24, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE010,  133 );
SE012 = playSeVer2( spep_2 + 32, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE012, 136 );
setPitch( spep_2 + 32, SE012, -600 );
setTimeStretch( SE012, 0.6, 30, 4 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 62; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);

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
--踏みつけ
SE013 = playSeVer2( spep_2 + 110, 1190, "", 0, 10, 0, -1);
setStartTimeMs( SE013,  100 );
SE014 = playSeVer2( spep_2 + 134, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE014, 79 );
SE015 = playSeVer2( spep_2 + 134, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 144); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 264f -2f

end