--1029730_UR_スラッグ_必殺技_ダークネスブラスター(アクティブ)
--sp_effect_b4_00356
--ut0079
  
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
  
--エフェクト(味方)
SP_01  = 163238; --全編_手前配置ef_001
--SP_01b = 163239; --全編_奥配置ef_001b
 
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
           skipFrame(0, spep_0 + 218 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 218 -13, SP_01, spep_0 + 218 -13 + 2, 1);
       else
        skipFrame(0, spep_0 + 824 );  -- スキップ先フレーム指定
        setupMovie(spep_0 + 824 , SP_01, spep_0 + 824 - 1 + 2, 1);

        --地面殴る
        SE023 = playSeVer2( spep_0 + 824, 1159, "", 0, 0, 0, -1);

        --顔壁から出てくる
        SE025 = playSeVer2( spep_0 + 824, 1116, "",spep_0 + 872, 0, 28, -1);
        setSeVolumeByWorkId( spep_0 + 824, SE025, 126 );
       end
    else 
        setupMovie(0, SP_01, 0, 1);

    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 0;
  
  
-------------------------------------------------
-- 全編
-------------------------------------------------
 
MAX_FRAME_0 = 1044;
 
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 全編_手前配置 (ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
--[[
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 全編_奥配置 (ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 102 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 306 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 102 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 238 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 102 + OFFSET_X, 1, 407.7, -361.3 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 407.7, -361.3 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 415.3, -370.6 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 415.3, -370.6 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 407.6, -367.1 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 407.6, -367.1 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 417.7, -371.3 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 417.7, -371.3 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 405, -385.7 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 405, -385.7 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 405, -379.6 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 405, -379.6 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 420.2, -399.1 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 420.2, -399.1 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 420.1, -388 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 420.1, -388 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 407.3, -399.8 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 407.3, -399.8 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 404.8, -396.3 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 404.8, -396.3 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 422.6, -397.9 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 422.6, -397.9 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 404.7, -417.4 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 404.7, -417.4 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 404.7, -406.3 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 404.7, -406.3 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 422.5, -407.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 422.5, -407.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 399.5, -432.4 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 399.5, -432.4 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 419.8, -436.6 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 419.8, -436.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 402, -420.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 402, -420.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 424.8, -422.1 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 424.8, -422.1 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 394.3, -454.2 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 394.3, -454.2 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 424.8, -455.8 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 424.8, -455.8 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 396.7, -434.6 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 396.7, -434.6 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 429.8, -471.9 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 429.8, -471.9 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 424.7, -440.4 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 424.7, -440.4 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 399.2, -472.5 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 399.2, -472.5 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 394, -453.8 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 394, -453.8 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 424.5, -483.5 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 424.5, -483.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 427.1, -454.5 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 427.1, -454.5 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 399, -484.1 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 399, -484.1 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 399, -470.5 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 399, -470.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 424.4, -497.6 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 424.4, -497.6 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 411.6, -471.2 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 411.6, -471.2 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 398.9, -505.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 398.9, -505.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 414.1, -484.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 414.1, -484.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 411.5, -516.8 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 411.5, -516.8 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 398.7, -493 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 398.7, -493 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 426.7, -527.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 426.7, -527.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 398.7, -503.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 398.7, -503.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 424.1, -505.5 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 424.1, -505.5 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 396, -535.1 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 396, -535.1 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 413.1, -511.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 413.1, -511.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 398.5, -518 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 398.5, -518 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 426.5, -550.2 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 426.5, -550.2 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 236.8, -275.3 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 236.8, -275.3 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 236.8, -276.2 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 236.8, -276.2 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 236.8, -277.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 236.8, -277.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 236.8, -278 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 236.8, -278 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 236.7, -278.8 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 236.7, -278.8 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 236.7, -279.7 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 236.7, -279.7 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 236.7, -280.6 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 236.7, -280.6 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 236.7, -281.5 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 236.7, -281.5 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 236.6, -282.4 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 236.6, -282.4 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 236.6, -283.2 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 236.6, -283.2 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 236.6, -284.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 236.6, -284.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 236.6, -285 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 236.6, -285 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 236.6, -285.9 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 236.6, -285.9 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 236.5, -286.7 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 236.5, -286.7 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 236.5, -287.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 236.5, -287.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 236.5, -288.5 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 236.5, -288.5 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 236.5, -289.3 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 236.5, -289.3 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 236.4, -290.3 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 236.4, -290.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 236.4, -291.1 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 236.4, -291.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 236.4, -292 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 236.4, -292 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 236.4, -292.9 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 236.4, -292.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 236.3, -293.8 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 236.3, -293.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 236.3, -294.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 236.3, -294.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 236.3, -295.5 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 236.3, -295.5 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 236.3, -344.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 236.3, -344.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 236.2, -248.4 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 236.2, -248.4 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 257.5, -331.5 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 257.5, -331.5 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 256.7, -252.2 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 256.7, -252.2 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 255.8, -332.7 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 255.8, -332.7 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 254.9, -258.2 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 254.9, -258.2 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 255.4, -328.6 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 255.4, -328.6 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 255.9, -264.7 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 255.9, -264.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 256.4, -322.2 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 256.4, -322.2 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 256.9, -271.1 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 256.9, -271.1 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 257.3, -319.1 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 257.3, -319.1 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 257.8, -274.4 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 257.8, -274.4 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 258.2, -316 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 258.2, -316 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 258.5, -277.7 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 258.5, -277.7 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 258.8, -312.9 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 258.8, -312.9 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 259.1, -281 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 259.1, -281 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 259.4, -309.7 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 259.4, -309.7 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 259.6, -284.2 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 259.6, -284.2 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 259.8, -308.2 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 259.8, -308.2 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 260, -285.9 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 260, -285.9 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 260.1, -306.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 260.1, -306.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 260.2, -287.5 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 260.2, -287.5 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 260.3, -305.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 260.3, -305.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 260.5, -289.2 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 260.5, -289.2 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 260.5, -303.6 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 260.5, -303.6 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 260.6, -297.3 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 260.6, -297.3 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 260.7, -290.7 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 260.7, -290.7 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 260.7, -303.9 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 260.7, -303.9 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 260.7, -292.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 260.7, -292.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 260.8, -302.4 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 260.8, -302.4 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 260.8, -292.5 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 260.8, -292.5 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 260.7, -302.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 260.7, -302.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 260.7, -294.2 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 260.7, -294.2 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 260.7, -300.8 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 260.7, -300.8 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 260.7, -296 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 260.7, -296 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 260.6, -299.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 260.6, -299.3 , 0 );

setScaleKey( spep_0 + 102 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.89, 0.89 );

setRotateKey( spep_0 + 102 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 7.7 );


--敵の動き2
setDisp( spep_0 + 536 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 568 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 536 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 558 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 536 + OFFSET_X, 1, -4.6, -215.9 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, -4.6, -215.9 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 180.6, -142.9 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 180.6, -142.9 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 180.6, -152.2 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 180.6, -152.2 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 249.2, -124.4 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 249.2, -124.4 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 249.2, -143.8 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 249.2, -143.8 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 249.2, -126.3 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 249.2, -126.3 , 0 );

setScaleKey( spep_0 + 536 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 0.21, 0.21 );

setRotateKey( spep_0 + 536 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_0 + 568 + OFFSET_X, 1, 4.5 );


--敵の動き3
setDisp( spep_0 + 604 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 652 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 632 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 604 + OFFSET_X, 1, -321.3, 246.8 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, -321.3, 246.8 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, -320, 245 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, -320, 245 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, -308.9, 237.8 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, -308.9, 237.8 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, -307.6, 236.1 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, -307.6, 236.1 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, -277.2, 221.3 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, -277.2, 221.3 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, -224.1, 215.4 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, -224.1, 215.4 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, -251.1, 179.7 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, -251.1, 179.7 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, -180.8, 170.8 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, -180.8, 170.8 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, -162.1, 146.7 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, -162.1, 146.7 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, -71.1, 118.4 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, -71.1, 118.4 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, -84.2, 115.7 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, -84.2, 115.7 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 14.6, 33.4 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 14.6, 33.4 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 36.8, 55 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 36.8, 55 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, -17.2, 68.1 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, -17.2, 68.1 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, -41.5, 77.3 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, -41.5, 77.3 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, -41.4, 93.9 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, -41.4, 93.9 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, -19.3, 73.9 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, -19.3, 73.9 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, -21.6, 97.8 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, -21.6, 97.8 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, -41, 75.3 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, -41, 75.3 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, -18.9, 69.8 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, -18.9, 69.8 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, -43.2, 93.8 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, -43.2, 93.8 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, -16.2, 63.9 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, -16.2, 63.9 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -16.3, 51.7 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, -16.3, 51.7 , 0 );

setScaleKey( spep_0 + 604 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 4.36, 4.36 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_0 + 611 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 615 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 616 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 617 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 618 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 619 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 620 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 623 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 624 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 625 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 627 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 628 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 631 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 632 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 635 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 636 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 639 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 640 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 643 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 644 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 647 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 648 + OFFSET_X, 1, 8.96, 8.96 );
setScaleKey( spep_0 + 652 + OFFSET_X, 1, 8.96, 8.96 );

setRotateKey( spep_0 + 604 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 631 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 632 + OFFSET_X, 1, -63.5 );
setRotateKey( spep_0 + 635 + OFFSET_X, 1, -63.5 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, -66.5 );
setRotateKey( spep_0 + 639 + OFFSET_X, 1, -66.5 );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, -72.2 );
setRotateKey( spep_0 + 643 + OFFSET_X, 1, -72.2 );
setRotateKey( spep_0 + 644 + OFFSET_X, 1, -79.6 );
setRotateKey( spep_0 + 647 + OFFSET_X, 1, -79.6 );
setRotateKey( spep_0 + 648 + OFFSET_X, 1, -91.5 );
setRotateKey( spep_0 + 652 + OFFSET_X, 1, -91.5 );

setBlendColor( spep_0 + 638 + OFFSET_X, 1, 2, 0, 0, 0, 0 );
setBlendColor( spep_0 + 640 + OFFSET_X, 1, 2, 0.2, 0.2, 0.2, 0.2 );
setBlendColor( spep_0 + 644 + OFFSET_X, 1, 2, 0.2, 0.2, 0.2, 0.4 );
setBlendColor( spep_0 + 648 + OFFSET_X, 1, 2, 0.2, 0.2, 0.2, 0.6 );
setBlendColor( spep_0 + 652 + OFFSET_X, 1, 2, 0, 0, 0, 0 );

--敵の動き4
setDisp( spep_0 + 724 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 758 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 724 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 724 + OFFSET_X, 1, -17.4, -40.1 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, -17.4, -40.1 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, -17.6, -37.7 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, -17.6, -37.7 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, -0.7, -56.5 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, -0.7, -56.5 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 1.3, -44.3 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 1.3, -44.3 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 48.7, -71.7 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, 48.7, -71.7 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 43.8, -55.3 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, 43.8, -55.3 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, 50.1, -91.4 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 50.1, -91.4 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 50.9, -79.9 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 50.9, -79.9 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 86.2, -109.2 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 86.2, -109.2 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 84.5, -91.8 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 84.5, -91.8 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 89.5, -116.9 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 89.5, -116.9 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 87.3, -109.3 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 87.3, -109.3 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 114.1, -126.2 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 114.1, -126.2 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 111.2, -114.4 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 111.2, -114.4 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 106.4, -122.2 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 106.4, -122.2 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 98.7, -148.4 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 98.7, -148.4 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 124.5, -187 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 124.5, -187 , 0 );

setScaleKey( spep_0 + 724 + OFFSET_X, 1, 7.67, 7.67 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 7.67, 7.67 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 735 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 736 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 739 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 743 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 744 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 747 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 748 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 751 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 752 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 755 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 758 + OFFSET_X, 1, 0.53, 0.53 );

setRotateKey( spep_0 + 724 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_0 + 727 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_0 + 728 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 731 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 732 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_0 + 735 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_0 + 736 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_0 + 739 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_0 + 740 + OFFSET_X, 1, 19 );
setRotateKey( spep_0 + 743 + OFFSET_X, 1, 19 );
setRotateKey( spep_0 + 744 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_0 + 747 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_0 + 748 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_0 + 751 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_0 + 752 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_0 + 755 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_0 + 756 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_0 + 758 + OFFSET_X, 1, 23.5 );


--敵の動き5
setDisp( spep_0 + 822 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 926 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 822 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 874 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 822 + OFFSET_X, 1, 115.7, -153.2 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, 115.7, -153.2 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, 128.3, -146.4 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, 128.3, -146.4 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, 158.7, -167.5 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, 158.7, -167.5 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, 181.2, -156.8 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, 181.2, -156.8 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, 191.8, -161.9 , 0 );
setMoveKey( spep_0 + 831 + OFFSET_X, 1, 191.8, -161.9 , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, 214.2, -171.1 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, 214.2, -171.1 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, 214.2, -165.1 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, 214.2, -165.1 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, 224.2, -177.1 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, 224.2, -177.1 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, 212.2, -165.1 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, 212.2, -165.1 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, 222.2, -175.1 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, 222.2, -175.1 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, 220.2, -165.1 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, 220.2, -165.1 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, 214.2, -171.1 , 0 );
setMoveKey( spep_0 + 845 + OFFSET_X, 1, 214.2, -171.1 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, 222.2, -165.1 , 0 );
setMoveKey( spep_0 + 847 + OFFSET_X, 1, 222.2, -165.1 , 0 );
setMoveKey( spep_0 + 848 + OFFSET_X, 1, 214.2, -171.1 , 0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, 214.2, -171.1 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, 212.2, -165.1 , 0 );
setMoveKey( spep_0 + 851 + OFFSET_X, 1, 212.2, -165.1 , 0 );
setMoveKey( spep_0 + 852 + OFFSET_X, 1, 222.2, -165.1 , 0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, 222.2, -165.1 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, 222.2, -173.1 , 0 );
setMoveKey( spep_0 + 855 + OFFSET_X, 1, 222.2, -173.1 , 0 );
setMoveKey( spep_0 + 856 + OFFSET_X, 1, 214.2, -165.1 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, 214.2, -165.1 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, 222.2, -173.1 , 0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, 222.2, -173.1 , 0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, 216.2, -167.1 , 0 );
setMoveKey( spep_0 + 861 + OFFSET_X, 1, 216.2, -167.1 , 0 );
setMoveKey( spep_0 + 862 + OFFSET_X, 1, 222.2, -173.1 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, 222.2, -173.1 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, 214.2, -165.1 , 0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, 214.2, -165.1 , 0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, 220.2, -165.1 , 0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, 220.2, -165.1 , 0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, 214.2, -171.1 , 0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, 214.2, -171.1 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, 216.2, -165.1 , 0 );
setMoveKey( spep_0 + 871 + OFFSET_X, 1, 216.2, -165.1 , 0 );
setMoveKey( spep_0 + 872 + OFFSET_X, 1, 222.2, -173.1 , 0 );
setMoveKey( spep_0 + 873 + OFFSET_X, 1, 222.2, -173.1 , 0 );
setMoveKey( spep_0 + 874 + OFFSET_X, 1, 209.2, -206.9 , 0 );
setMoveKey( spep_0 + 875 + OFFSET_X, 1, 209.2, -206.9 , 0 );
setMoveKey( spep_0 + 876 + OFFSET_X, 1, 213.2, -214.8 , 0 );
setMoveKey( spep_0 + 877 + OFFSET_X, 1, 213.2, -214.8 , 0 );
setMoveKey( spep_0 + 878 + OFFSET_X, 1, 215.2, -206.9 , 0 );
setMoveKey( spep_0 + 879 + OFFSET_X, 1, 215.2, -206.9 , 0 );
setMoveKey( spep_0 + 880 + OFFSET_X, 1, 207.2, -212.8 , 0 );
setMoveKey( spep_0 + 881 + OFFSET_X, 1, 207.2, -212.8 , 0 );
setMoveKey( spep_0 + 882 + OFFSET_X, 1, 215.2, -208.9 , 0 );
setMoveKey( spep_0 + 883 + OFFSET_X, 1, 215.2, -208.9 , 0 );
setMoveKey( spep_0 + 884 + OFFSET_X, 1, 207.2, -212.8 , 0 );
setMoveKey( spep_0 + 885 + OFFSET_X, 1, 207.2, -212.8 , 0 );
setMoveKey( spep_0 + 886 + OFFSET_X, 1, 211.2, -208.9 , 0 );
setMoveKey( spep_0 + 887 + OFFSET_X, 1, 211.2, -208.9 , 0 );
setMoveKey( spep_0 + 888 + OFFSET_X, 1, 213.2, -212.8 , 0 );
setMoveKey( spep_0 + 889 + OFFSET_X, 1, 213.2, -212.8 , 0 );
setMoveKey( spep_0 + 890 + OFFSET_X, 1, 209.2, -206.9 , 0 );
setMoveKey( spep_0 + 891 + OFFSET_X, 1, 209.2, -206.9 , 0 );
setMoveKey( spep_0 + 892 + OFFSET_X, 1, 215.2, -214.8 , 0 );
setMoveKey( spep_0 + 893 + OFFSET_X, 1, 215.2, -214.8 , 0 );
setMoveKey( spep_0 + 894 + OFFSET_X, 1, 207.2, -208.9 , 0 );
setMoveKey( spep_0 + 895 + OFFSET_X, 1, 207.2, -208.9 , 0 );
setMoveKey( spep_0 + 896 + OFFSET_X, 1, 213.2, -214.8 , 0 );
setMoveKey( spep_0 + 897 + OFFSET_X, 1, 213.2, -214.8 , 0 );
setMoveKey( spep_0 + 898 + OFFSET_X, 1, 209.2, -210.8 , 0 );
setMoveKey( spep_0 + 899 + OFFSET_X, 1, 209.2, -210.8 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, 209.2, -206.9 , 0 );
setMoveKey( spep_0 + 901 + OFFSET_X, 1, 209.2, -206.9 , 0 );
setMoveKey( spep_0 + 902 + OFFSET_X, 1, 211.2, -210.8 , 0 );
setMoveKey( spep_0 + 903 + OFFSET_X, 1, 211.2, -210.8 , 0 );
setMoveKey( spep_0 + 904 + OFFSET_X, 1, 203.6, -200.7 , 0 );
setMoveKey( spep_0 + 905 + OFFSET_X, 1, 203.6, -200.7 , 0 );
setMoveKey( spep_0 + 906 + OFFSET_X, 1, 213.7, -215.9 , 0 );
setMoveKey( spep_0 + 907 + OFFSET_X, 1, 213.7, -215.9 , 0 );
setMoveKey( spep_0 + 908 + OFFSET_X, 1, 208.7, -208.3 , 0 );
setMoveKey( spep_0 + 909 + OFFSET_X, 1, 208.7, -208.3 , 0 );
setMoveKey( spep_0 + 910 + OFFSET_X, 1, 213.7, -205.8 , 0 );
setMoveKey( spep_0 + 911 + OFFSET_X, 1, 213.7, -205.8 , 0 );
setMoveKey( spep_0 + 912 + OFFSET_X, 1, 206.1, -213.4 , 0 );
setMoveKey( spep_0 + 913 + OFFSET_X, 1, 206.1, -213.4 , 0 );
setMoveKey( spep_0 + 914 + OFFSET_X, 1, 206.1, -205.8 , 0 );
setMoveKey( spep_0 + 915 + OFFSET_X, 1, 206.1, -205.8 , 0 );
setMoveKey( spep_0 + 916 + OFFSET_X, 1, 206.1, -213.4 , 0 );
setMoveKey( spep_0 + 917 + OFFSET_X, 1, 206.1, -213.4 , 0 );
setMoveKey( spep_0 + 918 + OFFSET_X, 1, 208.7, -208.3 , 0 );
setMoveKey( spep_0 + 919 + OFFSET_X, 1, 208.7, -208.3 , 0 );
setMoveKey( spep_0 + 920 + OFFSET_X, 1, 213.7, -213.4 , 0 );
setMoveKey( spep_0 + 921 + OFFSET_X, 1, 213.7, -213.4 , 0 );
setMoveKey( spep_0 + 922 + OFFSET_X, 1, 206.1, -200.7 , 0 );
setMoveKey( spep_0 + 923 + OFFSET_X, 1, 206.1, -200.7 , 0 );
setMoveKey( spep_0 + 924 + OFFSET_X, 1, 216.3, -221 , 0 );
setMoveKey( spep_0 + 926 + OFFSET_X, 1, 216.3, -221 , 0 );

setScaleKey( spep_0 + 822 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 873 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 874 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 926 + OFFSET_X, 1, 0.89, 0.89 );

setRotateKey( spep_0 + 822 + OFFSET_X, 1, 41.5 );
setRotateKey( spep_0 + 873 + OFFSET_X, 1, 41.5 );
setRotateKey( spep_0 + 874 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_0 + 926 + OFFSET_X, 1, -31.7 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 66 );
SE002 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 272, 0, 76, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 71 );
SE003 = playSeVer2( spep_0 + 0, 1044, "",spep_0 + 220, 0, 30, -1);

--看板破る
SE004 = playSeVer2( spep_0 + 36, 1024, "",spep_0 + 158, 0, 78, -1);

--さらに大きく
SE005 = playSeVer2( spep_0 + 106, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE005, 71 );
SE006 = playSeVer2( spep_0 + 116, 1011, "", 0, 0, 0, -1);

--足上げる
SE007 = playSeVer2( spep_0 + 184, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE007,  67 );
SE008 = playSeVer2( spep_0 + 188, 1116, "",spep_0 + 240, 0, 24, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 218; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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
--踏みつける
SE009 = playSeVer2( spep_0 + 236, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE009, 89 );
SE010 = playSeVer2( spep_0 + 236, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE010, 84 );

--セリフカットイン
SE011 = playSeVer2( spep_0 + 304, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE011, 63 );

--胸をはる
SE012 = playSeVer2( spep_0 + 406, 1456, "",spep_0 + 540, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 406, SE012, 66 );
SE013 = playSeVer2( spep_0 + 418, 1153, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_0 + 418, SE013, 75 );

--手で払う
SE014 = playSeVer2( spep_0 + 550, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 554, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 554, SE015, 75 );
SE016 = playSeVer2( spep_0 + 554, 1395, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 558, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 558, SE017, 81 );

--壁から手が出てくる
SE018 = playSeVer2( spep_0 + 614, 1023, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 614, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 614, SE019, 71 );
SE020 = playSeVer2( spep_0 + 640, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 640, SE020, 76 );

--敵飛んでいく
SE021 = playSeVer2( spep_0 + 654, 1121, "",spep_0 + 822, 0, 86, -1);
setSeVolumeByWorkId( spep_0 + 654, SE021, 73 );

--壁から手が出てくる
SE022 = playSeVer2( spep_0 + 664, 1395, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 664, SE022, 136 );

--地面殴る
SE023 = playSeVer2( spep_0 + 760, 1159, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 760, 1067, "", 0, 0, 0, -1);

--顔壁から出てくる
SE025 = playSeVer2( spep_0 + 820, 1116, "",spep_0 + 872, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 820, SE025, 126 );

--気弾溜め
SE026 = playSeVer2( spep_0 + 876, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 876, SE026, 56 );
SE027 = playSeVer2( spep_0 + 876, 1144, "",spep_0 + 962, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 876, SE027, 86 );
SE028 = playSeVer2( spep_0 + 876, 1157, "",spep_0 + 958, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 876, SE028, 136 );

--気弾発射
SE029 = playSeVer2( spep_0 + 934, 1213, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 934, 1024, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 960, 1168, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「どうした！」
playVoice( spep_0 + 292, 873 );
setVoiceVolume( spep_0 + 292, 873, 114 );

--「オレの本当の姿を見て恐ろしくなったか！」
playVoice( spep_0 + 352, 874 );
setVoiceVolume( spep_0 + 352, 874, 114 );


--終わり
-- hideKoScreen();
dealDamage( spep_0 + 926);
endPhase( spep_0 + MAX_FRAME_0 -0);--1044f
 
else end