--1032770:LR_孫悟空_必殺技：メテオスマッシュ
--sp_effect_b1_00363
--sp2972

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164403; --セリフ〜攻撃を避ける ef_001
SP_02  = 164404; --キック〜肘打ち〜敵地面に叩きつけられる ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 +  232;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 240);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 240, SP_01, spep_2 + 240 + 2-1, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
        --敵落ちる
        SE023 = playSeVer2( spep_2 + 240 + 3, 1121, "",spep_2 + 286, 0, 18, -1);
    else

        setupMovie(0 , SP_01, 0, 1);
    end


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- セリフ〜攻撃を避ける
-------------------------------------------------
MAX_FRAME_0 = 232;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- セリフ〜攻撃を避ける(ef_001)
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
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_0 + 118 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 164 + OFFSET_X, 1, 0 );

changeAnimeAndStop( spep_0 + 118 + OFFSET_X, 1, 111 ,1);
changeAnime( spep_0 + 122 + OFFSET_X, 1, 118 );
changeAnimeAndStop( spep_0 + 132 + OFFSET_X, 1, 111 ,8);

setMoveKey( spep_0 + 118 + OFFSET_X, 1, 474.1, 378.3 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 474.1, 378.3 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 424.2, 337.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 424.2, 337.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 380.2, 301.7 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 380.2, 301.7 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 334.6, 266.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 334.6, 266.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 292.5, 234.7 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 292.5, 234.7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 253.1, 204.5 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 253.1, 204.5 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 215.6, 175.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 215.6, 175.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 173.8, 71.8 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 173.8, 71.8 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 148.6, 50.7 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 148.6, 50.7 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 123.8, 30 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 123.8, 30 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 99.9, 9.9 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 99.9, 9.9 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 77.3, -9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 77.3, -9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 56.4, -26.6 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 56.4, -26.6 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 37.3, -42.5 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 37.3, -42.5 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 20.4, -56.7 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 20.4, -56.7 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 5.7, -69.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 5.7, -69.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -6.9, -79.7 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -6.9, -79.7 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -17.5, -88.5 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -17.5, -88.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -26, -95.7 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -26, -95.7 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -32.8, -101.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -32.8, -101.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -37.8, -105.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -37.8, -105.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -41.3, -108.5 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -41.3, -108.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -43.1, -110 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -43.1, -110 , 0 );

setScaleKey( spep_0 + 118 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.6, 1.6 );

setRotateKey( spep_0 + 118 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, -29.4 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, -29.4 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, -27 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, -27 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, -33 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -33 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 246, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
--顔カットイン
--SE003 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
--敵向かってくる
SE004 = playSeVer2( spep_0 + 102, 1167, "",spep_0 + 156, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 102, SE004, 40 );
--悟空避ける
SE005 = playSeVer2( spep_0 + 124, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 130, 1109, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 130, 1499, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE007, 74 );
--翻る
SE008 = playSeVer2( spep_0 + 182, 1119, "",spep_0 + 242, 10, 10, -1);
setStartTimeMs( SE008, 533 );
SE009 = playSeVer2( spep_0 + 160, 1117, "",spep_0 + 242, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 160, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE010, 71 );
SE011 = playSeVer2( spep_0 + 178, 1151, "", 0, 0, 0, -1);
--カードカットイン
--SE012 = playSeVer2( spep_1 + 2, 1035, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 232

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- キック〜肘打ち〜敵地面に叩きつけられる
-------------------------------------------------
MAX_FRAME_2 = 378;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- キック〜肘打ち〜敵地面に叩きつけられる(ef_002)
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
setDisp( spep_2 + 40 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 88 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 40 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 40 + OFFSET_X, 1, -85.5, 42.6 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -85.5, 42.6 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -88.8, 43.4 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -88.8, 43.4 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -90.5, 43.8 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -90.5, 43.8 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -92.3, 44.2 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -92.3, 44.2 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -99.6, 46.9 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -99.6, 46.9 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -106.9, 49.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -106.9, 49.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -114.1, 52.3 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -114.1, 52.3 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -121.4, 55 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -121.4, 55 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -128.7, 57.7 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -128.7, 57.7 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -136, 60.4 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -136, 60.4 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -143.3, 63.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -143.3, 63.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -150.6, 65.8 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -150.6, 65.8 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -157.9, 68.6 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -157.9, 68.6 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -165.2, 71.3 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -165.2, 71.3 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -172.4, 74 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -172.4, 74 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -179.7, 76.7 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -179.7, 76.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -187, 79.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -187, 79.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -194.3, 82.1 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -194.3, 82.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -201.6, 84.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -201.6, 84.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -208.9, 87.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -208.9, 87.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -216.2, 90.2 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -216.2, 90.2 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -223.5, 92.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -223.5, 92.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -230.7, 95.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -230.7, 95.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -238, 98.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -238, 98.3 , 0 );

setScaleKey( spep_2 + 40 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_2 + 40 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -23.5 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, -23.5 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -24.5 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -24.5 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -25.9 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -25.9 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -27.7 );

--敵の動き2
setDisp( spep_2 + 98 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 218 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 182 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 194 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 98 + OFFSET_X, 1, -149.6, 115.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -149.6, 115.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -149.7, 115.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -149.7, 115.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -149.7, 115.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -149.7, 115.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -149.8, 115.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -149.8, 115.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -149.9, 116.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -149.9, 116.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -149.9, 116.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -149.9, 116.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -150, 116.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -150, 116.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -150.1, 117 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -150.1, 117 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -150.2, 117.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -150.2, 117.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -150.3, 117.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -150.3, 117.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -150.3, 117.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -150.3, 117.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -150.4, 118.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -150.4, 118.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -150.5, 118.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -150.5, 118.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -150.6, 118.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -150.6, 118.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -150.7, 119.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -150.7, 119.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -150.8, 119.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -150.8, 119.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -150.8, 119.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -150.8, 119.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -150.9, 120.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -150.9, 120.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -151, 120.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -151, 120.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -151.1, 120.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -151.1, 120.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -151.2, 121.1 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -151.2, 121.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -151.2, 121.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -151.2, 121.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -151.3, 121.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -151.3, 121.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -151.4, 121.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -151.4, 121.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -151.4, 122.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -151.4, 122.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -151.5, 122.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -151.5, 122.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -151.5, 122.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -151.5, 122.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -151.6, 122.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -151.6, 122.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -151.6, 122.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -151.6, 122.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -151.7, 123 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -151.7, 123 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -151.7, 123.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -151.7, 123.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -151.8, 123.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -151.8, 123.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -151.8, 123.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -151.8, 123.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -151.8, 123.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -151.8, 123.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -151.9, 123.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -151.9, 123.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -151.9, 123.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -151.9, 123.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -151.9, 123.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -151.9, 123.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -151.9, 124 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -151.9, 124 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -152, 124.1 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -152, 124.1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -152, 124.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -152, 124.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -151.9, 124.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -151.9, 124.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -81.8, 86.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -81.8, 86.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -81.8, 94.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -81.8, 94.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -81.8, 102.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -81.8, 102.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -81.8, 110.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -81.8, 110.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -3.6, 42.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -3.6, 42.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -3.6, 42.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -3.5, -71.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -3.5, -71.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -9.5, -250.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -9.5, -250.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -15.6, -430.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -15.6, -430.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -21.7, -610.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -21.7, -610.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -27.8, -789.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -27.8, -789.7 , 0 );

setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 2.6, 2.6 );

setRotateKey( spep_2 + 98 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -58.2 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -58.2 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -64.1 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, -64.1 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -67 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -67 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -70 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -70 );

setBlendColor(  spep_2 + 202 + OFFSET_X, 1, 3, 0.913,0.89,0.917,1.0);
setBlendColor(  spep_2 + 207 + OFFSET_X, 1, 3, 0.913,0.89,0.917,1.0);
setBlendColor(  spep_2 + 208 + OFFSET_X, 1, 0, 0,0,0,0.0);

--敵の動き3
setDisp( spep_2 + 240 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 264 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 240 + OFFSET_X, 1, -5.5, 387.4 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -5.5, 387.4 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -5.5, 319.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -5.5, 319.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -5.5, 252.4 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -5.5, 252.4 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -5.5, 184.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -5.5, 184.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -5.5, 117.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -5.5, 117.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -5.5, 49.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -5.5, 49.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -5.5, -17.6 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -5.5, -17.6 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -5.5, -85.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -5.5, -85.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -5.5, -152.6 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -5.5, -152.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -5.5, -220.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -5.5, -220.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -5.5, -287.6 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -5.5, -287.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -5.5, -355.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -5.5, -355.1 , 0 );

setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 240 + OFFSET_X, 1, -120 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -120 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -120.5 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -120.5 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -120.9 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -120.9 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -121.4 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -121.4 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -121.8 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -121.8 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -122.3 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -122.3 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -122.7 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -122.7 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -123.2 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -123.2 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -123.6 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -123.6 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -124.1 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -124.1 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -124.5 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -124.5 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -125 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -125 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 20; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
--stopSe( SP_dodge - 12, SE013, 0);
--stopSe( SP_dodge - 12, SE014, 0);
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
--向かってくる
SE013 = playSeVer2( spep_2 + 0, 1183, "",spep_2 + 76, 8, 26, -1);
setStartTimeMs( SE013, 233 );
SE014 = playSeVer2( spep_2 + 2, 1452, "",spep_2 + 88, 0, 36, -1);
--キック
SE015 = playSeVer2( spep_2 + 40, 1187, "", 0, 0, 0, -1);
--追いかける
SE016 = playSeVer2( spep_2 + 90, 1182, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 90, 1304, "",spep_2 + 230, 0, 62, -1);
SE018 = playSeVer2( spep_2 + 100, 1277, "", 0, 0, 0, -1);
--気が爆発
SE019 = playSeVer2( spep_2 + 144, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 144, SE019, 77 );
SE020 = playSeVer2( spep_2 + 148, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE020, 82 );
--叩き落とす
SE021 = playSeVer2( spep_2 + 186, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 186, SE021, 200 );
SE022 = playSeVer2( spep_2 + 188, 1123, "", 0, 0, 0, -1);
--敵落ちる
SE023 = playSeVer2( spep_2 + 206, 1121, "",spep_2 + 286, 0, 18, -1);
--地面激突
SE024 = playSeVer2( spep_2 + 264, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 268); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 378-2

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;
setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- セリフ〜攻撃を避ける
-------------------------------------------------
MAX_FRAME_0 = 232;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- セリフ〜攻撃を避ける(ef_001)
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
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
-- SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_0 + 118 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 164 + OFFSET_X, 1, 0 );

changeAnimeAndStop( spep_0 + 118 + OFFSET_X, 1, 11 ,1);
changeAnime( spep_0 + 122 + OFFSET_X, 1, 18 );
changeAnimeAndStop( spep_0 + 132 + OFFSET_X, 1, 11 ,8);

setMoveKey( spep_0 + 118 + OFFSET_X, 1, -474.1, 378.3 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -474.1, 378.3 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -424.2, 337.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -424.2, 337.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -380.2, 301.7 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -380.2, 301.7 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -334.6, 266.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -334.6, 266.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -292.5, 234.7 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -292.5, 234.7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -253.1, 204.5 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -253.1, 204.5 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -215.6, 175.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -215.6, 175.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -173.8, 71.8 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -173.8, 71.8 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -148.6, 50.7 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -148.6, 50.7 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -123.8, 30 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -123.8, 30 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -99.9, 9.9 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -99.9, 9.9 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -77.3, -9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -77.3, -9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -56.4, -26.6 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -56.4, -26.6 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -37.3, -42.5 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -37.3, -42.5 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -20.4, -56.7 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -20.4, -56.7 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -5.7, -69.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -5.7, -69.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 6.9, -79.7 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 6.9, -79.7 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 17.5, -88.5 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 17.5, -88.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 26, -95.7 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 26, -95.7 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 32.8, -101.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 32.8, -101.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 37.8, -105.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 37.8, -105.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 41.3, -108.5 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 41.3, -108.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 43.1, -110 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 43.1, -110 , 0 );

setScaleKey( spep_0 + 118 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.6, 1.6 );

setRotateKey( spep_0 + 118 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, 27.9 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, 27.9 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, 27.4 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, 27.4 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, 27 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, 27 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 33 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, 33 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 246, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
--顔カットイン
--SE003 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
--敵向かってくる
SE004 = playSeVer2( spep_0 + 102, 1167, "",spep_0 + 156, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 102, SE004, 40 );
--悟空避ける
SE005 = playSeVer2( spep_0 + 124, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 130, 1109, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 130, 1499, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE007, 74 );
--翻る
SE008 = playSeVer2( spep_0 + 182, 1119, "",spep_0 + 242, 10, 10, -1);
setStartTimeMs( SE008, 533 );
SE009 = playSeVer2( spep_0 + 160, 1117, "",spep_0 + 242, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 160, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE010, 71 );
SE011 = playSeVer2( spep_0 + 178, 1151, "", 0, 0, 0, -1);
--カードカットイン
--SE012 = playSeVer2( spep_1 + 2, 1035, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 232

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- キック〜肘打ち〜敵地面に叩きつけられる
-------------------------------------------------
MAX_FRAME_2 = 378;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- キック〜肘打ち〜敵地面に叩きつけられる(ef_002)
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
setDisp( spep_2 + 40 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 88 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 40 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 40 + OFFSET_X, 1, 85.5, 42.6 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 85.5, 42.6 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 88.8, 43.4 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 88.8, 43.4 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 90.5, 43.8 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 90.5, 43.8 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 92.3, 44.2 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 92.3, 44.2 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 99.6, 46.9 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 99.6, 46.9 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 106.9, 49.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 106.9, 49.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 114.1, 52.3 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 114.1, 52.3 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 121.4, 55 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 121.4, 55 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 128.7, 57.7 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 128.7, 57.7 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 136, 60.4 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 136, 60.4 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 143.3, 63.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 143.3, 63.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 150.6, 65.8 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 150.6, 65.8 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 157.9, 68.6 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 157.9, 68.6 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 165.2, 71.3 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 165.2, 71.3 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 172.4, 74 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 172.4, 74 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 179.7, 76.7 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 179.7, 76.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 187, 79.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 187, 79.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 194.3, 82.1 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 194.3, 82.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 201.6, 84.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 201.6, 84.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 208.9, 87.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 208.9, 87.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 216.2, 90.2 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 216.2, 90.2 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 223.5, 92.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 223.5, 92.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 230.7, 95.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 230.7, 95.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 238, 98.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 238, 98.3 , 0 );

setScaleKey( spep_2 + 40 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_2 + 40 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, 23.1 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, 23.1 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, 23.8 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 23.8 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 25.6 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 25.6 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 27.7 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 27.7 );

--敵の動き2
setDisp( spep_2 + 98 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 218 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 182 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 194 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 98 + OFFSET_X, 1, 149.6, 115.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 149.6, 115.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 149.7, 115.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 149.7, 115.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 149.7, 115.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 149.7, 115.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 149.8, 115.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 149.8, 115.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 149.9, 116.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 149.9, 116.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 149.9, 116.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 149.9, 116.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 150, 116.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 150, 116.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 150.1, 117 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 150.1, 117 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 150.2, 117.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 150.2, 117.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 150.3, 117.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 150.3, 117.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 150.3, 117.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 150.3, 117.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 150.4, 118.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 150.4, 118.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 150.5, 118.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 150.5, 118.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 150.6, 118.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 150.6, 118.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 150.7, 119.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 150.7, 119.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 150.8, 119.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 150.8, 119.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 150.8, 119.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 150.8, 119.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 150.9, 120.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 150.9, 120.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 151, 120.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 151, 120.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 151.1, 120.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 151.1, 120.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 151.2, 121.1 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 151.2, 121.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 151.2, 121.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 151.2, 121.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 151.3, 121.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 151.3, 121.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 151.4, 121.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 151.4, 121.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 151.4, 122.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 151.4, 122.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 151.5, 122.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 151.5, 122.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 151.5, 122.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 151.5, 122.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 151.6, 122.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 151.6, 122.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 151.6, 122.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 151.6, 122.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 151.7, 123 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 151.7, 123 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 151.7, 123.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 151.7, 123.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 151.8, 123.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 151.8, 123.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 151.8, 123.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 151.8, 123.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 151.8, 123.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 151.8, 123.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 151.9, 123.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 151.9, 123.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 151.9, 123.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 151.9, 123.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 151.9, 123.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 151.9, 123.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 151.9, 124 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 151.9, 124 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 152, 124.1 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 152, 124.1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 152, 124.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 152, 124.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 151.9, 124.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 151.9, 124.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 81.8, 86.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 81.8, 86.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 81.8, 94.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 81.8, 94.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 81.8, 102.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 81.8, 102.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 81.8, 110.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 81.8, 110.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 3.6, 42.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 3.6, 42.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 3.6, 42.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 3.5, -71.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 3.5, -71.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 9.5, -250.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 9.5, -250.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 15.6, -430.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 15.6, -430.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 21.7, -610.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 21.7, -610.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 27.8, -789.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 27.8, -789.7 , 0 );

setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 2.6, 2.6 );

setRotateKey( spep_2 + 98 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 58.2 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 58.2 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 61.1 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 61.1 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 64.1 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 64.1 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 67 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 67 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 70 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 70 );

setBlendColor(  spep_2 + 202 + OFFSET_X, 1, 3, 0.913,0.89,0.917,1.0);
setBlendColor(  spep_2 + 207 + OFFSET_X, 1, 3, 0.913,0.89,0.917,1.0);
setBlendColor(  spep_2 + 208 + OFFSET_X, 1, 0, 0,0,0,0.0);

--敵の動き3
setDisp( spep_2 + 240 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 264 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 240 + OFFSET_X, 1, 5.5, 387.4 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 5.5, 387.4 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 5.5, 319.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 5.5, 319.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 5.5, 252.4 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 5.5, 252.4 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 5.5, 184.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 5.5, 184.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 5.5, 117.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 5.5, 117.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 5.5, 49.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 5.5, 49.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 5.5, -17.6 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 5.5, -17.6 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 5.5, -85.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 5.5, -85.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 5.5, -152.6 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 5.5, -152.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 5.5, -220.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 5.5, -220.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 5.5, -287.6 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 5.5, -287.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 5.5, -355.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 5.5, -355.1 , 0 );

setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 240 + OFFSET_X, 1, 120 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 120 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 120.5 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, 120.5 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 120.9 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 120.9 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 121.4 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 121.4 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 121.8 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 121.8 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 122.3 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 122.3 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 122.7 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 122.7 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 123.2 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 123.2 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 123.6 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 123.6 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 124.1 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 124.1 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 124.5 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 124.5 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 125 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 125 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 20; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
--stopSe( SP_dodge - 12, SE013, 0);
--stopSe( SP_dodge - 12, SE014, 0);
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
--向かってくる
SE013 = playSeVer2( spep_2 + 0, 1183, "",spep_2 + 76, 8, 26, -1);
setStartTimeMs( SE013, 233 );
SE014 = playSeVer2( spep_2 + 2, 1452, "",spep_2 + 88, 0, 36, -1);
--キック
SE015 = playSeVer2( spep_2 + 40, 1187, "", 0, 0, 0, -1);
--追いかける
SE016 = playSeVer2( spep_2 + 90, 1182, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 90, 1304, "",spep_2 + 230, 0, 62, -1);
SE018 = playSeVer2( spep_2 + 100, 1277, "", 0, 0, 0, -1);
--気が爆発
SE019 = playSeVer2( spep_2 + 144, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 144, SE019, 77 );
SE020 = playSeVer2( spep_2 + 148, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE020, 82 );
--叩き落とす
SE021 = playSeVer2( spep_2 + 186, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 186, SE021, 200 );
SE022 = playSeVer2( spep_2 + 188, 1123, "", 0, 0, 0, -1);
--敵落ちる
SE023 = playSeVer2( spep_2 + 206, 1121, "",spep_2 + 286, 0, 18, -1);
--地面激突
SE024 = playSeVer2( spep_2 + 264, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 268); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 378-2

end