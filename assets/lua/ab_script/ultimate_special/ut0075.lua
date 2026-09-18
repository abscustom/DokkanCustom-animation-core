-- 1029570: UR_ベジータ_アクティブ必殺技：汚い花火
-- sp_effect_a9_00134
-- ut0075

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163234; -- 前面 ef_001
SP_01b = 163235; -- 背面 ef_001b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;---記載するspepの数に要注意

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 124 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 372 -1);  -- スキップ先フレーム指定

           --腕出す
           SE020 = playSeVer2( spep_0 + 372, 1348, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 372, SE020, 162 );
           --環境音
           SE018 = playSeVer2( spep_0 + 372, 1269, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 372, SE018, 25 );

       end
    else end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 前面
------------------------------------------------------
MAX_FRAME_0 = 672;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 前面(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 背面(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 104 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 158 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 104 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 126 + OFFSET_X, 1, 4 );

setMoveKey( spep_0 + 104 + OFFSET_X, 1, 276.7, 317.2 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 276.7, 317.2 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 239.5, 317.2 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 239.5, 317.2 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 202.3, 317.2 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 202.3, 317.2 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 165.1, 317.2 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 165.1, 317.2 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 127.9, 317.2 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 127.9, 317.2 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 90.8, 317.2 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 90.8, 317.2 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 53.6, 317.2 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 53.6, 317.2 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 16.4, 317.2 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 16.4, 317.2 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -20.8, 317.2 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -20.8, 317.2 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -58, 317.2 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -58, 317.2 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -95.2, 317.2 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -95.2, 317.2 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -132.4, 317.2 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -132.4, 317.2 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -169.6, 317.2 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -169.6, 317.2 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -206.8, 317.2 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -206.8, 317.2 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -244, 317.2 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -244, 317.2 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -281.1, 317.2 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -281.1, 317.2 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -275.7, 317.2 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -275.7, 317.2 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -270.2, 317.2 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -270.2, 317.2 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -264.8, 317.2 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -264.8, 317.2 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -259.3, 317.2 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -259.3, 317.2 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -253.9, 317.2 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -253.9, 317.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -248.4, 317.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -248.4, 317.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -243, 317.2 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -243, 317.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -237.5, 317.2 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -237.5, 317.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -232.1, 317.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -232.1, 317.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -226.6, 317.2 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -226.6, 317.2 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -221.1, 317.2 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -221.1, 317.2 , 0 );

setScaleKey( spep_0 + 104 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 0.56, 0.56 );

setRotateKey( spep_0 + 104 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 174 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 240 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 174 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 174 + OFFSET_X, 1, -138.3, 197.6 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -138.3, 197.6 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -145.4, 182.7 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -145.4, 182.7 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -147.7, 210.3 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -147.7, 210.3 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -156.8, 211.2 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -156.8, 211.2 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -160.2, 228.3 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -160.2, 228.3 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -160.6, 204.1 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -160.6, 204.1 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -156.2, 222.3 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -156.2, 222.3 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -161.5, 230.3 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -161.5, 230.3 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -161.9, 206 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -161.9, 206 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -157.5, 224.2 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -157.5, 224.2 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -159.8, 215.7 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -159.8, 215.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -160.2, 216.8 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -160.2, 216.8 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -160.7, 217.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -160.7, 217.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -161.2, 219 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -161.2, 219 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -161.7, 220 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -161.7, 220 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -162.2, 221.1 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -162.2, 221.1 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -162.7, 222.2 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -162.7, 222.2 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -163.2, 223.3 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -163.2, 223.3 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -163.7, 224.4 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -163.7, 224.4 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -164.1, 225.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -164.1, 225.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -164.6, 226.7 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -164.6, 226.7 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -165.1, 227.8 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -165.1, 227.8 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -165.6, 228.9 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -165.6, 228.9 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -166.1, 230 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -166.1, 230 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -204.5, 81.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -204.5, 81.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -205.1, 82.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -205.1, 82.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -205.8, 83.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -205.8, 83.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -206.5, 85 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -206.5, 85 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -207.2, 86.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -207.2, 86.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -207.8, 87.5 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -207.8, 87.5 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -208.5, 88.7 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -208.5, 88.7 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -585.5, 391.6 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -585.5, 391.6 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -628, 435.9 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -628, 435.9 , 0 );

setScaleKey( spep_0 + 174 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 7, 7 );

setRotateKey( spep_0 + 174 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, 63.9 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 25.8 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 25.8 );

--敵の動き3
setDisp( spep_0 + 268 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 322 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 268 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 276 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 268 + OFFSET_X, 1, -286.3, 205.8 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -286.3, 205.8 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -130.3, 105.2 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -130.3, 105.2 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -130.3, 76.8 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -130.3, 76.8 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -47.2, 147.5 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -47.2, 147.5 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -57.9, 163.4 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -57.9, 163.4 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -68.7, 215.8 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -68.7, 215.8 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -79.4, 227.7 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -79.4, 227.7 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -90.1, 276 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -90.1, 276 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -90.2, 251.7 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -90.2, 251.7 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -90.2, 280.1 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -90.2, 280.1 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -90.3, 267.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -90.3, 267.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -90.4, 267.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -90.4, 267.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -90.4, 268 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -90.4, 268 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -90.5, 268 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -90.5, 268 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -90.6, 268 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -90.6, 268 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -90.7, 268 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -90.7, 268 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -90.8, 268 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -90.8, 268 , 0 );

setScaleKey( spep_0 + 268 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.16, 0.16 );

setRotateKey( spep_0 + 268 + OFFSET_X, 1, 49 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 49 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -67.1 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -67.1 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--1269_SE149_孫悟空＆ベジータ_変身演出環境音_16kHz.wav
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 184, 0, 82, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 20, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 63 );

--構える
SE004 = playSeVer2( spep_0 + 20, 1233, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 28, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 28, SE005, 79 );

--飛び立つ
SE006 = playSeVer2( spep_0 + 70, 1258, "",spep_0 + 154, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 70, SE006, 51 );
SE007 = playSeVer2( spep_0 + 76, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE007, 59 );
SE008 = playSeVer2( spep_0 + 76, 1022, "",spep_0 + 176, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 76, SE008, 100 );
SE009 = playSeVer2( spep_0 + 76, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE009, 58 );

-- ** ボイス ** --
--「にがすか！！！！」
SE_6_848 = playVoice( spep_0 + 20, 848 );
setVoiceVolume( spep_0 + 20, 848, 120 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 124; --エンドフェイズのフレーム数を置き換える

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
setVoiceVolume( SP_dodge - 12, SE_6_848, 0 );

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge + 10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--飛び立つ
SE010 = playSeVer2( spep_0 + 126, 1117, "", 0, 0, 0, -1);

--パンチ
SE011 = playSeVer2( spep_0 + 150, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE011, 153 );
SE012 = playSeVer2( spep_0 + 158, 1153, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 158, 1187, "", 0, 0, 0, -1);

--振りかぶる
SE014 = playSeVer2( spep_0 + 228, 1116, "",spep_0 + 276, 0, 20, -1);
SE015 = playSeVer2( spep_0 + 250, 1004, "", 0, 0, 0, -1);

--殴り飛ばす
SE016 = playSeVer2( spep_0 + 270, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE016, 68 );
SE017 = playSeVer2( spep_0 + 270, 1120, "", 0, 0, 0, -1);

--環境音
SE018 = playSeVer2( spep_0 + 314, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE018, 25 );

--ニヤリ
SE019 = playSeVer2( spep_0 + 330, 1171, "",spep_0 + 374, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 330, SE019, 56 );
setPitch( spep_0 + 330, SE019, -800 );
setTimeStretch( SE019, 0.47, 30, 4 );

--腕出す
SE020 = playSeVer2( spep_0 + 368, 1348, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 368, SE020, 162 );

--爆発
SE021 = playSeVer2( spep_0 + 430, 1023, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 430, 1017, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 430, 1067, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「へっ！　きたねえ花火だ」
playVoice( spep_0 + 514, 849 );
setVoiceVolume( spep_0 + 514, 849, 110 );

-- ** おわり ** --
-- hideKoScreen();
dealDamage( spep_0 + 550 );
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム 672F

else end
