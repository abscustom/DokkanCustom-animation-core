--4029110:LR_ジレン(フルパワー)_必殺技(変身後)：クリムゾン・バラージ
--sp_effect_b4_00331
--sp2730

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 163040;  --ef_001  開始～カードカットイン前
SP_02  = 163044;  --ef_002  カードカットイン後～フィニッシュ

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 480;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;


        skipFrame(0, spep_2 + 88 );  -- スキップ先フレーム指定
        setupMovie(spep_2 + 88 , SP_01, spep_2 + 88 -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 敵キャラクター ** --
        --敵の動き
        setMoveKey( spep_2 + 88, 1, 0, -5000, 0 );  -- スキップ時に敵が映り込むため記載

        -- ** 音 ** --
        --気弾発射
        SE039 = playSeVer2( spep_2 + 88 + 3, 1423, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 88 + 3, SE039, 120 );
        SE040 = playSeVer2( spep_2 + 88 + 3, 1027, "", 0, 0, 0, -1);
        SE041 = playSeVer2( spep_2 + 88 + 3, 1406, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 88 + 3, SE041, 130 );


    else 

        setupMovie(0, SP_01, 0, 1);  -- スキップしない時の通常再生時用のsetupMovie関数

    end
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始～カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 480;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始～カードカットイン前(ef_001)
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
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -205, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -205, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -205, 515.5 , 0 );
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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );
changeAnime( spep_0 + 90 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 0, 1, 174, 47.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 174.6, 47.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 174.6, 47.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 175.1, 47.5 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 175.1, 47.5 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 175.7, 47.5 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 175.7, 47.5 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 176.3, 47.5 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 176.3, 47.5 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 176.9, 47.5 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 176.9, 47.5 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 177.4, 47.5 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 177.4, 47.5 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 178, 47.5 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 178, 47.5 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 178.6, 47.5 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 178.6, 47.5 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 179.1, 47.5 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 179.1, 47.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 179.7, 47.5 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 179.7, 47.5 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 180.3, 47.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 180.3, 47.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 180.8, 47.5 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 180.8, 47.5 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 181.4, 47.5 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 181.4, 47.5 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 182, 47.5 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 182, 47.5 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 182.5, 47.5 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 182.5, 47.5 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 183.1, 47.5 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 183.1, 47.5 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 183.7, 47.5 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 183.7, 47.5 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 184.2, 47.5 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 184.2, 47.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 184.8, 47.5 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 184.8, 47.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 185.4, 47.5 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 185.4, 47.5 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 185.9, 47.5 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 185.9, 47.5 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 186.5, 47.5 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 186.5, 47.5 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 187.1, 47.5 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 187.1, 47.5 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 187.6, 47.5 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 187.6, 47.5 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 188.2, 47.5 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 188.2, 47.5 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 188.8, 47.5 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 188.8, 47.5 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 189.4, 47.5 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 189.4, 47.5 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 189.9, 47.5 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 189.9, 47.5 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 190.5, 47.5 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 190.5, 47.5 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 191.1, 47.5 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 191.1, 47.5 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 191.6, 47.5 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 191.6, 47.5 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 192.2, 47.5 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 192.2, 47.5 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 192.8, 47.5 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 192.8, 47.5 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 193.3, 47.5 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 193.3, 47.5 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 193.9, 47.5 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 193.9, 47.5 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 194.5, 47.5 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 194.5, 47.5 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 195, 47.5 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 195, 47.5 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 195.6, 47.5 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 195.6, 47.5 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 196.2, 47.5 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 196.2, 47.5 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 196.7, 47.5 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 196.7, 47.5 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 197.3, 47.5 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 197.3, 47.5 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 197.9, 47.5 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 197.9, 47.5 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 198.4, 47.5 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 198.4, 47.5 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 199, 47.5 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 199, 47.5 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 167.3, 24 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 167.3, 24 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 168.9, 24 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 168.9, 24 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 170.5, 24 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 170.5, 24 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 172.1, 24 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 172.1, 24 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 173.7, 24 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 173.7, 24 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 175.3, 24 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 175.3, 24 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 176.8, 24 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 176.8, 24 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 178.4, 24 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 178.4, 24 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 180, 24 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 180, 24 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 181.6, 24 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 181.6, 24 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 183.2, 24 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 183.2, 24 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 184.8, 24 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 184.8, 24 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 186.4, 24 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 186.4, 24 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 188, 24 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 188, 24 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 189.6, 24 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 189.6, 24 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 191.1, 24 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 191.1, 24 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 192.7, 24 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 192.7, 24 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 194.3, 24 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 194.3, 24 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 195.9, 24 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 195.9, 24 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 197.5, 24 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 197.5, 24 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 199.1, 24 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 199.1, 24 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 200.7, 24 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 200.7, 24 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 202.3, 24 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 202.3, 24 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 203.8, 24 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 203.8, 24 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 205.4, 24 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 205.4, 24 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 207, 24 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 207, 24 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 208.6, 24 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 208.6, 24 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 210.2, 24 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 210.2, 24 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 211.8, 24 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 211.8, 24 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 213.4, 24 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 213.4, 24 , 0 );

setScaleKey( spep_0 + 0, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.8, 2.8 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 230 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 484 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 230 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 250 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 270 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 292 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 312 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 340 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 450 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 230 + OFFSET_X, 1, 154, 51.8 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 154, 51.8 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 173.6, 51.8 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 173.6, 51.8 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 118.1, 113 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 118.1, 113 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 114.3, 51.8 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 114.3, 51.8 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 168, 38.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 168, 38.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 138, 72.5 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 138, 72.5 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 154, 58.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 154, 58.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 149.2, 59.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 149.2, 59.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 154, 59.9 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 154, 59.9 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 132.4, 59.4 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 132.4, 59.4 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 113.5, 54.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 113.5, 54.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 109.6, 31.4 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 109.6, 31.4 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 109.6, 11.2 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 109.6, 11.2 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 109.6, 29.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 109.6, 29.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 109.6, 47.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 109.6, 47.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 109.6, 25.7 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 109.6, 25.7 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 109.6, 35 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 109.6, 35 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 178.5, 63.8 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 178.5, 63.8 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 134.5, 37.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 134.5, 37.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 134.5, 47.8 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 134.5, 47.8 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 142.6, 43.8 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 142.6, 43.8 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 148, 67.6 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 148, 67.6 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 151, 40.9 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 151, 40.9 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 154, 51.8 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 154, 51.8 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 154, 71.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 154, 71.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 125.9, 16.5 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 125.9, 16.5 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 103.8, 20.3 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 103.8, 20.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 121.6, 51.3 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 121.6, 51.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 117.6, 26.8 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 117.6, 26.8 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 104, 39.8 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 104, 39.8 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 109.6, 39 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 109.6, 39 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 109.6, 35 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 109.6, 35 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 101.9, -12.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 101.9, -12.3 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 136.7, -82.1 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 136.7, -82.1 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 69.7, -86.8 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 69.7, -86.8 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 108.2, -51.2 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 108.2, -51.2 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 114.2, -119.3 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 114.2, -119.3 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 119.7, -91.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 119.7, -91.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 124.7, -108.5 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 124.7, -108.5 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 127.3, -105.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 127.3, -105.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 137.3, -108.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 137.3, -108.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 136.9, -108.8 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 136.9, -108.8 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 140, -112.9 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 140, -112.9 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 142.7, -114.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 142.7, -114.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 144.8, -116.2 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 144.8, -116.2 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 146.5, -117.3 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 146.5, -117.3 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 147.7, -118.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 147.7, -118.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 180, -502.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 180, -502.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 180, -504.9 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 180, -504.9 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 180, -500.9 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 180, -500.9 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 180, -504.9 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 180, -504.9 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 180, -500.9 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 180, -500.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 180, -504.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 180, -504.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 180, -500.9 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 180, -500.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 180, -504.9 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 180, -504.9 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 180, -500.9 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 180, -500.9 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 180, -504.9 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 180, -504.9 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 180, -500.9 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 180, -500.9 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 180, -504.9 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 180, -504.9 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 180, -500.9 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 180, -500.9 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 180, -504.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 180, -504.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 180, -512.9 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 180, -512.9 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 180, -502.9 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 180, -502.9 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 180, -488.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 180, -488.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 180, -513.9 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 180, -513.9 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 180, -496.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 180, -496.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 180, -506.9 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 180, -506.9 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 180, -496.9 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 180, -496.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 180, -508.9 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 180, -508.9 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 180, -496.9 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 180, -496.9 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 180, -506.9 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 180, -506.9 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 180, -495.9 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 180, -495.9 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 180, -504.9 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 180, -504.9 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 180, -502.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 180, -502.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -138.6, -40.1 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -138.6, -40.1 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -138.6, -16.1 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -138.6, -16.1 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -138.6, -64.1 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -138.6, -64.1 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -125.9, -19.5 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -125.9, -19.5 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -141.3, -30.9 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -141.3, -30.9 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -111.4, -33.3 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -111.4, -33.3 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -118.2, -42.7 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -118.2, -42.7 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -115.8, -15 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -115.8, -15 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -110.1, -20.3 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -110.1, -20.3 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -103.1, -10.5 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -103.1, -10.5 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -96.8, -5.7 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -96.8, -5.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -85.3, 4.2 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -85.3, 4.2 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -74.4, 11.2 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -74.4, 11.2 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -62.2, 21.3 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -62.2, 21.3 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -48.7, 32.4 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -48.7, 32.4 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -38.2, 81.5 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -38.2, 81.5 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -30.1, 106.6 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -30.1, 106.6 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -24.3, 155.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -24.3, 155.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -20.8, 132.7 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -20.8, 132.7 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -19.6, 167.7 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -19.6, 167.7 , 0 );

setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 6.54, 6.54 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 6.54, 6.54 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 6.4, 6.4 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 6.4, 6.4 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 6.36, 6.36 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 6.36, 6.36 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 6.33, 6.33 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 6.33, 6.33 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 6.29, 6.29 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 6.29, 6.29 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 6.22, 6.22 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 6.22, 6.22 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 6.2, 6.2 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 6.2, 6.2 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 6.17, 6.17 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 6.17, 6.17 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 3.45, 3.45 );

setRotateKey( spep_0 + 230 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -49.5 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, -49.5 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1267, "",spep_0 + 288, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 145 );
SE002 = playSeVer2( spep_0 + 0, 1268, "",spep_0 + 288, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 78 );
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 288, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 40 );

--画面遷移
SE005 = playSeVer2( spep_0 + 80, 8, "", 0, 0, 0, -1);

--ズームアウト
SE006 = playSeVer2( spep_0 + 130, 1072, "", 0, 0, 0, -1);

--向かってくる
SE007 = playSeVer2( spep_0 + 188, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 188, 9, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 188, 1167, "",spep_0 + 250, 0, 14, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 218; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE00X, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
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
--パンチ１
SE010 = playSeVer2( spep_0 + 222, 1187, "",spep_0 + 260, 0, 6, -1);
SE011 = playSeVer2( spep_0 + 222, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 228, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE012, 82 );

--パンチ２
SE013 = playSeVer2( spep_0 + 242, 1187, "",spep_0 + 286, 0, 16, -1);
SE014 = playSeVer2( spep_0 + 242, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE014, 77 );
SE015 = playSeVer2( spep_0 + 242, 1001, "", 0, 0, 0, -1);

--パンチ３
SE016 = playSeVer2( spep_0 + 254, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE016, 168 );
SE017 = playSeVer2( spep_0 + 258, 1414, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 260, 1187, "", 0, 0, 0, -1);

--パンチ４
SE019 = playSeVer2( spep_0 + 274, 1189, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 282, 1187, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 282, 1010, "", 0, 0, 0, -1);

--パンチ５
SE022 = playSeVer2( spep_0 + 294, 1003, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 302, 1187, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 304, 1153, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 304, 1180, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE025, 71 );

--炎収束する
SE026 = playSeVer2( spep_0 + 338, 1226, "",spep_0 + 512, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 338, SE026, 68 );
SE027 = playSeVer2( spep_0 + 376, 1466, "",spep_0 + 478, 12, 36, -1);
setSeVolumeByWorkId( spep_0 + 376, SE027, 145 );
setStartTimeMs( SE027,  433 );
SE028 = playSeVer2( spep_0 + 374, 1422, "",spep_0 + 510, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 374, SE028, 70 );
SE029 = playSeVer2( spep_0 + 374, 1264, "",spep_0 + 476, 0, 46, -1);

--爆発
SE030 = playSeVer2( spep_0 + 446, 1024, "",spep_0 + 512, 0, 22, 0.7);
SE031 = playSeVer2( spep_0 + 446, 1027, "", 0, 0, 0, 0.7);
SE032 = playSeVer2( spep_0 + 446, 1188, "",spep_0 + 512, 0, 20, 0.7);
setSeVolumeByWorkId( spep_0 + 446, SE032, 58 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --480f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気弾溜め
SE034 = playSeVer2( spep_1 + 70, 1191, "",spep_1 + 188, 0, 46, -1);
setSeVolumeByWorkId( spep_1 + 70, SE034, 141 );
SE035 = playSeVer2( spep_1 + 70, 1370, "",spep_1 + 226, 0, 40, -1);
setSeVolumeByWorkId( spep_1 + 70, SE035, 141 );
SE036 = playSeVer2( spep_1 + 76, 1190, "", 0, 10, 0, -1);
setStartTimeMs( SE036,  100 );
SE037 = playSeVer2( spep_1 + 74, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 74, SE037, 58 );
SE038 = playSeVer2( spep_1 + 74, 1311, "",spep_1 + 178, 0, 36, -1);
setSeVolumeByWorkId( spep_1 + 74, SE038, 141 );

-------------------------------------------------
-- カードカットイン後～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 336;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン後～フィニッシュ(ef_002)
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
setDisp( spep_2 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 176 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 120 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 120 + OFFSET_X, 1, -23.1, 11.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -23.1, 11.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -11.8, 43 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -11.8, 43 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -0.4, 32.8 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -0.4, 32.8 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -3, 64.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -3, 64.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 36.3, 82.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 36.3, 82.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 25.6, 103.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 25.6, 103.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 28.8, 76.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 28.8, 76.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 16.1, 98 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 16.1, 98 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 51.3, 103.2 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 51.3, 103.2 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 38.6, 118.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 38.6, 118.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 41.8, 103.7 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 41.8, 103.7 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 35.1, 118.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 35.1, 118.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 58.4, 124.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 58.4, 124.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 51.6, 145.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 51.6, 145.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 54.9, 118.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 54.9, 118.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 42.1, 139.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 42.1, 139.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 77.4, 145 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 77.4, 145 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 64.6, 158.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 64.6, 158.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 67.9, 147.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 67.9, 147.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 63.1, 160.7 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 63.1, 160.7 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 82.4, 165.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 82.4, 165.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 77.6, 181.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 77.6, 181.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 80.9, 166.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 80.9, 166.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 74.1, 181.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 74.1, 181.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 97.4, 186.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 97.4, 186.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 90.6, 200 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 90.6, 200 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 93.9, 189.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 93.9, 189.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 91.1, 202.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 91.1, 202.5 , 0 );

setScaleKey( spep_2 + 120 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.37, 0.37 );

setRotateKey( spep_2 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--気弾発射
SE039 = playSeVer2( spep_2 + 74, 1423, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE039, 120 );
SE040 = playSeVer2( spep_2 + 74, 1027, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 74, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE041, 130 );
SE045 = playSeVer2( spep_2 + 196, 1406, "",spep_2 + 324, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 196, SE045, 130 );

--連続爆発
SE042 = playSeVer2( spep_2 + 120, 1023, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 152, 1024, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 186, 1188, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 212, 1023, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 230, 1159, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 240, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 216 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -6); -- 終了フレーム  336f -6


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始～カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 480;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始～カードカットイン前 敵側(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 205, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 205, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 205, 515.5 , 0 );
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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 0 );
changeAnime( spep_0 + 90 + OFFSET_X, 1, 2 );

setMoveKey( spep_0 + 0, 1, -174, 47.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -174.6, 47.5 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -174.6, 47.5 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -175.1, 47.5 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -175.1, 47.5 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -175.7, 47.5 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -175.7, 47.5 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -176.3, 47.5 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -176.3, 47.5 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -176.9, 47.5 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -176.9, 47.5 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -177.4, 47.5 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -177.4, 47.5 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -178, 47.5 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -178, 47.5 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -178.6, 47.5 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -178.6, 47.5 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -179.1, 47.5 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -179.1, 47.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -179.7, 47.5 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -179.7, 47.5 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -180.3, 47.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -180.3, 47.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -180.8, 47.5 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -180.8, 47.5 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -181.4, 47.5 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -181.4, 47.5 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -182, 47.5 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -182, 47.5 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -182.5, 47.5 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -182.5, 47.5 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -183.1, 47.5 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -183.1, 47.5 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -183.7, 47.5 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -183.7, 47.5 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -184.2, 47.5 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -184.2, 47.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -184.8, 47.5 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -184.8, 47.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -185.4, 47.5 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -185.4, 47.5 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -185.9, 47.5 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -185.9, 47.5 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -186.5, 47.5 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -186.5, 47.5 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -187.1, 47.5 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -187.1, 47.5 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -187.6, 47.5 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -187.6, 47.5 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -188.2, 47.5 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -188.2, 47.5 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -188.8, 47.5 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -188.8, 47.5 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -189.4, 47.5 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -189.4, 47.5 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -189.9, 47.5 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -189.9, 47.5 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -190.5, 47.5 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -190.5, 47.5 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -191.1, 47.5 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -191.1, 47.5 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -191.6, 47.5 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -191.6, 47.5 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -192.2, 47.5 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -192.2, 47.5 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -192.8, 47.5 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -192.8, 47.5 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -193.3, 47.5 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -193.3, 47.5 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -193.9, 47.5 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -193.9, 47.5 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -194.5, 47.5 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -194.5, 47.5 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -195, 47.5 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -195, 47.5 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -195.6, 47.5 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -195.6, 47.5 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -196.2, 47.5 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -196.2, 47.5 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -196.7, 47.5 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -196.7, 47.5 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -197.3, 47.5 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -197.3, 47.5 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -197.9, 47.5 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -197.9, 47.5 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -198.4, 47.5 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -198.4, 47.5 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -199, 47.5 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -199, 47.5 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -167.3, 24 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -167.3, 24 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -168.9, 24 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -168.9, 24 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -170.5, 24 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -170.5, 24 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -172.1, 24 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -172.1, 24 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -173.7, 24 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -173.7, 24 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -175.3, 24 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -175.3, 24 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -176.8, 24 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -176.8, 24 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -178.4, 24 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -178.4, 24 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -180, 24 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -180, 24 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -181.6, 24 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -181.6, 24 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -183.2, 24 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -183.2, 24 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -184.8, 24 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -184.8, 24 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -186.4, 24 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -186.4, 24 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -188, 24 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -188, 24 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -189.6, 24 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -189.6, 24 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -191.1, 24 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -191.1, 24 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -192.7, 24 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -192.7, 24 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -194.3, 24 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -194.3, 24 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -195.9, 24 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -195.9, 24 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -197.5, 24 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -197.5, 24 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -199.1, 24 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -199.1, 24 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -200.7, 24 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -200.7, 24 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -202.3, 24 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -202.3, 24 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -203.8, 24 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -203.8, 24 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -205.4, 24 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -205.4, 24 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -207, 24 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -207, 24 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -208.6, 24 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -208.6, 24 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -210.2, 24 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -210.2, 24 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -211.8, 24 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -211.8, 24 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -213.4, 24 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -213.4, 24 , 0 );

setScaleKey( spep_0 + 0, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.8, 2.8 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 230 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 484 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 230 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 250 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 270 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 292 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 312 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 340 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 450 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 230 + OFFSET_X, 1, -154, 51.8 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -154, 51.8 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -173.6, 51.8 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -173.6, 51.8 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -118.1, 113 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -118.1, 113 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -114.3, 51.8 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -114.3, 51.8 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -168, 38.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -168, 38.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -138, 72.5 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -138, 72.5 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -154, 58.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -154, 58.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -149.2, 59.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -149.2, 59.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -154, 59.9 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -154, 59.9 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -132.4, 59.4 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -132.4, 59.4 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -113.5, 54.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -113.5, 54.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -109.6, 31.4 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -109.6, 31.4 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -109.6, 11.2 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -109.6, 11.2 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -109.6, 29.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -109.6, 29.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -109.6, 47.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -109.6, 47.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -109.6, 25.7 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -109.6, 25.7 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -109.6, 35 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -109.6, 35 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -178.5, 63.8 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -178.5, 63.8 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -134.5, 37.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -134.5, 37.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -134.5, 47.8 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -134.5, 47.8 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -142.6, 43.8 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -142.6, 43.8 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -148, 67.6 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -148, 67.6 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -151, 40.9 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -151, 40.9 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -154, 51.8 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -154, 51.8 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -154, 71.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -154, 71.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -125.9, 16.5 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -125.9, 16.5 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -103.8, 20.3 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -103.8, 20.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -121.6, 51.3 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -121.6, 51.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -117.6, 26.8 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -117.6, 26.8 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -104, 39.8 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -104, 39.8 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -109.6, 39 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -109.6, 39 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -109.6, 35 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -109.6, 35 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -101.9, -12.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -101.9, -12.3 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -136.7, -82.1 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -136.7, -82.1 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -69.7, -86.8 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -69.7, -86.8 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -108.2, -51.2 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -108.2, -51.2 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -114.2, -119.3 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -114.2, -119.3 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -119.7, -91.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -119.7, -91.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -124.7, -108.5 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -124.7, -108.5 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -127.3, -105.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -127.3, -105.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -137.3, -108.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -137.3, -108.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -136.9, -108.8 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -136.9, -108.8 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -140, -112.9 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -140, -112.9 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -142.7, -114.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -142.7, -114.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -144.8, -116.2 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -144.8, -116.2 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -146.5, -117.3 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -146.5, -117.3 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -147.7, -118.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -147.7, -118.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -180, -502.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -180, -502.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -180, -504.9 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -180, -504.9 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -180, -500.9 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -180, -500.9 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -180, -504.9 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -180, -504.9 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -180, -500.9 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -180, -500.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -180, -504.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -180, -504.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -180, -500.9 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -180, -500.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -180, -504.9 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -180, -504.9 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -180, -500.9 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -180, -500.9 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -180, -504.9 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -180, -504.9 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -180, -500.9 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -180, -500.9 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -180, -504.9 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -180, -504.9 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -180, -500.9 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -180, -500.9 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -180, -504.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -180, -504.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -180, -512.9 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -180, -512.9 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -180, -502.9 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -180, -502.9 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -180, -488.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -180, -488.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -180, -513.9 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -180, -513.9 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -180, -496.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -180, -496.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -180, -506.9 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -180, -506.9 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -180, -496.9 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -180, -496.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -180, -508.9 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -180, -508.9 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -180, -496.9 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -180, -496.9 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -180, -506.9 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -180, -506.9 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -180, -495.9 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -180, -495.9 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -180, -504.9 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -180, -504.9 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -180, -502.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -180, -502.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 138.6, -40.1 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 138.6, -40.1 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 138.6, -16.1 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 138.6, -16.1 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 138.6, -64.1 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 138.6, -64.1 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 125.9, -19.5 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 125.9, -19.5 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 141.3, -30.9 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 141.3, -30.9 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 111.4, -33.3 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 111.4, -33.3 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 118.2, -42.7 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 118.2, -42.7 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 115.8, -15 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 115.8, -15 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 110.1, -20.3 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 110.1, -20.3 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 103.1, -10.5 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 103.1, -10.5 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 96.8, -5.7 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 96.8, -5.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 85.3, 4.2 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 85.3, 4.2 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 74.4, 11.2 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 74.4, 11.2 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 62.2, 21.3 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 62.2, 21.3 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 48.7, 32.4 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 48.7, 32.4 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 38.2, 81.5 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 38.2, 81.5 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 30.1, 106.6 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 30.1, 106.6 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 24.3, 155.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 24.3, 155.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 20.8, 132.7 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 20.8, 132.7 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 19.6, 167.7 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 19.6, 167.7 , 0 );

setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 6.54, 6.54 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 6.54, 6.54 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 6.4, 6.4 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 6.4, 6.4 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 6.36, 6.36 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 6.36, 6.36 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 6.33, 6.33 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 6.33, 6.33 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 6.29, 6.29 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 6.29, 6.29 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 6.22, 6.22 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 6.22, 6.22 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 6.2, 6.2 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 6.2, 6.2 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 6.17, 6.17 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 6.17, 6.17 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 7.68, 7.68 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 3.45, 3.45 );

setRotateKey( spep_0 + 230 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 43 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 43 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 43 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 43 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, 49.5 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, 49.5 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, 45 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, 45 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1267, "",spep_0 + 288, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 145 );
SE002 = playSeVer2( spep_0 + 0, 1268, "",spep_0 + 288, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 78 );
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 288, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 40 );

--画面遷移
SE005 = playSeVer2( spep_0 + 80, 8, "", 0, 0, 0, -1);

--ズームアウト
SE006 = playSeVer2( spep_0 + 130, 1072, "", 0, 0, 0, -1);

--向かってくる
SE007 = playSeVer2( spep_0 + 188, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 188, 9, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 188, 1167, "",spep_0 + 250, 0, 14, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 218; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE00X, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
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
--パンチ１
SE010 = playSeVer2( spep_0 + 222, 1187, "",spep_0 + 260, 0, 6, -1);
SE011 = playSeVer2( spep_0 + 222, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 228, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE012, 82 );

--パンチ２
SE013 = playSeVer2( spep_0 + 242, 1187, "",spep_0 + 286, 0, 16, -1);
SE014 = playSeVer2( spep_0 + 242, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE014, 77 );
SE015 = playSeVer2( spep_0 + 242, 1001, "", 0, 0, 0, -1);

--パンチ３
SE016 = playSeVer2( spep_0 + 254, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE016, 168 );
SE017 = playSeVer2( spep_0 + 258, 1414, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 260, 1187, "", 0, 0, 0, -1);

--パンチ４
SE019 = playSeVer2( spep_0 + 274, 1189, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 282, 1187, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 282, 1010, "", 0, 0, 0, -1);

--パンチ５
SE022 = playSeVer2( spep_0 + 294, 1003, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 302, 1187, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 304, 1153, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 304, 1180, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE025, 71 );

--炎収束する
SE026 = playSeVer2( spep_0 + 338, 1226, "",spep_0 + 512, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 338, SE026, 68 );
SE027 = playSeVer2( spep_0 + 376, 1466, "",spep_0 + 478, 12, 36, -1);
setSeVolumeByWorkId( spep_0 + 376, SE027, 145 );
setStartTimeMs( SE027,  433 );
SE028 = playSeVer2( spep_0 + 374, 1422, "",spep_0 + 510, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 374, SE028, 70 );
SE029 = playSeVer2( spep_0 + 374, 1264, "",spep_0 + 476, 0, 46, -1);

--爆発
SE030 = playSeVer2( spep_0 + 446, 1024, "",spep_0 + 512, 0, 22, 0.7);
SE031 = playSeVer2( spep_0 + 446, 1027, "", 0, 0, 0, 0.7);
SE032 = playSeVer2( spep_0 + 446, 1188, "",spep_0 + 512, 0, 20, 0.7);
setSeVolumeByWorkId( spep_0 + 446, SE032, 58 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --480f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気弾溜め
SE034 = playSeVer2( spep_1 + 70, 1191, "",spep_1 + 188, 0, 46, -1);
setSeVolumeByWorkId( spep_1 + 70, SE034, 141 );
SE035 = playSeVer2( spep_1 + 70, 1370, "",spep_1 + 226, 0, 40, -1);
setSeVolumeByWorkId( spep_1 + 70, SE035, 141 );
SE036 = playSeVer2( spep_1 + 76, 1190, "", 0, 10, 0, -1);
setStartTimeMs( SE036,  100 );
SE037 = playSeVer2( spep_1 + 74, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 74, SE037, 58 );
SE038 = playSeVer2( spep_1 + 74, 1311, "",spep_1 + 178, 0, 36, -1);
setSeVolumeByWorkId( spep_1 + 74, SE038, 141 );

-------------------------------------------------
-- カードカットイン後～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 336;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン後～フィニッシュ 敵側(ef_002)
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
setDisp( spep_2 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 176 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 120 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 120 + OFFSET_X, 1, 23.1, 11.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 23.1, 11.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 11.8, 43 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 11.8, 43 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 0.4, 32.8 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 0.4, 32.8 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 3, 64.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 3, 64.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -36.3, 82.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -36.3, 82.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -25.6, 103.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -25.6, 103.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -28.8, 76.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -28.8, 76.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -16.1, 98 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -16.1, 98 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -51.3, 103.2 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -51.3, 103.2 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -38.6, 118.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -38.6, 118.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -41.8, 103.7 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -41.8, 103.7 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -35.1, 118.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -35.1, 118.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -58.4, 124.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -58.4, 124.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -51.6, 145.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -51.6, 145.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -54.9, 118.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -54.9, 118.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -42.1, 139.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -42.1, 139.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -77.4, 145 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -77.4, 145 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -64.6, 158.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -64.6, 158.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -67.9, 147.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -67.9, 147.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -63.1, 160.7 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -63.1, 160.7 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -82.4, 165.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -82.4, 165.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -77.6, 181.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -77.6, 181.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -80.9, 166.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -80.9, 166.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -74.1, 181.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -74.1, 181.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -97.4, 186.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -97.4, 186.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -90.6, 200 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -90.6, 200 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -93.9, 189.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -93.9, 189.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -91.1, 202.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -91.1, 202.5 , 0 );

setScaleKey( spep_2 + 120 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.37, 0.37 );

setRotateKey( spep_2 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--気弾発射
SE039 = playSeVer2( spep_2 + 74, 1423, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE039, 120 );
SE040 = playSeVer2( spep_2 + 74, 1027, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 74, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE041, 130 );
SE045 = playSeVer2( spep_2 + 196, 1406, "",spep_2 + 324, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 196, SE045, 130 );

--連続爆発
SE042 = playSeVer2( spep_2 + 120, 1023, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 152, 1024, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 186, 1188, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 212, 1023, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 230, 1159, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 240, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 216 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -6); -- 終了フレーム  336f -6


end