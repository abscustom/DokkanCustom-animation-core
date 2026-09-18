--1028890:LR_アルティメット孫悟飯_アクティブ必殺技：爆裂ラッシュ
--sp_effect_b4_00326
--ut0070

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162878;	--開幕〜フィニッシュ	ef_001
SP_01b = 162879;	--開幕〜フィニッシュ	ef_001b

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

--[[
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
]]

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
 
       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 180 - 13 );   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 770 - 1 );  -- スキップ先フレーム指定
           --地面激突
            SE051 = playSeVer2( spep_0 + 770, 1159, "", 0, 0, 0, -1);
            SE052 = playSeVer2( spep_0 + 770, 1269, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 770, SE052, 25 );
            SE053 = playSeVer2( spep_0 + 776, 1427, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 776, SE053, 67 );
       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜フィニッシュ
-------------------------------------------------

MAX_FRAME_0 = 1138;

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
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 48 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 236.3, -58.7 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 232.8, -58.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 232.8, -58.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 229.4, -58.2 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 229.4, -58.2 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 226.3, -57.9 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 226.3, -57.9 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 223.2, -57.7 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 223.2, -57.7 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 220.4, -57.5 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 220.4, -57.5 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 217.7, -57.3 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 217.7, -57.3 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 215.2, -57.1 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 215.2, -57.1 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 212.9, -56.9 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 212.9, -56.9 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 210.7, -56.8 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 210.7, -56.8 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 208.7, -56.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 208.7, -56.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 206.8, -56.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 206.8, -56.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 205.1, -56.3 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 205.1, -56.3 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 203.6, -56.2 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 203.6, -56.2 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 202.2, -56.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 202.2, -56.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 200.9, -56 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 200.9, -56 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 199.8, -55.9 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 199.8, -55.9 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 198.9, -55.9 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 198.9, -55.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 198, -55.8 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 198, -55.8 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 197.4, -55.7 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 197.4, -55.7 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 196.9, -55.7 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 196.9, -55.7 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 196.5, -55.7 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 196.5, -55.7 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 196.3, -55.7 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 196.3, -55.7 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 196.2, -55.7 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 196.2, -55.7 , 0 );

setScaleKey( spep_0 + 0, 1, 4, 4 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 3.79, 3.79 );

setRotateKey( spep_0 + 0, 1, -0.7 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 48 + OFFSET_X, 1, -0.7 );

-- 敵の動き2
setDisp( spep_0 + 114 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 258 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 114 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 160 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 220 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 114 + OFFSET_X, 1, 261.2, 422.4 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 261.2, 422.4 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 262.5, 444.8 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 262.5, 444.8 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 198.4, 315.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 198.4, 315.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 184.1, 335.3 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 184.1, 335.3 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 175.4, 291.7 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 175.4, 291.7 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 175, 315.9 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 175, 315.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 167.5, 285.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 167.5, 285.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 168.5, 312.5 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 168.5, 312.5 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 167.7, 283.4 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 167.7, 283.4 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 191.3, 327.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 191.3, 327.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 184.8, 302.5 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 184.8, 302.5 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 186.3, 325.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 186.3, 325.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 185.9, 301.4 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 185.9, 301.4 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 189.5, 318.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 189.5, 318.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 183.2, 306.5 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 183.2, 306.5 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 185, 318.1 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 185, 318.1 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 184.8, 305.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 184.8, 305.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 188.5, 317.5 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 188.5, 317.5 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 182.3, 305.3 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 182.3, 305.3 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 184.2, 317.1 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 184.2, 317.1 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 184, 304.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 184, 304.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 187.9, 316.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 187.9, 316.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 181.8, 304.5 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 181.8, 304.5 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 183.7, 316.4 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 183.7, 316.4 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 183.6, 304.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 183.6, 304.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 187.5, 316.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 187.5, 316.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 181.5, 304.2 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 181.5, 304.2 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 183.5, 316.1 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 183.5, 316.1 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 183.4, 304.1 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 183.4, 304.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 187.4, 316.1 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 187.4, 316.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 181.4, 304 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 181.4, 304 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 183.4, 316 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 183.4, 316 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 183.4, 304 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 183.4, 304 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 196.4, 66.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 196.4, 66.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 190, 65 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 190, 65 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 183.9, 63.6 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 183.9, 63.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 126.5, 56.2 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 126.5, 56.2 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 124.6, 97.5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 124.6, 97.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 120.9, 64.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 120.9, 64.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 121.6, 94.2 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 121.6, 94.2 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 118.5, 85.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 118.5, 85.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 109.7, 73.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 109.7, 73.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 109.1, 84.9 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 109.1, 84.9 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 104.8, 77.5 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 104.8, 77.5 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 103.8, 77.8 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 103.8, 77.8 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 103.1, 78.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 103.1, 78.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 101.6, 77.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 101.6, 77.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 100.4, 77.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 100.4, 77.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 99.5, 77.8 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 99.5, 77.8 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 98.8, 77.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 98.8, 77.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 98.4, 78 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 98.4, 78 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 98.3, 78.2 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 98.3, 78.2 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 98.5, 78.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 98.5, 78.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 98.9, 78.7 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 98.9, 78.7 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 99.6, 79 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 99.6, 79 , 0 );

setScaleKey( spep_0 + 114 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_0 + 114 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -16 );

-- 敵の動き3
setDisp( spep_0 + 298 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 350 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 298 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 298 + OFFSET_X, 1, 116.2, 32.8 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 116.2, 32.8 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 108.2, -7.2 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 108.2, -7.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 108.2, 24.8 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 108.2, 24.8 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 120.3, 0.8 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 120.3, 0.8 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 116.7, 32.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 116.7, 32.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 109.6, -7.1 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 109.6, -7.1 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 111.2, 25.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 111.2, 25.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 125.8, 1.4 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 125.8, 1.4 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 126.1, 26 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 126.1, 26 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 124.5, -5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 124.5, -5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 133.6, 28.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 133.6, 28.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 158.3, 6.6 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 158.3, 6.6 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 170.6, 33.8 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 170.6, 33.8 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 178.9, 16.2 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 178.9, 16.2 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 195.5, 36.2 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 195.5, 36.2 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 225.5, 34.2 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 225.5, 34.2 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 238, 50.6 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 238, 50.6 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 262.2, 64 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 262.2, 64 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 291.4, 80.9 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 291.4, 80.9 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 327.1, 102 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 327.1, 102 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 370.5, 128.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 370.5, 128.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 423.2, 160 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 423.2, 160 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 486.8, 198.5 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 486.8, 198.5 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 563.1, 244.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 563.1, 244.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 603.9, 277.5 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 603.9, 277.5 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 654.4, 315.2 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 654.4, 315.2 , 0 );

setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 2.77, 2.77 );

setRotateKey( spep_0 + 298 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -8 );

-- 敵の動き4
setDisp( spep_0 + 396 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 454 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 396 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 402 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 396 + OFFSET_X, 1, 65.7, 46 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 65.7, 46 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 83, 67.6 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 83, 67.6 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 119, 86.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 119, 86.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 140, 104 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 140, 104 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 144.7, 124.2 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 144.7, 124.2 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 137.4, 84.5 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 137.4, 84.5 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 138, 116.7 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 138, 116.7 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 150.7, 92.9 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 150.7, 92.9 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 147.4, 125.2 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 147.4, 125.2 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 140.1, 85.4 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 140.1, 85.4 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 140.8, 117.7 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 140.8, 117.7 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 153.5, 93.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 153.5, 93.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 150.1, 118.1 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 150.1, 118.1 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 142.8, 86.4 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 142.8, 86.4 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 143.5, 118.6 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 143.5, 118.6 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 156.2, 94.9 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 156.2, 94.9 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 152.9, 119.1 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 152.9, 119.1 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 145.6, 97.3 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 145.6, 97.3 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 146.3, 111.6 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 146.3, 111.6 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 158.9, 101.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 158.9, 101.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 151.6, 108.1 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 151.6, 108.1 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 148.3, 88.3 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 148.3, 88.3 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 149, 120.5 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 149, 120.5 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 161.7, 96.8 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 161.7, 96.8 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 158.4, 121 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 158.4, 121 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 151, 99.3 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 151, 99.3 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 151.7, 113.5 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 151.7, 113.5 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 164.4, 103.7 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 164.4, 103.7 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 157.1, 110 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 157.1, 110 , 0 );

setScaleKey( spep_0 + 396 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 2.98, 2.98 );

setRotateKey( spep_0 + 396 + OFFSET_X, 1, -27 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, -27 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -5 );

-- 敵の動き5
setDisp( spep_0 + 478 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 568 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 478 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 526 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 478 + OFFSET_X, 1, 5.9, -42.2 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 5.9, -42.2 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 5.2, -42.5 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 5.2, -42.5 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 4.6, -42.8 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 4.6, -42.8 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 4, -43.1 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 4, -43.1 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 3.3, -43.4 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 3.3, -43.4 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 2.7, -43.8 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 2.7, -43.8 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 2.1, -44.2 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 2.1, -44.2 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 1.4, -44.7 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 1.4, -44.7 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 0.8, -45.2 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 0.8, -45.2 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 0.2, -45.8 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 0.2, -45.8 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -0.5, -46.5 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -0.5, -46.5 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -1.1, -47.3 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -1.1, -47.3 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -1.8, -48.2 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -1.8, -48.2 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -2.5, -49.2 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -2.5, -49.2 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -3.3, -50.3 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -3.3, -50.3 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -4, -51.5 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -4, -51.5 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -4.8, -52.9 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -4.8, -52.9 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -5.7, -54.5 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -5.7, -54.5 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -6.6, -56.2 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -6.6, -56.2 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 1.2, 104.3 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 1.2, 104.3 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 5.2, 124.3 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 5.2, 124.3 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -2.8, 84.3 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -2.8, 84.3 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -2.8, 116.3 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -2.8, 116.3 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 9.2, 92.3 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 9.2, 92.3 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 5.2, 116.3 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 5.2, 116.3 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, -2.7, 94.3 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, -2.7, 94.3 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, -2.7, 108.3 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -2.7, 108.3 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 9.3, 98.4 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 9.3, 98.4 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 5.4, 116.4 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 5.4, 116.4 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -2.6, 94.6 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, -2.6, 94.6 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, -2.5, 108.8 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, -2.5, 108.8 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 9.6, 99.1 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 9.6, 99.1 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 5.7, 117.7 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 5.7, 117.7 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 1.7, 106.7 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 1.7, 106.7 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 1.8, 108.2 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 1.8, 108.2 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 1.7, 110.5 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 1.7, 110.5 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 1.6, 114.1 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 1.6, 114.1 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 1.3, 119.3 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 1.3, 119.3 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 0.6, 126.9 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 0.6, 126.9 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, -0.4, 137.8 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, -0.4, 137.8 , 0 );

setScaleKey( spep_0 + 478 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 553 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 554 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 0.69, 0.69 );

setRotateKey( spep_0 + 478 + OFFSET_X, 1, -70.6 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, -70.6 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, -71 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, -71 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, -71.4 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, -71.4 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, -71.7 );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, -71.7 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, -72.1 );
setRotateKey( spep_0 + 487 + OFFSET_X, 1, -72.1 );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, -72.5 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, -72.5 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, -72.9 );
setRotateKey( spep_0 + 491 + OFFSET_X, 1, -72.9 );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, -73.2 );
setRotateKey( spep_0 + 493 + OFFSET_X, 1, -73.2 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, -73.6 );
setRotateKey( spep_0 + 495 + OFFSET_X, 1, -73.6 );
setRotateKey( spep_0 + 496 + OFFSET_X, 1, -74 );
setRotateKey( spep_0 + 497 + OFFSET_X, 1, -74 );
setRotateKey( spep_0 + 498 + OFFSET_X, 1, -74.3 );
setRotateKey( spep_0 + 499 + OFFSET_X, 1, -74.3 );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, -74.7 );
setRotateKey( spep_0 + 501 + OFFSET_X, 1, -74.7 );
setRotateKey( spep_0 + 502 + OFFSET_X, 1, -75.1 );
setRotateKey( spep_0 + 503 + OFFSET_X, 1, -75.1 );
setRotateKey( spep_0 + 504 + OFFSET_X, 1, -75.5 );
setRotateKey( spep_0 + 505 + OFFSET_X, 1, -75.5 );
setRotateKey( spep_0 + 506 + OFFSET_X, 1, -75.8 );
setRotateKey( spep_0 + 507 + OFFSET_X, 1, -75.8 );
setRotateKey( spep_0 + 508 + OFFSET_X, 1, -76.2 );
setRotateKey( spep_0 + 509 + OFFSET_X, 1, -76.2 );
setRotateKey( spep_0 + 510 + OFFSET_X, 1, -76.6 );
setRotateKey( spep_0 + 511 + OFFSET_X, 1, -76.6 );
setRotateKey( spep_0 + 512 + OFFSET_X, 1, -77 );
setRotateKey( spep_0 + 513 + OFFSET_X, 1, -77 );
setRotateKey( spep_0 + 514 + OFFSET_X, 1, -77.3 );
setRotateKey( spep_0 + 525 + OFFSET_X, 1, -77.3 );
setRotateKey( spep_0 + 526 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 549 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 550 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 551 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 552 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_0 + 553 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_0 + 554 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_0 + 557 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 559 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 560 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_0 + 561 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_0 + 562 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_0 + 563 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_0 + 564 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_0 + 565 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_0 + 566 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 568 + OFFSET_X, 1, -5.7 );

-- 敵の動き6
setDisp( spep_0 + 642 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 766 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 642 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 682 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 702 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 738 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 642 + OFFSET_X, 1, 34.8, -163.5 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, 34.8, -163.5 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 23.2, -154.5 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, 23.2, -154.5 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 12.2, -146.1 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, 12.2, -146.1 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 2, -138.2 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, 2, -138.2 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -7.5, -130.9 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, -7.5, -130.9 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, -16.3, -124.1 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, -16.3, -124.1 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, -24.5, -117.8 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, -24.5, -117.8 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, -31.9, -112.1 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, -31.9, -112.1 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, -38.6, -106.9 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, -38.6, -106.9 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, -44.6, -102.3 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, -44.6, -102.3 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, -49.9, -98.2 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, -49.9, -98.2 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, -54.4, -94.7 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, -54.4, -94.7 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, -58.3, -91.7 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, -58.3, -91.7 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, -61.5, -89.3 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, -61.5, -89.3 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, -64, -87.3 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, -64, -87.3 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, -65.7, -86 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, -65.7, -86 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, -66.8, -85.2 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, -66.8, -85.2 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, -67.1, -84.9 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, -67.1, -84.9 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, -240, -93.6 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, -240, -93.6 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, -240, -61.6 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, -240, -61.6 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, -227.9, -85.4 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, -227.9, -85.4 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, -231.8, -53.2 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, -231.8, -53.2 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, -239.7, -93 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, -239.7, -93 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, -239.6, -60.7 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, -239.6, -60.7 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, -227.4, -84.3 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, -227.4, -84.3 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, -231.1, -51.7 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, -231.1, -51.7 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, -238.7, -90.9 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, -238.7, -90.9 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, -238.2, -57.7 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, -238.2, -57.7 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, -55, 37 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, -55, 37 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, -55.2, 36.9 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, -55.2, 36.9 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, -55.8, 35.8 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, -55.8, 35.8 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, -57.3, 33 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, -57.3, 33 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, -60.3, 27.5 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, -60.3, 27.5 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, -65.2, 18.5 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, -65.2, 18.5 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, -72.4, 5.1 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, -72.4, 5.1 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, -82.4, -13.5 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, -82.4, -13.5 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, -95.6, -38 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, -95.6, -38 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, -112.4, -69.4 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, -112.4, -69.4 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, -133.1, -108 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, -133.1, -108 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, -158.1, -154.7 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, -158.1, -154.7 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, -187.7, -209.9 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, -187.7, -209.9 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, -222, -273.9 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, -222, -273.9 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, -261.1, -347 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, -261.1, -347 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, -305, -429 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, -305, -429 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, -353.6, -520.1 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, -353.6, -520.1 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, -406.8, -619.7 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, -406.8, -619.7 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 421, 707.9 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 421, 707.9 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 420.9, 707.8 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 420.9, 707.8 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 420.6, 707.2 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 420.6, 707.2 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 419.2, 704.9 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 419.2, 704.9 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 415.5, 698.7 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 415.5, 698.7 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 407.8, 685.5 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 407.8, 685.5 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 394, 661.6 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 394, 661.6 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 371.2, 622.4 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 371.2, 622.4 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 336.2, 562.2 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 336.2, 562.2 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 285.4, 474.6 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 285.4, 474.6 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 214.5, 352.5 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 214.5, 352.5 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 118.9, 187.6 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 118.9, 187.6 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, -6.7, -28.8 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, -6.7, -28.8 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, -167.9, -306.7 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, -167.9, -306.7 , 0 );

setScaleKey( spep_0 + 642 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 681 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 682 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 701 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 702 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 707 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 708 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 709 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 710 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 711 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 712 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 713 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 714 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 715 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 716 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 717 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 719 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 720 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 729 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 730 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 733 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 734 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 735 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 736 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 737 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 738 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 766 + OFFSET_X, 1, 0.65, 0.65 );

setRotateKey( spep_0 + 642 + OFFSET_X, 1, -105.3 );
setRotateKey( spep_0 + 681 + OFFSET_X, 1, -105.3 );
setRotateKey( spep_0 + 682 + OFFSET_X, 1, -38.4 );
setRotateKey( spep_0 + 701 + OFFSET_X, 1, -38.4 );
setRotateKey( spep_0 + 702 + OFFSET_X, 1, -73.8 );
setRotateKey( spep_0 + 707 + OFFSET_X, 1, -73.8 );
setRotateKey( spep_0 + 708 + OFFSET_X, 1, -73.7 );
setRotateKey( spep_0 + 709 + OFFSET_X, 1, -73.7 );
setRotateKey( spep_0 + 710 + OFFSET_X, 1, -73.6 );
setRotateKey( spep_0 + 711 + OFFSET_X, 1, -73.6 );
setRotateKey( spep_0 + 712 + OFFSET_X, 1, -73.4 );
setRotateKey( spep_0 + 713 + OFFSET_X, 1, -73.4 );
setRotateKey( spep_0 + 714 + OFFSET_X, 1, -73.2 );
setRotateKey( spep_0 + 715 + OFFSET_X, 1, -73.2 );
setRotateKey( spep_0 + 716 + OFFSET_X, 1, -72.8 );
setRotateKey( spep_0 + 717 + OFFSET_X, 1, -72.8 );
setRotateKey( spep_0 + 718 + OFFSET_X, 1, -72.3 );
setRotateKey( spep_0 + 719 + OFFSET_X, 1, -72.3 );
setRotateKey( spep_0 + 720 + OFFSET_X, 1, -71.7 );
setRotateKey( spep_0 + 721 + OFFSET_X, 1, -71.7 );
setRotateKey( spep_0 + 722 + OFFSET_X, 1, -71 );
setRotateKey( spep_0 + 723 + OFFSET_X, 1, -71 );
setRotateKey( spep_0 + 724 + OFFSET_X, 1, -70 );
setRotateKey( spep_0 + 725 + OFFSET_X, 1, -70 );
setRotateKey( spep_0 + 726 + OFFSET_X, 1, -68.9 );
setRotateKey( spep_0 + 727 + OFFSET_X, 1, -68.9 );
setRotateKey( spep_0 + 728 + OFFSET_X, 1, -67.6 );
setRotateKey( spep_0 + 729 + OFFSET_X, 1, -67.6 );
setRotateKey( spep_0 + 730 + OFFSET_X, 1, -66.1 );
setRotateKey( spep_0 + 731 + OFFSET_X, 1, -66.1 );
setRotateKey( spep_0 + 732 + OFFSET_X, 1, -64.3 );
setRotateKey( spep_0 + 733 + OFFSET_X, 1, -64.3 );
setRotateKey( spep_0 + 734 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_0 + 735 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_0 + 736 + OFFSET_X, 1, -60 );
setRotateKey( spep_0 + 737 + OFFSET_X, 1, -60 );
setRotateKey( spep_0 + 738 + OFFSET_X, 1, -90.8 );
setRotateKey( spep_0 + 766 + OFFSET_X, 1, -90.8 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 270, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--顔アップ
SE003 = playSeVer2( spep_0 + 32, 44, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 38, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE004, 65 );
setTimeStretch( SE004, 1.17, 30, 4 );

--気を高める
SE005 = playSeVer2( spep_0 + 122, 1258, "",spep_0 + 246, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 122, SE005, 72 );
SE006 = playSeVer2( spep_0 + 130, 1068, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 180; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
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
--パンチ
SE007 = playSeVer2( spep_0 + 198, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE007, 153 );
SE008 = playSeVer2( spep_0 + 204, 1187, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 204, 1414, "", 0, 0, 0, -1);

--振りかぶる
SE010 = playSeVer2( spep_0 + 244, 1116, "",spep_0 + 294, 0, 20, -1);
SE011 = playSeVer2( spep_0 + 244, 1167, "",spep_0 + 304, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 244, SE011, 43 );

--蹴り
SE012 = playSeVer2( spep_0 + 276, 1187, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 276, 1010, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE014 = playSeVer2( spep_0 + 314, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE014, 67 );

--足地面につける
SE015 = playSeVer2( spep_0 + 334, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 338, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 338, SE016, 216 );
SE017 = playSeVer2( spep_0 + 338, 1192, "",spep_0 + 358, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 338, SE017, 170 );

--飛び上がる
SE018 = playSeVer2( spep_0 + 352, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 352, 1117, "",spep_0 + 414, 0, 24, -1);

--パンチ
SE020 = playSeVer2( spep_0 + 386, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE020, 166 );
SE021 = playSeVer2( spep_0 + 390, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 390, SE021, 88 );
SE022 = playSeVer2( spep_0 + 390, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 390, SE022, 69 );

--顔アップ
SE023 = playSeVer2( spep_0 + 436, 1182, "", 0, 14, 0, -1);
setStartTimeMs( SE023,  67 );
SE024 = playSeVer2( spep_0 + 438, 1232, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 438, 63, "",spep_0 + 522, 0, 22, -1);

--向かっていく
SE026 = playSeVer2( spep_0 + 468, 1116, "",spep_0 + 524, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 468, SE026, 82 );

--蹴り飛ばす
SE027 = playSeVer2( spep_0 + 496, 1003, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 500, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE028, 65 );
SE029 = playSeVer2( spep_0 + 500, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE030 = playSeVer2( spep_0 + 526, 1121, "",spep_0 + 634, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 526, SE030, 70 );

--敵に追いつく
SE032 = playSeVer2( spep_0 + 562, 1019, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 562, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 562, SE033, 79 );
SE034 = playSeVer2( spep_0 + 562, 1182, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 562, 1117, "", 0, 0, 0, -1);

--オーラ
SE035 = playSeVer2( spep_0 + 562, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 562, SE035, 32 );
SE036 = playSeVer2( spep_0 + 586, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 586, SE036, 32 );
SE037 = playSeVer2( spep_0 + 610, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 610, SE037, 32 );

--敵に追いつく
SE038 = playSeVer2( spep_0 + 626, 1019, "",spep_0 + 662, 0, 22, -1);
SE039 = playSeVer2( spep_0 + 628, 1004, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 630, 1277, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 630, 1068, "",spep_0 + 708, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 630, SE041, 70 );

--オーラ
SE042 = playSeVer2( spep_0 + 634, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 634, SE042, 32 );
SE043 = playSeVer2( spep_0 + 658, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 658, SE043, 32 );

--叩きつける
SE044 = playSeVer2( spep_0 + 664, 1003, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 672, 1123, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 674, 1009, "", 0, 0, 0, -1);

--オーラ
SE047 = playSeVer2( spep_0 + 682, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 682, SE047, 32 );

--敵落ちていく
SE048 = playSeVer2( spep_0 + 698, 1121, "",spep_0 + 780, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 698, SE048, 79 );

--オーラ
SE049 = playSeVer2( spep_0 + 706, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 706, SE049, 32 );
SE050 = playSeVer2( spep_0 + 730, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 730, SE050, 32 );

--地面激突
SE051 = playSeVer2( spep_0 + 748, 1159, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_0 + 748, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 748, SE052, 25 );
SE053 = playSeVer2( spep_0 + 754, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 754, SE053, 67 );

--画面遷移
SE054 = playSeVer2( spep_0 + 856, 44, "", 0, 0, 0, -1);

--瓦礫音
SE055 = playSeVer2( spep_0 + 892, 1168, "", 0, 118, 0, -1);
setSeVolumeByWorkId( spep_0 + 892, SE055, 44 );
setStartTimeMs( SE055,  400 );

--セリフカットイン
SE056 = playSeVer2( spep_0 + 932, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 932, SE056, 63 );

-- ** ボイス ** --
--「勝てんぜ、おまえは……」
playVoice( spep_0 + 930, 797 );
setVoiceVolume( spep_0 + 930, 797, 100 );

--終わり
-- hideKoScreen();
dealDamage( spep_0 + 1010);
endPhase( spep_0 + MAX_FRAME_0);--1138

else end