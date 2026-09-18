-- 1029470: LR_超サイヤ人孫悟飯(青年期)_必殺技：魔閃光
-- sp_effect_a1_00450
-- sp2751

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163136;  -- 敵を見る悟飯～敵が壁に激突 ef_001
SP_001b = 163137;  -- 敵を見る悟飯～敵が壁に激突 ef_001b
SP_002 = 163140;  -- 手を掲げる～フィニッシュ ef_002

-- 敵側
SP_001r = 163138;  -- 敵を見る悟飯～敵が壁に激突 ef_001r
SP_001br = 163139;  -- 敵を見る悟飯～敵が壁に激突 ef_001br
SP_002r = 163141;  -- 手を掲げる～フィニッシュ ef_002r

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_1 = spep_0 + 444;
        spep_2 = spep_1 + 94;

        timing_skip = 220;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --気弾発射
        SE027 = playSeVer2( spep_2 + 220 +3, 1024, "",spep_2 + 250, 0, 46, -1);
        SE028 = playSeVer2( spep_2 + 220 +3, 1133, "", 0, 0, 0, -1);
        SE029 = playSeVer2( spep_2 + 220 +3, 1027, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 220 +3, SE029, 73 );
        SE030 = playSeVer2( spep_2 + 220 +3, 1177, "",spep_2 + 296, 0, 20, -1);
        SE031 = playSeVer2( spep_2 + 220 +3, 1146, "",spep_2 + 300, 0, 26, -1);

        --気弾とんでいく
        SE032 = playSeVer2( spep_2 + 220 +3, 1202, "", 0, 0, 0, 0.6);
        setSeVolumeByWorkId( spep_2 + 220 +3, SE032, 150 );


    else end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 敵を見る悟飯～敵が壁に激突 ef_001
------------------------------------------------------
MAX_FRAME_0 = 444;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 敵を見る悟飯～敵が壁に激突 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- 敵を見る悟飯～敵が壁に激突 ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 116 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 262 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 116 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 208 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 214 + OFFSET_X, 1, 108 );

Mo_tmp = -80;

setMoveKey( spep_0 + 116 + OFFSET_X, 1, 200.1, 34 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 200.1, 34 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 199.7, 33.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 199.7, 33.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 199.2, 33.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 199.2, 33.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 198.8, 33.9 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 198.8, 33.9 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 198.3, 33.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 198.3, 33.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 197.9, 33.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 197.9, 33.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 197.4, 33.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 197.4, 33.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 197, 33.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 197, 33.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 196.5, 33.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 196.5, 33.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 196.1, 33.9 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 196.1, 33.9 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 195.7, 33.9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 195.7, 33.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 195.2, 33.9 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 195.2, 33.9 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 194.8, 33.9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 194.8, 33.9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 194.3, 33.9 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 194.3, 33.9 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 193.9, 33.9 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 193.9, 33.9 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 193.4, 33.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 193.4, 33.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 193, 33.9 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 193, 33.9 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 192.5, 33.9 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 192.5, 33.9 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 192.1, 33.9 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 192.1, 33.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 191.7, 33.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 191.7, 33.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 191.2, 33.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 191.2, 33.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 190.8, 33.9 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 190.8, 33.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 190.3, 33.9 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 190.3, 33.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 189.9, 33.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 189.9, 33.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 189.4, 33.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 189.4, 33.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 189, 33.9 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 189, 33.9 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 188.5, 33.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 188.5, 33.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 188.1, 33.9 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 188.1, 33.9 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 187.7, 33.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 187.7, 33.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 187.2, 33.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 187.2, 33.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 186.8, 33.9 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 186.8, 33.9 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 186.3, 33.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 186.3, 33.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 185.9, 37.9 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 185.9, 37.9 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 185.4, 29.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 185.4, 29.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 185, 37.9 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 185, 37.9 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 184.5, 36.9 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 184.5, 36.9 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 184.1, 35.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 184.1, 35.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 183.7, 34.9 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 183.7, 34.9 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 183.2, 33.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 183.2, 33.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 182.8, 33.9 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 182.8, 33.9 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 182.3, 33.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 182.3, 33.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 181.9, 33.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 181.9, 33.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 181.4, 33.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 181.4, 33.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 181, 33.9 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 181, 33.9 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 180.5, 33.9 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 180.5, 33.9 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 180.1, 33.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 180.1, 33.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 32.2, 180.6 + Mo_tmp , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 32.2, 180.6 + Mo_tmp , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 217.5, 359.2 + Mo_tmp , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 217.5, 359.2 + Mo_tmp , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 217.6, 361.6 + Mo_tmp , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 217.6, 361.6 + Mo_tmp , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 193.6, 299.3 + Mo_tmp , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 193.6, 299.3 + Mo_tmp , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 241.7, 404.2 + Mo_tmp , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 241.7, 404.2 + Mo_tmp , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 217.8, 380.3 + Mo_tmp , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 217.8, 380.3 + Mo_tmp , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 217.8, 355.7 + Mo_tmp , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 217.8, 355.7 + Mo_tmp , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 193.9, 386.3 + Mo_tmp , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 193.9, 386.3 + Mo_tmp , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 217.9, 390.1 + Mo_tmp , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 217.9, 390.1 + Mo_tmp , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 218, 399.1 + Mo_tmp , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 218, 399.1 + Mo_tmp , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 218, 399.4 + Mo_tmp , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 218, 399.4 + Mo_tmp , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 218, 406.8 + Mo_tmp , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 218, 406.8 + Mo_tmp , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 218, 405.6 + Mo_tmp , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 218, 405.6 + Mo_tmp , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 218, 411.5 + Mo_tmp , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 218, 411.5 + Mo_tmp , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 218, 410.6 + Mo_tmp , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 218, 410.6 + Mo_tmp , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 123.3, 141 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 123.3, 141 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 123.5, 141.1 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 123.5, 141.1 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 252.4, 370.6 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 252.4, 370.6 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 371.8, 583.2 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 371.8, 583.2 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 481.6, 778.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 481.6, 778.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 581.9, 957.3 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 581.9, 957.3 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 672.6, 1118.9 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 672.6, 1118.9 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 753.9, 1263.4 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 753.9, 1263.4 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 825.5, 1391 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 825.5, 1391 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 887.6, 1501.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 887.6, 1501.5 , 0 );

setScaleKey( spep_0 + 116 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 15.15, 15.15 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 15.15, 15.15 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 17.84, 17.84 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 17.84, 17.84 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 3.94, 3.94 );

setRotateKey( spep_0 + 116 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -47.2 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -47.2 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -40.7 );

-- 敵の動き2
setDisp( spep_0 + 288 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 380 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 288 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 322 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 342 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 356 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 288 + OFFSET_X, 1, -365.4, -497.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -365.4, -497.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -269, -421.5 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -269, -421.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -184.7, -354 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -184.7, -354 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -116.4, -306.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -116.4, -306.4 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -54, -262.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -54, -262.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 2.4, -223.5 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 2.4, -223.5 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 51.4, -189 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 51.4, -189 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 94.5, -158.7 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 94.5, -158.7 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 131.6, -132.5 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 131.6, -132.5 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 190.2, -127.1 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 190.2, -127.1 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 222.1, -106 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 222.1, -106 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 247.2, -89.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 247.2, -89.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 258.6, -94.6 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 258.6, -94.6 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 264.3, -103.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 264.3, -103.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 263, -117.8 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 263, -117.8 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 167.5, -102.8 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 167.5, -102.8 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 168.2, -103.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 168.2, -103.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 57.2, 9.9 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 57.2, 9.9 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -13.8, 65.2 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -13.8, 65.2 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 41.8, 30.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 41.8, 30.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -29.6, 77.7 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -29.6, 77.7 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 13.3, 38.5 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 13.3, 38.5 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 179.4, -1.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 179.4, -1.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 205.5, -47.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 205.5, -47.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 218.7, -24.3 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 218.7, -24.3 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 239.8, -62.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 239.8, -62.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 244.4, -48.5 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 244.4, -48.5 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 376.1, -140.5 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 376.1, -140.5 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 393, -155.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 393, -155.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 426.2, -194.5 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 426.2, -194.5 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 446.5, -210.9 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 446.5, -210.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 485.9, -240 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 485.9, -240 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 511.6, -263.1 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 511.6, -263.1 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 540.8, -288.2 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 540.8, -288.2 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -1135.8, 713.5 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -1135.8, 713.5 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -633.2, 365.4 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -633.2, 365.4 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -227.6, 85.2 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -227.6, 85.2 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -172.8, 51.5 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -172.8, 51.5 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -151.8, 38.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -151.8, 38.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -131, 24.7 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -131, 24.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -110.3, 11.4 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -110.3, 11.4 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -89.7, -1.7 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -89.7, -1.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -69.2, -14.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -69.2, -14.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -48.8, -28 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -48.8, -28 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -28.5, -40.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -28.5, -40.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -8.4, -53.9 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -8.4, -53.9 , 0 );

sc_tmp = 1.0;
sc_tmp2 = 1.8;

setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 4.46 + sc_tmp, 4.46 + sc_tmp );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 4.46 + sc_tmp, 4.46 + sc_tmp );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 4.48 + sc_tmp, 4.48 + sc_tmp );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 4.48 + sc_tmp, 4.48 + sc_tmp );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 1.44 + sc_tmp, 1.44 + sc_tmp );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 1.44 + sc_tmp, 1.44 + sc_tmp );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.2 + sc_tmp, 1.2 + sc_tmp );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.2 + sc_tmp, 1.2 + sc_tmp );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.32 + sc_tmp, 1.32 + sc_tmp );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 1.32 + sc_tmp, 1.32 + sc_tmp );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 1.2 + sc_tmp, 1.2 + sc_tmp );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 1.2 + sc_tmp, 1.2 + sc_tmp );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.01 + sc_tmp, 1.01 + sc_tmp );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.01 + sc_tmp, 1.01 + sc_tmp );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1 + sc_tmp, 1 + sc_tmp );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1 + sc_tmp, 1 + sc_tmp );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.98 + sc_tmp, 0.98 + sc_tmp );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.98 + sc_tmp, 0.98 + sc_tmp );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.96 + sc_tmp, 0.96 + sc_tmp );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.96 + sc_tmp, 0.96 + sc_tmp );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.94 + sc_tmp, 0.94 + sc_tmp );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.94 + sc_tmp, 0.94 + sc_tmp );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 2.69 + sc_tmp2, 2.69 + sc_tmp2 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 2.69 + sc_tmp2, 2.69 + sc_tmp2 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 2.5 + sc_tmp2, 2.5 + sc_tmp2 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 2.5 + sc_tmp2, 2.5 + sc_tmp2 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 2.31 + sc_tmp2, 2.31 + sc_tmp2 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 2.31 + sc_tmp2, 2.31 + sc_tmp2 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 2.12 + sc_tmp2, 2.12 + sc_tmp2 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 2.12 + sc_tmp2, 2.12 + sc_tmp2 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 1.93 + sc_tmp2, 1.93 + sc_tmp2 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 1.93 + sc_tmp2, 1.93 + sc_tmp2 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 1.74 + sc_tmp2, 1.74 + sc_tmp2 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 1.74 + sc_tmp2, 1.74 + sc_tmp2 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 1.55 + sc_tmp2, 1.55 + sc_tmp2 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 1.55 + sc_tmp2, 1.55 + sc_tmp2 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 20.49, 20.49 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 20.49, 20.49 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 11.42, 11.42 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 11.42, 11.42 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.29, 0.29 );

setRotateKey( spep_0 + 288 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 24 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 24 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, 30.5 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, 30.5 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, 62.8 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, 62.8 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 100 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, 100 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 322, 0, 100, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--振り向く
SE004 = playSeVer2( spep_0 + 60, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 62, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 63 );

--空気音
SE006 = playSeVer2( spep_0 + 108, 1175, "",spep_0 + 310, 0, 92, -1);
setSeVolumeByWorkId( spep_0 + 108, SE006, 40 );

--瞬間移動
SE007 = playSeVer2( spep_0 + 178, 1109, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 192;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 8, SE007, 0);

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
--裏拳
SE008 = playSeVer2( spep_0 + 206, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 214, 1153, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 214, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE011 = playSeVer2( spep_0 + 252, 1027, "", 0, 0, 0, -1);

--瞬間移動
SE012 = playSeVer2( spep_0 + 264, 1109, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 290, 1109, "", 0, 0, 0, -1);

--蹴り飛ばす
SE014 = playSeVer2( spep_0 + 306, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 318, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 328, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE017 = playSeVer2( spep_0 + 324, 1121, "",spep_0 + 404, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 324, SE017, 54 );

--激突
SE018 = playSeVer2( spep_0 + 376, 1159, "",spep_0 + 470, 0, 14, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 444

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--背景音
SE020 = playSeVer2( spep_1 + 60, 1468, "",spep_2 + 180, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 60, SE020, 65 );
SE021 = playSeVer2( spep_1 + 82, 1264, "",spep_2 + 186, 0, 40, -1);
setSeVolumeByWorkId( spep_1 + 82, SE021, 56 );

------------------------------------------------------
-- 手を掲げる～フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 414;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x80, -1, 0, 0, 0 );  -- 手を掲げる～フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--手を合わせる
SE022 = playSeVer2( spep_2 + 26, 1003, "", 0, 0, 0, -1);

--気弾溜め
SE023 = playSeVer2( spep_2 + 34, 1275, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34, SE023, 150 );
SE024 = playSeVer2( spep_2 + 54, 1262, "", 0, 0, 0, -1);
setPitch( spep_2 + 54, SE024, 500 );
setTimeStretch( SE024, 1.33, 30, 4 );
SE025 = playSeVer2( spep_2 + 54, 1296, "",spep_2 + 190, 0, 38, -1);
SE026 = playSeVer2( spep_2 + 54, 1393, "",spep_2 + 192, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 54, SE026, 148 );
setPitch( spep_2 + 54, SE026, 300 );
setTimeStretch( SE026, 1.2, 30, 4 );

--気弾発射
SE027 = playSeVer2( spep_2 + 144, 1024, "",spep_2 + 250, 0, 46, -1);
SE028 = playSeVer2( spep_2 + 146, 1133, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 146, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 146, SE029, 73 );
SE030 = playSeVer2( spep_2 + 146, 1177, "",spep_2 + 296, 0, 20, -1);
SE031 = playSeVer2( spep_2 + 146, 1146, "",spep_2 + 300, 0, 26, -1);

--気弾とんでいく
SE032 = playSeVer2( spep_2 + 208, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 208, SE032, 150 );

--爆発
SE033 = playSeVer2( spep_2 + 266, 1159, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 282, 1067, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 298, 1188, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 300 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 414

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 敵を見る悟飯～敵が壁に激突 ef_001r
------------------------------------------------------
MAX_FRAME_0 = 444;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );  -- 敵を見る悟飯～敵が壁に激突 ef_001r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001br, 0x80, -1, 0, 0, 0 );  -- 敵を見る悟飯～敵が壁に激突 ef_001br
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 116 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 262 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 116 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 208 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 214 + OFFSET_X, 1, 108 );

Mo_tmp = -80;

setMoveKey( spep_0 + 116 + OFFSET_X, 1, 200.1, 34 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 200.1, 34 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 199.7, 33.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 199.7, 33.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 199.2, 33.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 199.2, 33.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 198.8, 33.9 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 198.8, 33.9 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 198.3, 33.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 198.3, 33.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 197.9, 33.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 197.9, 33.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 197.4, 33.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 197.4, 33.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 197, 33.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 197, 33.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 196.5, 33.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 196.5, 33.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 196.1, 33.9 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 196.1, 33.9 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 195.7, 33.9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 195.7, 33.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 195.2, 33.9 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 195.2, 33.9 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 194.8, 33.9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 194.8, 33.9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 194.3, 33.9 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 194.3, 33.9 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 193.9, 33.9 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 193.9, 33.9 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 193.4, 33.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 193.4, 33.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 193, 33.9 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 193, 33.9 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 192.5, 33.9 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 192.5, 33.9 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 192.1, 33.9 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 192.1, 33.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 191.7, 33.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 191.7, 33.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 191.2, 33.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 191.2, 33.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 190.8, 33.9 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 190.8, 33.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 190.3, 33.9 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 190.3, 33.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 189.9, 33.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 189.9, 33.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 189.4, 33.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 189.4, 33.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 189, 33.9 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 189, 33.9 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 188.5, 33.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 188.5, 33.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 188.1, 33.9 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 188.1, 33.9 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 187.7, 33.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 187.7, 33.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 187.2, 33.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 187.2, 33.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 186.8, 33.9 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 186.8, 33.9 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 186.3, 33.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 186.3, 33.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 185.9, 37.9 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 185.9, 37.9 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 185.4, 29.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 185.4, 29.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 185, 37.9 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 185, 37.9 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 184.5, 36.9 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 184.5, 36.9 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 184.1, 35.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 184.1, 35.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 183.7, 34.9 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 183.7, 34.9 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 183.2, 33.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 183.2, 33.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 182.8, 33.9 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 182.8, 33.9 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 182.3, 33.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 182.3, 33.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 181.9, 33.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 181.9, 33.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 181.4, 33.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 181.4, 33.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 181, 33.9 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 181, 33.9 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 180.5, 33.9 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 180.5, 33.9 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 180.1, 33.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 180.1, 33.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 32.2, 180.6 + Mo_tmp , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 32.2, 180.6 + Mo_tmp , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 217.5, 359.2 + Mo_tmp , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 217.5, 359.2 + Mo_tmp , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 217.6, 361.6 + Mo_tmp , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 217.6, 361.6 + Mo_tmp , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 193.6, 299.3 + Mo_tmp , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 193.6, 299.3 + Mo_tmp , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 241.7, 404.2 + Mo_tmp , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 241.7, 404.2 + Mo_tmp , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 217.8, 380.3 + Mo_tmp , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 217.8, 380.3 + Mo_tmp , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 217.8, 355.7 + Mo_tmp , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 217.8, 355.7 + Mo_tmp , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 193.9, 386.3 + Mo_tmp , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 193.9, 386.3 + Mo_tmp , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 217.9, 390.1 + Mo_tmp , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 217.9, 390.1 + Mo_tmp , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 218, 399.1 + Mo_tmp , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 218, 399.1 + Mo_tmp , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 218, 399.4 + Mo_tmp , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 218, 399.4 + Mo_tmp , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 218, 406.8 + Mo_tmp , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 218, 406.8 + Mo_tmp , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 218, 405.6 + Mo_tmp , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 218, 405.6 + Mo_tmp , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 218, 411.5 + Mo_tmp , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 218, 411.5 + Mo_tmp , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 218, 410.6 + Mo_tmp , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 218, 410.6 + Mo_tmp , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 123.3, 141 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 123.3, 141 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 123.5, 141.1 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 123.5, 141.1 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 252.4, 370.6 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 252.4, 370.6 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 371.8, 583.2 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 371.8, 583.2 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 481.6, 778.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 481.6, 778.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 581.9, 957.3 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 581.9, 957.3 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 672.6, 1118.9 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 672.6, 1118.9 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 753.9, 1263.4 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 753.9, 1263.4 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 825.5, 1391 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 825.5, 1391 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 887.6, 1501.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 887.6, 1501.5 , 0 );

setScaleKey( spep_0 + 116 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 15.15, 15.15 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 15.15, 15.15 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 17.84, 17.84 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 17.84, 17.84 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 3.94, 3.94 );

setRotateKey( spep_0 + 116 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -47.2 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -47.2 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -40.7 );

-- 敵の動き2
setDisp( spep_0 + 288 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 380 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 288 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 322 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 342 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 356 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 288 + OFFSET_X, 1, -365.4, -497.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -365.4, -497.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -269, -421.5 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -269, -421.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -184.7, -354 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -184.7, -354 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -116.4, -306.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -116.4, -306.4 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -54, -262.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -54, -262.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 2.4, -223.5 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 2.4, -223.5 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 51.4, -189 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 51.4, -189 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 94.5, -158.7 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 94.5, -158.7 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 131.6, -132.5 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 131.6, -132.5 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 190.2, -127.1 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 190.2, -127.1 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 222.1, -106 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 222.1, -106 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 247.2, -89.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 247.2, -89.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 258.6, -94.6 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 258.6, -94.6 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 264.3, -103.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 264.3, -103.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 263, -117.8 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 263, -117.8 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 167.5, -102.8 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 167.5, -102.8 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 168.2, -103.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 168.2, -103.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 57.2, 9.9 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 57.2, 9.9 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -13.8, 65.2 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -13.8, 65.2 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 41.8, 30.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 41.8, 30.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -29.6, 77.7 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -29.6, 77.7 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 13.3, 38.5 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 13.3, 38.5 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 179.4, -1.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 179.4, -1.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 205.5, -47.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 205.5, -47.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 218.7, -24.3 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 218.7, -24.3 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 239.8, -62.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 239.8, -62.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 244.4, -48.5 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 244.4, -48.5 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 376.1, -140.5 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 376.1, -140.5 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 393, -155.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 393, -155.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 426.2, -194.5 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 426.2, -194.5 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 446.5, -210.9 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 446.5, -210.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 485.9, -240 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 485.9, -240 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 511.6, -263.1 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 511.6, -263.1 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 540.8, -288.2 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 540.8, -288.2 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -1135.8, 713.5 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -1135.8, 713.5 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -633.2, 365.4 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -633.2, 365.4 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -227.6, 85.2 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -227.6, 85.2 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -172.8, 51.5 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -172.8, 51.5 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -151.8, 38.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -151.8, 38.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -131, 24.7 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -131, 24.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -110.3, 11.4 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -110.3, 11.4 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -89.7, -1.7 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -89.7, -1.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -69.2, -14.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -69.2, -14.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -48.8, -28 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -48.8, -28 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -28.5, -40.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -28.5, -40.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -8.4, -53.9 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -8.4, -53.9 , 0 );

sc_tmp = 1.0;
sc_tmp2 = 1.8;

setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 4.46 + sc_tmp, 4.46 + sc_tmp );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 4.46 + sc_tmp, 4.46 + sc_tmp );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 4.48 + sc_tmp, 4.48 + sc_tmp );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 4.48 + sc_tmp, 4.48 + sc_tmp );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 1.44 + sc_tmp, 1.44 + sc_tmp );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 1.44 + sc_tmp, 1.44 + sc_tmp );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.2 + sc_tmp, 1.2 + sc_tmp );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.2 + sc_tmp, 1.2 + sc_tmp );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.32 + sc_tmp, 1.32 + sc_tmp );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 1.32 + sc_tmp, 1.32 + sc_tmp );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 1.2 + sc_tmp, 1.2 + sc_tmp );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 1.2 + sc_tmp, 1.2 + sc_tmp );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.01 + sc_tmp, 1.01 + sc_tmp );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.01 + sc_tmp, 1.01 + sc_tmp );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1 + sc_tmp, 1 + sc_tmp );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1 + sc_tmp, 1 + sc_tmp );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.98 + sc_tmp, 0.98 + sc_tmp );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.98 + sc_tmp, 0.98 + sc_tmp );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.96 + sc_tmp, 0.96 + sc_tmp );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.96 + sc_tmp, 0.96 + sc_tmp );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.94 + sc_tmp, 0.94 + sc_tmp );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.94 + sc_tmp, 0.94 + sc_tmp );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 2.69 + sc_tmp2, 2.69 + sc_tmp2 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 2.69 + sc_tmp2, 2.69 + sc_tmp2 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 2.5 + sc_tmp2, 2.5 + sc_tmp2 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 2.5 + sc_tmp2, 2.5 + sc_tmp2 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 2.31 + sc_tmp2, 2.31 + sc_tmp2 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 2.31 + sc_tmp2, 2.31 + sc_tmp2 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 2.12 + sc_tmp2, 2.12 + sc_tmp2 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 2.12 + sc_tmp2, 2.12 + sc_tmp2 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 1.93 + sc_tmp2, 1.93 + sc_tmp2 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 1.93 + sc_tmp2, 1.93 + sc_tmp2 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 1.74 + sc_tmp2, 1.74 + sc_tmp2 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 1.74 + sc_tmp2, 1.74 + sc_tmp2 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 1.55 + sc_tmp2, 1.55 + sc_tmp2 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 1.55 + sc_tmp2, 1.55 + sc_tmp2 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 20.49, 20.49 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 20.49, 20.49 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 11.42, 11.42 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 11.42, 11.42 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.29, 0.29 );

setRotateKey( spep_0 + 288 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 24 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 24 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, 30.5 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, 30.5 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, 62.8 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, 62.8 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 100 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, 100 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 322, 0, 100, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--振り向く
SE004 = playSeVer2( spep_0 + 60, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 62, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 63 );

--空気音
SE006 = playSeVer2( spep_0 + 108, 1175, "",spep_0 + 310, 0, 92, -1);
setSeVolumeByWorkId( spep_0 + 108, SE006, 40 );

--瞬間移動
SE007 = playSeVer2( spep_0 + 178, 1109, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 192;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 8, SE007, 0);

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
--裏拳
SE008 = playSeVer2( spep_0 + 212, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 220, 1153, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 220, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE011 = playSeVer2( spep_0 + 258, 1027, "", 0, 0, 0, -1);

--瞬間移動
SE012 = playSeVer2( spep_0 + 270, 1109, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 296, 1109, "", 0, 0, 0, -1);

--蹴り飛ばす
SE014 = playSeVer2( spep_0 + 312, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 324, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 324, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE017 = playSeVer2( spep_0 + 330, 1121, "",spep_0 + 404, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 330, SE017, 54 );

--激突
SE018 = playSeVer2( spep_0 + 382, 1159, "",spep_0 + 470, 0, 14, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 444

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--背景音
SE020 = playSeVer2( spep_1 + 60, 1468, "",spep_2 + 180, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 60, SE020, 65 );
SE021 = playSeVer2( spep_1 + 82, 1264, "",spep_2 + 186, 0, 40, -1);
setSeVolumeByWorkId( spep_1 + 82, SE021, 56 );

------------------------------------------------------
-- 手を掲げる～フィニッシュ ef_002r
------------------------------------------------------
MAX_FRAME_2 = 414;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x80, -1, 0, 0, 0 );  -- 手を掲げる～フィニッシュ ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--手を合わせる
SE022 = playSeVer2( spep_2 + 26, 1003, "", 0, 0, 0, -1);

--気弾溜め
SE023 = playSeVer2( spep_2 + 34, 1275, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34, SE023, 150 );
SE024 = playSeVer2( spep_2 + 54, 1262, "", 0, 0, 0, -1);
setPitch( spep_2 + 54, SE024, 500 );
setTimeStretch( SE024, 1.33, 30, 4 );
SE025 = playSeVer2( spep_2 + 54, 1296, "",spep_2 + 190, 0, 38, -1);
SE026 = playSeVer2( spep_2 + 54, 1393, "",spep_2 + 192, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 54, SE026, 148 );
setPitch( spep_2 + 54, SE026, 300 );
setTimeStretch( SE026, 1.2, 30, 4 );

--気弾発射
SE027 = playSeVer2( spep_2 + 144, 1024, "",spep_2 + 250, 0, 46, -1);
SE028 = playSeVer2( spep_2 + 146, 1133, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 146, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 146, SE029, 73 );
SE030 = playSeVer2( spep_2 + 146, 1177, "",spep_2 + 296, 0, 20, -1);
SE031 = playSeVer2( spep_2 + 146, 1146, "",spep_2 + 300, 0, 26, -1);

--気弾とんでいく
SE032 = playSeVer2( spep_2 + 208, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 208, SE032, 150 );

--爆発
SE033 = playSeVer2( spep_2 + 266, 1159, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 282, 1067, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 298, 1188, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 300 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 414

end
