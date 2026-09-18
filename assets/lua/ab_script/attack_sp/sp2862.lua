--1031220:LR_超サイヤ人2カリフラ+超サイヤ人2ケール_必殺技：インパルスラッシュ
--sp_effect_a2_00257
--sp2862

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 163770; --開始カットイン～カードカットインまで ef_001
SP_02  = 163774; --カードカットイン～フィニッシュまで ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_1 = spep_0 + 342;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 24);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 24, SP_01, spep_2 + 24 - 1 + 2, 1);

        -- ** 音 ** --
        --集中線
        SE036 = playSeVer2( spep_2 + 24 + 3, 1452, "", 0, 0, 0, -1);
        --振りかぶる
        SE037 = playSeVer2( spep_2 + 24 + 3, 1000, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 24 + 3, SE037, 67 );
        SE038 = playSeVer2( spep_2 + 24 + 3, 1182, "", 0, 0, 0, -1);
        SE039 = playSeVer2( spep_2 + 24 + 3, 1167, "",spep_2 + 62, 0, 16, -1);
        setSeVolumeByWorkId( spep_2 + 24 + 3, SE039, 45 );
        SE040 = playSeVer2( spep_2 + 24 + 3, 1116, "",spep_2 + 68, 0, 20, -1);


    else 

        setupMovie(0 , SP_01, 0, 1);

    end
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始カットイン～カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 342;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始カットイン～カードカットインまで(ef_001)
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
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[
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
setDisp( spep_0 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 252 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 90 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 132 + OFFSET_X, 1, 101 );
changeAnime( spep_0 + 140 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 158 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 194 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 90 + OFFSET_X, 1, 378.5, -64.5 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 378.5, -64.5 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 378.1, -64.1 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 378.1, -64.1 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 377.7, -63.7 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 377.7, -63.7 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 377.3, -63.3 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 377.3, -63.3 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 376.9, -62.9 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 376.9, -62.9 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 376.5, -62.5 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 376.5, -62.5 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 376.1, -62 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 376.1, -62 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 375.7, -61.7 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 375.7, -61.7 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 365.5, -56.2 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 365.5, -56.2 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 355.4, -50.8 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 355.4, -50.8 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 345.3, -45.4 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 345.3, -45.4 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 335.2, -40 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 335.2, -40 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 325, -34.6 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 325, -34.6 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 314.9, -29.2 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 314.9, -29.2 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 304.8, -23.8 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 304.8, -23.8 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 294.7, -18.4 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 294.7, -18.4 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 284.6, -13 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 284.6, -13 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 274.4, -7.5 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 274.4, -7.5 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 264.3, -2.1 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 264.3, -2.1 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 254.2, 3.3 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 254.2, 3.3 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 244, 8.7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 244, 8.7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 122.9, 41.6 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 122.9, 41.6 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 100.2, 64.3 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 100.2, 64.3 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 162.4, -0.3 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 162.4, -0.3 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 128, 50.4 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 128, 50.4 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 92.9, 48.7 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 92.9, 48.7 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 132.9, 54.5 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 132.9, 54.5 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 104.3, 133 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 104.3, 133 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 132.1, 94.6 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 132.1, 94.6 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 123, 80 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 123, 80 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 164.2, 105.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 164.2, 105.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 146.2, 128.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 146.2, 128.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 113.4, 108.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 113.4, 108.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 132.2, 138.8 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 132.2, 138.8 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 147.7, 117.1 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 147.7, 117.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 150.1, 110.2 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 150.1, 110.2 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 152.5, 103.2 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 152.5, 103.2 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 154.9, 96.3 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 154.9, 96.3 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 157.3, 89.4 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 157.3, 89.4 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 128.4, 224.4 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 128.4, 224.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 140.1, 125.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 140.1, 125.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 166.6, 147.6 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 166.6, 147.6 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 155.5, 170.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 155.5, 170.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 138.7, 173.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 138.7, 173.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 147.2, 161.2 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 147.2, 161.2 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 146.7, 164.1 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 146.7, 164.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 146.2, 167 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 146.2, 167 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 145.8, 169.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 145.8, 169.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 88.2, 200.6 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 88.2, 200.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 65.5, 223.3 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 65.5, 223.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 126.9, 167.7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 126.9, 167.7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 198.9, 219 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 198.9, 219 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 163.7, 178.9 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 163.7, 178.9 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 203.7, 184.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 203.7, 184.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 55.5, 208.6 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 55.5, 208.6 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 95.6, 180.8 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 95.6, 180.8 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 86.5, 166.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 86.5, 166.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 193.7, 210.2 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 193.7, 210.2 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 183.9, 225.7 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 183.9, 225.7 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 229, 200.4 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 229, 200.4 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 57, 143.2 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 57, 143.2 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 73.3, 180.8 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 73.3, 180.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 63.7, 188.8 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 63.7, 188.8 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 215.2, 181.4 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 215.2, 181.4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 177.6, 263.2 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 177.6, 263.2 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 163.7, 178.9 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 163.7, 178.9 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 96.4, 140.7 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 96.4, 140.7 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 74.3, 180.8 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 74.3, 180.8 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 95.6, 180.8 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 95.6, 180.8 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 193.7, 210.2 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 193.7, 210.2 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 143.8, 224.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 143.8, 224.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 92.2, 156.3 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 92.2, 156.3 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 57, 143.2 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 57, 143.2 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 73.3, 180.8 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 73.3, 180.8 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 171, 232.9 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 171, 232.9 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 215.2, 181.4 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 215.2, 181.4 , 0 );

setScaleKey( spep_0 + 90 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 2.6, 2.6 );

setRotateKey( spep_0 + 90 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -5 );


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 156, 0, 46, -1);
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );
SE004 = playSeVer2( spep_0 + 22, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE004, 50 );

--構える
SE005 = playSeVer2( spep_0 + 16, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE005, 170 );
SE006 = playSeVer2( spep_0 + 16, 1233, "", 0, 0, 0, -1);

--オーラ
SE007 = playSeVer2( spep_0 + 46, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE007, 50 );
SE008 = playSeVer2( spep_0 + 70, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE008, 50 );
SE009 = playSeVer2( spep_0 + 94, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE009, 50 );

--向かっていく
SE010 = playSeVer2( spep_0 + 96, 1182, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 96, 1277, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 96, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 124; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
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
--ラッシュ
SE013 = playSeVer2( spep_0 + 134, 1000, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 134, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 140, 1000, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 152, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 162, 1001, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 168, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 184, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 188, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 188, SE020, 63 );
SE021 = playSeVer2( spep_0 + 200, 1000, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 200, 1009, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 206, 1000, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 218, 1110, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 230, 1000, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 236, 1110, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 238, 1356, "",spep_0 + 362, 0, 18, -1);
setPitch( spep_0 + 238, SE027, 300 );
setTimeStretch( SE027, 1.2, 30, 4 );
setSeVolumeByWorkId( spep_0 + 238, SE027, 70 );
SE028 = playSeVer2( spep_0 + 246, 1425, "",spep_0 + 358, 0, 16, -1);
SE029 = playSeVer2( spep_0 + 246, 1010, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 272, 1009, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 290, 1010, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 312, 1009, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --342f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--集中線
SE034 = playSeVer2( spep_1 + 82, 8, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_1 + 82, 1072, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_1 + 88, 1452, "", 0, 0, 0, -1);


-------------------------------------------------
-- カードカットイン～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 260;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン～フィニッシュまで(ef_002)
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
--敵の動き1
setDisp( spep_2 + 62 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 112 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 62 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 62 + OFFSET_X, 1, 181.2, -100.2 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 181.2, -100.2 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 195.2, -83.2 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 195.2, -83.2 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 209.2, -137.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 209.2, -137.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 152.5, -91.1 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 152.5, -91.1 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 193.7, -110.1 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 193.7, -110.1 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 195.2, -83.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 195.2, -83.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 209.2, -137.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 209.2, -137.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 152.5, -91.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 152.5, -91.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 193.7, -110.1 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 193.7, -110.1 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 174.2, -100.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 174.2, -100.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 181.2, -100.2 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 181.2, -100.2 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 74.1, -49 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 74.1, -49 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 29.7, -36.2 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 29.7, -36.2 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 7.4, -20.5 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 7.4, -20.5 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 3.6, -19.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 3.6, -19.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -2.4, -20.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -2.4, -20.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 3.9, -25.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 3.9, -25.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 1.5, -22.5 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 1.5, -22.5 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 20.1, -2.4 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 20.1, -2.4 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 121.7, -24.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 121.7, -24.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 155.8, -21.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 155.8, -21.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 238.5, -3.5 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 238.5, -3.5 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 367.2, -13.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 367.2, -13.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 479.7, -1.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 479.7, -1.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 631.1, -1.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 631.1, -1.6 , 0 );

setScaleKey( spep_2 + 62 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.57, 0.57 );

setRotateKey( spep_2 + 62 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -64 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -24.5 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -24.5 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 29 );


--敵の動き2
setDisp( spep_2 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 142 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 122 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 122 + OFFSET_X, 1, -23.2, 92.5 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -23.2, 92.5 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -26.1, 86.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -26.1, 86.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -16.7, 74.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -16.7, 74.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -16.1, 72.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -16.1, 72.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -13.2, 66.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -13.2, 66.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -10.4, 61.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -10.4, 61.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -7.6, 55.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -7.6, 55.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -4.8, 50 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -4.8, 50 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -2.1, 44.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -2.1, 44.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -2.1, 44.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -2.1, 44.3 , 0 );

setScaleKey( spep_2 + 122 + OFFSET_X, 1, 6.21, 6.21 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 6.21, 6.21 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.31, 0.31 );

setRotateKey( spep_2 + 122 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--振りかぶる
SE037 = playSeVer2( spep_2 + 14, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE037, 67 );
SE038 = playSeVer2( spep_2 + 14, 1182, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 14, 1167, "",spep_2 + 62, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 14, SE039, 45 );
SE040 = playSeVer2( spep_2 + 22, 1116, "",spep_2 + 68, 0, 20, -1);

--殴り
SE041 = playSeVer2( spep_2 + 46, 1003, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 52, 1187, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 52, 1009, "", 0, 0, 0, -1);

--風圧音
SE044 = playSeVer2( spep_2 + 58, 1427, "", 0, 0, 0, -1);

--飛ばす
SE045 = playSeVer2( spep_2 + 74, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE046 = playSeVer2( spep_2 + 100, 1121, "",spep_2 + 186, 0, 46, -1);

--岩激突
SE047 = playSeVer2( spep_2 + 130, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 142); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); --260f -2f


else


------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始カットイン～カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 342;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始カットイン～カードカットインまで(ef_001)
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
--spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[
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
setDisp( spep_0 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 252 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 90 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 132 + OFFSET_X, 1, 1 );
changeAnime( spep_0 + 140 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 158 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 194 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 90 + OFFSET_X, 1, -378.5, -64.5 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -378.5, -64.5 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -378.1, -64.1 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -378.1, -64.1 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -377.7, -63.7 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -377.7, -63.7 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -377.3, -63.3 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -377.3, -63.3 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -376.9, -62.9 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -376.9, -62.9 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -376.5, -62.5 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -376.5, -62.5 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -376.1, -62 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -376.1, -62 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -375.7, -61.7 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -375.7, -61.7 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -365.5, -56.2 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -365.5, -56.2 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -355.4, -50.8 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -355.4, -50.8 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -345.3, -45.4 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -345.3, -45.4 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -335.2, -40 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -335.2, -40 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -325, -34.6 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -325, -34.6 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -314.9, -29.2 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -314.9, -29.2 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -304.8, -23.8 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -304.8, -23.8 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -294.7, -18.4 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -294.7, -18.4 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -284.6, -13 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -284.6, -13 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -274.4, -7.5 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -274.4, -7.5 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -264.3, -2.1 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -264.3, -2.1 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -254.2, 3.3 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -254.2, 3.3 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -244, 8.7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -244, 8.7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -122.9, 41.6 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -122.9, 41.6 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -100.2, 64.3 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -100.2, 64.3 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -162.4, -0.3 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -162.4, -0.3 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -128, 50.4 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -128, 50.4 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -92.9, 48.7 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -92.9, 48.7 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -132.9, 54.5 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -132.9, 54.5 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -104.3, 133 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -104.3, 133 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -132.1, 94.6 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -132.1, 94.6 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -123, 80 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -123, 80 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -164.2, 105.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -164.2, 105.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -146.2, 128.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -146.2, 128.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -113.4, 108.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -113.4, 108.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -132.2, 138.8 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -132.2, 138.8 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -147.7, 117.1 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -147.7, 117.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -150.1, 110.2 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -150.1, 110.2 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -152.5, 103.2 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -152.5, 103.2 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -154.9, 96.3 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -154.9, 96.3 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -157.3, 89.4 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -157.3, 89.4 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -128.4, 224.4 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -128.4, 224.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -140.1, 125.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -140.1, 125.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -166.6, 147.6 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -166.6, 147.6 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -155.5, 170.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -155.5, 170.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -138.7, 173.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -138.7, 173.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -147.2, 161.2 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -147.2, 161.2 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -146.7, 164.1 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -146.7, 164.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -146.2, 167 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -146.2, 167 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -145.8, 169.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -145.8, 169.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -88.2, 200.6 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -88.2, 200.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -65.5, 223.3 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -65.5, 223.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -126.9, 167.7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -126.9, 167.7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -198.9, 219 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -198.9, 219 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -163.7, 178.9 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -163.7, 178.9 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -203.7, 184.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -203.7, 184.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -55.5, 208.6 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -55.5, 208.6 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -95.6, 180.8 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -95.6, 180.8 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -86.5, 166.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -86.5, 166.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -193.7, 210.2 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -193.7, 210.2 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -183.9, 225.7 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -183.9, 225.7 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -229, 200.4 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -229, 200.4 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -57, 143.2 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -57, 143.2 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -73.3, 180.8 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -73.3, 180.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -63.7, 188.8 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -63.7, 188.8 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -215.2, 181.4 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -215.2, 181.4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -177.6, 263.2 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -177.6, 263.2 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -163.7, 178.9 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -163.7, 178.9 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -96.4, 140.7 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -96.4, 140.7 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -74.3, 180.8 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -74.3, 180.8 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -95.6, 180.8 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -95.6, 180.8 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -193.7, 210.2 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -193.7, 210.2 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -143.8, 224.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -143.8, 224.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -92.2, 156.3 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -92.2, 156.3 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -57, 143.2 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -57, 143.2 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -73.3, 180.8 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -73.3, 180.8 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -171, 232.9 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -171, 232.9 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -215.2, 181.4 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -215.2, 181.4 , 0 );

setScaleKey( spep_0 + 90 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 2.6, 2.6 );

setRotateKey( spep_0 + 90 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 6.9 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, 6.9 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, 5 );


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 156, 0, 46, -1);
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );
SE004 = playSeVer2( spep_0 + 22, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE004, 50 );

--構える
SE005 = playSeVer2( spep_0 + 16, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE005, 170 );
SE006 = playSeVer2( spep_0 + 16, 1233, "", 0, 0, 0, -1);

--オーラ
SE007 = playSeVer2( spep_0 + 46, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE007, 50 );
SE008 = playSeVer2( spep_0 + 70, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE008, 50 );
SE009 = playSeVer2( spep_0 + 94, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE009, 50 );

--向かっていく
SE010 = playSeVer2( spep_0 + 96, 1182, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 96, 1277, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 96, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 124; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
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
--ラッシュ
SE013 = playSeVer2( spep_0 + 134, 1000, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 134, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 140, 1000, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 152, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 162, 1001, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 168, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 184, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 188, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 188, SE020, 63 );
SE021 = playSeVer2( spep_0 + 200, 1000, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 200, 1009, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 206, 1000, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 218, 1110, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 230, 1000, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 236, 1110, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 238, 1356, "",spep_0 + 362, 0, 18, -1);
setPitch( spep_0 + 238, SE027, 300 );
setTimeStretch( SE027, 1.2, 30, 4 );
setSeVolumeByWorkId( spep_0 + 238, SE027, 70 );
SE028 = playSeVer2( spep_0 + 246, 1425, "",spep_0 + 358, 0, 16, -1);
SE029 = playSeVer2( spep_0 + 246, 1010, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 272, 1009, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 290, 1010, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 312, 1009, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --342f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--集中線
SE034 = playSeVer2( spep_1 + 82, 8, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_1 + 82, 1072, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_1 + 88, 1452, "", 0, 0, 0, -1);


-------------------------------------------------
-- カードカットイン～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 260;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン～フィニッシュまで(ef_002)
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
--敵の動き1
setDisp( spep_2 + 62 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 112 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 62 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 62 + OFFSET_X, 1, -181.2, -100.2 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -181.2, -100.2 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -195.2, -83.2 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -195.2, -83.2 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -209.2, -137.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -209.2, -137.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -152.5, -91.1 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -152.5, -91.1 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -193.7, -110.1 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -193.7, -110.1 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -195.2, -83.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -195.2, -83.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -209.2, -137.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -209.2, -137.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -152.5, -91.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -152.5, -91.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -193.7, -110.1 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -193.7, -110.1 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -174.2, -100.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -174.2, -100.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -181.2, -100.2 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -181.2, -100.2 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -74.1, -49 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -74.1, -49 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -29.7, -36.2 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -29.7, -36.2 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -7.4, -20.5 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -7.4, -20.5 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -3.6, -19.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -3.6, -19.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 2.4, -20.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 2.4, -20.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -3.9, -25.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -3.9, -25.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -1.5, -22.5 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -1.5, -22.5 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -20.1, -2.4 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -20.1, -2.4 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -121.7, -24.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -121.7, -24.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -155.8, -21.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -155.8, -21.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -238.5, -3.5 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -238.5, -3.5 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -367.2, -13.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -367.2, -13.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -479.7, -1.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -479.7, -1.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -631.1, -1.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -631.1, -1.6 , 0 );

setScaleKey( spep_2 + 62 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.57, 0.57 );

setRotateKey( spep_2 + 62 + OFFSET_X, 1, 64 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 64 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -8 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -8 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -29 );


--敵の動き2
setDisp( spep_2 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 142 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 122 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 122 + OFFSET_X, 1, 23.2, 92.5 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 23.2, 92.5 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 26.1, 86.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 26.1, 86.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 16.7, 74.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 16.7, 74.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 16.1, 72.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 16.1, 72.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 13.2, 66.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 13.2, 66.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 10.4, 61.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 10.4, 61.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 7.6, 55.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 7.6, 55.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 4.8, 50 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 4.8, 50 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 2.1, 44.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 2.1, 44.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 2.1, 44.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 2.1, 44.3 , 0 );

setScaleKey( spep_2 + 122 + OFFSET_X, 1, 6.21, 6.21 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 6.21, 6.21 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.31, 0.31 );

setRotateKey( spep_2 + 122 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--振りかぶる
SE037 = playSeVer2( spep_2 + 14, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE037, 67 );
SE038 = playSeVer2( spep_2 + 14, 1182, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 14, 1167, "",spep_2 + 62, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 14, SE039, 45 );
SE040 = playSeVer2( spep_2 + 22, 1116, "",spep_2 + 68, 0, 20, -1);

--殴り
SE041 = playSeVer2( spep_2 + 46, 1003, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 52, 1187, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 52, 1009, "", 0, 0, 0, -1);

--風圧音
SE044 = playSeVer2( spep_2 + 58, 1427, "", 0, 0, 0, -1);

--飛ばす
SE045 = playSeVer2( spep_2 + 74, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE046 = playSeVer2( spep_2 + 100, 1121, "",spep_2 + 186, 0, 46, -1);

--岩激突
SE047 = playSeVer2( spep_2 + 130, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 142); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); --260f -2f


end