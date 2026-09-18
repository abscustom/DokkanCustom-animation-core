--4028170:UR_ヒルデガーン(完全体)_必殺技：幻魔火炎砲
--sp_effect_a9_00119
--sp2650

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162545;	--飛び立ち〜激突後のカットインまで	ef_001
SP_01b = 162546;	--飛び立ち〜激突後のカットインまで	ef_001b
SP_02 = 162547;	--火吹き〜フィニッシュまで	ef_002

--エフェクト(てき)

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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_c = spep_0 + 556;
        spep_1 = spep_c + 94;

        timing_skip = 0;

        skipFrame(0, spep_1 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --火吹く
        SE030 = playSeVer2( spep_1 + 0 + 3, 1027, "", 0, 0, 0, -1);
        SE031 = playSeVer2( spep_1 + 0 + 3, 1258, "",spep_1 + 94, 0, 36, -1);
        setSeVolumeByWorkId( spep_1 + 0 + 3, SE031, 80 );
        SE032 = playSeVer2( spep_1 + 0 + 3, 1268, "",spep_1 + 142, 0, 24, -1);
        setSeVolumeByWorkId( spep_1 + 0 + 3, SE032, 191 );
        SE033 = playSeVer2( spep_1 + 0 + 3, 1213, "",spep_1 + 144, 0, 26, -1);
        setSeVolumeByWorkId( spep_1 + 0 + 3, SE033, 82 );

    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 飛び立ち〜激突後のカットインまで
-------------------------------------------------

MAX_FRAME_0 = 556;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 118 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 186 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 118 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 170 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 118 + OFFSET_X, 1, 101.7, -10.3 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 101.7, -10.3 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 101, -10.3 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 101, -10.3 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 100.3, -10.3 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 100.3, -10.3 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 99.5, -10.3 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 99.5, -10.3 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 98.8, -10.3 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 98.8, -10.3 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 98.1, -10.3 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 98.1, -10.3 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 97.4, -10.3 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 97.4, -10.3 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 96.7, -10.3 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 96.7, -10.3 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 96, -10.3 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 96, -10.3 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 95.2, -10.3 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 95.2, -10.3 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 94.5, -10.4 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 94.5, -10.4 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 93.8, -10.4 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 93.8, -10.4 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 93.1, -10.4 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 93.1, -10.4 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 92.4, -10.4 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 92.4, -10.4 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 91.6, -10.4 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 91.6, -10.4 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 90.9, -10.4 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 90.9, -10.4 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 90.2, -10.4 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 90.2, -10.4 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 89.5, -10.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 89.5, -10.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 88.8, -10.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 88.8, -10.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 88.1, -10.5 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 88.1, -10.5 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 87.3, -10.5 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 87.3, -10.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 86.6, -10.5 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 86.6, -10.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 85.9, -10.5 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 85.9, -10.5 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 85.2, -10.5 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 85.2, -10.5 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 84.5, -10.5 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 84.5, -10.5 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 83.7, -10.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 83.7, -10.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 260.3, -33.4 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 260.3, -33.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 206.5, -26.3 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 206.5, -26.3 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 151.6, -19.1 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 151.6, -19.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 229.5, -28.6 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 229.5, -28.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 193, -23.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 193, -23.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 155.8, -19.1 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 155.8, -19.1 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 275.2, -33.3 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 275.2, -33.3 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 158.7, -19 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 158.7, -19 , 0 );

setScaleKey( spep_0 + 118 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.74, 0.74 );

setRotateKey( spep_0 + 118 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -15.3 );

-- 敵の動き2
setDisp( spep_0 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 276 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 252 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 210 + OFFSET_X, 1, 409.3, -617.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 409.3, -617.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 381.9, -524.8 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 381.9, -524.8 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 354.5, -432 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 354.5, -432 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 327.3, -339.5 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 327.3, -339.5 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 300.1, -247.2 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 300.1, -247.2 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 272.9, -155.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 272.9, -155.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 245.9, -63.3 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 245.9, -63.3 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 218.9, 28.3 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 218.9, 28.3 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 217.1, 34.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 217.1, 34.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 215.5, 39.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 215.5, 39.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 213.9, 44.8 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 213.9, 44.8 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 212.5, 49.6 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 212.5, 49.6 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 211.1, 54.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 211.1, 54.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 209.8, 58.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 209.8, 58.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 208.7, 62.2 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 208.7, 62.2 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 207.6, 65.8 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 207.6, 65.8 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 206.7, 69 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 206.7, 69 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 205.8, 71.9 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 205.8, 71.9 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 205, 74.4 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 205, 74.4 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 204.4, 76.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 204.4, 76.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 203.8, 78.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 203.8, 78.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 226.1, -37.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 226.1, -37.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 395.6, -65.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 395.6, -65.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 310.8, -51.4 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 310.8, -51.4 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 226.1, -37.4 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 226.1, -37.4 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 339.1, -56.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 339.1, -56.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 282.6, -46.8 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 282.6, -46.8 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 226.1, -37.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 226.1, -37.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 395.6, -65.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 395.6, -65.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 414.8, -16.9 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 414.8, -16.9 , 0 );

setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 3.15, 3.15 );

setRotateKey( spep_0 + 210 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -12.1 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -12.1 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -8.1 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -8.1 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 32.8 );

-- 敵の動き3
setDisp( spep_0 + 414 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 444 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 414 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 414 + OFFSET_X, 1, 1.5, 122.7 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 1.5, 122.7 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 5.9, 118.4 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 5.9, 118.4 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -3.4, 127.7 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -3.4, 127.7 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -3.5, 118.9 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -3.5, 118.9 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 5.4, 128.1 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 5.4, 128.1 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 0.7, 123.8 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 0.7, 123.8 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 5.1, 119.5 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 5.1, 119.5 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -4.2, 128.8 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -4.2, 128.8 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -4.3, 119.9 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -4.3, 119.9 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 4.6, 129.1 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 4.6, 129.1 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 0, 124.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 0, 124.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 4.4, 120.5 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 4.4, 120.5 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -4.9, 129.8 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -4.9, 129.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -5, 120.9 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -5, 120.9 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 3.9, 130.1 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 3.9, 130.1 , 0 );

setScaleKey( spep_0 + 414 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 0.63, 0.63 );

setRotateKey( spep_0 + 414 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, 0 );

-- 敵の動き4
setDisp( spep_0 + 454 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 478 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 454 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 478 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 454 + OFFSET_X, 1, -19.8, 218.6 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -19.8, 218.6 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 44.1, 138.5 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 44.1, 138.5 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -102.9, 41.4 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -102.9, 41.4 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -19.8, 218.6 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -19.8, 218.6 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 44.1, 138.5 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 44.1, 138.5 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -102.9, 41.4 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -102.9, 41.4 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -19.8, 218.6 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -19.8, 218.6 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 44.1, 138.5 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 44.1, 138.5 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -102.9, 41.4 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -102.9, 41.4 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -19.8, 218.6 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -19.8, 218.6 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 44.1, 138.5 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 44.1, 138.5 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -102.9, 41.4 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -102.9, 41.4 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -501.3, 452.6 , 0 );

setScaleKey( spep_0 + 454 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.37, 0.37 );

setRotateKey( spep_0 + 454 + OFFSET_X, 1, -79 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, -79 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, 55.8 );

-- 敵の動き5
setDisp( spep_0 + 480 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 494 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 480 + OFFSET_X, 1, -425.2, 391.7 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -425.2, 391.7 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -349.1, 330.7 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -349.1, 330.7 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -273, 269.8 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -273, 269.8 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -196.9, 208.8 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -196.9, 208.8 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -99.6, 131.3 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -99.6, 131.3 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -2.4, 53.7 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -2.4, 53.7 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 94.8, -23.9 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 94.8, -23.9 , 0 );

setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 0.37, 0.37 );

setRotateKey( spep_0 + 480 + OFFSET_X, 1, 55.8 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, 55.8 );

-- ** 音 ** --
--羽広げる
SE001 = playSeVer2( spep_0 + 0, 1373, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1348, "", 0, 0, 0, -1);

--飛んでくる
SE004 = playSeVer2( spep_0 + 48, 1182, "", 0, 0, 0, 0.6);
SE005 = playSeVer2( spep_0 + 48, 1011, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 68, 9, "", 0, 0, 0, -1);
setTimeStretch( SE006, 1.24, 30, 4 );

--接近する
SE007 = playSeVer2( spep_0 + 106, 1232, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
--接近する
SE008 = playSeVer2( spep_0 + 118, 1188, "", 0, 14, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 118, SE008, 79 );
setStartTimeMs( SE008,  67 );
SE009 = playSeVer2( spep_0 + 122, 1182, "", 0, 14, 0, 0.6);
setStartTimeMs( SE009,  33 );

--殴る
SE010 = playSeVer2( spep_0 + 154, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 166, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 166, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE012, 81 );

--振りかぶる
SE013 = playSeVer2( spep_0 + 208, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 208, 1116, "",spep_0 + 250, 0, 18, -1);

--裏拳
SE015 = playSeVer2( spep_0 + 240, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE015, 71 );
SE016 = playSeVer2( spep_0 + 240, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE016, 77 );
SE017 = playSeVer2( spep_0 + 240, 1120, "", 0, 0, 0, -1);
setPitch( spep_0 + 240, SE017, -400 );
setTimeStretch( SE017, 0.73, 30, 4 );

--振りかぶる２
SE018 = playSeVer2( spep_0 + 288, 1072, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 300, 8, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 310, 1068, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_0 + 310, SE020, 65 );
setStartTimeMs( SE020,  67 );
SE021 = playSeVer2( spep_0 + 320, 1182, "", 0, 10, 0, 0.6);
setStartTimeMs( SE021,  133 );

--パンチ繰り出す
SE022 = playSeVer2( spep_0 + 388, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 388, 9, "", 0, 0, 0, -1);

--パンチヒット
SE024 = playSeVer2( spep_0 + 428, 1123, "",spep_0 + 568, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 428, SE024, 80 );
SE025 = playSeVer2( spep_0 + 432, 1187, "",spep_0 + 566, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 432, SE025, 80 );
SE026 = playSeVer2( spep_0 + 432, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE026, 80 );

--敵飛んでいく
SE027 = playSeVer2( spep_0 + 468, 1277, "",spep_0 + 572, 0, 12, -1);

--激突
SE028 = playSeVer2( spep_0 + 482, 1159, "",spep_0 + 572, 0, 14, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --556F


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- 火吹き〜フィニッシュまで
-------------------------------------------------

MAX_FRAME_1 = 250;

-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -2, base_1, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -1, base_1, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--火吹く
SE030 = playSeVer2( spep_1 + 0, 1027, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 0, 1258, "",spep_1 + 94, 0, 36, -1);
setSeVolumeByWorkId( spep_1 + 0, SE031, 80 );
SE032 = playSeVer2( spep_1 + 0, 1268, "",spep_1 + 142, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 0, SE032, 191 );
SE033 = playSeVer2( spep_1 + 0, 1213, "",spep_1 + 144, 0, 26, -1);
setSeVolumeByWorkId( spep_1 + 0, SE033, 82 );

--火の海
SE034 = playSeVer2( spep_1 + 122, 1268, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 122, SE034, 251 );
SE035 = playSeVer2( spep_1 + 122, 1067, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_1 + 122, 1024, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_1 + 160, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 140); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 250F-4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 飛び立ち〜激突後のカットインまで
-------------------------------------------------

MAX_FRAME_0 = 556;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 118 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 186 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 118 + OFFSET_X, 1, 18 );
changeAnime( spep_0 + 170 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 118 + OFFSET_X, 1, -101.7, -10.3 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -101.7, -10.3 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -101, -10.3 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -101, -10.3 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -100.3, -10.3 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -100.3, -10.3 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -99.5, -10.3 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -99.5, -10.3 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -98.8, -10.3 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -98.8, -10.3 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -98.1, -10.3 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -98.1, -10.3 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -97.4, -10.3 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -97.4, -10.3 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -96.7, -10.3 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -96.7, -10.3 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -96, -10.3 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -96, -10.3 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -95.2, -10.3 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -95.2, -10.3 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -94.5, -10.4 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -94.5, -10.4 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -93.8, -10.4 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -93.8, -10.4 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -93.1, -10.4 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -93.1, -10.4 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -92.4, -10.4 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -92.4, -10.4 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -91.6, -10.4 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -91.6, -10.4 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -90.9, -10.4 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -90.9, -10.4 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -90.2, -10.4 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -90.2, -10.4 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -89.5, -10.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -89.5, -10.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -88.8, -10.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -88.8, -10.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -88.1, -10.5 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -88.1, -10.5 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -87.3, -10.5 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -87.3, -10.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -86.6, -10.5 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -86.6, -10.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -85.9, -10.5 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -85.9, -10.5 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -85.2, -10.5 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -85.2, -10.5 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -84.5, -10.5 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -84.5, -10.5 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -83.7, -10.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -83.7, -10.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -260.3, -33.4 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -260.3, -33.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -206.5, -26.3 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -206.5, -26.3 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -151.6, -19.1 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -151.6, -19.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -229.5, -28.6 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -229.5, -28.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -193, -23.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -193, -23.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -155.8, -19.1 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -155.8, -19.1 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -275.2, -33.3 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -275.2, -33.3 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -158.7, -19 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -158.7, -19 , 0 );

setScaleKey( spep_0 + 118 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.74, 0.74 );

setRotateKey( spep_0 + 118 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, 15.3 );

-- 敵の動き2
setDisp( spep_0 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 276 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 252 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 210 + OFFSET_X, 1, -409.3, -617.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -409.3, -617.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -381.9, -524.8 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -381.9, -524.8 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -354.5, -432 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -354.5, -432 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -327.3, -339.5 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -327.3, -339.5 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -300.1, -247.2 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -300.1, -247.2 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -272.9, -155.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -272.9, -155.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -245.9, -63.3 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -245.9, -63.3 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -218.9, 28.3 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -218.9, 28.3 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -217.1, 34.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -217.1, 34.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -215.5, 39.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -215.5, 39.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -213.9, 44.8 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -213.9, 44.8 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -212.5, 49.6 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -212.5, 49.6 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -211.1, 54.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -211.1, 54.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -209.8, 58.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -209.8, 58.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -208.7, 62.2 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -208.7, 62.2 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -207.6, 65.8 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -207.6, 65.8 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -206.7, 69 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -206.7, 69 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -205.8, 71.9 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -205.8, 71.9 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -205, 74.4 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -205, 74.4 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -204.4, 76.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -204.4, 76.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -203.8, 78.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -203.8, 78.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -226.1, -37.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -226.1, -37.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -395.6, -65.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -395.6, -65.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -310.8, -51.4 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -310.8, -51.4 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -226.1, -37.4 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -226.1, -37.4 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -339.1, -56.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -339.1, -56.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -282.6, -46.8 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -282.6, -46.8 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -226.1, -37.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -226.1, -37.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -395.6, -65.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -395.6, -65.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -414.8, -16.9 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -414.8, -16.9 , 0 );

setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 3.15, 3.15 );

setRotateKey( spep_0 + 210 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -32.8 );

-- 敵の動き3
setDisp( spep_0 + 414 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 444 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 414 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 414 + OFFSET_X, 1, -1.5, 122.7 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -1.5, 122.7 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -5.9, 118.4 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -5.9, 118.4 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 3.4, 127.7 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 3.4, 127.7 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 3.5, 118.9 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 3.5, 118.9 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -5.4, 128.1 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -5.4, 128.1 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -0.7, 123.8 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -0.7, 123.8 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -5.1, 119.5 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -5.1, 119.5 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 4.2, 128.8 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 4.2, 128.8 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 4.3, 119.9 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 4.3, 119.9 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -4.6, 129.1 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -4.6, 129.1 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -0, 124.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -0, 124.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -4.4, 120.5 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -4.4, 120.5 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 4.9, 129.8 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 4.9, 129.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 5, 120.9 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 5, 120.9 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -3.9, 130.1 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -3.9, 130.1 , 0 );

setScaleKey( spep_0 + 414 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 0.63, 0.63 );

setRotateKey( spep_0 + 414 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, 0 );

-- 敵の動き4
setDisp( spep_0 + 454 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 478 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 454 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 478 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 454 + OFFSET_X, 1, 19.8, 218.6 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 19.8, 218.6 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -44.1, 138.5 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -44.1, 138.5 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 102.9, 41.4 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 102.9, 41.4 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 19.8, 218.6 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 19.8, 218.6 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -44.1, 138.5 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -44.1, 138.5 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 102.9, 41.4 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 102.9, 41.4 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 19.8, 218.6 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 19.8, 218.6 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -44.1, 138.5 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -44.1, 138.5 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 102.9, 41.4 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 102.9, 41.4 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 19.8, 218.6 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 19.8, 218.6 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -44.1, 138.5 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -44.1, 138.5 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 102.9, 41.4 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 102.9, 41.4 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 501.3, 452.6 , 0 );

setScaleKey( spep_0 + 454 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.37, 0.37 );

setRotateKey( spep_0 + 454 + OFFSET_X, 1, 79 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, 79 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, -55.8 );

-- 敵の動き5
setDisp( spep_0 + 480 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 494 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 480 + OFFSET_X, 1, 425.2, 391.7 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 425.2, 391.7 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 349.1, 330.7 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 349.1, 330.7 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 273, 269.8 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 273, 269.8 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 196.9, 208.8 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 196.9, 208.8 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 99.6, 131.3 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 99.6, 131.3 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 2.4, 53.7 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 2.4, 53.7 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -94.8, -23.9 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -94.8, -23.9 , 0 );

setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 0.37, 0.37 );

setRotateKey( spep_0 + 480 + OFFSET_X, 1, -55.8 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, -55.8 );

-- ** 音 ** --
--羽広げる
SE001 = playSeVer2( spep_0 + 0, 1373, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1348, "", 0, 0, 0, -1);

--飛んでくる
SE004 = playSeVer2( spep_0 + 48, 1182, "", 0, 0, 0, 0.6);
SE005 = playSeVer2( spep_0 + 48, 1011, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 68, 9, "", 0, 0, 0, -1);
setTimeStretch( SE006, 1.24, 30, 4 );

--接近する
SE007 = playSeVer2( spep_0 + 106, 1232, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
--接近する
SE008 = playSeVer2( spep_0 + 118, 1188, "", 0, 14, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 118, SE008, 79 );
setStartTimeMs( SE008,  67 );
SE009 = playSeVer2( spep_0 + 122, 1182, "", 0, 14, 0, 0.6);
setStartTimeMs( SE009,  33 );

--殴る
SE010 = playSeVer2( spep_0 + 154, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 166, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 166, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE012, 81 );

--振りかぶる
SE013 = playSeVer2( spep_0 + 208, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 208, 1116, "",spep_0 + 250, 0, 18, -1);

--裏拳
SE015 = playSeVer2( spep_0 + 240, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE015, 71 );
SE016 = playSeVer2( spep_0 + 240, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE016, 77 );
SE017 = playSeVer2( spep_0 + 240, 1120, "", 0, 0, 0, -1);
setPitch( spep_0 + 240, SE017, -400 );
setTimeStretch( SE017, 0.73, 30, 4 );

--振りかぶる２
SE018 = playSeVer2( spep_0 + 288, 1072, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 300, 8, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 310, 1068, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_0 + 310, SE020, 65 );
setStartTimeMs( SE020,  67 );
SE021 = playSeVer2( spep_0 + 320, 1182, "", 0, 10, 0, 0.6);
setStartTimeMs( SE021,  133 );

--パンチ繰り出す
SE022 = playSeVer2( spep_0 + 388, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 388, 9, "", 0, 0, 0, -1);

--パンチヒット
SE024 = playSeVer2( spep_0 + 428, 1123, "",spep_0 + 568, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 428, SE024, 80 );
SE025 = playSeVer2( spep_0 + 432, 1187, "",spep_0 + 566, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 432, SE025, 80 );
SE026 = playSeVer2( spep_0 + 432, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE026, 80 );

--敵飛んでいく
SE027 = playSeVer2( spep_0 + 468, 1277, "",spep_0 + 572, 0, 12, -1);

--激突
SE028 = playSeVer2( spep_0 + 482, 1159, "",spep_0 + 572, 0, 14, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --556F


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- 火吹き〜フィニッシュまで
-------------------------------------------------

MAX_FRAME_1 = 250;

-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -2, base_1, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -1, base_1, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--火吹く
SE030 = playSeVer2( spep_1 + 0, 1027, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 0, 1258, "",spep_1 + 94, 0, 36, -1);
setSeVolumeByWorkId( spep_1 + 0, SE031, 80 );
SE032 = playSeVer2( spep_1 + 0, 1268, "",spep_1 + 142, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 0, SE032, 191 );
SE033 = playSeVer2( spep_1 + 0, 1213, "",spep_1 + 144, 0, 26, -1);
setSeVolumeByWorkId( spep_1 + 0, SE033, 82 );

--火の海
SE034 = playSeVer2( spep_1 + 122, 1268, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 122, SE034, 251 );
SE035 = playSeVer2( spep_1 + 122, 1067, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_1 + 122, 1024, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_1 + 160, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 140); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 250F-4

end
