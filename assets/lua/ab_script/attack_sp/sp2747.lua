-- 4029410: LR_伝説の超サイヤ人ブロリー_必殺技：メテオクラッシュ
-- sp_effect_a2_00242
-- sp2747

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163105;  -- 開幕～カットイン前まで ef_001
SP_002 = 163107;  -- 横向き突進～フィニッシュ　（敵の前） ef_002
SP_002b = 163108;  -- 横向き突進～フィニッシュ（敵の奥） ef_002b

-- 敵側
SP_001r = 163106;  -- 開幕～カットイン前まで　敵側 ef_001r
SP_002r = 163109;  -- 横向き突進～フィニッシュ敵側（敵の前） ef_002r
SP_002br = 163110;  -- 横向き突進～フィニッシュ敵側（敵の奥） ef_002br

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

adjustAttackerLabel( 0, 205);

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_2 = 92 + 96;---記載するspepの数に要注意

        skipFrame(0, spep_2 + 672);  -- スキップ先フレーム指定

        --ビル爆発
        SE054 = playSeVer2( spep_2 + 672 + 3, 1061, "", 0, 0, 0, -1);
        SE055 = playSeVer2( spep_2 + 672 +3, 1159, "", 0, 0, 0, -1);

    else
    end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕～カットイン前まで ef_001
------------------------------------------------------
MAX_FRAME_0 = 92;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );  -- 開幕～カットイン前まで ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 68, 1036, "", 0, 0, 0, -1);

--腕上げる
SE003 = playSeVer2( spep_0 + 14, 1004, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 92

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--オーラ
SE008 = playSeVer2( spep_1 + 88, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE008, 79 );

--構える
SE009 = playSeVer2( spep_1 + 92, 1232, "", 0, 0, 0, -1);

------------------------------------------------------
-- 横向き突進～フィニッシュ　（敵の前） ef_002
------------------------------------------------------
MAX_FRAME_2 = 942;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 横向き突進～フィニッシュ　（敵の前） ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 横向き突進～フィニッシュ（敵の奥） ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 112 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 100 );

setMoveKey( spep_2 + 0, 1, 294.2, 115.3 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 361.1, 128.4 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 361.1, 128.4 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 428.2, 141.5 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 428.2, 141.5 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 495.2, 154.6 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 495.2, 154.6 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 562.2, 167.7 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 562.2, 167.7 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 629.3, 180.8 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 629.3, 180.8 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 696.3, 193.9 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 696.3, 193.9 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 763.3, 207 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 763.3, 207 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 830.3, 220.1 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 830.3, 220.1 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 897.3, 233.2 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 897.3, 233.2 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 892.5, 229.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 892.5, 229.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 887.6, 226.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 887.6, 226.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 882.7, 223.1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 882.7, 223.1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 877.8, 219.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 877.8, 219.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 872.9, 216.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 872.9, 216.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 816.5, 208 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 816.5, 208 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 760, 194.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 760, 194.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 703.6, 181 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 703.6, 181 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 647.2, 167.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 647.2, 167.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 590.8, 154.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 590.8, 154.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 534.4, 140.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 534.4, 140.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 478, 127.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 478, 127.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 421.6, 113.6 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 421.6, 113.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 365.1, 100.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 365.1, 100.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 308.7, 86.7 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 308.7, 86.7 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 252.3, 73.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 252.3, 73.2 , 0 );

setScaleKey( spep_2 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.47, 0.47 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_2 + 152 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 212 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 152 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 168 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 152 + OFFSET_X, 1, 194.1, 5.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 194.1, 5.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 174.6, -3.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 174.6, -3.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 154.6, -12.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 154.6, -12.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 134.1, -22.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 134.1, -22.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 113, -32.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 113, -32.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 91.5, -42.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 91.5, -42.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 81.1, -46.5 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 81.1, -46.5 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 70.7, -50.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 70.7, -50.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -5, 130.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -5, 130.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -79.6, 164.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -79.6, 164.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -69.9, 265.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -69.9, 265.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 123.4, 238 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 123.4, 238 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 135.9, 95.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 135.9, 95.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 19.7, 57.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 19.7, 57.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 26.9, 161 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 26.9, 161 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 217.5, 136.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 217.5, 136.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 227.3, -2.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 227.3, -2.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 212.5, 33.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 212.5, 33.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 246.3, 11.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 246.3, 11.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 239.3, -1.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 239.3, -1.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 261.9, -35.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 261.9, -35.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 275, -56.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 275, -56.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 285.9, -74.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 285.9, -74.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 294.7, -88.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 294.7, -88.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 301.4, -99.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 301.4, -99.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 306, -107.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 306, -107.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 308.8, -112.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 308.8, -112.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 309.6, -114.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 309.6, -114.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 308.7, -114 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 308.7, -114 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 306.3, -110.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 306.3, -110.8 , 0 );

sc_tmp = 0.4;

setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.6 + sc_tmp, 0.6 + sc_tmp );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.6 + sc_tmp, 0.6 + sc_tmp );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.12 + sc_tmp, 1.12 + sc_tmp );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.12 + sc_tmp, 1.12 + sc_tmp );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.65 + sc_tmp, 1.65 + sc_tmp );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.65 + sc_tmp, 1.65 + sc_tmp );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.21 + sc_tmp, 2.21 + sc_tmp );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.21 + sc_tmp, 2.21 + sc_tmp );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.79 + sc_tmp, 2.79 + sc_tmp );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.79 + sc_tmp, 2.79 + sc_tmp );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 3.4 + sc_tmp, 3.4 + sc_tmp );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 3.4 + sc_tmp, 3.4 + sc_tmp );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 3.47 + sc_tmp, 3.47 + sc_tmp );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 3.47 + sc_tmp, 3.47 + sc_tmp );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 3.54 + sc_tmp, 3.54 + sc_tmp );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 3.54 + sc_tmp, 3.54 + sc_tmp );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 4.85 + sc_tmp, 4.85 + sc_tmp );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 4.85 + sc_tmp, 4.85 + sc_tmp );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 4.6 + sc_tmp, 4.6 + sc_tmp );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 4.6 + sc_tmp, 4.6 + sc_tmp );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 4.31 + sc_tmp, 4.31 + sc_tmp );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 4.31 + sc_tmp, 4.31 + sc_tmp );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 4.03 + sc_tmp, 4.03 + sc_tmp );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 4.03 + sc_tmp, 4.03 + sc_tmp );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 3.76 + sc_tmp, 3.76 + sc_tmp );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 3.76 + sc_tmp, 3.76 + sc_tmp );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 3.49 + sc_tmp, 3.49 + sc_tmp );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 3.49 + sc_tmp, 3.49 + sc_tmp );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 3.23 + sc_tmp, 3.23 + sc_tmp );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 3.23 + sc_tmp, 3.23 + sc_tmp );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.98 + sc_tmp, 2.98 + sc_tmp );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 2.98 + sc_tmp, 2.98 + sc_tmp );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 2.73 + sc_tmp, 2.73 + sc_tmp );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2.73 + sc_tmp, 2.73 + sc_tmp );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.48 + sc_tmp, 2.48 + sc_tmp );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.48 + sc_tmp, 2.48 + sc_tmp );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.07 + sc_tmp, 2.07 + sc_tmp );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 2.07 + sc_tmp, 2.07 + sc_tmp );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.7 + sc_tmp, 1.7 + sc_tmp );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 1.7 + sc_tmp, 1.7 + sc_tmp );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.37 + 0.2, 1.37 + 0.2 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.37 + 0.2, 1.37 + 0.2 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.08 + 0.15, 1.08 + 0.15 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.08 + 0.15, 1.08 + 0.15 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 0.83 + 0.1, 0.83 + 0.1 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.83 + 0.1, 0.83 + 0.1 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.62 + 0.05, 0.62 + 0.05 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.62 + 0.05, 0.62 + 0.05 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.45 , 0.45 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.45 , 0.45 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.31 , 0.31 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.31 , 0.31 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.2 , 0.2 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.2 , 0.2 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.13 , 0.13 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.13 , 0.13 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.08 , 0.08 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 0.08 , 0.08 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.07 , 0.07 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.07 , 0.07 );

setRotateKey( spep_2 + 152 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 78.2 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 78.2 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 80.6 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 80.6 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 82.9 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 82.9 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 85.3 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 85.3 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 87.7 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 87.7 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 90.1 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 90.1 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 92.4 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 92.4 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 94.8 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 94.8 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 97.2 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 97.2 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 99.5 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 99.5 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 102.1 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 102.1 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 104.4 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 104.4 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 106.6 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 106.6 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 108.4 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 108.4 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 110.1 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 110.1 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 111.6 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 111.6 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 112.8 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 112.8 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 113.8 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 113.8 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 114.6 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 114.6 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 115.1 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 115.1 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 115.5 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 115.5 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 115.6 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 115.6 );

-- 敵の動き3
setDisp( spep_2 + 226 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 356 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 226 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 296 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 312 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 226 + OFFSET_X, 1, -48.8, 212.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -48.8, 212.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -59.5, 194.8 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -59.5, 194.8 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -70.2, 177.4 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -70.2, 177.4 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -80.7, 160.3 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -80.7, 160.3 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -91.2, 143.2 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -91.2, 143.2 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -101.7, 126.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -101.7, 126.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -112, 109.4 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -112, 109.4 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -122.3, 92.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -122.3, 92.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -132.5, 76.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -132.5, 76.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -142.6, 59.7 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -142.6, 59.7 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -140.8, 30.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -140.8, 30.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -178.3, 37 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -178.3, 37 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -160.1, 25.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -160.1, 25.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -187.2, -23.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -187.2, -23.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -192.1, -20.7 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -192.1, -20.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -201.7, -36.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -201.7, -36.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -211.3, -52 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -211.3, -52 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -220.9, -67.4 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -220.9, -67.4 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -233.7, -92.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -233.7, -92.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -246.5, -117.3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -246.5, -117.3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -259.2, -142 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -259.2, -142 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -271.9, -166.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -271.9, -166.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -284.5, -191 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -284.5, -191 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -297.1, -215.4 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -297.1, -215.4 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -309.5, -239.6 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -309.5, -239.6 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -321.9, -263.6 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -321.9, -263.6 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -334.3, -287.6 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -334.3, -287.6 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -346.5, -311.4 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -346.5, -311.4 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -358.7, -335.1 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -358.7, -335.1 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -370.9, -358.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -370.9, -358.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -383, -382 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -383, -382 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -395, -405.3 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -395, -405.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -406.9, -428.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -406.9, -428.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -418.8, -451.5 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -418.8, -451.5 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -430.9, -474.6 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -430.9, -474.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 98, -133 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 98, -133 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 28.3, 6.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 28.3, 6.2 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 17, -16.6 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 17, -16.6 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -18.9, -14.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -18.9, -14.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 26.9, 40.5 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 26.9, 40.5 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -45.8, 52.9 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -45.8, 52.9 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -1.6, 22.9 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -1.6, 22.9 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -21.2, 53.9 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -21.2, 53.9 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -28.9, 67.9 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -28.9, 67.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -36.6, 81.9 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -36.6, 81.9 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -44.3, 95.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -44.3, 95.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -52, 109.9 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -52, 109.9 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -59.7, 123.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -59.7, 123.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -67.4, 137.8 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -67.4, 137.8 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -7.2, 182.2 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -7.2, 182.2 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 37.7, 205.4 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 37.7, 205.4 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 82.5, 228.6 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 82.5, 228.6 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 127.4, 251.7 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 127.4, 251.7 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 172.3, 274.9 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 172.3, 274.9 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 325.7, 307.3 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 325.7, 307.3 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 479.1, 339.8 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 479.1, 339.8 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 632.5, 372.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 632.5, 372.2 , 0 );

sc_tmp2 = 0.7;

setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.09 + sc_tmp2, 0.09 + sc_tmp2 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.09 + sc_tmp2, 0.09 + sc_tmp2 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.14 + sc_tmp2, 0.14 + sc_tmp2 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.14 + sc_tmp2, 0.14 + sc_tmp2 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.19 + sc_tmp2, 0.19 + sc_tmp2 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.19 + sc_tmp2, 0.19 + sc_tmp2 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.25 + sc_tmp2, 0.25 + sc_tmp2 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.25 + sc_tmp2, 0.25 + sc_tmp2 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.3 + sc_tmp2, 0.3 + sc_tmp2 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.3 + sc_tmp2, 0.3 + sc_tmp2 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.35 + sc_tmp2, 0.35 + sc_tmp2 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.35 + sc_tmp2, 0.35 + sc_tmp2 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.4 + sc_tmp2, 0.4 + sc_tmp2 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.4 + sc_tmp2, 0.4 + sc_tmp2 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.45 + sc_tmp2, 0.45 + sc_tmp2 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.45 + sc_tmp2, 0.45 + sc_tmp2 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.5 + sc_tmp2, 0.5 + sc_tmp2 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.5 + sc_tmp2, 0.5 + sc_tmp2 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.55 + sc_tmp2, 0.55 + sc_tmp2 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.55 + sc_tmp2, 0.55 + sc_tmp2 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.6 + sc_tmp2, 0.6 + sc_tmp2 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.6 + sc_tmp2, 0.6 + sc_tmp2 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.65 + sc_tmp2, 0.65 + sc_tmp2 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.65 + sc_tmp2, 0.65 + sc_tmp2 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.7 + sc_tmp2, 0.7 + sc_tmp2 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.7 + sc_tmp2, 0.7 + sc_tmp2 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.75 + sc_tmp2, 0.75 + sc_tmp2 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.75 + sc_tmp2, 0.75 + sc_tmp2 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.79 + sc_tmp2, 0.79 + sc_tmp2 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.79 + sc_tmp2, 0.79 + sc_tmp2 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.84 + sc_tmp2, 0.84 + sc_tmp2 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.84 + sc_tmp2, 0.84 + sc_tmp2 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.89 + sc_tmp2, 0.89 + sc_tmp2 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.89 + sc_tmp2, 0.89 + sc_tmp2 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.94 + sc_tmp2, 0.94 + sc_tmp2 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.94 + sc_tmp2, 0.94 + sc_tmp2 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.97 + sc_tmp2, 0.97 + sc_tmp2 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.97 + sc_tmp2, 0.97 + sc_tmp2 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1 + sc_tmp2, 1 + sc_tmp2 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1 + sc_tmp2, 1 + sc_tmp2 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.03 + sc_tmp2, 1.03 + sc_tmp2 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1.03 + sc_tmp2, 1.03 + sc_tmp2 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 1.06 + sc_tmp2, 1.06 + sc_tmp2 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 1.06 + sc_tmp2, 1.06 + sc_tmp2 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 1.09 + sc_tmp2, 1.09 + sc_tmp2 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 1.09 + sc_tmp2, 1.09 + sc_tmp2 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 1.12 + sc_tmp2, 1.12 + sc_tmp2 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 1.12 + sc_tmp2, 1.12 + sc_tmp2 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 1.14 + sc_tmp2, 1.14 + sc_tmp2 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 1.14 + sc_tmp2, 1.14 + sc_tmp2 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 1.17 + sc_tmp2, 1.17 + sc_tmp2 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 1.17 + sc_tmp2, 1.17 + sc_tmp2 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.2 + sc_tmp2, 1.2 + sc_tmp2 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.2 + sc_tmp2, 1.2 + sc_tmp2 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.23 + sc_tmp2, 1.23 + sc_tmp2 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 1.23 + sc_tmp2, 1.23 + sc_tmp2 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.26 + sc_tmp2, 1.26 + sc_tmp2 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.26 + sc_tmp2, 1.26 + sc_tmp2 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.29 + sc_tmp2, 1.29 + sc_tmp2 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 1.29 + sc_tmp2, 1.29 + sc_tmp2 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.32 + sc_tmp2, 1.32 + sc_tmp2 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 1.32 + sc_tmp2, 1.32 + sc_tmp2 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.34 + sc_tmp2, 1.34 + sc_tmp2 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.34 + sc_tmp2, 1.34 + sc_tmp2 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.37 + sc_tmp2, 1.37 + sc_tmp2 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.37 + sc_tmp2, 1.37 + sc_tmp2 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.4 + sc_tmp2, 1.4 + sc_tmp2 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.4 + sc_tmp2, 1.4 + sc_tmp2 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.43 + sc_tmp2, 1.43 + sc_tmp2 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.43 + sc_tmp2, 1.43 + sc_tmp2 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 6.38, 6.38 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 6.38, 6.38 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 5.84, 5.84 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 5.84, 5.84 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 3.42, 3.42 );

setRotateKey( spep_2 + 226 + OFFSET_X, 1, -53.1 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -53.1 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -53.4 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -53.4 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -56.8 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -56.8 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -60.3 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -60.3 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -67.2 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -67.2 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -70.7 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -70.7 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -74.1 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -74.1 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -81.1 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -81.1 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -84.5 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -84.5 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -88 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -88 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -93 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -93 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -98 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -98 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -103 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -103 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -108 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -108 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -113 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -113 );

-- 敵の動き4
setDisp( spep_2 + 386 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 424 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 386 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 386 + OFFSET_X, 1, 131, 80.3 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 131, 80.3 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 52.2, 223.9 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 52.2, 223.9 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 190.3, 152.4 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 190.3, 152.4 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 144.8, 9.8 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 144.8, 9.8 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 78.2, 63.6 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 78.2, 63.6 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 1.8, 109.3 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 1.8, 109.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 40.4, 97.8 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 40.4, 97.8 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -22.5, 38.6 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -22.5, 38.6 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 7.9, 88.6 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 7.9, 88.6 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -76.4, 69.9 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -76.4, 69.9 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -15.9, 30 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -15.9, 30 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -31.4, 66.7 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -31.4, 66.7 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -39.2, 8.9 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -39.2, 8.9 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -94.9, 75 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -94.9, 75 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -42.5, 14.8 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -42.5, 14.8 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -115, -11.6 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -115, -11.6 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -55, 80.7 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -55, 80.7 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -107.8, -3.8 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -107.8, -3.8 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -96.2, 46 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -96.2, 46 , 0 );

setScaleKey( spep_2 + 386 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 0.71, 0.71 );

setRotateKey( spep_2 + 386 + OFFSET_X, 1, -128 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, -128 );

-- 敵の動き5
setDisp( spep_2 + 712 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 816 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 712 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 742 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 754 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 712 + OFFSET_X, 1, 50.3, 48.1 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, 50.3, 48.1 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, 60.1, 83.7 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, 60.1, 83.7 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, 69.6, 124.6 , 0 );
setMoveKey( spep_2 + 717 + OFFSET_X, 1, 69.6, 124.6 , 0 );
setMoveKey( spep_2 + 718 + OFFSET_X, 1, 85.1, 151.5 , 0 );
setMoveKey( spep_2 + 719 + OFFSET_X, 1, 85.1, 151.5 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, 94.8, 184.8 , 0 );
setMoveKey( spep_2 + 721 + OFFSET_X, 1, 94.8, 184.8 , 0 );
setMoveKey( spep_2 + 722 + OFFSET_X, 1, 101, 209 , 0 );
setMoveKey( spep_2 + 723 + OFFSET_X, 1, 101, 209 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, 106.8, 238.5 , 0 );
setMoveKey( spep_2 + 725 + OFFSET_X, 1, 106.8, 238.5 , 0 );
setMoveKey( spep_2 + 726 + OFFSET_X, 1, 118.5, 254 , 0 );
setMoveKey( spep_2 + 727 + OFFSET_X, 1, 118.5, 254 , 0 );
setMoveKey( spep_2 + 728 + OFFSET_X, 1, 124.5, 275.9 , 0 );
setMoveKey( spep_2 + 729 + OFFSET_X, 1, 124.5, 275.9 , 0 );
setMoveKey( spep_2 + 730 + OFFSET_X, 1, 127, 288.8 , 0 );
setMoveKey( spep_2 + 731 + OFFSET_X, 1, 127, 288.8 , 0 );
setMoveKey( spep_2 + 732 + OFFSET_X, 1, 134.5, 303.7 , 0 );
setMoveKey( spep_2 + 733 + OFFSET_X, 1, 134.5, 303.7 , 0 );
setMoveKey( spep_2 + 734 + OFFSET_X, 1, 134.5, 313.6 , 0 );
setMoveKey( spep_2 + 735 + OFFSET_X, 1, 134.5, 313.6 , 0 );
setMoveKey( spep_2 + 736 + OFFSET_X, 1, 137.8, 320.2 , 0 );
setMoveKey( spep_2 + 737 + OFFSET_X, 1, 137.8, 320.2 , 0 );
setMoveKey( spep_2 + 738 + OFFSET_X, 1, 139.2, 324.4 , 0 );
setMoveKey( spep_2 + 739 + OFFSET_X, 1, 139.2, 324.4 , 0 );
setMoveKey( spep_2 + 740 + OFFSET_X, 1, 139.7, 325.8 , 0 );
setMoveKey( spep_2 + 741 + OFFSET_X, 1, 139.7, 325.8 , 0 );
setMoveKey( spep_2 + 742 + OFFSET_X, 1, -203, 46.5 , 0 );
setMoveKey( spep_2 + 743 + OFFSET_X, 1, -203, 46.5 , 0 );
setMoveKey( spep_2 + 744 + OFFSET_X, 1, -148.2, 39.2 , 0 );
setMoveKey( spep_2 + 745 + OFFSET_X, 1, -148.2, 39.2 , 0 );
setMoveKey( spep_2 + 746 + OFFSET_X, 1, -93.4, 31.8 , 0 );
setMoveKey( spep_2 + 747 + OFFSET_X, 1, -93.4, 31.8 , 0 );
setMoveKey( spep_2 + 748 + OFFSET_X, 1, -38.6, 24.5 , 0 );
setMoveKey( spep_2 + 749 + OFFSET_X, 1, -38.6, 24.5 , 0 );
setMoveKey( spep_2 + 750 + OFFSET_X, 1, 16.2, 17.2 , 0 );
setMoveKey( spep_2 + 751 + OFFSET_X, 1, 16.2, 17.2 , 0 );
setMoveKey( spep_2 + 752 + OFFSET_X, 1, 71, 9.9 , 0 );
setMoveKey( spep_2 + 753 + OFFSET_X, 1, 71, 9.9 , 0 );
setMoveKey( spep_2 + 754 + OFFSET_X, 1, 71.4, 50.1 , 0 );
setMoveKey( spep_2 + 755 + OFFSET_X, 1, 71.4, 50.1 , 0 );
setMoveKey( spep_2 + 756 + OFFSET_X, 1, 81.7, 50.1 , 0 );
setMoveKey( spep_2 + 757 + OFFSET_X, 1, 81.7, 50.1 , 0 );
setMoveKey( spep_2 + 758 + OFFSET_X, 1, 80.1, -65.9 , 0 );
setMoveKey( spep_2 + 759 + OFFSET_X, 1, 80.1, -65.9 , 0 );
setMoveKey( spep_2 + 760 + OFFSET_X, 1, 8.5, -77.9 , 0 );
setMoveKey( spep_2 + 761 + OFFSET_X, 1, 8.5, -77.9 , 0 );
setMoveKey( spep_2 + 762 + OFFSET_X, 1, 18.9, 50.1 , 0 );
setMoveKey( spep_2 + 763 + OFFSET_X, 1, 18.9, 50.1 , 0 );
setMoveKey( spep_2 + 764 + OFFSET_X, 1, 85.2, 50.1 , 0 );
setMoveKey( spep_2 + 765 + OFFSET_X, 1, 85.2, 50.1 , 0 );
setMoveKey( spep_2 + 766 + OFFSET_X, 1, 83.6, -65.9 , 0 );
setMoveKey( spep_2 + 767 + OFFSET_X, 1, 83.6, -65.9 , 0 );
setMoveKey( spep_2 + 768 + OFFSET_X, 1, 74, 10.1 , 0 );
setMoveKey( spep_2 + 769 + OFFSET_X, 1, 74, 10.1 , 0 );
setMoveKey( spep_2 + 770 + OFFSET_X, 1, 71.1, 11.1 , 0 );
setMoveKey( spep_2 + 771 + OFFSET_X, 1, 71.1, 11.1 , 0 );
setMoveKey( spep_2 + 772 + OFFSET_X, 1, 77, 8.2 , 0 );
setMoveKey( spep_2 + 773 + OFFSET_X, 1, 77, 8.2 , 0 );
setMoveKey( spep_2 + 774 + OFFSET_X, 1, 72.8, 7.7 , 0 );
setMoveKey( spep_2 + 775 + OFFSET_X, 1, 72.8, 7.7 , 0 );
setMoveKey( spep_2 + 776 + OFFSET_X, 1, 77.8, 13.3 , 0 );
setMoveKey( spep_2 + 777 + OFFSET_X, 1, 77.8, 13.3 , 0 );
setMoveKey( spep_2 + 778 + OFFSET_X, 1, 73.3, 13.3 , 0 );
setMoveKey( spep_2 + 779 + OFFSET_X, 1, 73.3, 13.3 , 0 );
setMoveKey( spep_2 + 780 + OFFSET_X, 1, 77.8, 9.2 , 0 );
setMoveKey( spep_2 + 781 + OFFSET_X, 1, 77.8, 9.2 , 0 );
setMoveKey( spep_2 + 782 + OFFSET_X, 1, 75.5, 11.9 , 0 );
setMoveKey( spep_2 + 783 + OFFSET_X, 1, 75.5, 11.9 , 0 );
setMoveKey( spep_2 + 784 + OFFSET_X, 1, 79.7, 12.1 , 0 );
setMoveKey( spep_2 + 785 + OFFSET_X, 1, 79.7, 12.1 , 0 );
setMoveKey( spep_2 + 786 + OFFSET_X, 1, 76.7, 9 , 0 );
setMoveKey( spep_2 + 787 + OFFSET_X, 1, 76.7, 9 , 0 );
setMoveKey( spep_2 + 788 + OFFSET_X, 1, 79.9, 8.5 , 0 );
setMoveKey( spep_2 + 789 + OFFSET_X, 1, 79.9, 8.5 , 0 );
setMoveKey( spep_2 + 790 + OFFSET_X, 1, 76.7, 11.5 , 0 );
setMoveKey( spep_2 + 791 + OFFSET_X, 1, 76.7, 11.5 , 0 );
setMoveKey( spep_2 + 792 + OFFSET_X, 1, 80.7, 11.5 , 0 );
setMoveKey( spep_2 + 793 + OFFSET_X, 1, 80.7, 11.5 , 0 );
setMoveKey( spep_2 + 794 + OFFSET_X, 1, 77.4, 7.6 , 0 );
setMoveKey( spep_2 + 795 + OFFSET_X, 1, 77.4, 7.6 , 0 );
setMoveKey( spep_2 + 796 + OFFSET_X, 1, 80, 8.8 , 0 );
setMoveKey( spep_2 + 797 + OFFSET_X, 1, 80, 8.8 , 0 );
setMoveKey( spep_2 + 798 + OFFSET_X, 1, 79.2, 10.2 , 0 );
setMoveKey( spep_2 + 816 + OFFSET_X, 1, 79.2, 10.2 , 0 );

setScaleKey( spep_2 + 712 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 741 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 742 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 743 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 744 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 745 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 746 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 747 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 748 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 749 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 750 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 751 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 752 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 754 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 757 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 758 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 761 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 762 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 765 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 766 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 771 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 772 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 775 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 776 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 779 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 780 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 783 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 784 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 789 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 790 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 793 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 794 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 816 + OFFSET_X, 1, 0.93, 0.93 );

setRotateKey( spep_2 + 712 + OFFSET_X, 1, -44 );
setRotateKey( spep_2 + 741 + OFFSET_X, 1, -44 );
setRotateKey( spep_2 + 742 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 753 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 754 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 773 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 774 + OFFSET_X, 1, -50.1 );
setRotateKey( spep_2 + 816 + OFFSET_X, 1, -50.1 );

-- ** 音 ** --
--構える
SE010 = playSeVer2( spep_2 + 10, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE010, 83 );

--オーラ
SE011 = playSeVer2( spep_2 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE011, 79 );
SE012 = playSeVer2( spep_2 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE012, 79 );
SE014 = playSeVer2( spep_2 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE014, 79 );

--向かっていく
SE013 = playSeVer2( spep_2 + 46, 1023, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 60, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 68, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 68, SE016, 200 );
SE017 = playSeVer2( spep_2 + 68, 1117, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 68, 1245, "", 0, 0, 0, -1);

--正面向かっていく
SE019 = playSeVer2( spep_2 + 80, 1422, "",spep_2 + 182, 0, 20, -1);
SE020 = playSeVer2( spep_2 + 94, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE020, 46 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 110;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);

pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--振りかぶる
SE021 = playSeVer2( spep_2 + 130, 1116, "",spep_2 + 172, 0, 16, -1);

--パンチ
SE022 = playSeVer2( spep_2 + 158, 1187, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 158, 1153, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 158, 1359, "", 0, 0, 0, -1);

--敵飛んでいく
SE025 = playSeVer2( spep_2 + 164, 1121, "",spep_2 + 370, 0, 58, -1);
setSeVolumeByWorkId( spep_2 + 164, SE025, 71 );

--ビルから飛び出す
SE026 = playSeVer2( spep_2 + 236, 1011, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 242, 1033, "", 0, 0, 0, -1);

--掴んで壁投げつける
SE028 = playSeVer2( spep_2 + 308, 1153, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 312, 1190, "", 0, 8, 0, -1);
setStartTimeMs( SE029,  67 );
SE030 = playSeVer2( spep_2 + 314, 1024, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 314, 1168, "", spep_2 + 370, 0, 50, -1);
SE032 = playSeVer2( spep_2 + 314, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 314, SE032, -300 );
setTimeStretch( SE032, 0.8, 30, 4 );
SE033 = playSeVer2( spep_2 + 324, 1044, "",spep_2 + 448, 0, 34, -1);
SE034 = playSeVer2( spep_2 + 324, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 324, SE034, -200 );
setTimeStretch( SE034, 0.87, 30, 4 );
SE035 = playSeVer2( spep_2 + 340, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 340, SE035, -300 );
setTimeStretch( SE035, 0.8, 30, 4 );
SE036 = playSeVer2( spep_2 + 350, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 350, SE036, -200 );
setTimeStretch( SE036, 0.87, 30, 4 );
SE037 = playSeVer2( spep_2 + 364, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 364, SE037, -300 );
setTimeStretch( SE037, 0.8, 30, 4 );
SE038 = playSeVer2( spep_2 + 374, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 374, SE038, -200 );
setTimeStretch( SE038, 0.87, 30, 4 );

--掴んで壁投げつける2
SE070 = playSeVer2( spep_2 + 354, 1168, "", 750, 30, 10, -1);

--敵吹き飛ぶ
SE039 = playSeVer2( spep_2 + 380, 1027, "", 0, 0, 0, -1);

--掴んで壁投げつける
SE040 = playSeVer2( spep_2 + 384, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 384, SE040, -300 );
setTimeStretch( SE040, 0.8, 30, 4 );

--ブロリーフレームアウト
SE041 = playSeVer2( spep_2 + 452, 63, "",spep_2 + 534, 0, 44, -1);
SE042 = playSeVer2( spep_2 + 456, 44, "", 0, 0, 0, -1);

--壁から出てくる
SE043 = playSeVer2( spep_2 + 476, 1188, "", 0, 18, 0, -1);
setStartTimeMs( SE043,  100 );
SE044 = playSeVer2( spep_2 + 476, 1024, "", 0, 0, 0, -1);

--気弾溜め
SE045 = playSeVer2( spep_2 + 562, 1442, "",spep_2 + 638, 2, 26, -1);
setSeVolumeByWorkId( spep_2 + 562, SE045, 232 );
setStartTimeMs( SE045,  900 );

--振りかぶる
SE046 = playSeVer2( spep_2 + 538, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE047 = playSeVer2( spep_2 + 560, 1328, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 560, SE047, 146 );
setStartTimeMs( SE047,  167 );
SE048 = playSeVer2( spep_2 + 562, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 562, SE048, 60 );
SE049 = playSeVer2( spep_2 + 566, 1440, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 566, SE049, 232 );

--気弾発射
SE050 = playSeVer2( spep_2 + 602, 1027, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 602, 1145, "",spep_2 + 702, 0, 32, -1);
SE052 = playSeVer2( spep_2 + 602, 1177, "",spep_2 + 700, 0, 32, -1);

--壁激突
SE053 = playSeVer2( spep_2 + 742, 1168, "", 0, 6, 0, -1);
setStartTimeMs( SE053,  1400 );

--ビル爆発
SE054 = playSeVer2( spep_2 + 662, 1061, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 666, 1159, "", 0, 0, 0, -1);

--敵飛んでいく
SE056 = playSeVer2( spep_2 + 702, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 702, SE056, 71 );
SE057 = playSeVer2( spep_2 + 702, 1121, "",spep_2 + 764, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 702, SE057, 71 );

--壁激突
SE058 = playSeVer2( spep_2 + 744, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 744, SE058, 127 );
SE059 = playSeVer2( spep_2 + 744, 1250, "",spep_2 + 834, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 744, SE059, 207 );

--画面遷移
SE060 = playSeVer2( spep_2 + 806, 8, "", 0, 0, 0, -1);

--爆発
SE061 = playSeVer2( spep_2 + 832, 1067, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_2 + 832, 1024, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 830 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 942

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕～カットイン前まで ef_001r
------------------------------------------------------
MAX_FRAME_0 = 92;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x80, -1, 0, 0, 0 );  -- 開幕～カットイン前まで ef_001r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 68, 1036, "", 0, 0, 0, -1);

--腕上げる
SE003 = playSeVer2( spep_0 + 14, 1004, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 92

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--オーラ
SE008 = playSeVer2( spep_1 + 88, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE008, 79 );

--構える
SE009 = playSeVer2( spep_1 + 92, 1232, "", 0, 0, 0, -1);

------------------------------------------------------
-- 横向き突進～フィニッシュ　（敵の前） ef_002r
------------------------------------------------------
MAX_FRAME_2 = 942;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );  -- 横向き突進～フィニッシュ　（敵の前） ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );  -- 横向き突進～フィニッシュ（敵の奥） ef_002br
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 112 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 100 );

setMoveKey( spep_2 + 0, 1, 294.2, 115.3 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 361.1, 128.4 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 361.1, 128.4 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 428.2, 141.5 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 428.2, 141.5 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 495.2, 154.6 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 495.2, 154.6 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 562.2, 167.7 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 562.2, 167.7 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 629.3, 180.8 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 629.3, 180.8 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 696.3, 193.9 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 696.3, 193.9 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 763.3, 207 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 763.3, 207 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 830.3, 220.1 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 830.3, 220.1 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 897.3, 233.2 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 897.3, 233.2 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 892.5, 229.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 892.5, 229.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 887.6, 226.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 887.6, 226.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 882.7, 223.1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 882.7, 223.1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 877.8, 219.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 877.8, 219.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 872.9, 216.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 872.9, 216.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 816.5, 208 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 816.5, 208 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 760, 194.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 760, 194.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 703.6, 181 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 703.6, 181 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 647.2, 167.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 647.2, 167.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 590.8, 154.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 590.8, 154.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 534.4, 140.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 534.4, 140.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 478, 127.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 478, 127.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 421.6, 113.6 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 421.6, 113.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 365.1, 100.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 365.1, 100.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 308.7, 86.7 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 308.7, 86.7 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 252.3, 73.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 252.3, 73.2 , 0 );

setScaleKey( spep_2 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.47, 0.47 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_2 + 152 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 212 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 152 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 168 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 152 + OFFSET_X, 1, 194.1, 5.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 194.1, 5.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 174.6, -3.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 174.6, -3.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 154.6, -12.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 154.6, -12.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 134.1, -22.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 134.1, -22.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 113, -32.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 113, -32.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 91.5, -42.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 91.5, -42.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 81.1, -46.5 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 81.1, -46.5 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 70.7, -50.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 70.7, -50.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -5, 130.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -5, 130.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -79.6, 164.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -79.6, 164.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -69.9, 265.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -69.9, 265.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 123.4, 238 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 123.4, 238 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 135.9, 95.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 135.9, 95.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 19.7, 57.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 19.7, 57.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 26.9, 161 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 26.9, 161 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 217.5, 136.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 217.5, 136.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 227.3, -2.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 227.3, -2.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 212.5, 33.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 212.5, 33.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 246.3, 11.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 246.3, 11.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 239.3, -1.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 239.3, -1.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 261.9, -35.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 261.9, -35.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 275, -56.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 275, -56.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 285.9, -74.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 285.9, -74.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 294.7, -88.6 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 294.7, -88.6 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 301.4, -99.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 301.4, -99.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 306, -107.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 306, -107.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 308.8, -112.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 308.8, -112.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 309.6, -114.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 309.6, -114.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 308.7, -114 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 308.7, -114 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 306.3, -110.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 306.3, -110.8 , 0 );

sc_tmp = 0.4;

setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.6 + sc_tmp, 0.6 + sc_tmp );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.6 + sc_tmp, 0.6 + sc_tmp );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.12 + sc_tmp, 1.12 + sc_tmp );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.12 + sc_tmp, 1.12 + sc_tmp );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.65 + sc_tmp, 1.65 + sc_tmp );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.65 + sc_tmp, 1.65 + sc_tmp );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.21 + sc_tmp, 2.21 + sc_tmp );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.21 + sc_tmp, 2.21 + sc_tmp );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.79 + sc_tmp, 2.79 + sc_tmp );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.79 + sc_tmp, 2.79 + sc_tmp );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 3.4 + sc_tmp, 3.4 + sc_tmp );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 3.4 + sc_tmp, 3.4 + sc_tmp );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 3.47 + sc_tmp, 3.47 + sc_tmp );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 3.47 + sc_tmp, 3.47 + sc_tmp );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 3.54 + sc_tmp, 3.54 + sc_tmp );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 3.54 + sc_tmp, 3.54 + sc_tmp );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 4.85 + sc_tmp, 4.85 + sc_tmp );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 4.85 + sc_tmp, 4.85 + sc_tmp );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 4.6 + sc_tmp, 4.6 + sc_tmp );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 4.6 + sc_tmp, 4.6 + sc_tmp );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 4.31 + sc_tmp, 4.31 + sc_tmp );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 4.31 + sc_tmp, 4.31 + sc_tmp );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 4.03 + sc_tmp, 4.03 + sc_tmp );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 4.03 + sc_tmp, 4.03 + sc_tmp );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 3.76 + sc_tmp, 3.76 + sc_tmp );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 3.76 + sc_tmp, 3.76 + sc_tmp );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 3.49 + sc_tmp, 3.49 + sc_tmp );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 3.49 + sc_tmp, 3.49 + sc_tmp );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 3.23 + sc_tmp, 3.23 + sc_tmp );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 3.23 + sc_tmp, 3.23 + sc_tmp );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.98 + sc_tmp, 2.98 + sc_tmp );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 2.98 + sc_tmp, 2.98 + sc_tmp );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 2.73 + sc_tmp, 2.73 + sc_tmp );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2.73 + sc_tmp, 2.73 + sc_tmp );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.48 + sc_tmp, 2.48 + sc_tmp );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.48 + sc_tmp, 2.48 + sc_tmp );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.07 + sc_tmp, 2.07 + sc_tmp );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 2.07 + sc_tmp, 2.07 + sc_tmp );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.7 + sc_tmp, 1.7 + sc_tmp );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 1.7 + sc_tmp, 1.7 + sc_tmp );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.37 + 0.2, 1.37 + 0.2 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.37 + 0.2, 1.37 + 0.2 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.08 + 0.15, 1.08 + 0.15 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.08 + 0.15, 1.08 + 0.15 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 0.83 + 0.1, 0.83 + 0.1 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.83 + 0.1, 0.83 + 0.1 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.62 + 0.05, 0.62 + 0.05 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.62 + 0.05, 0.62 + 0.05 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.45 , 0.45 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.45 , 0.45 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.31 , 0.31 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.31 , 0.31 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.2 , 0.2 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.2 , 0.2 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.13 , 0.13 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.13 , 0.13 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.08 , 0.08 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 0.08 , 0.08 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.07 , 0.07 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.07 , 0.07 );

setRotateKey( spep_2 + 152 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 78.2 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 78.2 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 80.6 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 80.6 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 82.9 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 82.9 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 85.3 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 85.3 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 87.7 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 87.7 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 90.1 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 90.1 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 92.4 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 92.4 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 94.8 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 94.8 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 97.2 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 97.2 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 99.5 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 99.5 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 102.1 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 102.1 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 104.4 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 104.4 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 106.6 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 106.6 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 108.4 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 108.4 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 110.1 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 110.1 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 111.6 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 111.6 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 112.8 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 112.8 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 113.8 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 113.8 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 114.6 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 114.6 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 115.1 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 115.1 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 115.5 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 115.5 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 115.6 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 115.6 );

-- 敵の動き3
setDisp( spep_2 + 226 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 356 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 226 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 296 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 312 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 226 + OFFSET_X, 1, 48.8, 212.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 48.8, 212.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 59.5, 194.8 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 59.5, 194.8 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 70.2, 177.4 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 70.2, 177.4 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 80.7, 160.3 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 80.7, 160.3 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 91.2, 143.2 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 91.2, 143.2 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 101.7, 126.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 101.7, 126.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 112, 109.4 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 112, 109.4 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 122.3, 92.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 122.3, 92.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 132.5, 76.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 132.5, 76.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 142.6, 59.7 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 142.6, 59.7 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 140.8, 30.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 140.8, 30.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 178.3, 37 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 178.3, 37 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 160.1, 25.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 160.1, 25.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 187.2, -23.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 187.2, -23.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 192.1, -20.7 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 192.1, -20.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 201.7, -36.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 201.7, -36.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 211.3, -52 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 211.3, -52 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 220.9, -67.4 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 220.9, -67.4 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 233.7, -92.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 233.7, -92.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 246.5, -117.3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 246.5, -117.3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 259.2, -142 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 259.2, -142 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 271.9, -166.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 271.9, -166.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 284.5, -191 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 284.5, -191 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 297.1, -215.4 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 297.1, -215.4 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 309.5, -239.6 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 309.5, -239.6 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 321.9, -263.6 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 321.9, -263.6 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 334.3, -287.6 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 334.3, -287.6 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 346.5, -311.4 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 346.5, -311.4 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 358.7, -335.1 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 358.7, -335.1 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 370.9, -358.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 370.9, -358.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 383, -382 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 383, -382 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 395, -405.3 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 395, -405.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 406.9, -428.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 406.9, -428.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 418.8, -451.5 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 418.8, -451.5 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 430.9, -474.6 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 430.9, -474.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -98, -133 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -98, -133 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -28.3, 6.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -28.3, 6.2 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -17, -16.6 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -17, -16.6 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 18.9, -14.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 18.9, -14.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -26.9, 40.5 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -26.9, 40.5 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 45.8, 52.9 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 45.8, 52.9 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 1.6, 22.9 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 1.6, 22.9 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 21.2, 53.9 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 21.2, 53.9 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 28.9, 67.9 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 28.9, 67.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 36.6, 81.9 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 36.6, 81.9 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 44.3, 95.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 44.3, 95.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 52, 109.9 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 52, 109.9 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 59.7, 123.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 59.7, 123.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 67.4, 137.8 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 67.4, 137.8 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 7.2, 182.2 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 7.2, 182.2 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -37.7, 205.4 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -37.7, 205.4 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -82.5, 228.6 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -82.5, 228.6 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -127.4, 251.7 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -127.4, 251.7 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -172.3, 274.9 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -172.3, 274.9 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -325.7, 307.3 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -325.7, 307.3 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -479.1, 339.8 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -479.1, 339.8 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -632.5, 372.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -632.5, 372.2 , 0 );

sc_tmp2 = 0.7;

setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.09 + sc_tmp2, 0.09 + sc_tmp2 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.09 + sc_tmp2, 0.09 + sc_tmp2 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.14 + sc_tmp2, 0.14 + sc_tmp2 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.14 + sc_tmp2, 0.14 + sc_tmp2 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.19 + sc_tmp2, 0.19 + sc_tmp2 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.19 + sc_tmp2, 0.19 + sc_tmp2 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.25 + sc_tmp2, 0.25 + sc_tmp2 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.25 + sc_tmp2, 0.25 + sc_tmp2 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.3 + sc_tmp2, 0.3 + sc_tmp2 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.3 + sc_tmp2, 0.3 + sc_tmp2 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.35 + sc_tmp2, 0.35 + sc_tmp2 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.35 + sc_tmp2, 0.35 + sc_tmp2 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.4 + sc_tmp2, 0.4 + sc_tmp2 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.4 + sc_tmp2, 0.4 + sc_tmp2 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.45 + sc_tmp2, 0.45 + sc_tmp2 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.45 + sc_tmp2, 0.45 + sc_tmp2 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.5 + sc_tmp2, 0.5 + sc_tmp2 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.5 + sc_tmp2, 0.5 + sc_tmp2 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.55 + sc_tmp2, 0.55 + sc_tmp2 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.55 + sc_tmp2, 0.55 + sc_tmp2 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.6 + sc_tmp2, 0.6 + sc_tmp2 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.6 + sc_tmp2, 0.6 + sc_tmp2 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.65 + sc_tmp2, 0.65 + sc_tmp2 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.65 + sc_tmp2, 0.65 + sc_tmp2 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.7 + sc_tmp2, 0.7 + sc_tmp2 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.7 + sc_tmp2, 0.7 + sc_tmp2 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.75 + sc_tmp2, 0.75 + sc_tmp2 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.75 + sc_tmp2, 0.75 + sc_tmp2 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.79 + sc_tmp2, 0.79 + sc_tmp2 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.79 + sc_tmp2, 0.79 + sc_tmp2 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.84 + sc_tmp2, 0.84 + sc_tmp2 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.84 + sc_tmp2, 0.84 + sc_tmp2 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.89 + sc_tmp2, 0.89 + sc_tmp2 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.89 + sc_tmp2, 0.89 + sc_tmp2 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.94 + sc_tmp2, 0.94 + sc_tmp2 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.94 + sc_tmp2, 0.94 + sc_tmp2 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.97 + sc_tmp2, 0.97 + sc_tmp2 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.97 + sc_tmp2, 0.97 + sc_tmp2 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1 + sc_tmp2, 1 + sc_tmp2 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1 + sc_tmp2, 1 + sc_tmp2 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.03 + sc_tmp2, 1.03 + sc_tmp2 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1.03 + sc_tmp2, 1.03 + sc_tmp2 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 1.06 + sc_tmp2, 1.06 + sc_tmp2 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 1.06 + sc_tmp2, 1.06 + sc_tmp2 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 1.09 + sc_tmp2, 1.09 + sc_tmp2 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 1.09 + sc_tmp2, 1.09 + sc_tmp2 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 1.12 + sc_tmp2, 1.12 + sc_tmp2 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 1.12 + sc_tmp2, 1.12 + sc_tmp2 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 1.14 + sc_tmp2, 1.14 + sc_tmp2 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 1.14 + sc_tmp2, 1.14 + sc_tmp2 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 1.17 + sc_tmp2, 1.17 + sc_tmp2 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 1.17 + sc_tmp2, 1.17 + sc_tmp2 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.2 + sc_tmp2, 1.2 + sc_tmp2 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.2 + sc_tmp2, 1.2 + sc_tmp2 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.23 + sc_tmp2, 1.23 + sc_tmp2 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 1.23 + sc_tmp2, 1.23 + sc_tmp2 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.26 + sc_tmp2, 1.26 + sc_tmp2 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.26 + sc_tmp2, 1.26 + sc_tmp2 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.29 + sc_tmp2, 1.29 + sc_tmp2 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 1.29 + sc_tmp2, 1.29 + sc_tmp2 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.32 + sc_tmp2, 1.32 + sc_tmp2 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 1.32 + sc_tmp2, 1.32 + sc_tmp2 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.34 + sc_tmp2, 1.34 + sc_tmp2 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.34 + sc_tmp2, 1.34 + sc_tmp2 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.37 + sc_tmp2, 1.37 + sc_tmp2 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.37 + sc_tmp2, 1.37 + sc_tmp2 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.4 + sc_tmp2, 1.4 + sc_tmp2 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.4 + sc_tmp2, 1.4 + sc_tmp2 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.43 + sc_tmp2, 1.43 + sc_tmp2 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.43 + sc_tmp2, 1.43 + sc_tmp2 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 6.38, 6.38 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 6.38, 6.38 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 5.84, 5.84 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 5.84, 5.84 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 3.42, 3.42 );

setRotateKey( spep_2 + 226 + OFFSET_X, 1, 53.1 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 53.1 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 56.8 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 56.8 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 60.3 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 63.8 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 63.8 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 67.2 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 67.2 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 70.7 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 70.7 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 74.1 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 74.1 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 77.6 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 77.6 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 81.1 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 81.1 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 84.5 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 84.5 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 88 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 88 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 93 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 93 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 98 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 98 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 103 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 103 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 108 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 108 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 113 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 113 );

-- 敵の動き4
setDisp( spep_2 + 386 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 424 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 386 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 386 + OFFSET_X, 1, -131, 80.3 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -131, 80.3 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -52.2, 223.9 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -52.2, 223.9 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -190.3, 152.4 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -190.3, 152.4 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -144.8, 9.8 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -144.8, 9.8 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -78.2, 63.6 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -78.2, 63.6 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -1.8, 109.3 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -1.8, 109.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -40.4, 97.8 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -40.4, 97.8 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 22.5, 38.6 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 22.5, 38.6 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -7.9, 88.6 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -7.9, 88.6 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 76.4, 69.9 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 76.4, 69.9 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 15.9, 30 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 15.9, 30 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 31.4, 66.7 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 31.4, 66.7 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 39.2, 8.9 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 39.2, 8.9 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 94.9, 75 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 94.9, 75 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 42.5, 14.8 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 42.5, 14.8 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 115, -11.6 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 115, -11.6 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 55, 80.7 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 55, 80.7 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 107.8, -3.8 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 107.8, -3.8 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 96.2, 46 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 96.2, 46 , 0 );

setScaleKey( spep_2 + 386 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 0.71, 0.71 );

setRotateKey( spep_2 + 386 + OFFSET_X, 1, 128 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, 128 );

-- 敵の動き5
setDisp( spep_2 + 712 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 816 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 712 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 742 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 754 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 712 + OFFSET_X, 1, -50.3, 48.1 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, -50.3, 48.1 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, -60.1, 83.7 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, -60.1, 83.7 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, -69.6, 124.6 , 0 );
setMoveKey( spep_2 + 717 + OFFSET_X, 1, -69.6, 124.6 , 0 );
setMoveKey( spep_2 + 718 + OFFSET_X, 1, -85.1, 151.5 , 0 );
setMoveKey( spep_2 + 719 + OFFSET_X, 1, -85.1, 151.5 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, -94.8, 184.8 , 0 );
setMoveKey( spep_2 + 721 + OFFSET_X, 1, -94.8, 184.8 , 0 );
setMoveKey( spep_2 + 722 + OFFSET_X, 1, -101, 209 , 0 );
setMoveKey( spep_2 + 723 + OFFSET_X, 1, -101, 209 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, -106.8, 238.5 , 0 );
setMoveKey( spep_2 + 725 + OFFSET_X, 1, -106.8, 238.5 , 0 );
setMoveKey( spep_2 + 726 + OFFSET_X, 1, -118.5, 254 , 0 );
setMoveKey( spep_2 + 727 + OFFSET_X, 1, -118.5, 254 , 0 );
setMoveKey( spep_2 + 728 + OFFSET_X, 1, -124.5, 275.9 , 0 );
setMoveKey( spep_2 + 729 + OFFSET_X, 1, -124.5, 275.9 , 0 );
setMoveKey( spep_2 + 730 + OFFSET_X, 1, -127, 288.8 , 0 );
setMoveKey( spep_2 + 731 + OFFSET_X, 1, -127, 288.8 , 0 );
setMoveKey( spep_2 + 732 + OFFSET_X, 1, -134.5, 303.7 , 0 );
setMoveKey( spep_2 + 733 + OFFSET_X, 1, -134.5, 303.7 , 0 );
setMoveKey( spep_2 + 734 + OFFSET_X, 1, -134.5, 313.6 , 0 );
setMoveKey( spep_2 + 735 + OFFSET_X, 1, -134.5, 313.6 , 0 );
setMoveKey( spep_2 + 736 + OFFSET_X, 1, -137.8, 320.2 , 0 );
setMoveKey( spep_2 + 737 + OFFSET_X, 1, -137.8, 320.2 , 0 );
setMoveKey( spep_2 + 738 + OFFSET_X, 1, -139.2, 324.4 , 0 );
setMoveKey( spep_2 + 739 + OFFSET_X, 1, -139.2, 324.4 , 0 );
setMoveKey( spep_2 + 740 + OFFSET_X, 1, -139.7, 325.8 , 0 );
setMoveKey( spep_2 + 741 + OFFSET_X, 1, -139.7, 325.8 , 0 );
setMoveKey( spep_2 + 742 + OFFSET_X, 1, 203, 46.5 , 0 );
setMoveKey( spep_2 + 743 + OFFSET_X, 1, 203, 46.5 , 0 );
setMoveKey( spep_2 + 744 + OFFSET_X, 1, 148.2, 39.2 , 0 );
setMoveKey( spep_2 + 745 + OFFSET_X, 1, 148.2, 39.2 , 0 );
setMoveKey( spep_2 + 746 + OFFSET_X, 1, 93.4, 31.8 , 0 );
setMoveKey( spep_2 + 747 + OFFSET_X, 1, 93.4, 31.8 , 0 );
setMoveKey( spep_2 + 748 + OFFSET_X, 1, 38.6, 24.5 , 0 );
setMoveKey( spep_2 + 749 + OFFSET_X, 1, 38.6, 24.5 , 0 );
setMoveKey( spep_2 + 750 + OFFSET_X, 1, -16.2, 17.2 , 0 );
setMoveKey( spep_2 + 751 + OFFSET_X, 1, -16.2, 17.2 , 0 );
setMoveKey( spep_2 + 752 + OFFSET_X, 1, -71, 9.9 , 0 );
setMoveKey( spep_2 + 753 + OFFSET_X, 1, -71, 9.9 , 0 );
setMoveKey( spep_2 + 754 + OFFSET_X, 1, -71.4, 50.1 , 0 );
setMoveKey( spep_2 + 755 + OFFSET_X, 1, -71.4, 50.1 , 0 );
setMoveKey( spep_2 + 756 + OFFSET_X, 1, -81.7, 50.1 , 0 );
setMoveKey( spep_2 + 757 + OFFSET_X, 1, -81.7, 50.1 , 0 );
setMoveKey( spep_2 + 758 + OFFSET_X, 1, -80.1, -65.9 , 0 );
setMoveKey( spep_2 + 759 + OFFSET_X, 1, -80.1, -65.9 , 0 );
setMoveKey( spep_2 + 760 + OFFSET_X, 1, -8.5, -77.9 , 0 );
setMoveKey( spep_2 + 761 + OFFSET_X, 1, -8.5, -77.9 , 0 );
setMoveKey( spep_2 + 762 + OFFSET_X, 1, -18.9, 50.1 , 0 );
setMoveKey( spep_2 + 763 + OFFSET_X, 1, -18.9, 50.1 , 0 );
setMoveKey( spep_2 + 764 + OFFSET_X, 1, -85.2, 50.1 , 0 );
setMoveKey( spep_2 + 765 + OFFSET_X, 1, -85.2, 50.1 , 0 );
setMoveKey( spep_2 + 766 + OFFSET_X, 1, -83.6, -65.9 , 0 );
setMoveKey( spep_2 + 767 + OFFSET_X, 1, -83.6, -65.9 , 0 );
setMoveKey( spep_2 + 768 + OFFSET_X, 1, -74, 10.1 , 0 );
setMoveKey( spep_2 + 769 + OFFSET_X, 1, -74, 10.1 , 0 );
setMoveKey( spep_2 + 770 + OFFSET_X, 1, -71.1, 11.1 , 0 );
setMoveKey( spep_2 + 771 + OFFSET_X, 1, -71.1, 11.1 , 0 );
setMoveKey( spep_2 + 772 + OFFSET_X, 1, -77, 8.2 , 0 );
setMoveKey( spep_2 + 773 + OFFSET_X, 1, -77, 8.2 , 0 );
setMoveKey( spep_2 + 774 + OFFSET_X, 1, -72.8, 7.7 , 0 );
setMoveKey( spep_2 + 775 + OFFSET_X, 1, -72.8, 7.7 , 0 );
setMoveKey( spep_2 + 776 + OFFSET_X, 1, -77.8, 13.3 , 0 );
setMoveKey( spep_2 + 777 + OFFSET_X, 1, -77.8, 13.3 , 0 );
setMoveKey( spep_2 + 778 + OFFSET_X, 1, -73.3, 13.3 , 0 );
setMoveKey( spep_2 + 779 + OFFSET_X, 1, -73.3, 13.3 , 0 );
setMoveKey( spep_2 + 780 + OFFSET_X, 1, -77.8, 9.2 , 0 );
setMoveKey( spep_2 + 781 + OFFSET_X, 1, -77.8, 9.2 , 0 );
setMoveKey( spep_2 + 782 + OFFSET_X, 1, -75.5, 11.9 , 0 );
setMoveKey( spep_2 + 783 + OFFSET_X, 1, -75.5, 11.9 , 0 );
setMoveKey( spep_2 + 784 + OFFSET_X, 1, -79.7, 12.1 , 0 );
setMoveKey( spep_2 + 785 + OFFSET_X, 1, -79.7, 12.1 , 0 );
setMoveKey( spep_2 + 786 + OFFSET_X, 1, -76.7, 9 , 0 );
setMoveKey( spep_2 + 787 + OFFSET_X, 1, -76.7, 9 , 0 );
setMoveKey( spep_2 + 788 + OFFSET_X, 1, -79.9, 8.5 , 0 );
setMoveKey( spep_2 + 789 + OFFSET_X, 1, -79.9, 8.5 , 0 );
setMoveKey( spep_2 + 790 + OFFSET_X, 1, -76.7, 11.5 , 0 );
setMoveKey( spep_2 + 791 + OFFSET_X, 1, -76.7, 11.5 , 0 );
setMoveKey( spep_2 + 792 + OFFSET_X, 1, -80.7, 11.5 , 0 );
setMoveKey( spep_2 + 793 + OFFSET_X, 1, -80.7, 11.5 , 0 );
setMoveKey( spep_2 + 794 + OFFSET_X, 1, -77.4, 7.6 , 0 );
setMoveKey( spep_2 + 795 + OFFSET_X, 1, -77.4, 7.6 , 0 );
setMoveKey( spep_2 + 796 + OFFSET_X, 1, -80, 8.8 , 0 );
setMoveKey( spep_2 + 797 + OFFSET_X, 1, -80, 8.8 , 0 );
setMoveKey( spep_2 + 798 + OFFSET_X, 1, -79.2, 10.2 , 0 );
setMoveKey( spep_2 + 816 + OFFSET_X, 1, -79.2, 10.2 , 0 );

setScaleKey( spep_2 + 712 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 741 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 742 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 743 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 744 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 745 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 746 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 747 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 748 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 749 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 750 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 751 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 752 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 754 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 757 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 758 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 761 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 762 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 765 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 766 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 771 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 772 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 775 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 776 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 779 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 780 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 783 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 784 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 789 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 790 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 793 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 794 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 816 + OFFSET_X, 1, 0.93, 0.93 );

setRotateKey( spep_2 + 712 + OFFSET_X, 1, 44 );
setRotateKey( spep_2 + 741 + OFFSET_X, 1, 44 );
setRotateKey( spep_2 + 742 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 753 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 754 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 773 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 774 + OFFSET_X, 1, 50.1 );
setRotateKey( spep_2 + 816 + OFFSET_X, 1, 50.1 );

-- ** 音 ** --
--構える
SE010 = playSeVer2( spep_2 + 10, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE010, 83 );

--オーラ
SE011 = playSeVer2( spep_2 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE011, 79 );
SE012 = playSeVer2( spep_2 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE012, 79 );
SE014 = playSeVer2( spep_2 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE014, 79 );

--向かっていく
SE013 = playSeVer2( spep_2 + 46, 1023, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 60, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 68, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 68, SE016, 200 );
SE017 = playSeVer2( spep_2 + 68, 1117, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 68, 1245, "", 0, 0, 0, -1);

--正面向かっていく
SE019 = playSeVer2( spep_2 + 80, 1422, "",spep_2 + 182, 0, 20, -1);
SE020 = playSeVer2( spep_2 + 94, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE020, 46 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 110;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);

pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--振りかぶる
SE021 = playSeVer2( spep_2 + 130, 1116, "",spep_2 + 172, 0, 16, -1);

--パンチ
SE022 = playSeVer2( spep_2 + 158, 1187, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 158, 1153, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 158, 1359, "", 0, 0, 0, -1);

--敵飛んでいく
SE025 = playSeVer2( spep_2 + 164, 1121, "",spep_2 + 370, 0, 58, -1);
setSeVolumeByWorkId( spep_2 + 164, SE025, 71 );

--ビルから飛び出す
SE026 = playSeVer2( spep_2 + 236, 1011, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 242, 1033, "", 0, 0, 0, -1);

--掴んで壁投げつける
SE028 = playSeVer2( spep_2 + 308, 1153, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 312, 1190, "", 0, 8, 0, -1);
setStartTimeMs( SE029,  67 );
SE030 = playSeVer2( spep_2 + 314, 1024, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 314, 1168, "", spep_2 + 370, 0, 50, -1);
SE032 = playSeVer2( spep_2 + 314, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 314, SE032, -300 );
setTimeStretch( SE032, 0.8, 30, 4 );
SE033 = playSeVer2( spep_2 + 324, 1044, "",spep_2 + 448, 0, 34, -1);
SE034 = playSeVer2( spep_2 + 324, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 324, SE034, -200 );
setTimeStretch( SE034, 0.87, 30, 4 );
SE035 = playSeVer2( spep_2 + 340, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 340, SE035, -300 );
setTimeStretch( SE035, 0.8, 30, 4 );
SE036 = playSeVer2( spep_2 + 350, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 350, SE036, -200 );
setTimeStretch( SE036, 0.87, 30, 4 );
SE037 = playSeVer2( spep_2 + 364, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 364, SE037, -300 );
setTimeStretch( SE037, 0.8, 30, 4 );
SE038 = playSeVer2( spep_2 + 374, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 374, SE038, -200 );
setTimeStretch( SE038, 0.87, 30, 4 );

--掴んで壁投げつける2
SE070 = playSeVer2( spep_2 + 354, 1168, "", 750, 30, 10, -1);

--敵吹き飛ぶ
SE039 = playSeVer2( spep_2 + 380, 1027, "", 0, 0, 0, -1);

--掴んで壁投げつける
SE040 = playSeVer2( spep_2 + 384, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 384, SE040, -300 );
setTimeStretch( SE040, 0.8, 30, 4 );

--ブロリーフレームアウト
SE041 = playSeVer2( spep_2 + 452, 63, "",spep_2 + 534, 0, 44, -1);
SE042 = playSeVer2( spep_2 + 456, 44, "", 0, 0, 0, -1);

--壁から出てくる
SE043 = playSeVer2( spep_2 + 476, 1188, "", 0, 18, 0, -1);
setStartTimeMs( SE043,  100 );
SE044 = playSeVer2( spep_2 + 476, 1024, "", 0, 0, 0, -1);

--気弾溜め
SE045 = playSeVer2( spep_2 + 562, 1442, "",spep_2 + 638, 2, 26, -1);
setSeVolumeByWorkId( spep_2 + 562, SE045, 232 );
setStartTimeMs( SE045,  900 );

--振りかぶる
SE046 = playSeVer2( spep_2 + 538, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE047 = playSeVer2( spep_2 + 560, 1328, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 560, SE047, 146 );
setStartTimeMs( SE047,  167 );
SE048 = playSeVer2( spep_2 + 562, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 562, SE048, 60 );
SE049 = playSeVer2( spep_2 + 566, 1440, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 566, SE049, 232 );

--気弾発射
SE050 = playSeVer2( spep_2 + 602, 1027, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 602, 1145, "",spep_2 + 702, 0, 32, -1);
SE052 = playSeVer2( spep_2 + 602, 1177, "",spep_2 + 700, 0, 32, -1);

--壁激突
SE053 = playSeVer2( spep_2 + 742, 1168, "", 0, 6, 0, -1);
setStartTimeMs( SE053,  1400 );

--ビル爆発
SE054 = playSeVer2( spep_2 + 662, 1061, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 666, 1159, "", 0, 0, 0, -1);

--敵飛んでいく
SE056 = playSeVer2( spep_2 + 702, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 702, SE056, 71 );
SE057 = playSeVer2( spep_2 + 702, 1121, "",spep_2 + 764, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 702, SE057, 71 );

--壁激突
SE058 = playSeVer2( spep_2 + 744, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 744, SE058, 127 );
SE059 = playSeVer2( spep_2 + 744, 1250, "",spep_2 + 834, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 744, SE059, 207 );

--画面遷移
SE060 = playSeVer2( spep_2 + 806, 8, "", 0, 0, 0, -1);

--爆発
SE061 = playSeVer2( spep_2 + 832, 1067, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_2 + 832, 1024, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 830 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 942

end
