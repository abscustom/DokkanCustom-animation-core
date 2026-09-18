--4032370:UR_ガンマ1号+アルティメット孫悟飯_必殺技：ガンマ・ブラスター
--sp_effect_b3_00008
--sp2933

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164317; --指差し〜銃を構える ef_001
SP_02  = 164319; --銃発射〜着弾爆発 ef_002

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
        spep_1 = spep_0 + 384;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 2);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 2, SP_01, spep_2 + 2 - 1 + 2, 1);

        -- ** 音 ** --
        --ブラスター発射
        SE021 = playSeVer2( spep_2 + 2 + 3, 1258, "",spep_2 + 92, 0, 62, -1);
        SE022 = playSeVer2( spep_2 + 2 + 3, 1027, "", 0, 0, 0, -1);
        SE023 = playSeVer2( spep_2 + 2 + 3, 1145, "", 0, 0, 0, -1);

    else 

        setupMovie(0 , SP_01, 0, 1);

    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 指差し〜銃を構える
-------------------------------------------------
MAX_FRAME_0 = 384;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 指差し〜銃を構える(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 276;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 56 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 258 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 56 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 108 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 116 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 126 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 168 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 56 + OFFSET_X, 1, 394.5, -83 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 394.5, -83 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 339.9, -85.2 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 339.9, -85.2 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 297.3, -86.8 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 297.3, -86.8 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 267, -88 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 267, -88 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 248.8, -88.7 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 248.8, -88.7 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 242.7, -89 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 242.7, -89 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 244.6, -90.3 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 244.6, -90.3 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 250.5, -94.1 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 250.5, -94.1 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 260.3, -100.6 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 260.3, -100.6 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 274.1, -109.6 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 274.1, -109.6 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 291.7, -121.2 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 291.7, -121.2 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 313.3, -135.4 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 313.3, -135.4 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 338.8, -152.1 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 338.8, -152.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 368.2, -171.4 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 368.2, -171.4 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 401.5, -193.3 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 401.5, -193.3 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 438.7, -217.8 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 438.7, -217.8 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 479.8, -244.9 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 479.8, -244.9 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 524.9, -274.5 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 524.9, -274.5 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 573.9, -306.7 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 573.9, -306.7 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 626.7, -341.4 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 626.7, -341.4 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 683.5, -378.8 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 683.5, -378.8 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 106, 6 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 106, 6 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 121.8, -22 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 121.8, -22 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 41.8, -22 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 41.8, -22 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -51.2, 198.1 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -51.2, 198.1 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -86.2, 168.3 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -86.2, 168.3 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -92.6, 180.8 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -92.6, 180.8 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -117.1, 226.5 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -117.1, 226.5 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -115, 191.1 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -115, 191.1 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -136.4, 240.3 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -136.4, 240.3 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -156.8, 215 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -156.8, 215 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -132.5, 238.8 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -132.5, 238.8 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -139, 212.1 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -139, 212.1 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -157.5, 253.3 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -157.5, 253.3 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -157.1, 222.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -157.1, 222.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -157.1, 233.7 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -157.1, 233.7 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -153.9, 233.5 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -153.9, 233.5 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -154, 233.5 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -154, 233.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -236, 135.6 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -236, 135.6 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -201.8, 115.4 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -201.8, 115.4 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -173.8, 98.9 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -173.8, 98.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -152, 86.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -152, 86.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -136.5, 76.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -136.5, 76.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -127.1, 71.4 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -127.1, 71.4 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -124, 69.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -124, 69.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -84, 63.6 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -84, 63.6 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -104, 103.6 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -104, 103.6 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -151.7, 77.8 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -151.7, 77.8 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -193.4, 170 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -193.4, 170 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -259.2, 165.8 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -259.2, 165.8 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -257.8, 210.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -257.8, 210.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -274.9, 201.4 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -274.9, 201.4 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -303.7, 219.7 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -303.7, 219.7 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -300.8, 225.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -300.8, 225.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -294.2, 228 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -294.2, 228 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -197.7, -223.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -197.7, -223.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -198.2, -220.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -198.2, -220.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -199.3, -212.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -199.3, -212.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -200.9, -199.8 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -200.9, -199.8 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -202.9, -184.6 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -202.9, -184.6 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -204.8, -169.8 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -204.8, -169.8 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -206.4, -158.1 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -206.4, -158.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -207.4, -150.3 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -207.4, -150.3 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -207.7, -146.1 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -207.7, -146.1 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -211.5, -133.4 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -211.5, -133.4 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -227, -82.1 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -227, -82.1 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -242, -32.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -242, -32.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -251.3, -1.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -251.3, -1.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -257.4, 18.8 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -257.4, 18.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -261.7, 33.2 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -261.7, 33.2 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -264.8, 43.5 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -264.8, 43.5 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -267.2, 51.5 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -267.2, 51.5 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -269.3, 58.3 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -269.3, 58.3 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -271.1, 64.4 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -271.1, 64.4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -272.8, 70.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -272.8, 70.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -274.4, 75.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -274.4, 75.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -276, 80.5 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -276, 80.5 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -277.5, 85.4 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -277.5, 85.4 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -278.9, 90.2 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -278.9, 90.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -280.3, 94.8 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -280.3, 94.8 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -281.7, 99.4 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -281.7, 99.4 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -283, 103.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -283, 103.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -284.4, 108.3 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -284.4, 108.3 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -285.7, 112.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -285.7, 112.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -287, 117.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -287, 117.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -288.3, 121.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -288.3, 121.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -289.6, 125.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -289.6, 125.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -290.9, 130 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -290.9, 130 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -292.2, 134.3 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -292.2, 134.3 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -293.7, 138 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -293.7, 138 , 0 );

setScaleKey( spep_0 + 56 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 5.78, 5.78 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 5.78, 5.78 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 6.19, 6.19 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 6.19, 6.19 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 6.65, 6.65 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 6.65, 6.65 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 7.16, 7.16 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 7.16, 7.16 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 7.72, 7.72 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 7.72, 7.72 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 8.33, 8.33 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 8.33, 8.33 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 8.98, 8.98 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 8.98, 8.98 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 9.69, 9.69 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 9.69, 9.69 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.53, 0.52 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.53, 0.52 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.56, 0.54 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.56, 0.54 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.57, 0.56 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.57, 0.56 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.58, 0.56 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 0.58, 0.56 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.59, 0.57 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 0.59, 0.57 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.6, 0.58 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.6, 0.58 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.64, 0.62 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.64, 0.62 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.68, 0.66 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 0.68, 0.66 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.7, 0.69 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 0.7, 0.69 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.73, 0.72 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 0.73, 0.72 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.74, 0.73 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 0.74, 0.73 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.75, 0.74 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.75, 0.74 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.76, 0.75 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.76, 0.75 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.78, 0.77 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.78, 0.77 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 0.79, 0.78 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 0.79, 0.78 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.8, 0.79 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 0.8, 0.79 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.81, 0.81 );

setRotateKey( spep_0 + 56 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_0 + 57 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_0 + 58 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_0 + 79 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_0 + 80 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 81 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 82 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 83 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 84 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 85 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 87 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 88 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_0 + 89 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_0 + 91 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 93 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_0 + 95 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 105 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 106 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 51.2 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, 51.2 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, 51.8 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, 51.8 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, 52.8 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, 52.8 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, 53 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, 53 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, 51.4 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, 51.4 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, 50.9 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, 50.9 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 50.3 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, 50.3 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, 50.1 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, 50.1 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, 50 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, 50 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, 49.8 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, 49.8 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, 49.7 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, 49.7 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, 49.6 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, 49.6 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 49.5 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, 49.5 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 49.3 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, 49.3 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, 49 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 49 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 48.9 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 48.9 );

setBlendColor( spep_0 + 56 + OFFSET_X, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_0 + 258 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--マントひるがえる
SE002 = playSeVer2( spep_0 + 32, 1332, "", 0, 0, 0, -1);

--向かってくる
SE003 = playSeVer2( spep_0 + 72, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 72, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 98; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);

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
--パンチ
SE005 = playSeVer2( spep_0 + 110, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE005, 141 );
SE006 = playSeVer2( spep_0 + 120, 1009, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 120, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE007, 78 );

--蹴り飛ばす
SE008 = playSeVer2( spep_0 + 158, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE008, 77 );
SE009 = playSeVer2( spep_0 + 160, 1120, "", 0, 0, 0, -1);

--空中でポーズとる
SE010 = playSeVer2( spep_0 + 204, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 212, 1017, "",spep_0 + 280, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 212, SE011, 71 );
SE012 = playSeVer2( spep_0 + 212, 1012, "", 0, 0, 0, -1);

--マントひるがえる
SE013 = playSeVer2( spep_0 + 228, 1332, "", 0, 0, 0, -1);

--ブラスター溜め
SE014 = playSeVer2( spep_0 + 288, 1334, "",spep_0 + 404, 6, 16, -1);
setStartTimeMs( SE014,  833 );
SE017 = playSeVer2( spep_0 + 294, 1157, "",spep_0 + 404, 0, 16, -1);
SE018 = playSeVer2( spep_0 + 288, 1282, "",spep_0 + 404, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 288, SE018, 71 );

--銃構える
SE016 = playSeVer2( spep_0 + 284, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 294, 1389, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 384f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--ブラスター発射
SE021 = playSeVer2( spep_1 + 86, 1258, "",spep_2 + 92, 0, 62, -1);
SE022 = playSeVer2( spep_1 + 88, 1027, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_1 + 88, 1145, "", 0, 0, 0, -1);


-------------------------------------------------
-- 銃発射〜着弾爆発
-------------------------------------------------
MAX_FRAME_2 = 178;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 銃発射〜着弾爆発(ef_002)
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


-- ** 音 ** --
--ブラスター発射
SE024 = playSeVer2( spep_2 + 12, 1312, "", 0, 0, 0, -1);

--爆発
SE025 = playSeVer2( spep_2 + 46, 1159, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 52, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
fadeKoLabel(1,0.5)
hideKoScreen();
dealDamage( spep_2 + 58); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 178f -0f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 指差し〜銃を構える
-------------------------------------------------
MAX_FRAME_0 = 384;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 指差し〜銃を構える(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

setupMovie(0 , SP_01, 0, 1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 276;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

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

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 56 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 258 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 56 + OFFSET_X, 1, 2 );
changeAnime( spep_0 + 108 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 116 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 126 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 168 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 56 + OFFSET_X, 1, -394.5, -83 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -394.5, -83 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -339.9, -85.2 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -339.9, -85.2 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -297.3, -86.8 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -297.3, -86.8 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -267, -88 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -267, -88 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -248.8, -88.7 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -248.8, -88.7 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -242.7, -89 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -242.7, -89 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -244.6, -90.3 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -244.6, -90.3 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -250.5, -94.1 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -250.5, -94.1 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -260.3, -100.6 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -260.3, -100.6 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -274.1, -109.6 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -274.1, -109.6 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -291.7, -121.2 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -291.7, -121.2 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -313.3, -135.4 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -313.3, -135.4 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -338.8, -152.1 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -338.8, -152.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -368.2, -171.4 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -368.2, -171.4 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -401.5, -193.3 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -401.5, -193.3 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -438.7, -217.8 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -438.7, -217.8 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -479.8, -244.9 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -479.8, -244.9 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -524.9, -274.5 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -524.9, -274.5 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -573.9, -306.7 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -573.9, -306.7 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -626.7, -341.4 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -626.7, -341.4 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -683.5, -378.8 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -683.5, -378.8 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -106, 6 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -106, 6 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -121.8, -22 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -121.8, -22 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -41.8, -22 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -41.8, -22 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 51.2, 198.1 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 51.2, 198.1 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 86.2, 168.3 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 86.2, 168.3 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 92.6, 180.8 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 92.6, 180.8 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 117.1, 226.5 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 117.1, 226.5 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 115, 191.1 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 115, 191.1 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 136.4, 240.3 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 136.4, 240.3 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 156.8, 215 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 156.8, 215 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 132.5, 238.8 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 132.5, 238.8 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 139, 212.1 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 139, 212.1 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 157.5, 253.3 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 157.5, 253.3 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 157.1, 222.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 157.1, 222.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 157.1, 233.7 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 157.1, 233.7 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 153.9, 233.5 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 153.9, 233.5 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 154, 233.5 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 154, 233.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 236, 135.6 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 236, 135.6 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 201.8, 115.4 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 201.8, 115.4 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 173.8, 98.9 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 173.8, 98.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 152, 86.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 152, 86.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 136.5, 76.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 136.5, 76.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 127.1, 71.4 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 127.1, 71.4 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 124, 69.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 124, 69.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 84, 63.6 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 84, 63.6 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 104, 103.6 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 104, 103.6 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 151.7, 77.8 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 151.7, 77.8 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 193.4, 170 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 193.4, 170 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 259.2, 165.8 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 259.2, 165.8 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 257.8, 210.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 257.8, 210.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 274.9, 201.4 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 274.9, 201.4 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 303.7, 219.7 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 303.7, 219.7 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 300.8, 225.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 300.8, 225.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 294.2, 228 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 294.2, 228 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 197.7, -223.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 197.7, -223.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 198.2, -220.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 198.2, -220.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 199.3, -212.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 199.3, -212.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 200.9, -199.8 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 200.9, -199.8 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 202.9, -184.6 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 202.9, -184.6 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 204.8, -169.8 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 204.8, -169.8 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 206.4, -158.1 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 206.4, -158.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 207.4, -150.3 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 207.4, -150.3 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 207.7, -146.1 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 207.7, -146.1 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 211.5, -133.4 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 211.5, -133.4 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 227, -82.1 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 227, -82.1 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 242, -32.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 242, -32.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 251.3, -1.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 251.3, -1.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 257.4, 18.8 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 257.4, 18.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 261.7, 33.2 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 261.7, 33.2 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 264.8, 43.5 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 264.8, 43.5 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 267.2, 51.5 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 267.2, 51.5 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 269.3, 58.3 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 269.3, 58.3 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 271.1, 64.4 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 271.1, 64.4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 272.8, 70.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 272.8, 70.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 274.4, 75.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 274.4, 75.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 276, 80.5 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 276, 80.5 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 277.5, 85.4 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 277.5, 85.4 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 278.9, 90.2 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 278.9, 90.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 280.3, 94.8 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 280.3, 94.8 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 281.7, 99.4 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 281.7, 99.4 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 283, 103.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 283, 103.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 284.4, 108.3 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 284.4, 108.3 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 285.7, 112.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 285.7, 112.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 287, 117.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 287, 117.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 288.3, 121.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 288.3, 121.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 289.6, 125.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 289.6, 125.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 290.9, 130 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 290.9, 130 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 292.2, 134.3 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 292.2, 134.3 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 293.7, 138 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 293.7, 138 , 0 );

setScaleKey( spep_0 + 56 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 5.78, 5.78 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 5.78, 5.78 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 6.19, 6.19 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 6.19, 6.19 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 6.65, 6.65 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 6.65, 6.65 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 7.16, 7.16 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 7.16, 7.16 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 7.72, 7.72 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 7.72, 7.72 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 8.33, 8.33 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 8.33, 8.33 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 8.98, 8.98 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 8.98, 8.98 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 9.69, 9.69 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 9.69, 9.69 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.53, 0.52 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.53, 0.52 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.56, 0.54 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.56, 0.54 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.57, 0.56 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.57, 0.56 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.58, 0.56 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 0.58, 0.56 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.59, 0.57 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 0.59, 0.57 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.6, 0.58 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.6, 0.58 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.64, 0.62 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.64, 0.62 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.68, 0.66 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 0.68, 0.66 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.7, 0.69 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 0.7, 0.69 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.73, 0.72 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 0.73, 0.72 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.74, 0.73 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 0.74, 0.73 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.75, 0.74 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.75, 0.74 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.76, 0.75 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.76, 0.75 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.78, 0.77 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.78, 0.77 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 0.79, 0.78 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 0.79, 0.78 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.8, 0.79 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 0.8, 0.79 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.81, 0.81 );

setRotateKey( spep_0 + 56 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_0 + 57 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_0 + 58 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_0 + 79 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_0 + 80 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_0 + 81 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_0 + 82 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_0 + 83 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_0 + 84 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_0 + 85 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 87 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 88 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 89 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_0 + 91 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_0 + 93 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_0 + 95 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_0 + 105 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_0 + 106 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -51.2 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, -51.2 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -51.3 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -51.3 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -51.8 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -51.8 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -52.1 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -52.1 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -52.5 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -52.5 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -53 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -53 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -52.1 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -52.1 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -51.4 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -51.4 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -50.3 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -50.3 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -50.2 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -50.2 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -50.1 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -50.1 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -50 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -50 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -49.7 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -49.7 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -49.6 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -49.6 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -49.5 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -49.5 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -49.4 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -49.4 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -49.3 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -49.3 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -49 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -49 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -48.9 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -48.9 );

setBlendColor( spep_0 + 56 + OFFSET_X, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_0 + 258 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--マントひるがえる
SE002 = playSeVer2( spep_0 + 32, 1332, "", 0, 0, 0, -1);

--向かってくる
SE003 = playSeVer2( spep_0 + 72, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 72, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 98; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);

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
--パンチ
SE005 = playSeVer2( spep_0 + 110, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE005, 141 );
SE006 = playSeVer2( spep_0 + 120, 1009, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 120, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE007, 78 );

--蹴り飛ばす
SE008 = playSeVer2( spep_0 + 158, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE008, 77 );
SE009 = playSeVer2( spep_0 + 160, 1120, "", 0, 0, 0, -1);

--空中でポーズとる
SE010 = playSeVer2( spep_0 + 204, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 212, 1017, "",spep_0 + 280, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 212, SE011, 71 );
SE012 = playSeVer2( spep_0 + 212, 1012, "", 0, 0, 0, -1);

--マントひるがえる
SE013 = playSeVer2( spep_0 + 228, 1332, "", 0, 0, 0, -1);

--ブラスター溜め
SE014 = playSeVer2( spep_0 + 288, 1334, "",spep_0 + 404, 6, 16, -1);
setStartTimeMs( SE014,  833 );
SE017 = playSeVer2( spep_0 + 294, 1157, "",spep_0 + 404, 0, 16, -1);
SE018 = playSeVer2( spep_0 + 288, 1282, "",spep_0 + 404, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 288, SE018, 71 );

--銃構える
SE016 = playSeVer2( spep_0 + 284, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 294, 1389, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 384f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--ブラスター発射
SE021 = playSeVer2( spep_1 + 86, 1258, "",spep_2 + 92, 0, 62, -1);
SE022 = playSeVer2( spep_1 + 88, 1027, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_1 + 88, 1145, "", 0, 0, 0, -1);


-------------------------------------------------
-- 銃発射〜着弾爆発
-------------------------------------------------
MAX_FRAME_2 = 178;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 銃発射〜着弾爆発(ef_002)
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


-- ** 音 ** --
--ブラスター発射
SE024 = playSeVer2( spep_2 + 12, 1312, "", 0, 0, 0, -1);

--爆発
SE025 = playSeVer2( spep_2 + 46, 1159, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 52, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
fadeKoLabel(1,0.5)
hideKoScreen();
dealDamage( spep_2 + 58); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 178f -0f

end