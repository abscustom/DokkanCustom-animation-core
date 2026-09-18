--4032340:UR_ピッコロ(潜在能力解放)+ガンマ2号_アクティブ必殺：激烈ソウルインパクト
--sp_effect_b1_00351
--ut0112

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164348; --ガンマ銃撃→コンビネーション

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
        spep_0 = 0;

        if(_IS_DODGE_ == 1) then
            skipFrame(0, spep_0 + 80 -13); -- スキップかつ回避された時のスキップ先フレーム指定
            setupMovie(spep_0 + 80 -13, SP_01, spep_0 + 80 -13 + 2, 1);
        else
        skipFrame(0, spep_0 + 860); -- スキップ先フレーム指定
        setupMovie(spep_0 + 860, SP_01, spep_0 + 860 -1 + 2, 1);

        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
        --ボイス名
        end
    else
        setupMovie(0 , SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- ガンマ銃撃→コンビネーション
-------------------------------------------------

MAX_FRAME_0 = 1176;

-- ** エフェクト等 ** --

base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -2, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -1, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 120 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 120 + OFFSET_X, 1, 1.6, 99.5 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 1.6, 99.5 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 1.5, 97.8 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 1.5, 97.8 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 1.5, 95.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 1.5, 95.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 1.5, 94 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 1.5, 94 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 1.4, 91.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 1.4, 91.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 1.4, 89.7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 1.4, 89.7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 1.3, 87.4 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 1.3, 87.4 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 1.3, 100.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 1.3, 100.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -4.7, 75.6 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -4.7, 75.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 4.3, 45.3 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 4.3, 45.3 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 1.1, 79.6 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 1.1, 79.6 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 16.6, 31.3 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 16.6, 31.3 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 1, 75.6 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 1, 75.6 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 10.6, 26.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 10.6, 26.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 0.9, 73.7 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 0.9, 73.7 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 3.8, 36.8 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 3.8, 36.8 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 0.7, 58.5 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 0.7, 58.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 6.5, 23.7 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 6.5, 23.7 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -17.2, 47.4 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -17.2, 47.4 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -2.5, 11.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -2.5, 11.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 20.9, 40.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 20.9, 40.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 6.1, 3.5 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 6.1, 3.5 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -8.8, 25.6 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -8.8, 25.6 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -11.9, -23.2 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -11.9, -23.2 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -3.2, 13.8 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -3.2, 13.8 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -6.2, -25.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -6.2, -25.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -9.3, 0.3 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -9.3, 0.3 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -0.6, -35.3 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -0.6, -35.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 2.3, -8.3 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 2.3, -8.3 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 5.1, -45.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 5.1, -45.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -0.8, -21.1 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -0.8, -21.1 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 2, -54.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 2, -54.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 5, -61.9 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 5, -61.9 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 11.1, -59.5 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 11.1, -59.5 , 0 );

setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 3.87, 3.87 );

setRotateKey( spep_0 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 120 + OFFSET_X, 1, 3, 0, 0, 0, 0.1);
setBlendColor( spep_0 + 122 + OFFSET_X, 1, 3, 0, 0, 0, 0);
setBlendColor( spep_0 + 124 + OFFSET_X, 1, 3, 1, 1, 1, 0.1);
setBlendColor( spep_0 + 126 + OFFSET_X, 1, 3, 1, 1, 1, 0.15);
setBlendColor( spep_0 + 128 + OFFSET_X, 1, 3, 1, 1, 1, 0.2);
setBlendColor( spep_0 + 187 + OFFSET_X, 1, 3, 1, 1, 1, 0.2);
setBlendColor( spep_0 + 188 + OFFSET_X, 1, 3, 1, 1, 1, 0);
--敵の動き2

sync_offset=-2;

setDisp( spep_0 + 242 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 306 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 242 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 262 + OFFSET_X + sync_offset, 1, 107 );
changeAnime( spep_0 + 270 + OFFSET_X + sync_offset, 1, 108 );

--敵位置調整
y_axis_adjust=-500;

setMoveKey( spep_0 + 242 + OFFSET_X, 1, 339.3, -168.4  + y_axis_adjust, 0 );
setMoveKey( spep_0 + 247 + OFFSET_X + sync_offset, 1, 339.3, -168.4 + y_axis_adjust, 0 );
setMoveKey( spep_0 + 248 + OFFSET_X + sync_offset, 1, 216.5, -60.8  + y_axis_adjust, 0 );
setMoveKey( spep_0 + 251 + OFFSET_X + sync_offset, 1, 216.5, -60.8  + y_axis_adjust, 0 );
setMoveKey( spep_0 + 252 + OFFSET_X + sync_offset, 1, 158.7, 0.8  + y_axis_adjust, 0 );
setMoveKey( spep_0 + 257 + OFFSET_X + sync_offset, 1, 158.7, 0.8  + y_axis_adjust, 0 );
setMoveKey( spep_0 + 258 + OFFSET_X + sync_offset, 1, 116.3, 27.8  + y_axis_adjust, 0 );
setMoveKey( spep_0 + 261 + OFFSET_X + sync_offset, 1, 116.3, 27.8  + y_axis_adjust, 0 );

--ここまで

setMoveKey( spep_0 + 262 + OFFSET_X + sync_offset, 1, 21, 258.1 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X + sync_offset, 1, 21, 258.1 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X + sync_offset, 1, 71.1, 231.3 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X + sync_offset, 1, 71.1, 231.3 , 0 );

--敵位置調整
y_axis_adjust=-80;

setMoveKey( spep_0 + 270 + OFFSET_X + sync_offset, 1, 111.1, 86.4 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X + sync_offset, 1, 111.1, 86.4 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X + sync_offset , 1, 307.3, -122.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X , 1, 307.3, -122.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X , 1, 252.3, -67.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X , 1, 252.3, -67.6 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X , 1, 311.5, -126.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X , 1, 311.5, -126.8 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X , 1, 290, -131.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X , 1, 290, -131.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X , 1, 289.7, -184.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X , 1, 289.7, -184.5 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X , 1, 370.7, -135.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X , 1, 370.7, -135.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X , 1, 359.4, -195 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X , 1, 359.4, -195 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X , 1, 354.8, -186.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X , 1, 354.8, -186.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X , 1, 334.6, -229.1 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X , 1, 334.6, -229.1 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X , 1, 351, -198 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X , 1, 351, -198 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X , 1, 341.1, -227.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X , 1, 341.1, -227.3 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X , 1, 345.7, -193.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X , 1, 345.7, -193.7 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X , 1, 351.9, -217.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X , 1, 351.9, -217.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X , 1, 377.6, -182.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X , 1, 377.6, -182.9 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X , 1, 392.2, -197.4 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X , 1, 392.2, -197.4 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X + sync_offset , 1, 420.3, -239 + y_axis_adjust , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X , 1, 420.3, -239 + y_axis_adjust , 0 );

--ここまで

setScaleKey( spep_0 + 242 + OFFSET_X, 1, 6.76, 6.76 );
setScaleKey( spep_0 + 247 + OFFSET_X + sync_offset, 1, 6.76, 6.76 );
setScaleKey( spep_0 + 248 + OFFSET_X + sync_offset, 1, 5.9, 5.9 );
setScaleKey( spep_0 + 251 + OFFSET_X + sync_offset, 1, 5.9, 5.9 );
setScaleKey( spep_0 + 252 + OFFSET_X + sync_offset, 1, 5.5, 5.5 );
setScaleKey( spep_0 + 257 + OFFSET_X + sync_offset, 1, 5.5, 5.5 );
setScaleKey( spep_0 + 258 + OFFSET_X + sync_offset, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 261 + OFFSET_X + sync_offset, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 262 + OFFSET_X + sync_offset, 1, 3, 3 );
setScaleKey( spep_0 + 265 + OFFSET_X + sync_offset, 1, 3, 3 );
setScaleKey( spep_0 + 266 + OFFSET_X + sync_offset, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 269 + OFFSET_X + sync_offset, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 270 + OFFSET_X + sync_offset, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 271 + OFFSET_X + sync_offset, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 272 + OFFSET_X + sync_offset , 1, 3.89, 3.89 );
setScaleKey( spep_0 + 277 + OFFSET_X , 1, 3.89, 3.89 );
setScaleKey( spep_0 + 278 + OFFSET_X , 1, 3.99, 3.99 );
setScaleKey( spep_0 + 281 + OFFSET_X , 1, 3.99, 3.99 );
setScaleKey( spep_0 + 282 + OFFSET_X , 1, 4.14, 4.14 );
setScaleKey( spep_0 + 291 + OFFSET_X , 1, 4.14, 4.14 );
setScaleKey( spep_0 + 292 + OFFSET_X , 1, 4.22, 4.22 );
setScaleKey( spep_0 + 301 + OFFSET_X , 1, 4.22, 4.22 );
setScaleKey( spep_0 + 304 + OFFSET_X + sync_offset , 1, 4.59, 4.59 );
setScaleKey( spep_0 + 306 + OFFSET_X , 1, 4.59, 4.59 );

setRotateKey( spep_0 + 242 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 261 + OFFSET_X + sync_offset, 1, -29 );
setRotateKey( spep_0 + 262 + OFFSET_X + sync_offset, 1, -64 );
setRotateKey( spep_0 + 269 + OFFSET_X + sync_offset, 1, -64 );
setRotateKey( spep_0 + 270 + OFFSET_X + sync_offset, 1, 36.1 );
setRotateKey( spep_0 + 271 + OFFSET_X + sync_offset, 1, 36.1 );
setRotateKey( spep_0 + 272 + OFFSET_X + sync_offset , 1, 33.1 );
setRotateKey( spep_0 + 277 + OFFSET_X , 1, 33.1 );
setRotateKey( spep_0 + 278 + OFFSET_X , 1, 34.1 );
setRotateKey( spep_0 + 306 + OFFSET_X , 1, 34.1 );

--敵の動き3

setDisp( spep_0 + 340 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 368 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 340 + OFFSET_X, 1, 247.9, -76.2 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 247.9, -76.2 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 109.1, -29.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 109.1, -29.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 140.8, -34.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 140.8, -34.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 150.1, -36.4 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 150.1, -36.4 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 155.8, -37.5 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 155.8, -37.5 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 159.6, -38.1 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 159.6, -38.1 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 162.2, -38.6 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 162.2, -38.6 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 163.9, -38.9 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 163.9, -38.9 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 165, -39.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 165, -39.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 165.6, -39.2 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 165.6, -39.2 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 165.8, -39.2 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 165.8, -39.2 , 0 );

setScaleKey( spep_0 + 340 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_0 + 340 + OFFSET_X, 1, 51 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, 51 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, 56 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, 56 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 55.9 );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, 55.9 );

--敵の動き4

setDisp( spep_0 + 700 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 732 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 700 + OFFSET_X, 1, 170.4, -12.4 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, 170.4, -12.4 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 178.3, 11.9 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, 178.3, 11.9 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 186.3, -6.4 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, 186.3, -6.4 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, 180, 3.7 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 180, 3.7 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 195.1, -1.4 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, 195.1, -1.4 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 188.8, 8.6 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 188.8, 8.6 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 196.8, -9.7 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 196.8, -9.7 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 204.7, 14.6 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 204.7, 14.6 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 149.2, -723.2 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, 149.2, -723.2 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 156.2, -709.1 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 156.2, -709.1 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 142, -716.2 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 142, -716.2 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 156.2, -702 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 156.2, -702 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 142, -709.1 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 142, -709.1 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 142, -687.8 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 142, -687.8 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 142, -709.1 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 142, -709.1 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 156.2, -709.1 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 156.2, -709.1 , 0 );

setScaleKey( spep_0 + 700 + OFFSET_X, 1, 9.59, 9.59 );
setScaleKey( spep_0 + 715 + OFFSET_X, 1, 9.59, 9.59 );
setScaleKey( spep_0 + 716 + OFFSET_X, 1, 9.7, 9.7 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 9.7, 9.7 );

setRotateKey( spep_0 + 700 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 732 + OFFSET_X, 1, -12 );

setBlendColor(  spep_0 + 716 + OFFSET_X, 1, 3, 1, 1, 1, 1);
setBlendColor(  spep_0 + 732 + OFFSET_X, 1, 3, 1, 1, 1, 1);
setBlendColor(  spep_0 + 733 + OFFSET_X, 1, 3, 1, 1, 1, 0);

--敵の動き5

setDisp( spep_0 + 736 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 744 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 736 + OFFSET_X, 1, -38.2, -180.6 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, -38.2, -180.6 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, -22, -172.5 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, -22, -172.5 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, -22.9, -172.9 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, -22.9, -172.9 , 0 );

setScaleKey( spep_0 + 736 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 744 + OFFSET_X, 1, 1.77, 1.77 );

--敵の回転修正ここから

rotation_adjust = -35;

setRotateKey( spep_0 + 736 + OFFSET_X, 1, -15 + rotation_adjust);
setRotateKey( spep_0 + 744 + OFFSET_X, 1, -15 + rotation_adjust);

setBlendColor(  spep_0 + 736 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor(  spep_0 + 745 + OFFSET_X, 1, 3, 0, 0, 0, 0);

--敵の動き6

setDisp( spep_0 + 752 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 764 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 752 + OFFSET_X, 1, -36.7, -182.7 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, -36.7, -182.7 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, -50.5, -194.2 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, -50.5, -194.2 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, -32.2, -204.6 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, -32.2, -204.6 , 0 );

setScaleKey( spep_0 + 752 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 764 + OFFSET_X, 1, 1.77, 1.77 );

setRotateKey( spep_0 + 752 + OFFSET_X, 1, -15 + rotation_adjust);
setRotateKey( spep_0 + 764 + OFFSET_X, 1, -15 + rotation_adjust);

setBlendColor(  spep_0 + 752 + OFFSET_X, 1, 3, 1, 1, 1, 1);
setBlendColor(  spep_0 + 765 + OFFSET_X, 1, 3, 0, 0, 0, 0);

--敵の動き7

setDisp( spep_0 + 776 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 874 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 776 + OFFSET_X, 1, -36.5, -181.1 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, -36.5, -181.1 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, -38.3, -156.7 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, -38.3, -156.7 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, -33.3, -192.7 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, -33.3, -192.7 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, -38.6, -159.8 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, -38.6, -159.8 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, -24.4, -182.7 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, -24.4, -182.7 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, -44.6, -170.7 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, -44.6, -170.7 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, -32.7, -189.7 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, -32.7, -189.7 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, -36.9, -167.4 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, -36.9, -167.4 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, -32.9, -181.4 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, -32.9, -181.4 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, -32.3, -169.6 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, -32.3, -169.6 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, -31.7, -179.3 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, -31.7, -179.3 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, -31.2, -172.9 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, -31.2, -172.9 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, -30.6, -179.7 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, -30.6, -179.7 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, -30, -173.5 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, -30, -173.5 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, -29.5, -182.2 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, -29.5, -182.2 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, -28.9, -178.3 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, -28.9, -178.3 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, -28.9, -178 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, -28.9, -178 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, -28.9, -177.7 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, -28.9, -177.7 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, -28.9, -177.3 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, -28.9, -177.3 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, -28.9, -177 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, -28.9, -177 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, -28.9, -176.7 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, -28.9, -176.7 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, -29, -176.4 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, -29, -176.4 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, -28.9, -176.1 , 0 );
setMoveKey( spep_0 + 821 + OFFSET_X, 1, -28.9, -176.1 , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, -28.9, -175.7 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, -28.9, -175.7 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, -29, -175.7 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, -29, -175.7 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, -29, -175.6 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, -29, -175.6 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, -29, -175.5 , 0 );
setMoveKey( spep_0 + 831 + OFFSET_X, 1, -29, -175.5 , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, -29.1, -175.4 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, -29.1, -175.4 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, -29.1, -175.3 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, -29.1, -175.3 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, -29.1, -175.2 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, -29.1, -175.2 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, -29.1, -175.1 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, -29.1, -175.1 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, -28.6, -174.7 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, -28.6, -174.7 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, -28, -174.3 , 0 );
setMoveKey( spep_0 + 845 + OFFSET_X, 1, -28, -174.3 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, -27.5, -174 , 0 );
setMoveKey( spep_0 + 847 + OFFSET_X, 1, -27.5, -174 , 0 );
setMoveKey( spep_0 + 848 + OFFSET_X, 1, -26.9, -173.6 , 0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, -26.9, -173.6 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, -26.4, -173.3 , 0 );
setMoveKey( spep_0 + 851 + OFFSET_X, 1, -26.4, -173.3 , 0 );
setMoveKey( spep_0 + 852 + OFFSET_X, 1, -25.9, -172.9 , 0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, -25.9, -172.9 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, -25.3, -172.8 , 0 );
setMoveKey( spep_0 + 855 + OFFSET_X, 1, -25.3, -172.8 , 0 );
setMoveKey( spep_0 + 856 + OFFSET_X, 1, -24.7, -172.6 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, -24.7, -172.6 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, -24.1, -172.5 , 0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, -24.1, -172.5 , 0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, -23.6, -172.3 , 0 );
setMoveKey( spep_0 + 861 + OFFSET_X, 1, -23.6, -172.3 , 0 );
setMoveKey( spep_0 + 862 + OFFSET_X, 1, -23, -172.2 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, -23, -172.2 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, -22.4, -172.1 , 0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, -22.4, -172.1 , 0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, -21.8, -171.9 , 0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, -21.8, -171.9 , 0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, -21.2, -171.8 , 0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, -21.2, -171.8 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, 299, 75.3 , 0 );
setMoveKey( spep_0 + 871 + OFFSET_X, 1, 299, 75.3 , 0 );
setMoveKey( spep_0 + 872 + OFFSET_X, 1, 526.2, 156.4 , 0 );
setMoveKey( spep_0 + 873 + OFFSET_X, 1, 526.2, 156.4 , 0 );
setMoveKey( spep_0 + 874 + OFFSET_X, 1, 682.3, 323.8 , 0 );

setScaleKey( spep_0 + 776 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 874 + OFFSET_X, 1, 1.77, 1.77 );


setRotateKey( spep_0 + 776 + OFFSET_X, 1, -15 + rotation_adjust );
setRotateKey( spep_0 + 777 + OFFSET_X, 1, -15 + rotation_adjust );
setRotateKey( spep_0 + 778 + OFFSET_X, 1, -14.9 + rotation_adjust );
setRotateKey( spep_0 + 779 + OFFSET_X, 1, -14.9 + rotation_adjust );
setRotateKey( spep_0 + 780 + OFFSET_X, 1, -14.8 + rotation_adjust );
setRotateKey( spep_0 + 781 + OFFSET_X, 1, -14.8 + rotation_adjust );
setRotateKey( spep_0 + 782 + OFFSET_X, 1, -14.7 + rotation_adjust );
setRotateKey( spep_0 + 783 + OFFSET_X, 1, -14.7 + rotation_adjust );
setRotateKey( spep_0 + 784 + OFFSET_X, 1, -14.6 + rotation_adjust );
setRotateKey( spep_0 + 785 + OFFSET_X, 1, -14.6 + rotation_adjust );
setRotateKey( spep_0 + 786 + OFFSET_X, 1, -14.5 + rotation_adjust );
setRotateKey( spep_0 + 787 + OFFSET_X, 1, -14.5 + rotation_adjust );
setRotateKey( spep_0 + 788 + OFFSET_X, 1, -14.3 + rotation_adjust );
setRotateKey( spep_0 + 789 + OFFSET_X, 1, -14.3 + rotation_adjust );
setRotateKey( spep_0 + 790 + OFFSET_X, 1, -14.2 + rotation_adjust );
setRotateKey( spep_0 + 791 + OFFSET_X, 1, -14.2 + rotation_adjust );
setRotateKey( spep_0 + 792 + OFFSET_X, 1, -14.1 + rotation_adjust );
setRotateKey( spep_0 + 793 + OFFSET_X, 1, -14.1 + rotation_adjust );
setRotateKey( spep_0 + 794 + OFFSET_X, 1, -14 + rotation_adjust );
setRotateKey( spep_0 + 795 + OFFSET_X, 1, -14 + rotation_adjust );
setRotateKey( spep_0 + 796 + OFFSET_X, 1, -13.9 + rotation_adjust );
setRotateKey( spep_0 + 797 + OFFSET_X, 1, -13.9 + rotation_adjust );
setRotateKey( spep_0 + 798 + OFFSET_X, 1, -13.8 + rotation_adjust );
setRotateKey( spep_0 + 799 + OFFSET_X, 1, -13.8 + rotation_adjust );
setRotateKey( spep_0 + 800 + OFFSET_X, 1, -13.7 + rotation_adjust );
setRotateKey( spep_0 + 801 + OFFSET_X, 1, -13.7 + rotation_adjust );
setRotateKey( spep_0 + 802 + OFFSET_X, 1, -13.6 + rotation_adjust );
setRotateKey( spep_0 + 803 + OFFSET_X, 1, -13.6 + rotation_adjust );
setRotateKey( spep_0 + 804 + OFFSET_X, 1, -13.5 + rotation_adjust );
setRotateKey( spep_0 + 805 + OFFSET_X, 1, -13.5 + rotation_adjust );
setRotateKey( spep_0 + 806 + OFFSET_X, 1, -13.4 + rotation_adjust );
setRotateKey( spep_0 + 807 + OFFSET_X, 1, -13.4 + rotation_adjust );
setRotateKey( spep_0 + 808 + OFFSET_X, 1, -13.3 + rotation_adjust );
setRotateKey( spep_0 + 809 + OFFSET_X, 1, -13.3 + rotation_adjust );
setRotateKey( spep_0 + 810 + OFFSET_X, 1, -13.2 + rotation_adjust );
setRotateKey( spep_0 + 811 + OFFSET_X, 1, -13.2 + rotation_adjust );
setRotateKey( spep_0 + 812 + OFFSET_X, 1, -13 + rotation_adjust );
setRotateKey( spep_0 + 813 + OFFSET_X, 1, -13 + rotation_adjust );
setRotateKey( spep_0 + 814 + OFFSET_X, 1, -12.9 + rotation_adjust );
setRotateKey( spep_0 + 815 + OFFSET_X, 1, -12.9 + rotation_adjust );
setRotateKey( spep_0 + 816 + OFFSET_X, 1, -12.8 + rotation_adjust );
setRotateKey( spep_0 + 817 + OFFSET_X, 1, -12.8 + rotation_adjust );
setRotateKey( spep_0 + 818 + OFFSET_X, 1, -12.7 + rotation_adjust );
setRotateKey( spep_0 + 819 + OFFSET_X, 1, -12.7 + rotation_adjust );
setRotateKey( spep_0 + 820 + OFFSET_X, 1, -12.6 + rotation_adjust );
setRotateKey( spep_0 + 821 + OFFSET_X, 1, -12.6 + rotation_adjust );
setRotateKey( spep_0 + 822 + OFFSET_X, 1, -12.5 + rotation_adjust );
setRotateKey( spep_0 + 823 + OFFSET_X, 1, -12.5 + rotation_adjust );
setRotateKey( spep_0 + 824 + OFFSET_X, 1, -12.4 + rotation_adjust );
setRotateKey( spep_0 + 825 + OFFSET_X, 1, -12.4 + rotation_adjust );
setRotateKey( spep_0 + 826 + OFFSET_X, 1, -12.3 + rotation_adjust );
setRotateKey( spep_0 + 827 + OFFSET_X, 1, -12.3 + rotation_adjust );
setRotateKey( spep_0 + 828 + OFFSET_X, 1, -12.2 + rotation_adjust );
setRotateKey( spep_0 + 829 + OFFSET_X, 1, -12.2 + rotation_adjust );
setRotateKey( spep_0 + 830 + OFFSET_X, 1, -12.1 + rotation_adjust );
setRotateKey( spep_0 + 831 + OFFSET_X, 1, -12.1 + rotation_adjust );
setRotateKey( spep_0 + 832 + OFFSET_X, 1, -12 + rotation_adjust );
setRotateKey( spep_0 + 833 + OFFSET_X, 1, -12 + rotation_adjust );
setRotateKey( spep_0 + 834 + OFFSET_X, 1, -11.8 + rotation_adjust );
setRotateKey( spep_0 + 835 + OFFSET_X, 1, -11.8 + rotation_adjust );
setRotateKey( spep_0 + 836 + OFFSET_X, 1, -11.7 + rotation_adjust );
setRotateKey( spep_0 + 837 + OFFSET_X, 1, -11.7 + rotation_adjust );
setRotateKey( spep_0 + 838 + OFFSET_X, 1, -11.6 + rotation_adjust );
setRotateKey( spep_0 + 839 + OFFSET_X, 1, -11.6 + rotation_adjust );
setRotateKey( spep_0 + 840 + OFFSET_X, 1, -11.5 + rotation_adjust );
setRotateKey( spep_0 + 841 + OFFSET_X, 1, -11.5 + rotation_adjust );
setRotateKey( spep_0 + 842 + OFFSET_X, 1, -11.4 + rotation_adjust );
setRotateKey( spep_0 + 843 + OFFSET_X, 1, -11.4 + rotation_adjust );
setRotateKey( spep_0 + 844 + OFFSET_X, 1, -11.3 + rotation_adjust );
setRotateKey( spep_0 + 845 + OFFSET_X, 1, -11.3 + rotation_adjust );
setRotateKey( spep_0 + 846 + OFFSET_X, 1, -11.2 + rotation_adjust );
setRotateKey( spep_0 + 847 + OFFSET_X, 1, -11.2 + rotation_adjust );
setRotateKey( spep_0 + 848 + OFFSET_X, 1, -11.1 + rotation_adjust );
setRotateKey( spep_0 + 849 + OFFSET_X, 1, -11.1 + rotation_adjust );
setRotateKey( spep_0 + 850 + OFFSET_X, 1, -11 + rotation_adjust );
setRotateKey( spep_0 + 851 + OFFSET_X, 1, -11 + rotation_adjust );
setRotateKey( spep_0 + 852 + OFFSET_X, 1, -10.9 + rotation_adjust );
setRotateKey( spep_0 + 853 + OFFSET_X, 1, -10.9 + rotation_adjust );
setRotateKey( spep_0 + 854 + OFFSET_X, 1, -10.8 + rotation_adjust );
setRotateKey( spep_0 + 855 + OFFSET_X, 1, -10.8 + rotation_adjust );
setRotateKey( spep_0 + 856 + OFFSET_X, 1, -10.7 + rotation_adjust );
setRotateKey( spep_0 + 857 + OFFSET_X, 1, -10.7 + rotation_adjust );
setRotateKey( spep_0 + 858 + OFFSET_X, 1, -10.5 + rotation_adjust );
setRotateKey( spep_0 + 859 + OFFSET_X, 1, -10.5 + rotation_adjust );
setRotateKey( spep_0 + 860 + OFFSET_X, 1, -10.4 + rotation_adjust );
setRotateKey( spep_0 + 861 + OFFSET_X, 1, -10.4 + rotation_adjust );
setRotateKey( spep_0 + 862 + OFFSET_X, 1, -10.3 + rotation_adjust );
setRotateKey( spep_0 + 863 + OFFSET_X, 1, -10.3 + rotation_adjust );
setRotateKey( spep_0 + 864 + OFFSET_X, 1, -10.2 + rotation_adjust );
setRotateKey( spep_0 + 865 + OFFSET_X, 1, -10.2 + rotation_adjust );
setRotateKey( spep_0 + 866 + OFFSET_X, 1, -10.1 + rotation_adjust );
setRotateKey( spep_0 + 867 + OFFSET_X, 1, -10.1 + rotation_adjust );
setRotateKey( spep_0 + 868 + OFFSET_X, 1, -10 + rotation_adjust );
setRotateKey( spep_0 + 869 + OFFSET_X, 1, -10 + rotation_adjust );

--ここまで

setRotateKey( spep_0 + 870 + OFFSET_X, 1, -22 );
setRotateKey( spep_0 + 874 + OFFSET_X, 1, -22 );

--敵の動き8

setDisp( spep_0 + 916 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 942 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 916 + OFFSET_X, 1, -249.6, -620 , 0 );
setMoveKey( spep_0 + 917 + OFFSET_X, 1, -249.6, -620 , 0 );
setMoveKey( spep_0 + 918 + OFFSET_X, 1, -84.2, -396.1 , 0 );
setMoveKey( spep_0 + 919 + OFFSET_X, 1, -84.2, -396.1 , 0 );
setMoveKey( spep_0 + 920 + OFFSET_X, 1, 2.6, -238.8 , 0 );
setMoveKey( spep_0 + 921 + OFFSET_X, 1, 2.6, -238.8 , 0 );
setMoveKey( spep_0 + 922 + OFFSET_X, 1, 36.3, -154.3 , 0 );
setMoveKey( spep_0 + 923 + OFFSET_X, 1, 36.3, -154.3 , 0 );
setMoveKey( spep_0 + 924 + OFFSET_X, 1, 46.7, -108.2 , 0 );
setMoveKey( spep_0 + 925 + OFFSET_X, 1, 46.7, -108.2 , 0 );
setMoveKey( spep_0 + 926 + OFFSET_X, 1, 46.9, -78.9 , 0 );
setMoveKey( spep_0 + 927 + OFFSET_X, 1, 46.9, -78.9 , 0 );
setMoveKey( spep_0 + 928 + OFFSET_X, 1, 41.6, -60.1 , 0 );
setMoveKey( spep_0 + 929 + OFFSET_X, 1, 41.6, -60.1 , 0 );
setMoveKey( spep_0 + 930 + OFFSET_X, 1, 33.2, -47.6 , 0 );
setMoveKey( spep_0 + 931 + OFFSET_X, 1, 33.2, -47.6 , 0 );
setMoveKey( spep_0 + 932 + OFFSET_X, 1, 23.3, -41.1 , 0 );
setMoveKey( spep_0 + 933 + OFFSET_X, 1, 23.3, -41.1 , 0 );
setMoveKey( spep_0 + 934 + OFFSET_X, 1, 12.3, -38.4 , 0 );
setMoveKey( spep_0 + 935 + OFFSET_X, 1, 12.3, -38.4 , 0 );
setMoveKey( spep_0 + 936 + OFFSET_X, 1, 0.7, -38.1 , 0 );
setMoveKey( spep_0 + 937 + OFFSET_X, 1, 0.7, -38.1 , 0 );
setMoveKey( spep_0 + 938 + OFFSET_X, 1, -11.6, -39.4 , 0 );
setMoveKey( spep_0 + 939 + OFFSET_X, 1, -11.6, -39.4 , 0 );
setMoveKey( spep_0 + 940 + OFFSET_X, 1, -25.5, -41.3 , 0 );
setMoveKey( spep_0 + 942 + OFFSET_X, 1, -25.5, -41.3 , 0 );

setScaleKey( spep_0 + 916 + OFFSET_X, 1, 8.31, 8.31 );
setScaleKey( spep_0 + 917 + OFFSET_X, 1, 8.31, 8.31 );
setScaleKey( spep_0 + 918 + OFFSET_X, 1, 5.21, 5.21 );
setScaleKey( spep_0 + 919 + OFFSET_X, 1, 5.21, 5.21 );
setScaleKey( spep_0 + 920 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 921 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 922 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 923 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 924 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 925 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 926 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 927 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 928 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 929 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 930 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 931 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 932 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 933 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 934 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 935 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 936 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 937 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 938 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 939 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 940 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 942 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_0 + 916 + OFFSET_X, 1, -34 );
setRotateKey( spep_0 + 917 + OFFSET_X, 1, -34 );
setRotateKey( spep_0 + 918 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_0 + 919 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_0 + 920 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 921 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 922 + OFFSET_X, 1, -50.2 );
setRotateKey( spep_0 + 923 + OFFSET_X, 1, -50.2 );
setRotateKey( spep_0 + 924 + OFFSET_X, 1, -55.7 );
setRotateKey( spep_0 + 925 + OFFSET_X, 1, -55.7 );
setRotateKey( spep_0 + 926 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_0 + 927 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_0 + 928 + OFFSET_X, 1, -66.5 );
setRotateKey( spep_0 + 929 + OFFSET_X, 1, -66.5 );
setRotateKey( spep_0 + 930 + OFFSET_X, 1, -71.9 );
setRotateKey( spep_0 + 931 + OFFSET_X, 1, -71.9 );
setRotateKey( spep_0 + 932 + OFFSET_X, 1, -77.3 );
setRotateKey( spep_0 + 933 + OFFSET_X, 1, -77.3 );
setRotateKey( spep_0 + 934 + OFFSET_X, 1, -82.7 );
setRotateKey( spep_0 + 935 + OFFSET_X, 1, -82.7 );
setRotateKey( spep_0 + 936 + OFFSET_X, 1, -88.2 );
setRotateKey( spep_0 + 937 + OFFSET_X, 1, -88.2 );
setRotateKey( spep_0 + 938 + OFFSET_X, 1, -93.6 );
setRotateKey( spep_0 + 939 + OFFSET_X, 1, -93.6 );
setRotateKey( spep_0 + 940 + OFFSET_X, 1, -99 );
setRotateKey( spep_0 + 942 + OFFSET_X, 1, -99 );

-- ** 音 ** --

--ガンマ２号飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1116, "", 0, 0, 0, -1);
--セリフカットイン
SE004 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE004, 63 );
--ビーム撃つ１
SE005 = playSeVer2( spep_0 + 34, 1256, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 34, 1402, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 34, 1201, "", 0, 0, 0, -1);
--ビーム撃つ２
SE008 = playSeVer2( spep_0 + 48, 1256, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 48, 1402, "", 0, 0, 0, -1);
--翻る
SE010 = playSeVer2( spep_0 + 56, 63, "",spep_0 + 98, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 56, SE010, 123 );
SE011 = playSeVer2( spep_0 + 60, 1332, "", 0, 0, 0, -1);

-- ** 声 ** --

--「やぁぁぁぁっ！！」
playVoice( spep_0 + 10, 1123 );
setVoiceVolume( spep_0 + 10, 1123, 100 );

-----------------------------
-- 回避
-----------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);

setVoiceVolume( SP_dodge - 12, 1123, 0 );
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

--ビーム撃つ３
SE012 = playSeVer2( spep_0 + 86, 1256, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 86, 1402, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 86, 1201, "", 0, 0, 0, -1);
--ビーム飛んでいく
SE015 = playSeVer2( spep_0 + 86, 1202, "",spep_0 + 170, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 86, SE015, 153 );
--ビーム撃つ４
SE016 = playSeVer2( spep_0 + 100, 1256, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 100, 1402, "", 0, 0, 0, -1);
--爆発
SE018 = playSeVer2( spep_0 + 130, 1023, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 136, 1025, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 142, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE020, 66 );
--翻ってジャンプ
SE021 = playSeVer2( spep_0 + 194, 1116, "",spep_0 + 240, 0, 22, -1);
SE022 = playSeVer2( spep_0 + 216, 1117, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 226, 1332, "", 0, 0, 0, -1);
--キック
SE024 = playSeVer2( spep_0 + 256, 1004, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 264, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE025, 77 );
SE026 = playSeVer2( spep_0 + 266, 1187, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 266, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE027, 72 );
--蹴り最中音
SE028 = playSeVer2( spep_0 + 282, 1278, "",spep_0 + 482, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 282, SE028, 50 );
SE029 = playSeVer2( spep_0 + 282, 1468, "",spep_0 + 538, 0, 106, -1);
setSeVolumeByWorkId( spep_0 + 282, SE029, 93 );
SE030 = playSeVer2( spep_0 + 294, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 294, SE030, 78 );
SE031 = playSeVer2( spep_0 + 302, 1304, "",spep_0 + 528, 0, 82, -1);
--敵吹き飛ぶ
SE032 = playSeVer2( spep_0 + 340, 1027, "", 0, 0, 0, -1);
--画面遷移
SE033 = playSeVer2( spep_0 + 432, 8, "", 0, 0, 0, -1);
--構える
SE034 = playSeVer2( spep_0 + 476, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE034, 79 );
--オレンジピッコロ変身
SE035 = playSeVer2( spep_0 + 556, 1392, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 556, SE035, 78 );
SE036 = playSeVer2( spep_0 + 556, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 556, SE036, 84 );
SE037 = playSeVer2( spep_0 + 556, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 556, SE037, 40 );
--向かってくる
SE038 = playSeVer2( spep_0 + 566, 1167, "", 0, 0, 0, -1);
setTimeStretch( SE038, 2, 30, 4 );
SE039 = playSeVer2( spep_0 + 592, 1121, "",spep_0 + 734, 0, 60, -1);
--気弾溜め
SE040 = playSeVer2( spep_0 + 666, 1334, "",spep_0 + 780, 0, 40, -1);
SE041 = playSeVer2( spep_0 + 668, 1440, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 668, SE041, 83 );
SE042 = playSeVer2( spep_0 + 668, 1441, "",spep_0 + 776, 0, 34, -1);
SE043 = playSeVer2( spep_0 + 668, 1296, "",spep_0 + 782, 0, 42, -1);
--気弾ヒット
SE044 = playSeVer2( spep_0 + 736, 1137, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 736, SE044, 63 );
SE045 = playSeVer2( spep_0 + 736, 1153, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 736, 1114, "", 0, 0, 0, -1);
--気弾弾ける
SE047 = playSeVer2( spep_0 + 786, 1479, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 786, 1026, "", 0, 0, 0, -1);
--敵吹き飛ばす
SE049 = playSeVer2( spep_0 + 872, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 872, SE049, 72 );
SE050 = playSeVer2( spep_0 + 880, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 880, SE050, 50 );
setPitch( spep_0 + 880, SE050, -600 );
setTimeStretch( SE050, 0.6, 30, 4 );
SE051 = playSeVer2( spep_0 + 880, 1027, "", 0, 0, 0, -1);
--気弾飛んでいく
SE052 = playSeVer2( spep_0 + 892, 1304, "",spep_0 + 988, 0, 26, -1);
SE053 = playSeVer2( spep_0 + 904, 1121, "",spep_0 + 992, 0, 46, -1);
--爆発
SE054 = playSeVer2( spep_0 + 948, 1159, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 966, 1067, "", 0, 0, 0, -1);

-- ** 声 ** --

--「今だっ！！」
playVoice( spep_0 + 386, 1124 );
setVoiceVolume( spep_0 + 396, 1124, 100 );
--「うおおおおおっ！！」
playVoice( spep_0 + 484, 1125 );
setVoiceVolume( spep_0 + 494, 1125, 100 );

--終わり
hideKoScreen();
dealDamage( spep_0 + 948);
endPhase( spep_0 + 1056);--1058

else end