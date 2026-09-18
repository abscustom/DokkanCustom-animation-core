--1033820:UR_超サイヤ人ゴッド孫悟空_必殺技：ドラゴンスマッシュ
--sp_effect_b1_00367
--sp3021

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164470 --開始～カードカットインまで ef_001
SP_02 = 164471 --カードカットイン→セリフカットイン～フィニッシュ ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
-- changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
-- setDisp( 0, 1, 0);

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

-- setMoveKey(   0,   1,    0, -5000,   0 );
-- setMoveKey(   1,   1,    0, -5000,   0 );
-- setMoveKey(   2,   1,    0, -5000,   0 );
-- setMoveKey(   3,   1,    0, -5000,   0 );
-- setMoveKey(   4,   1,    0, -5000,   0 );
-- setMoveKey(   5,   1,    0, -5000,   0 );
-- setMoveKey(   6,   1,    0, -5000,   0 );
-- setScaleKey(  0,   1,  1.6, 1.6 );
-- setScaleKey(  1,   1,  1.6, 1.6 );
-- setScaleKey(  2,   1,  1.6, 1.6 );
-- setScaleKey(  3,   1,  1.6, 1.6 );
-- setScaleKey(  4,   1,  1.6, 1.6 );
-- setScaleKey(  5,   1,  1.6, 1.6 );
-- setScaleKey(  6,   1,  1.6, 1.6 );
-- setRotateKey( 0,   1,  0 );
-- setRotateKey( 1,   1,  0 );
-- setRotateKey( 2,   1,  0 );
-- setRotateKey( 3,   1,  0 );
-- setRotateKey( 4,   1,  0 );
-- setRotateKey( 5,   1,  0 );
-- setRotateKey( 6,   1,  0 );

adjustAttackerLabel( 0, 205);

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 198;
        spep_2 = spep_1 + 94;
        skipFrame(0, spep_2 + 90);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 90, SP_01, spep_2 + 90, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。

    else

        setupMovie(0 , SP_01, 0, 1);
    end


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始～カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 198;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始～カードカットインまで(ef_001)
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

-- ** 敵キャラクター ** --
setDisp(spep_0 + 0, 1, 1);
setDisp(spep_0 + 200 + OFFSET_X, 1, 0);

if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
else -- スキップ時の冒頭ポーズ変化の対策
    changeAnime( spep_0 + 0, 1, 16 );
end

changeAnime( spep_0 + 56 + OFFSET_X, 1, 112 );
changeAnime( spep_0 + 96 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 104 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 112 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 0, 1, 286.1, -247.2 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 286.1, -247.2 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 286.1, -247.2 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 284.5, -245.3 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 284.5, -245.3 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 284.5, -245.3 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 284.5, -245.3 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 280.1, -240.3 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 280.1, -240.3 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 272.8, -233.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 272.8, -233.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 264, -225.2 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 264, -225.2 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 252.7, -214.2 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 252.7, -214.2 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 240.3, -201.4 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 240.3, -201.4 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 227.5, -188.8 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 227.5, -188.8 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 213.9, -174.2 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 213.9, -174.2 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 199.9, -161.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 199.9, -161.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 186.9, -148.5 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 186.9, -148.5 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 174.8, -136.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 174.8, -136.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 169.7, -129.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 169.7, -129.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 162.7, -124.9 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 162.7, -124.9 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 158.3, -120.2 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 158.3, -120.2 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 153.2, -115.6 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 153.2, -115.6 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 149.9, -112 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 149.9, -112 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 472, 107.1 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 472, 107.1 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 289.6, 33.5 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 289.6, 33.5 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 187.1, 14.3 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 187.1, 14.3 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 238.3, 57.4 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 238.3, 57.4 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 241.3, 46.2 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 241.3, 46.2 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 286, 70.1 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 286, 70.1 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 572.1, -1.9 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 572.1, -1.9 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 560.7, -43.5 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 560.7, -43.5 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 355.9, -14.6 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 355.9, -14.6 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 240.6, -6.6 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 240.6, -6.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 95.6, -127.1 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 95.6, -127.1 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 129.2, -195.9 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 129.2, -195.9 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 209.4, 66.8 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 209.4, 66.8 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 193.7, 146 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 193.7, 146 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 144, -75.7 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 144, -75.7 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 147.3, -56.6 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 147.3, -56.6 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 156.9, -40.3 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 156.9, -40.3 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 160.9, -31.6 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 160.9, -31.6 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 165, -22.8 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 165, -22.8 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 169.2, -14.1 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 169.2, -14.1 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 173.3, -5.4 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 173.3, -5.4 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 177.3, 3.4 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 177.3, 3.4 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 177.4, 3.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 177.4, 3.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 177.3, 3.4 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 177.3, 3.4 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 177.2, 3.4 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 177.2, 3.4 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 177.1, 3.4 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 177.1, 3.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 177.1, 3.3 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 177.1, 3.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 177.1, 3.4 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 177.1, 3.4 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 177.2, 3.4 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 177.2, 3.4 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 177.1, 3.4 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 177.1, 3.4 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 177, 3.4 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 177, 3.4 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 177, 3.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 177, 3.3 , 0 );

setScaleKey( spep_0 + 0, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 10.49, 10.49 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 10.49, 10.49 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 8.92, 8.92 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 8.92, 8.92 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.31, 0.31 );

setRotateKey( spep_0 + 0, 1, 2 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 55 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 56 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 95 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, -55 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, 19 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, 19 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 155, 3, 90, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 174 );
setStartTimeMs( SE001,  983 );
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 152, 0, 87, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 157, 0, 103, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 123 );

--ズーム
SE004 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);

--敵向かってくる
SE005 = playSeVer2( spep_0 + 18, 1167, "",spep_0 + 70, 0, 21, -1);
setSeVolumeByWorkId( spep_0 + 18, SE005, 56 );
SE006 = playSeVer2( spep_0 + 28, 1117, "",spep_0 + 64, 0, 17, -1);

--受け止める
SE007 = playSeVer2( spep_0 + 52, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 58, 1006, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 58, 1012, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 58, 1047, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 86; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
--アッパー
SE011 = playSeVer2( spep_0 + 84, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 98, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE013 = playSeVer2( spep_0 + 98, 1121, "",spep_0 + 212, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 98, SE013, 67 );

--追いかける
SE014 = playSeVer2( spep_0 + 148, 1182, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 148, 1452, "",spep_0 + 213, 0, 19, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 198

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かってくる
SE018 = playSeVer2( spep_1 + 94, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 94, 63, "", 0, 0, 0, -1);

-------------------------------------------------
-- カードカットイン→セリフカットイン～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 288;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン→セリフカットイン～フィニッシュ(ef_002)
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 0;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 90 + OFFSET_X, 1, 1);
--setDisp( spep_2 + 288 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 90 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 98 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 90 + OFFSET_X, 1, -27.9, -20.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -27.9, -20.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -63.9, -20.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -63.9, -20.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -123.9, 12 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -123.9, 12 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -127.9, 14 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -127.9, 14 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -136.9, 9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -136.9, 9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -121.9, 22 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -121.9, 22 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -104.9, -1.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -104.9, -1.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -112.9, 17.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -112.9, 17.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -54.7, 87.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -54.7, 87.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -64.4, 98 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -64.4, 98 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -61.2, 95.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -61.2, 95.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 0, 0.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 0, 0.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -0.7, -0.1 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -0.7, -0.1 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 0.3, 0.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 0.3, 0.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 0.4, 0.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 0.4, 0.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 0.4, 0.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 0.4, 0.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 0.5, 0.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 0.5, 0.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 0.5, 0.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 0.5, 0.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 9.3, -11.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 9.3, -11.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -5.9, 2.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -5.9, 2.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 7.6, 1.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 7.6, 1.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 4, -9.6 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 4, -9.6 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 3.8, -17.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 3.8, -17.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 6.6, -6.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 6.6, -6.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -1, -2.1 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -1, -2.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -1.9, -17.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -1.9, -17.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 0, -1.9 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 0, -1.9 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 8, -9.7 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 8, -9.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 8.5, -9.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 8.5, -9.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 0.5, 0.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 0.5, 0.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 3.8, 1.9 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 3.8, 1.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 4.5, 2.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 4.5, 2.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 7.9, -5.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 7.9, -5.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -4, -5.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -4, -5.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -1.8, -1.6 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -1.8, -1.6 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -1.9, -15.7 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -1.9, -15.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -2.4, -16 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -2.4, -16 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 1.8, -11.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 1.8, -11.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -2.1, -16.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -2.1, -16.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 6, 1.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 6, 1.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 8, -9.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 8, -9.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 0, -17.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 0, -17.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 0, -18 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 0, -18 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 0.1, -9.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 0.1, -9.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -0.2, -20.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -0.2, -20.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 10, -16.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 10, -16.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 0.1, -11.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 0.1, -11.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -1.3, -7.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -1.3, -7.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 2, -11.7 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 2, -11.7 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -1.1, -11.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -1.1, -11.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 6.8, -11.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 6.8, -11.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -1.3, -10.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -1.3, -10.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -1.5, -10.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -1.5, -10.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 8.2, -10.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 8.2, -10.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 7.8, -10.1 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 7.8, -10.1 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 0.9, -7.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 0.9, -7.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -3.9, -12.9 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -3.9, -12.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 3.8, -15.7 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 3.8, -15.7 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 1, -15.9 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 1, -15.9 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 0.9, -16.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 0.9, -16.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -1.4, -7.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -1.4, -7.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 4.1, -10.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 4.1, -10.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 3.7, -10.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 3.7, -10.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 3.8, -9.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 3.8, -9.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 3.8, -9.7 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 3.8, -9.7 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 3.7, -10 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 3.7, -10 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 3.9, -9.8 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 3.9, -9.8 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 4, -9.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 4, -9.7 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 4, -10 , 0 );

setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.38, 0.38 );

setRotateKey( spep_2 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 29 );

-- ** 音 ** --
--向かってくる
SE020 = playSeVer2( spep_2 + 4, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE020, 43 );

--振りかぶる
SE021 = playSeVer2( spep_2 + 52, 1426, "",spep_2 + 104, 6, 20, -1);
setSeVolumeByWorkId( spep_2 + 52, SE021, 79 );
SE022 = playSeVer2( spep_2 + 58, 1142, "", 0, 0, 0, -1);

--パンチヒット
SE023 = playSeVer2( spep_2 + 78, 1427, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 88, 1049, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 92, 1187, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 96, 1120, "", 0, 0, 0, -1);

--地面から煙立つ
SE027 = playSeVer2( spep_2 + 160, 1188, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 160, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 160, SE028, 62 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 168); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 288F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;
setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 開始～カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 198;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始～カードカットインまで(ef_001)
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

-- ** 敵キャラクター ** --
setDisp(spep_0 + 0, 1, 1);
setDisp(spep_0 + 200 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 0, 1, 116  );
changeAnime( spep_0 + 56 + OFFSET_X, 1,12 );
changeAnime( spep_0 + 96 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 104 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 112 + OFFSET_X, 1,5 );

setMoveKey( spep_0 + 0, 1, -286.1, -247.2 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -286.1, -247.2 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -286.1, -247.2 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -284.5, -245.3 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -284.5, -245.3 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -284.5, -245.3 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -284.5, -245.3 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -280.1, -240.3 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -280.1, -240.3 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -272.8, -233.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -272.8, -233.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -264, -225.2 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -264, -225.2 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -252.7, -214.2 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -252.7, -214.2 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -240.3, -201.4 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -240.3, -201.4 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -227.5, -188.8 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -227.5, -188.8 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -213.9, -174.2 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -213.9, -174.2 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -199.9, -161.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -199.9, -161.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -186.9, -148.5 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -186.9, -148.5 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -174.8, -136.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -174.8, -136.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -169.7, -129.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -169.7, -129.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -162.7, -124.9 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -162.7, -124.9 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -158.3, -120.2 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -158.3, -120.2 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -153.2, -115.6 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -153.2, -115.6 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -149.9, -112 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -149.9, -112 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -472, 107.1 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -472, 107.1 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -289.6, 33.5 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -289.6, 33.5 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -187.1, 14.3 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -187.1, 14.3 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -238.3, 57.4 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -238.3, 57.4 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -241.3, 46.2 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -241.3, 46.2 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -286, 70.1 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -286, 70.1 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -572.1, -1.9 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -572.1, -1.9 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -560.7, -43.5 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -560.7, -43.5 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -355.9, -14.6 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -355.9, -14.6 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -240.6, -6.6 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -240.6, -6.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -95.6, -127.1 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -95.6, -127.1 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -129.2, -195.9 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -129.2, -195.9 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -209.4, 66.8 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -209.4, 66.8 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -193.7, 146 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -193.7, 146 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -144, -75.7 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -144, -75.7 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -147.3, -56.6 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -147.3, -56.6 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -156.9, -40.3 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -156.9, -40.3 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -160.9, -31.6 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -160.9, -31.6 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -165, -22.8 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -165, -22.8 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -169.2, -14.1 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -169.2, -14.1 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -173.3, -5.4 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -173.3, -5.4 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -177.3, 3.4 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -177.3, 3.4 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -177.4, 3.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -177.4, 3.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -177.3, 3.4 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -177.3, 3.4 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -177.2, 3.4 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -177.2, 3.4 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -177.1, 3.4 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -177.1, 3.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -177.1, 3.3 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -177.1, 3.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -177.1, 3.4 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -177.1, 3.4 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -177.2, 3.4 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -177.2, 3.4 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -177.1, 3.4 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -177.1, 3.4 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -177, 3.4 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -177, 3.4 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -177, 3.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -177, 3.3 , 0 );

setScaleKey( spep_0 + 0, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 10.49, 10.49 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 10.49, 10.49 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 8.92, 8.92 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 8.92, 8.92 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.31, 0.31 );

setRotateKey( spep_0 + 0, 1, -2 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 55 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 56 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 95 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, -16.6 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, -16.6 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -17.7 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -17.7 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -18.5 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -18.5 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -19 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -19 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 155, 3, 90, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 174 );
setStartTimeMs( SE001,  983 );
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 152, 0, 87, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 157, 0, 103, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 123 );

--ズーム
SE004 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);

--敵向かってくる
SE005 = playSeVer2( spep_0 + 18, 1167, "",spep_0 + 70, 0, 21, -1);
setSeVolumeByWorkId( spep_0 + 18, SE005, 56 );
SE006 = playSeVer2( spep_0 + 28, 1117, "",spep_0 + 64, 0, 17, -1);

--受け止める
SE007 = playSeVer2( spep_0 + 52, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 58, 1006, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 58, 1012, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 58, 1047, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 86; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
--アッパー
SE011 = playSeVer2( spep_0 + 84, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 98, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE013 = playSeVer2( spep_0 + 98, 1121, "",spep_0 + 212, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 98, SE013, 67 );

--追いかける
SE014 = playSeVer2( spep_0 + 148, 1182, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 148, 1452, "",spep_0 + 213, 0, 19, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 198

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--向かってくる
SE018 = playSeVer2( spep_1 + 94, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 94, 63, "", 0, 0, 0, -1);

-------------------------------------------------
-- カードカットイン→セリフカットイン～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 288;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン→セリフカットイン～フィニッシュ(ef_002)
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

-----------------------------
-- 顔カットイン
-----------------------------
-- spep_x = spep_2 + 0;

-- -- ** 顔カットイン ** --
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- --顔カットイン
-- SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 90 + OFFSET_X, 1, 1);
--setDisp( spep_2 + 288 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 90 + OFFSET_X, 1, 106  );
changeAnime( spep_2 + 98 + OFFSET_X, 1, 108  );

setMoveKey( spep_2 + 90 + OFFSET_X, 1, 27.9, -20.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 27.9, -20.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 63.9, -20.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 63.9, -20.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 123.9, 12 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 123.9, 12 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 127.9, 14 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 127.9, 14 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 136.9, 9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 136.9, 9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 121.9, 22 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 121.9, 22 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 104.9, -1.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 104.9, -1.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 112.9, 17.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 112.9, 17.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 54.7, 87.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 54.7, 87.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 64.4, 98 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 64.4, 98 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 61.2, 95.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 61.2, 95.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 0, 0.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 0, 0.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 0.7, -0.1 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 0.7, -0.1 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -0.3, 0.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -0.3, 0.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -0.4, 0.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -0.4, 0.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -0.4, 0.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -0.4, 0.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -0.5, 0.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -0.5, 0.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -0.5, 0.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -0.5, 0.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -9.3, -11.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -9.3, -11.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 5.9, 2.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 5.9, 2.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -7.6, 1.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -7.6, 1.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -4, -9.6 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -4, -9.6 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -3.8, -17.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -3.8, -17.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -6.6, -6.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -6.6, -6.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 1, -2.1 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 1, -2.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 1.9, -17.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 1.9, -17.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 0, -1.9 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 0, -1.9 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -8, -9.7 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -8, -9.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -8.5, -9.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -8.5, -9.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -0.5, 0.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -0.5, 0.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -3.8, 1.9 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -3.8, 1.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -4.5, 2.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -4.5, 2.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -7.9, -5.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -7.9, -5.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 4, -5.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 4, -5.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 1.8, -1.6 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 1.8, -1.6 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 1.9, -15.7 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 1.9, -15.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 2.4, -16 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 2.4, -16 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -1.8, -11.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -1.8, -11.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 2.1, -16.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 2.1, -16.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -6, 1.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -6, 1.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -8, -9.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -8, -9.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 0, -17.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 0, -17.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 0, -18 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 0, -18 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -0.1, -9.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -0.1, -9.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 0.2, -20.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 0.2, -20.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -10, -16.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -10, -16.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -0.1, -11.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -0.1, -11.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 1.3, -7.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 1.3, -7.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -2, -11.7 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -2, -11.7 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 1.1, -11.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 1.1, -11.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -6.8, -11.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -6.8, -11.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 1.3, -10.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 1.3, -10.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 1.5, -10.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 1.5, -10.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -8.2, -10.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -8.2, -10.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -7.8, -10.1 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -7.8, -10.1 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -0.9, -7.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -0.9, -7.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 3.9, -12.9 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 3.9, -12.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -3.8, -15.7 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -3.8, -15.7 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -1, -15.9 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -1, -15.9 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -0.9, -16.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -0.9, -16.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 1.4, -7.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 1.4, -7.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -4.1, -10.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -4.1, -10.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -3.7, -10.1 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -3.7, -10.1 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -3.8, -9.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -3.8, -9.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -3.8, -9.7 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -3.8, -9.7 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -3.7, -10 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -3.7, -10 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -3.9, -9.8 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -3.9, -9.8 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -4, -9.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -4, -9.7 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -4, -10 , 0 );

setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.38, 0.38 );

setRotateKey( spep_2 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -29 );

-- ** 音 ** --
--向かってくる
SE020 = playSeVer2( spep_2 + 4, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE020, 43 );

--振りかぶる
SE021 = playSeVer2( spep_2 + 52, 1426, "",spep_2 + 104, 6, 20, -1);
setSeVolumeByWorkId( spep_2 + 52, SE021, 79 );
SE022 = playSeVer2( spep_2 + 58, 1142, "", 0, 0, 0, -1);

--パンチヒット
SE023 = playSeVer2( spep_2 + 78, 1427, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 88, 1049, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 92, 1187, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 96, 1120, "", 0, 0, 0, -1);

--地面から煙立つ
SE027 = playSeVer2( spep_2 + 160, 1188, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 160, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 160, SE028, 62 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 168); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 288F

end