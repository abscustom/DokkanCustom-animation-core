-- 4029060: LR_孫悟空(身勝手の極意)_必殺技(変身後)：完全なる極意
-- sp_effect_b1_00288
-- sp2738

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側・敵側共通
SP_01  = 163013;  -- 正面〜乱打の後、敵が飛ぶ ef_001
SP_02  = 163015;  -- 片手気功波〜敵が岩に激突 ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

   if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 522;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 134 );  -- スキップ先フレーム指定
        setupMovie(spep_2 + 134 , SP_02, spep_2 + 134 -1 + 2, 1);

        -- ** 音 ** --
        --空気砲撃つ
        SE043 = playSeVer2( spep_2 + 134 + 3, 1258, "", 0, 0, 0, -1);
        SE044 = playSeVer2( spep_2 + 134 + 3, 1312, "", 0, 0, 0, -1);
        SE045 = playSeVer2( spep_2 + 134 + 3, 1121, "",spep_2 + 246, 0, 70, -1);
        setPitch( spep_2 + 134 + 3, SE045, 300 );
        setTimeStretch( SE045, 1.2, 30, 4 );

    else 
        setupMovie(0, SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 正面〜乱打の後、敵が飛ぶ
-------------------------------------------------
MAX_FRAME_0 = 532;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 正面〜乱打の後、敵が飛ぶ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え


--[[
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 90 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 270 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 90 + OFFSET_X , 1, 117 );
changeAnimeAndStop( spep_0 + 106 + OFFSET_X, 1, 111 ,1);
changeAnime( spep_0 + 198 + OFFSET_X , 1, 109 );

setMoveKey( spep_0 + 90 + OFFSET_X , 1, 188.5, -156.1 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X , 1, 188.5, -156.1 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X , 1, 168.6, -139.5 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X , 1, 168.6, -139.5 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X , 1, 167.7, -138.5 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X , 1, 167.7, -138.5 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X , 1, 166.8, -137.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X , 1, 166.8, -137.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X , 1, 165.9, -136.6 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X , 1, 165.9, -136.6 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X , 1, 165, -135.7 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X , 1, 165, -135.7 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X , 1, 164.1, -134.8 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X , 1, 164.1, -134.8 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X , 1, 163.2, -133.8 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X , 1, 163.2, -133.8 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X , 1, 162.3, -132.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X , 1, 162.3, -132.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X , 1, 161.4, -131.9 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X , 1, 161.4, -131.9 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X , 1, 160.5, -131 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X , 1, 160.5, -131 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X , 1, 159.6, -130 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X , 1, 159.6, -130 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X , 1, 158.7, -129.1 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X , 1, 158.7, -129.1 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X , 1, 157.8, -128.2 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X , 1, 157.8, -128.2 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X , 1, 156.9, -127.2 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X , 1, 156.9, -127.2 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X , 1, 156, -126.3 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X , 1, 156, -126.3 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X , 1, 155.1, -125.3 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X , 1, 155.1, -125.3 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X , 1, 154.2, -124.4 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X , 1, 154.2, -124.4 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X , 1, 153.3, -123.4 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X , 1, 153.3, -123.4 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X , 1, 152.4, -122.5 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X , 1, 152.4, -122.5 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X , 1, 151.5, -121.5 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X , 1, 151.5, -121.5 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X , 1, 150.6, -120.6 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X , 1, 150.6, -120.6 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X , 1, 149.7, -119.7 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X , 1, 149.7, -119.7 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X , 1, 148.8, -118.7 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X , 1, 148.8, -118.7 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X , 1, 147.9, -117.8 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X , 1, 147.9, -117.8 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X , 1, 147, -116.8 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X , 1, 147, -116.8 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X , 1, 146.1, -115.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X , 1, 146.1, -115.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X , 1, 145.1, -114.9 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X , 1, 145.1, -114.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X , 1, 144.2, -114 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X , 1, 144.2, -114 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X , 1, 143.3, -113.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X , 1, 143.3, -113.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X , 1, 142.4, -112.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X , 1, 142.4, -112.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X , 1, 141.5, -111.2 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X , 1, 141.5, -111.2 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X , 1, 140.6, -110.2 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X , 1, 140.6, -110.2 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X , 1, 139.7, -109.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X , 1, 139.7, -109.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X , 1, 138.8, -108.3 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X , 1, 138.8, -108.3 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X , 1, 137.9, -107.4 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X , 1, 137.9, -107.4 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X , 1, 137, -106.4 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X , 1, 137, -106.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X , 1, 136.1, -105.5 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X , 1, 136.1, -105.5 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X , 1, 135.2, -104.6 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X , 1, 135.2, -104.6 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X , 1, 134.3, -103.6 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X , 1, 134.3, -103.6 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X , 1, 133.4, -102.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X , 1, 133.4, -102.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X , 1, 132.5, -101.7 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X , 1, 132.5, -101.7 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X , 1, 131.6, -100.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X , 1, 131.6, -100.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X , 1, 130.7, -99.8 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X , 1, 130.7, -99.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X , 1, 129.8, -98.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X , 1, 129.8, -98.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X , 1, 128.9, -98 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X , 1, 128.9, -98 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X , 1, 128, -97 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X , 1, 128, -97 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X , 1, 68, -70.1 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X , 1, 68, -70.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X , 1, 41.6, -70.1 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X , 1, 41.6, -70.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X , 1, 33.4, -70.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X , 1, 33.4, -70.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X , 1, 29.3, -70.1 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X , 1, 29.3, -70.1 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X , 1, 28, -70.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X , 1, 28, -70.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X , 1, 22.5, -70.2 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X , 1, 22.5, -70.2 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X , 1, 17, -70.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X , 1, 17, -70.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X , 1, 11.6, -70.3 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X , 1, 11.6, -70.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X , 1, 6.1, -70.3 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X , 1, 6.1, -70.3 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X , 1, 5.6, -70.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X , 1, 5.6, -70.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X , 1, 5, -70.3 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X , 1, 5, -70.3 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X , 1, 4.5, -70.3 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X , 1, 4.5, -70.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X , 1, 4, -70.3 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X , 1, 4, -70.3 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X , 1, 3.5, -70.3 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X , 1, 3.5, -70.3 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X , 1, 2.9, -70.3 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X , 1, 2.9, -70.3 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X , 1, 2.4, -70.3 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X , 1, 2.4, -70.3 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X , 1, 1.9, -70.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X , 1, 1.9, -70.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X , 1, 1.3, -70.3 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X , 1, 1.3, -70.3 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X , 1, 0.8, -70.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X , 1, 0.8, -70.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X , 1, 0.3, -70.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X , 1, 0.3, -70.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X , 1, -0.2, -70.3 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X , 1, -0.2, -70.3 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X , 1, -0.8, -70.3 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X , 1, -0.8, -70.3 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X , 1, -1.3, -70.3 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X , 1, -1.3, -70.3 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X , 1, -1.8, -70.3 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X , 1, -1.8, -70.3 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X , 1, -2.3, -70.3 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X , 1, -2.3, -70.3 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X , 1, -2.9, -70.3 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X , 1, -2.9, -70.3 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X , 1, -3.4, -70.3 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X , 1, -3.4, -70.3 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X , 1, -3.9, -70.3 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X , 1, -3.9, -70.3 , 0 );

setScaleKey( spep_0 + 90 + OFFSET_X , 1, 1.71, 1.71 );
setScaleKey( spep_0 + 105 + OFFSET_X , 1, 1.71, 1.71 );
setScaleKey( spep_0 + 106 + OFFSET_X , 1, 1.85, 1.85 );
setScaleKey( spep_0 + 111 + OFFSET_X , 1, 1.85, 1.85 );
setScaleKey( spep_0 + 112 + OFFSET_X , 1, 1.86, 1.86 );
setScaleKey( spep_0 + 117 + OFFSET_X , 1, 1.86, 1.86 );
setScaleKey( spep_0 + 118 + OFFSET_X , 1, 1.87, 1.87 );
setScaleKey( spep_0 + 123 + OFFSET_X , 1, 1.87, 1.87 );
setScaleKey( spep_0 + 124 + OFFSET_X , 1, 1.88, 1.88 );
setScaleKey( spep_0 + 129 + OFFSET_X , 1, 1.88, 1.88 );
setScaleKey( spep_0 + 130 + OFFSET_X , 1, 1.89, 1.89 );
setScaleKey( spep_0 + 135 + OFFSET_X , 1, 1.89, 1.89 );
setScaleKey( spep_0 + 136 + OFFSET_X , 1, 1.9, 1.9 );
setScaleKey( spep_0 + 143 + OFFSET_X , 1, 1.9, 1.9 );
setScaleKey( spep_0 + 144 + OFFSET_X , 1, 1.91, 1.91 );
setScaleKey( spep_0 + 149 + OFFSET_X , 1, 1.91, 1.91 );
setScaleKey( spep_0 + 150 + OFFSET_X , 1, 1.92, 1.92 );
setScaleKey( spep_0 + 155 + OFFSET_X , 1, 1.92, 1.92 );
setScaleKey( spep_0 + 156 + OFFSET_X , 1, 1.93, 1.93 );
setScaleKey( spep_0 + 161 + OFFSET_X , 1, 1.93, 1.93 );
setScaleKey( spep_0 + 162 + OFFSET_X , 1, 1.94, 1.94 );
setScaleKey( spep_0 + 169 + OFFSET_X , 1, 1.94, 1.94 );
setScaleKey( spep_0 + 170 + OFFSET_X , 1, 1.95, 1.95 );
setScaleKey( spep_0 + 175 + OFFSET_X , 1, 1.95, 1.95 );
setScaleKey( spep_0 + 176 + OFFSET_X , 1, 1.96, 1.96 );
setScaleKey( spep_0 + 181 + OFFSET_X , 1, 1.96, 1.96 );
setScaleKey( spep_0 + 182 + OFFSET_X , 1, 1.97, 1.97 );
setScaleKey( spep_0 + 187 + OFFSET_X , 1, 1.97, 1.97 );
setScaleKey( spep_0 + 188 + OFFSET_X , 1, 1.98, 1.98 );
setScaleKey( spep_0 + 193 + OFFSET_X , 1, 1.98, 1.98 );
setScaleKey( spep_0 + 194 + OFFSET_X , 1, 1.99, 1.99 );
setScaleKey( spep_0 + 197 + OFFSET_X , 1, 1.99, 1.99 );
setScaleKey( spep_0 + 198 + OFFSET_X , 1, 2.26, 2.26 );
setScaleKey( spep_0 + 207 + OFFSET_X , 1, 2.26, 2.26 );
setScaleKey( spep_0 + 208 + OFFSET_X , 1, 2.1, 2.1 );
setScaleKey( spep_0 + 209 + OFFSET_X , 1, 2.1, 2.1 );
setScaleKey( spep_0 + 210 + OFFSET_X , 1, 1.93, 1.93 );
setScaleKey( spep_0 + 211 + OFFSET_X , 1, 1.93, 1.93 );
setScaleKey( spep_0 + 212 + OFFSET_X , 1, 1.77, 1.77 );
setScaleKey( spep_0 + 213 + OFFSET_X , 1, 1.77, 1.77 );
setScaleKey( spep_0 + 214 + OFFSET_X , 1, 1.61, 1.61 );
setScaleKey( spep_0 + 270 + OFFSET_X , 1, 1.61, 1.61 );

setRotateKey( spep_0 + 90 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 105 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 106 + OFFSET_X , 1, 13.3 );
setRotateKey( spep_0 + 197 + OFFSET_X , 1, 13.3 );
setRotateKey( spep_0 + 198 + OFFSET_X , 1, -2.3 );
setRotateKey( spep_0 + 270 + OFFSET_X , 1, -2.3 );

--敵の動き2
setDisp( spep_0 + 386 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 536 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 386 + OFFSET_X , 1, 6 );
changeAnime( spep_0 + 404 + OFFSET_X , 1, 8 );
changeAnime( spep_0 + 412 + OFFSET_X , 1, 6 );
changeAnime( spep_0 + 416 + OFFSET_X , 1, 8 );
changeAnime( spep_0 + 422 + OFFSET_X , 1, 7 );
changeAnime( spep_0 + 426 + OFFSET_X , 1, 6 );
changeAnime( spep_0 + 432 + OFFSET_X , 1, 8 );
changeAnime( spep_0 + 440 + OFFSET_X , 1, 6 );
changeAnime( spep_0 + 444 + OFFSET_X , 1, 8 );
changeAnime( spep_0 + 450 + OFFSET_X , 1, 7 );
changeAnime( spep_0 + 454 + OFFSET_X , 1, 6 );
changeAnime( spep_0 + 460 + OFFSET_X , 1, 8 );
changeAnime( spep_0 + 464 + OFFSET_X , 1, 7 );
changeAnime( spep_0 + 492 + OFFSET_X , 1, 6 );

setMoveKey( spep_0 + 386 + OFFSET_X , 1, -660.9, 332.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X , 1, -660.9, 332.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X , 1, -494.3, 323.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X , 1, -494.3, 323.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X , 1, -369.1, 316.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X , 1, -369.1, 316.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X , 1, -279.4, 311.3 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X , 1, -279.4, 311.3 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X , 1, -219.3, 307.9 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X , 1, -219.3, 307.9 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X , 1, -182.8, 305.9 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X , 1, -182.8, 305.9 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X , 1, -164.1, 304.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X , 1, -164.1, 304.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X , 1, -157.2, 304.5 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X , 1, -157.2, 304.5 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X , 1, -127.7, 169.8 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X , 1, -127.7, 169.8 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X , 1, -101.8, 97.9 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X , 1, -101.8, 97.9 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X , 1, -99.7, 163.9 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X , 1, -99.7, 163.9 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X , 1, -99.9, 164 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X , 1, -99.9, 164 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X , 1, -111.5, 125.7 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X , 1, -111.5, 125.7 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X , 1, -127.7, 169.8 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X , 1, -127.7, 169.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X , 1, -101.8, 97.9 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X , 1, -101.8, 97.9 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X , 1, -99.7, 163.9 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X , 1, -99.7, 163.9 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X , 1, -99.9, 164 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X , 1, -99.9, 164 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X , 1, -111.5, 125.7 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X , 1, -111.5, 125.7 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X , 1, -127.7, 169.8 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X , 1, -127.7, 169.8 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X , 1, -183.9, 92.1 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X , 1, -183.9, 92.1 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X , 1, -206.9, 110.7 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X , 1, -206.9, 110.7 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X , 1, -163.9, 71.9 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X , 1, -163.9, 71.9 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X , 1, -202, 68.3 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X , 1, -202, 68.3 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X , 1, -189.9, 93.5 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X , 1, -189.9, 93.5 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X , 1, -197.9, 101.1 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X , 1, -197.9, 101.1 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X , 1, -209, 82.2 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X , 1, -209, 82.2 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X , 1, -221.3, 72.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X , 1, -221.3, 72.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X , 1, -245.3, 63.1 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X , 1, -245.3, 63.1 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X , 1, -236.9, 75.7 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X , 1, -236.9, 75.7 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X , 1, -257.9, 69.7 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X , 1, -257.9, 69.7 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X , 1, -258.1, 68.3 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X , 1, -258.1, 68.3 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X , 1, -249.1, 62.3 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X , 1, -249.1, 62.3 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X , 1, -256.7, 67.8 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X , 1, -256.7, 67.8 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X , 1, -288.8, 5.3 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X , 1, -288.8, 5.3 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X , 1, -271.1, 14.8 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X , 1, -271.1, 14.8 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X , 1, -258.6, 12.8 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X , 1, -258.6, 12.8 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X , 1, -248.8, 12 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X , 1, -248.8, 12 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X , 1, -228, 20.2 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X , 1, -228, 20.2 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X , 1, -211.2, 31.2 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X , 1, -211.2, 31.2 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X , 1, -199.3, 22.5 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X , 1, -199.3, 22.5 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X , 1, -178.2, 32 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X , 1, -178.2, 32 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X , 1, -170, 39.9 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X , 1, -170, 39.9 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X , 1, -151.9, 39.1 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X , 1, -151.9, 39.1 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X , 1, -138, 41 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X , 1, -138, 41 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X , 1, -123.3, 47.7 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X , 1, -123.3, 47.7 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X , 1, -112.2, 52.6 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X , 1, -112.2, 52.6 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X , 1, -84, 55.9 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X , 1, -84, 55.9 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X , 1, -71.1, 56.3 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X , 1, -71.1, 56.3 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X , 1, -63.2, 63.6 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X , 1, -63.2, 63.6 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X , 1, -40.9, 64.1 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X , 1, -40.9, 64.1 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X , 1, -26.4, 74.9 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X , 1, -26.4, 74.9 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X , 1, -18.8, 74.5 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X , 1, -18.8, 74.5 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X , 1, 0.8, 75.4 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X , 1, 0.8, 75.4 , 0 );

setScaleKey( spep_0 + 386 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_0 + 387 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_0 + 388 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_0 + 389 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_0 + 390 + OFFSET_X , 1, 0.76, 0.76 );
setScaleKey( spep_0 + 391 + OFFSET_X , 1, 0.76, 0.76 );
setScaleKey( spep_0 + 392 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_0 + 393 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_0 + 394 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_0 + 395 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_0 + 396 + OFFSET_X , 1, 0.61, 0.61 );
setScaleKey( spep_0 + 399 + OFFSET_X , 1, 0.61, 0.61 );
setScaleKey( spep_0 + 400 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_0 + 401 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_0 + 402 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 403 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 404 + OFFSET_X , 1, 2.14, 2.14 );
setScaleKey( spep_0 + 411 + OFFSET_X , 1, 2.14, 2.14 );
setScaleKey( spep_0 + 412 + OFFSET_X , 1, 1.92, 1.92 );
setScaleKey( spep_0 + 415 + OFFSET_X , 1, 1.92, 1.92 );
setScaleKey( spep_0 + 416 + OFFSET_X , 1, 2.04, 2.04 );
setScaleKey( spep_0 + 421 + OFFSET_X , 1, 2.04, 2.04 );
setScaleKey( spep_0 + 422 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_0 + 425 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_0 + 426 + OFFSET_X , 1, 1.99, 1.99 );
setScaleKey( spep_0 + 431 + OFFSET_X , 1, 1.99, 1.99 );
setScaleKey( spep_0 + 432 + OFFSET_X , 1, 2.14, 2.14 );
setScaleKey( spep_0 + 439 + OFFSET_X , 1, 2.14, 2.14 );
setScaleKey( spep_0 + 440 + OFFSET_X , 1, 1.92, 1.92 );
setScaleKey( spep_0 + 443 + OFFSET_X , 1, 1.92, 1.92 );
setScaleKey( spep_0 + 444 + OFFSET_X , 1, 2.04, 2.04 );
setScaleKey( spep_0 + 449 + OFFSET_X , 1, 2.04, 2.04 );
setScaleKey( spep_0 + 450 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_0 + 453 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_0 + 454 + OFFSET_X , 1, 1.99, 1.99 );
setScaleKey( spep_0 + 459 + OFFSET_X , 1, 1.99, 1.99 );
setScaleKey( spep_0 + 460 + OFFSET_X , 1, 2.14, 2.14 );
setScaleKey( spep_0 + 463 + OFFSET_X , 1, 2.14, 2.14 );
setScaleKey( spep_0 + 464 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_0 + 491 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_0 + 492 + OFFSET_X , 1, 1.7, 1.7 );
setScaleKey( spep_0 + 536 + OFFSET_X , 1, 1.7, 1.7 );

setRotateKey( spep_0 + 386 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 403 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 404 + OFFSET_X , 1, 33.3 );
setRotateKey( spep_0 + 411 + OFFSET_X , 1, 33.3 );
setRotateKey( spep_0 + 412 + OFFSET_X , 1, 34.5 );
setRotateKey( spep_0 + 415 + OFFSET_X , 1, 34.5 );
setRotateKey( spep_0 + 416 + OFFSET_X , 1, 34.6 );
setRotateKey( spep_0 + 431 + OFFSET_X , 1, 34.6 );
setRotateKey( spep_0 + 432 + OFFSET_X , 1, 33.3 );
setRotateKey( spep_0 + 439 + OFFSET_X , 1, 33.3 );
setRotateKey( spep_0 + 440 + OFFSET_X , 1, 34.5 );
setRotateKey( spep_0 + 443 + OFFSET_X , 1, 34.5 );
setRotateKey( spep_0 + 444 + OFFSET_X , 1, 34.6 );
setRotateKey( spep_0 + 459 + OFFSET_X , 1, 34.6 );
setRotateKey( spep_0 + 460 + OFFSET_X , 1, 33.3 );
setRotateKey( spep_0 + 463 + OFFSET_X , 1, 33.3 );
setRotateKey( spep_0 + 464 + OFFSET_X , 1, -9.1 );
setRotateKey( spep_0 + 491 + OFFSET_X , 1, -9.1 );
setRotateKey( spep_0 + 492 + OFFSET_X , 1, -32.1 );
setRotateKey( spep_0 + 493 + OFFSET_X , 1, -32.1 );
setRotateKey( spep_0 + 494 + OFFSET_X , 1, -32.3 );
setRotateKey( spep_0 + 495 + OFFSET_X , 1, -32.3 );
setRotateKey( spep_0 + 496 + OFFSET_X , 1, -32.5 );
setRotateKey( spep_0 + 497 + OFFSET_X , 1, -32.5 );
setRotateKey( spep_0 + 498 + OFFSET_X , 1, -32.8 );
setRotateKey( spep_0 + 499 + OFFSET_X , 1, -32.8 );
setRotateKey( spep_0 + 500 + OFFSET_X , 1, -33 );
setRotateKey( spep_0 + 501 + OFFSET_X , 1, -33 );
setRotateKey( spep_0 + 502 + OFFSET_X , 1, -33.2 );
setRotateKey( spep_0 + 503 + OFFSET_X , 1, -33.2 );
setRotateKey( spep_0 + 504 + OFFSET_X , 1, -33.4 );
setRotateKey( spep_0 + 505 + OFFSET_X , 1, -33.4 );
setRotateKey( spep_0 + 506 + OFFSET_X , 1, -33.7 );
setRotateKey( spep_0 + 507 + OFFSET_X , 1, -33.7 );
setRotateKey( spep_0 + 508 + OFFSET_X , 1, -33.9 );
setRotateKey( spep_0 + 509 + OFFSET_X , 1, -33.9 );
setRotateKey( spep_0 + 510 + OFFSET_X , 1, -34.1 );
setRotateKey( spep_0 + 511 + OFFSET_X , 1, -34.1 );
setRotateKey( spep_0 + 512 + OFFSET_X , 1, -34.3 );
setRotateKey( spep_0 + 513 + OFFSET_X , 1, -34.3 );
setRotateKey( spep_0 + 514 + OFFSET_X , 1, -34.5 );
setRotateKey( spep_0 + 515 + OFFSET_X , 1, -34.5 );
setRotateKey( spep_0 + 516 + OFFSET_X , 1, -34.8 );
setRotateKey( spep_0 + 517 + OFFSET_X , 1, -34.8 );
setRotateKey( spep_0 + 518 + OFFSET_X , 1, -35 );
setRotateKey( spep_0 + 519 + OFFSET_X , 1, -35 );
setRotateKey( spep_0 + 520 + OFFSET_X , 1, -35.2 );
setRotateKey( spep_0 + 521 + OFFSET_X , 1, -35.2 );
setRotateKey( spep_0 + 522 + OFFSET_X , 1, -35.4 );
setRotateKey( spep_0 + 523 + OFFSET_X , 1, -35.4 );
setRotateKey( spep_0 + 524 + OFFSET_X , 1, -35.7 );
setRotateKey( spep_0 + 525 + OFFSET_X , 1, -35.7 );
setRotateKey( spep_0 + 526 + OFFSET_X , 1, -35.9 );
setRotateKey( spep_0 + 527 + OFFSET_X , 1, -35.9 );
setRotateKey( spep_0 + 528 + OFFSET_X , 1, -36.1 );
setRotateKey( spep_0 + 529 + OFFSET_X , 1, -36.1 );
setRotateKey( spep_0 + 530 + OFFSET_X , 1, -36.3 );
setRotateKey( spep_0 + 536 + OFFSET_X , 1, -36.3 );


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 216, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 65 );
setPitch( spep_0 + 0, SE001, -500 );
setTimeStretch( SE001, 0.67, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 218, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 168 );
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 216, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 178 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 92; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE00X, 0);
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
--歩く
SE005 = playSeVer2( spep_0 + 82, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE005, 138 );
SE007 = playSeVer2( spep_0 + 178, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE007, 141 );

--敵飛び込んでくる
SE006 = playSeVer2( spep_0 + 104, 1117, "", 0, 0, 0, -1);

--悟空消える
SE008 = playSeVer2( spep_0 + 180, 1003, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 182, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE009, 63 );

--敵光る
SE010 = playSeVer2( spep_0 + 228, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE010, 63 );
SE011 = playSeVer2( spep_0 + 230, 1371, "",spep_0 + 266, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 230, SE011, 75 );
SE012 = playSeVer2( spep_0 + 240, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE012, 60 );

--敵爆発
SE013 = playSeVer2( spep_0 + 248, 1026, "", 0, 0, 0, -1);
setPitch( spep_0 + 248, SE013, 600 );
setTimeStretch( SE013, 1.4, 30, 4 );

--爆発予兆
SE014 = playSeVer2( spep_0 + 256, 1360, "",spep_0 + 318, 0, 28, -1);

--爆発
SE015 = playSeVer2( spep_0 + 280, 1024, "", 0, 0, 0, -1);

--炎かき分ける
SE016 = playSeVer2( spep_0 + 314, 1188, "", 0, 0, 0, -1);

--飛んでくる
SE017 = playSeVer2( spep_0 + 342, 1117, "", 0, 0, 0, -1);

--連打
SE018 = playSeVer2( spep_0 + 392, 1110, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 394, SE018 );
SE019 = playSeVer2( spep_0 + 394, 1153, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 394, SE019, 71 );
SE020 = playSeVer2( spep_0 + 402, 1110, "", 0, 0, 0, 0.5);
SE021 = playSeVer2( spep_0 + 410, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 410, SE021, 76 );
SE022 = playSeVer2( spep_0 + 416, 1009, "", 0, 0, 0, 0.5);
SE023 = playSeVer2( spep_0 + 424, 1110, "", 0, 0, 0, 0.5);
SE024 = playSeVer2( spep_0 + 432, 1110, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 432, SE024 );
SE025 = playSeVer2( spep_0 + 432, 1001, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 432, SE025, 76 );
SE026 = playSeVer2( spep_0 + 438, 1110, "", 0, 0, 0, 0.5);
SE027 = playSeVer2( spep_0 + 448, 1359, "",spep_0 + 532, 0, 10, 0.7);
SE028 = playSeVer2( spep_0 + 448, 1187, "",spep_0 + 532, 0, 8, 0.7);

--敵飛んでいく
SE029 = playSeVer2( spep_0 + 460, 1121, "",spep_0 + 544, 0, 24, -1);
SE030 = playSeVer2( spep_0 + 460, 1183, "",spep_0 + 544, 0, 22, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --532f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0) + 2;

-- ** 音 ** --
--気弾溜め
SE032 = playSeVer2( spep_1 + 72, 1265, "",spep_1 + 136, 10, 28, -1);
setStartTimeMs( SE032,  367 );
setPitch( spep_1 + 72, SE032, 400 );
setTimeStretch( SE032, 1.27, 30, 4 );
SE033 = playSeVer2( spep_1 + 74, 1254, "",spep_1 + 132, 0, 26, -1);
SE034 = playSeVer2( spep_1 + 74, 1394, "",spep_1 + 126, 0, 20, -1);
setPitch( spep_1 + 74, SE034, 400 );
setTimeStretch( SE034, 1.27, 30, 4 );

entryFade(spep_1 + 90, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-------------------------------------------------
-- 片手気功波〜敵が岩に激突
-------------------------------------------------
MAX_FRAME_2 = 478;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 片手気功波〜敵が岩に激突(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 70 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 84 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 70 + OFFSET_X , 1, 7 );

setMoveKey( spep_2 + 70 + OFFSET_X , 1, 133.1, 168 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X , 1, 133.1, 168 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X , 1, 128.7, 173.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X , 1, 128.7, 173.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X , 1, 125.7, 166 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X , 1, 125.7, 166 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X , 1, 114.7, 165.7 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X , 1, 114.7, 165.7 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X , 1, -160.9, -46.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X , 1, -160.9, -46.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X , 1, -153.3, -44.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X , 1, -153.3, -44.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X , 1, -466, -265.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X , 1, -466, -265.6 , 0 );

setScaleKey( spep_2 + 70 + OFFSET_X , 1, 0.12, 0.12 );
setScaleKey( spep_2 + 71 + OFFSET_X , 1, 0.12, 0.12 );
setScaleKey( spep_2 + 72 + OFFSET_X , 1, 0.15, 0.15 );
setScaleKey( spep_2 + 73 + OFFSET_X , 1, 0.15, 0.15 );
setScaleKey( spep_2 + 74 + OFFSET_X , 1, 0.18, 0.18 );
setScaleKey( spep_2 + 75 + OFFSET_X , 1, 0.18, 0.18 );
setScaleKey( spep_2 + 76 + OFFSET_X , 1, 0.21, 0.21 );
setScaleKey( spep_2 + 77 + OFFSET_X , 1, 0.21, 0.21 );
setScaleKey( spep_2 + 78 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 81 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 82 + OFFSET_X , 1, 2.68, 2.68 );
setScaleKey( spep_2 + 84 + OFFSET_X , 1, 2.68, 2.68 );

setRotateKey( spep_2 + 70 + OFFSET_X , 1, -61.4 );
setRotateKey( spep_2 + 84 + OFFSET_X , 1, -61.4 );


--敵の動き2
setDisp( spep_2 + 198 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 304 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 198 + OFFSET_X , 1, 7 );
changeAnime( spep_2 + 256 + OFFSET_X , 1, 5 );
changeAnime( spep_2 + 266 + OFFSET_X , 1, 6 );
changeAnime( spep_2 + 270 + OFFSET_X , 1, 108 );
changeAnime( spep_2 + 276 + OFFSET_X , 1, 8 );
changeAnime( spep_2 + 280 + OFFSET_X , 1, 105 );
changeAnime( spep_2 + 286 + OFFSET_X , 1, 6 );
changeAnime( spep_2 + 290 + OFFSET_X , 1, 106 );
changeAnime( spep_2 + 296 + OFFSET_X , 1, 8 );
changeAnime( spep_2 + 300 + OFFSET_X , 1, 5 );

setMoveKey( spep_2 + 198 + OFFSET_X , 1, 325.4, 400.1 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X , 1, 325.4, 400.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X , 1, 359.3, 370.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X , 1, 359.3, 370.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X , 1, 365.4, 392.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X , 1, 365.4, 392.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X , 1, 357.4, 404.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X , 1, 357.4, 404.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X , 1, 373.4, 344.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X , 1, 373.4, 344.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X , 1, 365.4, 336.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X , 1, 365.4, 336.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X , 1, 341.4, 360.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X , 1, 341.4, 360.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X , 1, 333.4, 352.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X , 1, 333.4, 352.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X , 1, 389.5, 364.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X , 1, 389.5, 364.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X , 1, 405.5, 348.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X , 1, 405.5, 348.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X , 1, 373.5, 320.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X , 1, 373.5, 320.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X , 1, 381.5, 312.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X , 1, 381.5, 312.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X , 1, 329.5, 364.5 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X , 1, 329.5, 364.5 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X , 1, 321.5, 356.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X , 1, 321.5, 356.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X , 1, 393.5, 356.5 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X , 1, 393.5, 356.5 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X , 1, 401.5, 348.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X , 1, 401.5, 348.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X , 1, 345.5, 344.5 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X , 1, 345.5, 344.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X , 1, 361.5, 328.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X , 1, 361.5, 328.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X , 1, 321.5, 372.5 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X , 1, 321.5, 372.5 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X , 1, 325.5, 356.5 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X , 1, 325.5, 356.5 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X , 1, 373.6, 388.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X , 1, 373.6, 388.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X , 1, 377.6, 376.5 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X , 1, 377.6, 376.5 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X , 1, 337.6, 332.5 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X , 1, 337.6, 332.5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X , 1, 361.7, 304.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X , 1, 361.7, 304.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X , 1, 305.7, 340.5 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X , 1, 305.7, 340.5 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X , 1, 429.7, 344.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X , 1, 429.7, 344.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X , 1, 429.7, 332.5 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X , 1, 429.7, 332.5 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X , 1, 389.7, 268.5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X , 1, 389.7, 268.5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X , 1, 985.1, -136.6 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X , 1, 985.1, -136.6 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X , 1, -35.5, -277.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X , 1, -35.5, -277.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X , 1, -38.2, -302.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X , 1, -38.2, -302.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X , 1, -14.7, -16.5 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X , 1, -14.7, -16.5 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X , 1, -21.4, -51 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X , 1, -21.4, -51 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X , 1, -8.1, -28.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X , 1, -8.1, -28.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X , 1, -24.7, -44.2 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X , 1, -24.7, -44.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X , 1, 93, 66.6 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X , 1, 93, 66.6 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X , 1, 93.1, 66.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X , 1, 93.1, 66.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X , 1, 81.1, 38.7 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X , 1, 81.1, 38.7 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X , 1, -74.4, 26.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X , 1, -74.4, 26.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X , 1, -84.4, 2.8 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X , 1, -84.4, 2.8 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X , 1, -3.3, 24.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X , 1, -3.3, 24.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X , 1, -3.2, 24.4 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X , 1, -3.2, 24.4 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X , 1, 12.8, -33.7 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X , 1, 12.8, -33.7 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X , 1, -2.7, 10.5 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X , 1, -2.7, 10.5 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X , 1, 2.7, -7.4 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X , 1, 2.7, -7.4 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X , 1, 31.6, -19.4 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X , 1, 31.6, -19.4 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X , 1, 32.5, -18.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X , 1, 32.5, -18.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X , 1, 19.4, -61.4 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X , 1, 19.4, -61.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X , 1, -83.3, 38.4 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X , 1, -83.3, 38.4 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X , 1, -71.2, 7.8 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X , 1, -71.2, 7.8 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X , 1, 14, -1.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X , 1, 14, -1.3 , 0 );

setScaleKey( spep_2 + 198 + OFFSET_X , 1, 6.17, 6.17 );
setScaleKey( spep_2 + 213 + OFFSET_X , 1, 6.17, 6.17 );
setScaleKey( spep_2 + 214 + OFFSET_X , 1, 6.17, 6.2 );
setScaleKey( spep_2 + 253 + OFFSET_X , 1, 6.17, 6.2 );
setScaleKey( spep_2 + 254 + OFFSET_X , 1, 9.5, 9.55 );
setScaleKey( spep_2 + 255 + OFFSET_X , 1, 9.5, 9.55 );
setScaleKey( spep_2 + 256 + OFFSET_X , 1, 6.17, 6.2 );
setScaleKey( spep_2 + 259 + OFFSET_X , 1, 6.17, 6.2 );
setScaleKey( spep_2 + 260 + OFFSET_X , 1, 3.26, 3.27 );
setScaleKey( spep_2 + 265 + OFFSET_X , 1, 3.26, 3.27 );
setScaleKey( spep_2 + 266 + OFFSET_X , 1, 2.41, 2.42 );
setScaleKey( spep_2 + 269 + OFFSET_X , 1, 2.41, 2.42 );
setScaleKey( spep_2 + 270 + OFFSET_X , 1, 2.65, 2.66 );
setScaleKey( spep_2 + 279 + OFFSET_X , 1, 2.65, 2.66 );
setScaleKey( spep_2 + 280 + OFFSET_X , 1, 2.3, 2.32 );
setScaleKey( spep_2 + 295 + OFFSET_X , 1, 2.3, 2.32 );
setScaleKey( spep_2 + 296 + OFFSET_X , 1, 2.65, 2.66 );
setScaleKey( spep_2 + 299 + OFFSET_X , 1, 2.65, 2.66 );
setScaleKey( spep_2 + 300 + OFFSET_X , 1, 2.26, 2.27 );
setScaleKey( spep_2 + 304 + OFFSET_X , 1, 2.26, 2.27 );

setRotateKey( spep_2 + 198 + OFFSET_X , 1, 74 );
setRotateKey( spep_2 + 199 + OFFSET_X , 1, 74 );
setRotateKey( spep_2 + 200 + OFFSET_X , 1, 78 );
setRotateKey( spep_2 + 201 + OFFSET_X , 1, 78 );
setRotateKey( spep_2 + 202 + OFFSET_X , 1, 77 );
setRotateKey( spep_2 + 205 + OFFSET_X , 1, 77 );
setRotateKey( spep_2 + 206 + OFFSET_X , 1, 91 );
setRotateKey( spep_2 + 213 + OFFSET_X , 1, 91 );
setRotateKey( spep_2 + 214 + OFFSET_X , 1, 97.5 );
setRotateKey( spep_2 + 217 + OFFSET_X , 1, 97.5 );
setRotateKey( spep_2 + 218 + OFFSET_X , 1, 96.5 );
setRotateKey( spep_2 + 253 + OFFSET_X , 1, 96.5 );
setRotateKey( spep_2 + 254 + OFFSET_X , 1, 53 );
setRotateKey( spep_2 + 255 + OFFSET_X , 1, 53 );
setRotateKey( spep_2 + 256 + OFFSET_X , 1, 32.3 );
setRotateKey( spep_2 + 265 + OFFSET_X , 1, 32.3 );
setRotateKey( spep_2 + 266 + OFFSET_X , 1, 26.8 );
setRotateKey( spep_2 + 269 + OFFSET_X , 1, 26.8 );
setRotateKey( spep_2 + 270 + OFFSET_X , 1, -21.7 );
setRotateKey( spep_2 + 275 + OFFSET_X , 1, -21.7 );
setRotateKey( spep_2 + 276 + OFFSET_X , 1, 3.3 );
setRotateKey( spep_2 + 279 + OFFSET_X , 1, 3.3 );
setRotateKey( spep_2 + 280 + OFFSET_X , 1, -21.7 );
setRotateKey( spep_2 + 285 + OFFSET_X , 1, -21.7 );
setRotateKey( spep_2 + 286 + OFFSET_X , 1, 15.3 );
setRotateKey( spep_2 + 289 + OFFSET_X , 1, 15.3 );
setRotateKey( spep_2 + 290 + OFFSET_X , 1, -21.7 );
setRotateKey( spep_2 + 295 + OFFSET_X , 1, -21.7 );
setRotateKey( spep_2 + 296 + OFFSET_X , 1, 3.3 );
setRotateKey( spep_2 + 299 + OFFSET_X , 1, 3.3 );
setRotateKey( spep_2 + 300 + OFFSET_X , 1, 32.3 );
setRotateKey( spep_2 + 304 + OFFSET_X , 1, 32.3 );

--敵の動き3
setDisp( spep_2 + 314 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 364 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 314 + OFFSET_X , 1, 5 );

setMoveKey( spep_2 + 314 + OFFSET_X , 1, 41.3, -117.4 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X , 1, 41.3, -117.4 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X , 1, 27.5, -70.6 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X , 1, 27.5, -70.6 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X , 1, 4, -65.6 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X , 1, 4, -65.6 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X , 1, 7.2, -14.8 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X , 1, 7.2, -14.8 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X , 1, 6.9, -14.9 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X , 1, 6.9, -14.9 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X , 1, -2.7, -20.5 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X , 1, -2.7, -20.5 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X , 1, -2.5, 7.1 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X , 1, -2.5, 7.1 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X , 1, 0.5, -2.8 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X , 1, 0.5, -2.8 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X , 1, 0.6, 2.7 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X , 1, 0.6, 2.7 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X , 1, 0.7, 2.5 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X , 1, 0.7, 2.5 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X , 1, 0.8, -12.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X , 1, 0.8, -12.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X , 1, -1.8, 5.7 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X , 1, -1.8, 5.7 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X , 1, -0.2, -1.2 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X , 1, -0.2, -1.2 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X , 1, -1.3, 3.2 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X , 1, -1.3, 3.2 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X , 1, -1, 3.2 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X , 1, -1, 3.2 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X , 1, -0.7, 1.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X , 1, -0.7, 1.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X , 1, -0.4, 4.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X , 1, -0.4, 4.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X , 1, -0.1, 4.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X , 1, -0.1, 4.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X , 1, 0.3, 6.2 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X , 1, 0.3, 6.2 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X , 1, 0.6, 6.4 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X , 1, 0.6, 6.4 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X , 1, 0.9, 6.5 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X , 1, 0.9, 6.5 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X , 1, 1.3, 7.9 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X , 1, 1.3, 7.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X , 1, 1.6, 8 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X , 1, 1.6, 8 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X , 1, 1.9, 8.2 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X , 1, 1.9, 8.2 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X , 1, 2.2, 8.3 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X , 1, 2.2, 8.3 , 0 );

setScaleKey( spep_2 + 314 + OFFSET_X , 1, 2.21, 2.21 );
setScaleKey( spep_2 + 317 + OFFSET_X , 1, 2.21, 2.21 );
setScaleKey( spep_2 + 318 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_2 + 319 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_2 + 320 + OFFSET_X , 1, 0.54, 0.54 );
setScaleKey( spep_2 + 323 + OFFSET_X , 1, 0.54, 0.54 );
setScaleKey( spep_2 + 324 + OFFSET_X , 1, 0.43, 0.43 );
setScaleKey( spep_2 + 325 + OFFSET_X , 1, 0.43, 0.43 );
setScaleKey( spep_2 + 326 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_2 + 335 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_2 + 336 + OFFSET_X , 1, 0.3, 0.3 );
setScaleKey( spep_2 + 345 + OFFSET_X , 1, 0.3, 0.3 );
setScaleKey( spep_2 + 346 + OFFSET_X , 1, 0.26, 0.26 );
setScaleKey( spep_2 + 349 + OFFSET_X , 1, 0.26, 0.26 );
setScaleKey( spep_2 + 350 + OFFSET_X , 1, 0.23, 0.23 );
setScaleKey( spep_2 + 355 + OFFSET_X , 1, 0.23, 0.23 );
setScaleKey( spep_2 + 356 + OFFSET_X , 1, 0.19, 0.19 );
setScaleKey( spep_2 + 364 + OFFSET_X , 1, 0.19, 0.19 );

setRotateKey( spep_2 + 314 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 364 + OFFSET_X , 1, 0 );

-- ** 音 ** --
--気弾放つ
SE035 = playSeVer2( spep_2 + 4, 1423, "",spep_2 + 72, 0, 26, -1);
SE036 = playSeVer2( spep_2 + 4, 1424, "",spep_2 + 70, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 4, SE036, 141 );
SE037 = playSeVer2( spep_2 + 4, 1430, "",spep_2 + 68, 0, 22, -1);

--爆発
SE038 = playSeVer2( spep_2 + 40, 1188, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE039 = playSeVer2( spep_2 + 46, 1027, "", 0, 0, 0, -1);

--敵飛んでくる
SE040 = playSeVer2( spep_2 + 46, 1183, "",spep_2 + 136, 0, 48, -1);

--画面遷移
SE041 = playSeVer2( spep_2 + 52, 1072, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 86, 1004, "", 0, 0, 0, -1);

--空気砲撃つ
SE043 = playSeVer2( spep_2 + 106, 1258, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 112, 1312, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 112, 1121, "",spep_2 + 246, 0, 70, -1);
setPitch( spep_2 + 112, SE045, 300 );
setTimeStretch( SE045, 1.2, 30, 4 );

--空気砲連打
SE046 = playSeVer2( spep_2 + 180, 1425, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 180, SE046, 80 );
SE047 = playSeVer2( spep_2 + 180, 1014, "",spep_2 + 216, 0, 14, 0.5);
SE048 = playSeVer2( spep_2 + 192, 1011, "",spep_2 + 238, 0, 18, 0.5);
SE049 = playSeVer2( spep_2 + 202, 1014, "",spep_2 + 238, 0, 14, 0.5);
SE050 = playSeVer2( spep_2 + 216, 1014, "",spep_2 + 252, 0, 14, 0.5);
SE051 = playSeVer2( spep_2 + 228, 1011, "",spep_2 + 274, 0, 18, 0.5);
SE052 = playSeVer2( spep_2 + 238, 1014, "",spep_2 + 274, 0, 14, 0.5);
SE053 = playSeVer2( spep_2 + 250, 1014, "",spep_2 + 286, 0, 14, 0.5);
SE054 = playSeVer2( spep_2 + 260, 1011, "",spep_2 + 308, 0, 20, 0.5);
SE055 = playSeVer2( spep_2 + 270, 1425, "",spep_2 + 302, 0, 16, 0.5);
setSeVolumeByWorkId( spep_2 + 270, SE055, 80 );
SE056 = playSeVer2( spep_2 + 270, 1014, "",spep_2 + 306, 0, 14, 0.5);
SE057 = playSeVer2( spep_2 + 286, 1187, "", 0, 0, 0, 0.5);

--敵飛んでいく
SE058 = playSeVer2( spep_2 + 290, 1121, "",spep_2 + 364, 0, 16, -1);

--激突
SE059 = playSeVer2( spep_2 + 346, 1159, "", 0, 0, 0, -1);

--岩激突１
SE060 = playSeVer2( spep_2 + 362, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 362, SE060, 115 );
SE061 = playSeVer2( spep_2 + 366, 1023, "", 0, 0, 0, -1);

--岩激突２
SE062 = playSeVer2( spep_2 + 382, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 382, SE062, 122 );
SE063 = playSeVer2( spep_2 + 386, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 390); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  --478f -4


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 正面〜乱打の後、敵が飛ぶ
-------------------------------------------------
MAX_FRAME_0 = 532;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 正面〜乱打の後、敵が飛ぶ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
--spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え


--[[
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
]]

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 90 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 270 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 90 + OFFSET_X , 1, 17 );
changeAnimeAndStop( spep_0 + 106 + OFFSET_X, 1, 11 ,1);
changeAnime( spep_0 + 198 + OFFSET_X , 1, 9 );

setMoveKey( spep_0 + 90 + OFFSET_X , 1, -188.5, -156.1 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X , 1, -188.5, -156.1 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X , 1, -168.6, -139.5 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X , 1, -168.6, -139.5 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X , 1, -167.7, -138.5 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X , 1, -167.7, -138.5 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X , 1, -166.8, -137.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X , 1, -166.8, -137.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X , 1, -165.9, -136.6 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X , 1, -165.9, -136.6 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X , 1, -165, -135.7 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X , 1, -165, -135.7 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X , 1, -164.1, -134.8 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X , 1, -164.1, -134.8 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X , 1, -163.2, -133.8 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X , 1, -163.2, -133.8 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X , 1, -162.3, -132.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X , 1, -162.3, -132.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X , 1, -161.4, -131.9 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X , 1, -161.4, -131.9 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X , 1, -160.5, -131 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X , 1, -160.5, -131 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X , 1, -159.6, -130 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X , 1, -159.6, -130 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X , 1, -158.7, -129.1 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X , 1, -158.7, -129.1 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X , 1, -157.8, -128.2 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X , 1, -157.8, -128.2 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X , 1, -156.9, -127.2 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X , 1, -156.9, -127.2 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X , 1, -156, -126.3 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X , 1, -156, -126.3 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X , 1, -155.1, -125.3 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X , 1, -155.1, -125.3 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X , 1, -154.2, -124.4 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X , 1, -154.2, -124.4 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X , 1, -153.3, -123.4 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X , 1, -153.3, -123.4 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X , 1, -152.4, -122.5 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X , 1, -152.4, -122.5 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X , 1, -151.5, -121.5 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X , 1, -151.5, -121.5 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X , 1, -150.6, -120.6 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X , 1, -150.6, -120.6 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X , 1, -149.7, -119.7 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X , 1, -149.7, -119.7 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X , 1, -148.8, -118.7 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X , 1, -148.8, -118.7 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X , 1, -147.9, -117.8 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X , 1, -147.9, -117.8 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X , 1, -147, -116.8 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X , 1, -147, -116.8 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X , 1, -146.1, -115.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X , 1, -146.1, -115.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X , 1, -145.1, -114.9 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X , 1, -145.1, -114.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X , 1, -144.2, -114 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X , 1, -144.2, -114 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X , 1, -143.3, -113.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X , 1, -143.3, -113.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X , 1, -142.4, -112.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X , 1, -142.4, -112.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X , 1, -141.5, -111.2 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X , 1, -141.5, -111.2 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X , 1, -140.6, -110.2 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X , 1, -140.6, -110.2 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X , 1, -139.7, -109.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X , 1, -139.7, -109.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X , 1, -138.8, -108.3 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X , 1, -138.8, -108.3 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X , 1, -137.9, -107.4 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X , 1, -137.9, -107.4 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X , 1, -137, -106.4 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X , 1, -137, -106.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X , 1, -136.1, -105.5 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X , 1, -136.1, -105.5 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X , 1, -135.2, -104.6 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X , 1, -135.2, -104.6 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X , 1, -134.3, -103.6 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X , 1, -134.3, -103.6 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X , 1, -133.4, -102.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X , 1, -133.4, -102.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X , 1, -132.5, -101.7 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X , 1, -132.5, -101.7 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X , 1, -131.6, -100.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X , 1, -131.6, -100.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X , 1, -130.7, -99.8 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X , 1, -130.7, -99.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X , 1, -129.8, -98.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X , 1, -129.8, -98.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X , 1, -128.9, -98 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X , 1, -128.9, -98 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X , 1, -128, -97 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X , 1, -128, -97 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X , 1, -68, -70.1 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X , 1, -68, -70.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X , 1, -41.6, -70.1 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X , 1, -41.6, -70.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X , 1, -33.4, -70.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X , 1, -33.4, -70.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X , 1, -29.3, -70.1 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X , 1, -29.3, -70.1 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X , 1, -28, -70.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X , 1, -28, -70.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X , 1, -22.5, -70.2 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X , 1, -22.5, -70.2 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X , 1, -17, -70.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X , 1, -17, -70.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X , 1, -11.6, -70.3 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X , 1, -11.6, -70.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X , 1, -6.1, -70.3 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X , 1, -6.1, -70.3 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X , 1, -5.6, -70.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X , 1, -5.6, -70.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X , 1, -5, -70.3 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X , 1, -5, -70.3 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X , 1, -4.5, -70.3 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X , 1, -4.5, -70.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X , 1, -4, -70.3 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X , 1, -4, -70.3 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X , 1, -3.5, -70.3 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X , 1, -3.5, -70.3 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X , 1, -2.9, -70.3 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X , 1, -2.9, -70.3 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X , 1, -2.4, -70.3 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X , 1, -2.4, -70.3 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X , 1, -1.9, -70.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X , 1, -1.9, -70.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X , 1, -1.3, -70.3 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X , 1, -1.3, -70.3 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X , 1, -0.8, -70.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X , 1, -0.8, -70.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X , 1, -0.3, -70.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X , 1, -0.3, -70.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X , 1, 0.2, -70.3 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X , 1, 0.2, -70.3 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X , 1, 0.8, -70.3 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X , 1, 0.8, -70.3 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X , 1, 1.3, -70.3 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X , 1, 1.3, -70.3 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X , 1, 1.8, -70.3 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X , 1, 1.8, -70.3 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X , 1, 2.3, -70.3 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X , 1, 2.3, -70.3 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X , 1, 2.9, -70.3 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X , 1, 2.9, -70.3 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X , 1, 3.4, -70.3 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X , 1, 3.4, -70.3 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X , 1, 3.9, -70.3 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X , 1, 3.9, -70.3 , 0 );

setScaleKey( spep_0 + 90 + OFFSET_X , 1, 1.71, 1.71 );
setScaleKey( spep_0 + 105 + OFFSET_X , 1, 1.71, 1.71 );
setScaleKey( spep_0 + 106 + OFFSET_X , 1, 1.85, 1.85 );
setScaleKey( spep_0 + 111 + OFFSET_X , 1, 1.85, 1.85 );
setScaleKey( spep_0 + 112 + OFFSET_X , 1, 1.86, 1.86 );
setScaleKey( spep_0 + 117 + OFFSET_X , 1, 1.86, 1.86 );
setScaleKey( spep_0 + 118 + OFFSET_X , 1, 1.87, 1.87 );
setScaleKey( spep_0 + 123 + OFFSET_X , 1, 1.87, 1.87 );
setScaleKey( spep_0 + 124 + OFFSET_X , 1, 1.88, 1.88 );
setScaleKey( spep_0 + 129 + OFFSET_X , 1, 1.88, 1.88 );
setScaleKey( spep_0 + 130 + OFFSET_X , 1, 1.89, 1.89 );
setScaleKey( spep_0 + 135 + OFFSET_X , 1, 1.89, 1.89 );
setScaleKey( spep_0 + 136 + OFFSET_X , 1, 1.9, 1.9 );
setScaleKey( spep_0 + 143 + OFFSET_X , 1, 1.9, 1.9 );
setScaleKey( spep_0 + 144 + OFFSET_X , 1, 1.91, 1.91 );
setScaleKey( spep_0 + 149 + OFFSET_X , 1, 1.91, 1.91 );
setScaleKey( spep_0 + 150 + OFFSET_X , 1, 1.92, 1.92 );
setScaleKey( spep_0 + 155 + OFFSET_X , 1, 1.92, 1.92 );
setScaleKey( spep_0 + 156 + OFFSET_X , 1, 1.93, 1.93 );
setScaleKey( spep_0 + 161 + OFFSET_X , 1, 1.93, 1.93 );
setScaleKey( spep_0 + 162 + OFFSET_X , 1, 1.94, 1.94 );
setScaleKey( spep_0 + 169 + OFFSET_X , 1, 1.94, 1.94 );
setScaleKey( spep_0 + 170 + OFFSET_X , 1, 1.95, 1.95 );
setScaleKey( spep_0 + 175 + OFFSET_X , 1, 1.95, 1.95 );
setScaleKey( spep_0 + 176 + OFFSET_X , 1, 1.96, 1.96 );
setScaleKey( spep_0 + 181 + OFFSET_X , 1, 1.96, 1.96 );
setScaleKey( spep_0 + 182 + OFFSET_X , 1, 1.97, 1.97 );
setScaleKey( spep_0 + 187 + OFFSET_X , 1, 1.97, 1.97 );
setScaleKey( spep_0 + 188 + OFFSET_X , 1, 1.98, 1.98 );
setScaleKey( spep_0 + 193 + OFFSET_X , 1, 1.98, 1.98 );
setScaleKey( spep_0 + 194 + OFFSET_X , 1, 1.99, 1.99 );
setScaleKey( spep_0 + 197 + OFFSET_X , 1, 1.99, 1.99 );
setScaleKey( spep_0 + 198 + OFFSET_X , 1, 2.26, 2.26 );
setScaleKey( spep_0 + 207 + OFFSET_X , 1, 2.26, 2.26 );
setScaleKey( spep_0 + 208 + OFFSET_X , 1, 2.1, 2.1 );
setScaleKey( spep_0 + 209 + OFFSET_X , 1, 2.1, 2.1 );
setScaleKey( spep_0 + 210 + OFFSET_X , 1, 1.93, 1.93 );
setScaleKey( spep_0 + 211 + OFFSET_X , 1, 1.93, 1.93 );
setScaleKey( spep_0 + 212 + OFFSET_X , 1, 1.77, 1.77 );
setScaleKey( spep_0 + 213 + OFFSET_X , 1, 1.77, 1.77 );
setScaleKey( spep_0 + 214 + OFFSET_X , 1, 1.61, 1.61 );
setScaleKey( spep_0 + 270 + OFFSET_X , 1, 1.61, 1.61 );

setRotateKey( spep_0 + 90 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 105 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 106 + OFFSET_X , 1, -13.3 );
setRotateKey( spep_0 + 197 + OFFSET_X , 1, -13.3 );
setRotateKey( spep_0 + 198 + OFFSET_X , 1, 2.3 );
setRotateKey( spep_0 + 270 + OFFSET_X , 1, 2.3 );

--敵の動き2
setDisp( spep_0 + 386 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 536 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 386 + OFFSET_X , 1, 106 );
changeAnime( spep_0 + 404 + OFFSET_X , 1, 108 );
changeAnime( spep_0 + 412 + OFFSET_X , 1, 106 );
changeAnime( spep_0 + 416 + OFFSET_X , 1, 108 );
changeAnime( spep_0 + 422 + OFFSET_X , 1, 107 );
changeAnime( spep_0 + 426 + OFFSET_X , 1, 106 );
changeAnime( spep_0 + 432 + OFFSET_X , 1, 108 );
changeAnime( spep_0 + 440 + OFFSET_X , 1, 106 );
changeAnime( spep_0 + 444 + OFFSET_X , 1, 108 );
changeAnime( spep_0 + 450 + OFFSET_X , 1, 107 );
changeAnime( spep_0 + 454 + OFFSET_X , 1, 106 );
changeAnime( spep_0 + 460 + OFFSET_X , 1, 108 );
changeAnime( spep_0 + 464 + OFFSET_X , 1, 107 );
changeAnime( spep_0 + 492 + OFFSET_X , 1, 106 );

setMoveKey( spep_0 + 386 + OFFSET_X , 1, 660.9, 332.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X , 1, 660.9, 332.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X , 1, 494.3, 323.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X , 1, 494.3, 323.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X , 1, 369.1, 316.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X , 1, 369.1, 316.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X , 1, 279.4, 311.3 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X , 1, 279.4, 311.3 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X , 1, 219.3, 307.9 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X , 1, 219.3, 307.9 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X , 1, 182.8, 305.9 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X , 1, 182.8, 305.9 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X , 1, 164.1, 304.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X , 1, 164.1, 304.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X , 1, 157.2, 304.5 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X , 1, 157.2, 304.5 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X , 1, 127.7, 169.8 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X , 1, 127.7, 169.8 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X , 1, 101.8, 97.9 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X , 1, 101.8, 97.9 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X , 1, 99.7, 163.9 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X , 1, 99.7, 163.9 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X , 1, 99.9, 164 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X , 1, 99.9, 164 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X , 1, 111.5, 125.7 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X , 1, 111.5, 125.7 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X , 1, 127.7, 169.8 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X , 1, 127.7, 169.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X , 1, 101.8, 97.9 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X , 1, 101.8, 97.9 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X , 1, 99.7, 163.9 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X , 1, 99.7, 163.9 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X , 1, 99.9, 164 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X , 1, 99.9, 164 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X , 1, 111.5, 125.7 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X , 1, 111.5, 125.7 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X , 1, 127.7, 169.8 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X , 1, 127.7, 169.8 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X , 1, 183.9, 92.1 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X , 1, 183.9, 92.1 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X , 1, 206.9, 110.7 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X , 1, 206.9, 110.7 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X , 1, 163.9, 71.9 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X , 1, 163.9, 71.9 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X , 1, 202, 68.3 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X , 1, 202, 68.3 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X , 1, 189.9, 93.5 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X , 1, 189.9, 93.5 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X , 1, 197.9, 101.1 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X , 1, 197.9, 101.1 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X , 1, 209, 82.2 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X , 1, 209, 82.2 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X , 1, 221.3, 72.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X , 1, 221.3, 72.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X , 1, 245.3, 63.1 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X , 1, 245.3, 63.1 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X , 1, 236.9, 75.7 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X , 1, 236.9, 75.7 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X , 1, 257.9, 69.7 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X , 1, 257.9, 69.7 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X , 1, 258.1, 68.3 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X , 1, 258.1, 68.3 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X , 1, 249.1, 62.3 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X , 1, 249.1, 62.3 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X , 1, 256.7, 67.8 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X , 1, 256.7, 67.8 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X , 1, 288.8, 5.3 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X , 1, 288.8, 5.3 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X , 1, 271.1, 14.8 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X , 1, 271.1, 14.8 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X , 1, 258.6, 12.8 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X , 1, 258.6, 12.8 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X , 1, 248.8, 12 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X , 1, 248.8, 12 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X , 1, 228, 20.2 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X , 1, 228, 20.2 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X , 1, 211.2, 31.2 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X , 1, 211.2, 31.2 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X , 1, 199.3, 22.5 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X , 1, 199.3, 22.5 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X , 1, 178.2, 32 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X , 1, 178.2, 32 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X , 1, 170, 39.9 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X , 1, 170, 39.9 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X , 1, 151.9, 39.1 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X , 1, 151.9, 39.1 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X , 1, 138, 41 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X , 1, 138, 41 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X , 1, 123.3, 47.7 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X , 1, 123.3, 47.7 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X , 1, 112.2, 52.6 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X , 1, 112.2, 52.6 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X , 1, 84, 55.9 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X , 1, 84, 55.9 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X , 1, 71.1, 56.3 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X , 1, 71.1, 56.3 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X , 1, 63.2, 63.6 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X , 1, 63.2, 63.6 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X , 1, 40.9, 64.1 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X , 1, 40.9, 64.1 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X , 1, 26.4, 74.9 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X , 1, 26.4, 74.9 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X , 1, 18.8, 74.5 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X , 1, 18.8, 74.5 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X , 1, -0.8, 75.4 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X , 1, -0.8, 75.4 , 0 );

setScaleKey( spep_0 + 386 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_0 + 387 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_0 + 388 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_0 + 389 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_0 + 390 + OFFSET_X , 1, 0.76, 0.76 );
setScaleKey( spep_0 + 391 + OFFSET_X , 1, 0.76, 0.76 );
setScaleKey( spep_0 + 392 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_0 + 393 + OFFSET_X , 1, 0.69, 0.69 );
setScaleKey( spep_0 + 394 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_0 + 395 + OFFSET_X , 1, 0.64, 0.64 );
setScaleKey( spep_0 + 396 + OFFSET_X , 1, 0.61, 0.61 );
setScaleKey( spep_0 + 399 + OFFSET_X , 1, 0.61, 0.61 );
setScaleKey( spep_0 + 400 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_0 + 401 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_0 + 402 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 403 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 404 + OFFSET_X , 1, 2.14, 2.14 );
setScaleKey( spep_0 + 411 + OFFSET_X , 1, 2.14, 2.14 );
setScaleKey( spep_0 + 412 + OFFSET_X , 1, 1.92, 1.92 );
setScaleKey( spep_0 + 415 + OFFSET_X , 1, 1.92, 1.92 );
setScaleKey( spep_0 + 416 + OFFSET_X , 1, 2.04, 2.04 );
setScaleKey( spep_0 + 421 + OFFSET_X , 1, 2.04, 2.04 );
setScaleKey( spep_0 + 422 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_0 + 425 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_0 + 426 + OFFSET_X , 1, 1.99, 1.99 );
setScaleKey( spep_0 + 431 + OFFSET_X , 1, 1.99, 1.99 );
setScaleKey( spep_0 + 432 + OFFSET_X , 1, 2.14, 2.14 );
setScaleKey( spep_0 + 439 + OFFSET_X , 1, 2.14, 2.14 );
setScaleKey( spep_0 + 440 + OFFSET_X , 1, 1.92, 1.92 );
setScaleKey( spep_0 + 443 + OFFSET_X , 1, 1.92, 1.92 );
setScaleKey( spep_0 + 444 + OFFSET_X , 1, 2.04, 2.04 );
setScaleKey( spep_0 + 449 + OFFSET_X , 1, 2.04, 2.04 );
setScaleKey( spep_0 + 450 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_0 + 453 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_0 + 454 + OFFSET_X , 1, 1.99, 1.99 );
setScaleKey( spep_0 + 459 + OFFSET_X , 1, 1.99, 1.99 );
setScaleKey( spep_0 + 460 + OFFSET_X , 1, 2.14, 2.14 );
setScaleKey( spep_0 + 463 + OFFSET_X , 1, 2.14, 2.14 );
setScaleKey( spep_0 + 464 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_0 + 491 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_0 + 492 + OFFSET_X , 1, 1.7, 1.7 );
setScaleKey( spep_0 + 536 + OFFSET_X , 1, 1.7, 1.7 );

setRotateKey( spep_0 + 386 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 403 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 404 + OFFSET_X , 1, -33.3 );
setRotateKey( spep_0 + 411 + OFFSET_X , 1, -33.3 );
setRotateKey( spep_0 + 412 + OFFSET_X , 1, -34.5 );
setRotateKey( spep_0 + 415 + OFFSET_X , 1, -34.5 );
setRotateKey( spep_0 + 416 + OFFSET_X , 1, -34.6 );
setRotateKey( spep_0 + 431 + OFFSET_X , 1, -34.6 );
setRotateKey( spep_0 + 432 + OFFSET_X , 1, -33.3 );
setRotateKey( spep_0 + 439 + OFFSET_X , 1, -33.3 );
setRotateKey( spep_0 + 440 + OFFSET_X , 1, -34.5 );
setRotateKey( spep_0 + 443 + OFFSET_X , 1, -34.5 );
setRotateKey( spep_0 + 444 + OFFSET_X , 1, -34.6 );
setRotateKey( spep_0 + 459 + OFFSET_X , 1, -34.6 );
setRotateKey( spep_0 + 460 + OFFSET_X , 1, -33.3 );
setRotateKey( spep_0 + 463 + OFFSET_X , 1, -33.3 );
setRotateKey( spep_0 + 464 + OFFSET_X , 1, 9.1 );
setRotateKey( spep_0 + 491 + OFFSET_X , 1, 9.1 );
setRotateKey( spep_0 + 492 + OFFSET_X , 1, 32.1 );
setRotateKey( spep_0 + 493 + OFFSET_X , 1, 32.1 );
setRotateKey( spep_0 + 494 + OFFSET_X , 1, 32.3 );
setRotateKey( spep_0 + 495 + OFFSET_X , 1, 32.3 );
setRotateKey( spep_0 + 496 + OFFSET_X , 1, 32.5 );
setRotateKey( spep_0 + 497 + OFFSET_X , 1, 32.5 );
setRotateKey( spep_0 + 498 + OFFSET_X , 1, 32.8 );
setRotateKey( spep_0 + 499 + OFFSET_X , 1, 32.8 );
setRotateKey( spep_0 + 500 + OFFSET_X , 1, 33 );
setRotateKey( spep_0 + 501 + OFFSET_X , 1, 33 );
setRotateKey( spep_0 + 502 + OFFSET_X , 1, 33.2 );
setRotateKey( spep_0 + 503 + OFFSET_X , 1, 33.2 );
setRotateKey( spep_0 + 504 + OFFSET_X , 1, 33.4 );
setRotateKey( spep_0 + 505 + OFFSET_X , 1, 33.4 );
setRotateKey( spep_0 + 506 + OFFSET_X , 1, 33.7 );
setRotateKey( spep_0 + 507 + OFFSET_X , 1, 33.7 );
setRotateKey( spep_0 + 508 + OFFSET_X , 1, 33.9 );
setRotateKey( spep_0 + 509 + OFFSET_X , 1, 33.9 );
setRotateKey( spep_0 + 510 + OFFSET_X , 1, 34.1 );
setRotateKey( spep_0 + 511 + OFFSET_X , 1, 34.1 );
setRotateKey( spep_0 + 512 + OFFSET_X , 1, 34.3 );
setRotateKey( spep_0 + 513 + OFFSET_X , 1, 34.3 );
setRotateKey( spep_0 + 514 + OFFSET_X , 1, 34.5 );
setRotateKey( spep_0 + 515 + OFFSET_X , 1, 34.5 );
setRotateKey( spep_0 + 516 + OFFSET_X , 1, 34.8 );
setRotateKey( spep_0 + 517 + OFFSET_X , 1, 34.8 );
setRotateKey( spep_0 + 518 + OFFSET_X , 1, 35 );
setRotateKey( spep_0 + 519 + OFFSET_X , 1, 35 );
setRotateKey( spep_0 + 520 + OFFSET_X , 1, 35.2 );
setRotateKey( spep_0 + 521 + OFFSET_X , 1, 35.2 );
setRotateKey( spep_0 + 522 + OFFSET_X , 1, 35.4 );
setRotateKey( spep_0 + 523 + OFFSET_X , 1, 35.4 );
setRotateKey( spep_0 + 524 + OFFSET_X , 1, 35.7 );
setRotateKey( spep_0 + 525 + OFFSET_X , 1, 35.7 );
setRotateKey( spep_0 + 526 + OFFSET_X , 1, 35.9 );
setRotateKey( spep_0 + 527 + OFFSET_X , 1, 35.9 );
setRotateKey( spep_0 + 528 + OFFSET_X , 1, 36.1 );
setRotateKey( spep_0 + 529 + OFFSET_X , 1, 36.1 );
setRotateKey( spep_0 + 530 + OFFSET_X , 1, 36.3 );
setRotateKey( spep_0 + 536 + OFFSET_X , 1, 36.3 );


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 216, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 65 );
setPitch( spep_0 + 0, SE001, -500 );
setTimeStretch( SE001, 0.67, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 218, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 168 );
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 216, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 178 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 92; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE00X, 0);
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
--歩く
SE005 = playSeVer2( spep_0 + 82, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE005, 138 );
SE007 = playSeVer2( spep_0 + 178, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE007, 141 );

--敵飛び込んでくる
SE006 = playSeVer2( spep_0 + 104, 1117, "", 0, 0, 0, -1);

--悟空消える
SE008 = playSeVer2( spep_0 + 180, 1003, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 182, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE009, 63 );

--敵光る
SE010 = playSeVer2( spep_0 + 228, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE010, 63 );
SE011 = playSeVer2( spep_0 + 230, 1371, "",spep_0 + 266, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 230, SE011, 75 );
SE012 = playSeVer2( spep_0 + 240, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE012, 60 );

--敵爆発
SE013 = playSeVer2( spep_0 + 248, 1026, "", 0, 0, 0, -1);
setPitch( spep_0 + 248, SE013, 600 );
setTimeStretch( SE013, 1.4, 30, 4 );

--爆発予兆
SE014 = playSeVer2( spep_0 + 256, 1360, "",spep_0 + 318, 0, 28, -1);

--爆発
SE015 = playSeVer2( spep_0 + 280, 1024, "", 0, 0, 0, -1);

--炎かき分ける
SE016 = playSeVer2( spep_0 + 314, 1188, "", 0, 0, 0, -1);

--飛んでくる
SE017 = playSeVer2( spep_0 + 342, 1117, "", 0, 0, 0, -1);

--連打
SE018 = playSeVer2( spep_0 + 392, 1110, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 394, SE018 );
SE019 = playSeVer2( spep_0 + 394, 1153, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 394, SE019, 71 );
SE020 = playSeVer2( spep_0 + 402, 1110, "", 0, 0, 0, 0.5);
SE021 = playSeVer2( spep_0 + 410, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 410, SE021, 76 );
SE022 = playSeVer2( spep_0 + 416, 1009, "", 0, 0, 0, 0.5);
SE023 = playSeVer2( spep_0 + 424, 1110, "", 0, 0, 0, 0.5);
SE024 = playSeVer2( spep_0 + 432, 1110, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 432, SE024 );
SE025 = playSeVer2( spep_0 + 432, 1001, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 432, SE025, 76 );
SE026 = playSeVer2( spep_0 + 438, 1110, "", 0, 0, 0, 0.5);
SE027 = playSeVer2( spep_0 + 448, 1359, "",spep_0 + 532, 0, 10, 0.7);
SE028 = playSeVer2( spep_0 + 448, 1187, "",spep_0 + 532, 0, 8, 0.7);

--敵飛んでいく
SE029 = playSeVer2( spep_0 + 460, 1121, "",spep_0 + 544, 0, 24, -1);
SE030 = playSeVer2( spep_0 + 460, 1183, "",spep_0 + 544, 0, 22, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --532f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0) + 2;

-- ** 音 ** --
--気弾溜め
SE032 = playSeVer2( spep_1 + 72, 1265, "",spep_1 + 136, 10, 28, -1);
setStartTimeMs( SE032,  367 );
setPitch( spep_1 + 72, SE032, 400 );
setTimeStretch( SE032, 1.27, 30, 4 );
SE033 = playSeVer2( spep_1 + 74, 1254, "",spep_1 + 132, 0, 26, -1);
SE034 = playSeVer2( spep_1 + 74, 1394, "",spep_1 + 126, 0, 20, -1);
setPitch( spep_1 + 74, SE034, 400 );
setTimeStretch( SE034, 1.27, 30, 4 );

entryFade(spep_1 + 90, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-------------------------------------------------
-- 片手気功波〜敵が岩に激突
-------------------------------------------------
MAX_FRAME_2 = 478;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 片手気功波〜敵が岩に激突(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 70 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 84 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 70 + OFFSET_X , 1, 107 );

setMoveKey( spep_2 + 70 + OFFSET_X , 1, -133.1, 168 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X , 1, -133.1, 168 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X , 1, -128.7, 173.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X , 1, -128.7, 173.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X , 1, -125.7, 166 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X , 1, -125.7, 166 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X , 1, -114.7, 165.7 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X , 1, -114.7, 165.7 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X , 1, 160.9, -46.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X , 1, 160.9, -46.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X , 1, 153.3, -44.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X , 1, 153.3, -44.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X , 1, 466, -265.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X , 1, 466, -265.6 , 0 );

setScaleKey( spep_2 + 70 + OFFSET_X , 1, 0.12, 0.12 );
setScaleKey( spep_2 + 71 + OFFSET_X , 1, 0.12, 0.12 );
setScaleKey( spep_2 + 72 + OFFSET_X , 1, 0.15, 0.15 );
setScaleKey( spep_2 + 73 + OFFSET_X , 1, 0.15, 0.15 );
setScaleKey( spep_2 + 74 + OFFSET_X , 1, 0.18, 0.18 );
setScaleKey( spep_2 + 75 + OFFSET_X , 1, 0.18, 0.18 );
setScaleKey( spep_2 + 76 + OFFSET_X , 1, 0.21, 0.21 );
setScaleKey( spep_2 + 77 + OFFSET_X , 1, 0.21, 0.21 );
setScaleKey( spep_2 + 78 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 81 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 82 + OFFSET_X , 1, 2.68, 2.68 );
setScaleKey( spep_2 + 84 + OFFSET_X , 1, 2.68, 2.68 );

setRotateKey( spep_2 + 70 + OFFSET_X , 1, 61.4 );
setRotateKey( spep_2 + 84 + OFFSET_X , 1, 61.4 );


--敵の動き2
setDisp( spep_2 + 198 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 304 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 198 + OFFSET_X , 1, 107 );
changeAnime( spep_2 + 256 + OFFSET_X , 1, 105 );
changeAnime( spep_2 + 266 + OFFSET_X , 1, 106 );
changeAnime( spep_2 + 270 + OFFSET_X , 1, 8 );
changeAnime( spep_2 + 276 + OFFSET_X , 1, 108 );
changeAnime( spep_2 + 280 + OFFSET_X , 1, 5 );
changeAnime( spep_2 + 286 + OFFSET_X , 1, 106 );
changeAnime( spep_2 + 290 + OFFSET_X , 1, 6 );
changeAnime( spep_2 + 296 + OFFSET_X , 1, 108 );
changeAnime( spep_2 + 300 + OFFSET_X , 1, 105 );

setMoveKey( spep_2 + 198 + OFFSET_X , 1, -325.4, 400.1 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X , 1, -325.4, 400.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X , 1, -359.3, 370.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X , 1, -359.3, 370.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X , 1, -365.4, 392.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X , 1, -365.4, 392.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X , 1, -357.4, 404.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X , 1, -357.4, 404.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X , 1, -373.4, 344.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X , 1, -373.4, 344.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X , 1, -365.4, 336.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X , 1, -365.4, 336.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X , 1, -341.4, 360.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X , 1, -341.4, 360.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X , 1, -333.4, 352.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X , 1, -333.4, 352.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X , 1, -389.5, 364.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X , 1, -389.5, 364.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X , 1, -405.5, 348.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X , 1, -405.5, 348.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X , 1, -373.5, 320.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X , 1, -373.5, 320.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X , 1, -381.5, 312.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X , 1, -381.5, 312.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X , 1, -329.5, 364.5 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X , 1, -329.5, 364.5 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X , 1, -321.5, 356.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X , 1, -321.5, 356.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X , 1, -393.5, 356.5 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X , 1, -393.5, 356.5 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X , 1, -401.5, 348.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X , 1, -401.5, 348.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X , 1, -345.5, 344.5 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X , 1, -345.5, 344.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X , 1, -361.5, 328.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X , 1, -361.5, 328.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X , 1, -321.5, 372.5 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X , 1, -321.5, 372.5 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X , 1, -325.5, 356.5 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X , 1, -325.5, 356.5 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X , 1, -373.6, 388.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X , 1, -373.6, 388.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X , 1, -377.6, 376.5 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X , 1, -377.6, 376.5 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X , 1, -337.6, 332.5 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X , 1, -337.6, 332.5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X , 1, -361.7, 304.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X , 1, -361.7, 304.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X , 1, -305.7, 340.5 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X , 1, -305.7, 340.5 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X , 1, -429.7, 344.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X , 1, -429.7, 344.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X , 1, -429.7, 332.5 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X , 1, -429.7, 332.5 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X , 1, -389.7, 268.5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X , 1, -389.7, 268.5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X , 1, -985.1, -136.6 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X , 1, -985.1, -136.6 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X , 1, 35.5, -277.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X , 1, 35.5, -277.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X , 1, 38.2, -302.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X , 1, 38.2, -302.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X , 1, 14.7, -16.5 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X , 1, 14.7, -16.5 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X , 1, 21.4, -51 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X , 1, 21.4, -51 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X , 1, 8.1, -28.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X , 1, 8.1, -28.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X , 1, 24.7, -44.2 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X , 1, 24.7, -44.2 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X , 1, -93, 66.6 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X , 1, -93, 66.6 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X , 1, -93.1, 66.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X , 1, -93.1, 66.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X , 1, -81.1, 38.7 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X , 1, -81.1, 38.7 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X , 1, 74.4, 26.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X , 1, 74.4, 26.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X , 1, 84.4, 2.8 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X , 1, 84.4, 2.8 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X , 1, 3.3, 24.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X , 1, 3.3, 24.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X , 1, 3.2, 24.4 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X , 1, 3.2, 24.4 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X , 1, -12.8, -33.7 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X , 1, -12.8, -33.7 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X , 1, 2.7, 10.5 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X , 1, 2.7, 10.5 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X , 1, -2.7, -7.4 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X , 1, -2.7, -7.4 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X , 1, -31.6, -19.4 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X , 1, -31.6, -19.4 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X , 1, -32.5, -18.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X , 1, -32.5, -18.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X , 1, -19.4, -61.4 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X , 1, -19.4, -61.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X , 1, 83.3, 38.4 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X , 1, 83.3, 38.4 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X , 1, 71.2, 7.8 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X , 1, 71.2, 7.8 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X , 1, -14, -1.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X , 1, -14, -1.3 , 0 );

setScaleKey( spep_2 + 198 + OFFSET_X , 1, 6.17, 6.17 );
setScaleKey( spep_2 + 213 + OFFSET_X , 1, 6.17, 6.17 );
setScaleKey( spep_2 + 214 + OFFSET_X , 1, 6.17, 6.2 );
setScaleKey( spep_2 + 253 + OFFSET_X , 1, 6.17, 6.2 );
setScaleKey( spep_2 + 254 + OFFSET_X , 1, 9.5, 9.55 );
setScaleKey( spep_2 + 255 + OFFSET_X , 1, 9.5, 9.55 );
setScaleKey( spep_2 + 256 + OFFSET_X , 1, 6.17, 6.2 );
setScaleKey( spep_2 + 259 + OFFSET_X , 1, 6.17, 6.2 );
setScaleKey( spep_2 + 260 + OFFSET_X , 1, 3.26, 3.27 );
setScaleKey( spep_2 + 265 + OFFSET_X , 1, 3.26, 3.27 );
setScaleKey( spep_2 + 266 + OFFSET_X , 1, 2.41, 2.42 );
setScaleKey( spep_2 + 269 + OFFSET_X , 1, 2.41, 2.42 );
setScaleKey( spep_2 + 270 + OFFSET_X , 1, 2.65, 2.66 );
setScaleKey( spep_2 + 279 + OFFSET_X , 1, 2.65, 2.66 );
setScaleKey( spep_2 + 280 + OFFSET_X , 1, 2.3, 2.32 );
setScaleKey( spep_2 + 295 + OFFSET_X , 1, 2.3, 2.32 );
setScaleKey( spep_2 + 296 + OFFSET_X , 1, 2.65, 2.66 );
setScaleKey( spep_2 + 299 + OFFSET_X , 1, 2.65, 2.66 );
setScaleKey( spep_2 + 300 + OFFSET_X , 1, 2.26, 2.27 );
setScaleKey( spep_2 + 304 + OFFSET_X , 1, 2.26, 2.27 );

setRotateKey( spep_2 + 198 + OFFSET_X , 1, -74 );
setRotateKey( spep_2 + 199 + OFFSET_X , 1, -74 );
setRotateKey( spep_2 + 200 + OFFSET_X , 1, -78 );
setRotateKey( spep_2 + 201 + OFFSET_X , 1, -78 );
setRotateKey( spep_2 + 202 + OFFSET_X , 1, -77 );
setRotateKey( spep_2 + 205 + OFFSET_X , 1, -77 );
setRotateKey( spep_2 + 206 + OFFSET_X , 1, -91 );
setRotateKey( spep_2 + 213 + OFFSET_X , 1, -91 );
setRotateKey( spep_2 + 214 + OFFSET_X , 1, -97.5 );
setRotateKey( spep_2 + 217 + OFFSET_X , 1, -97.5 );
setRotateKey( spep_2 + 218 + OFFSET_X , 1, -96.5 );
setRotateKey( spep_2 + 253 + OFFSET_X , 1, -96.5 );
setRotateKey( spep_2 + 254 + OFFSET_X , 1, -53 );
setRotateKey( spep_2 + 255 + OFFSET_X , 1, -53 );
setRotateKey( spep_2 + 256 + OFFSET_X , 1, -32.3 );
setRotateKey( spep_2 + 265 + OFFSET_X , 1, -32.3 );
setRotateKey( spep_2 + 266 + OFFSET_X , 1, -26.8 );
setRotateKey( spep_2 + 269 + OFFSET_X , 1, -26.8 );
setRotateKey( spep_2 + 270 + OFFSET_X , 1, 21.7 );
setRotateKey( spep_2 + 275 + OFFSET_X , 1, 21.7 );
setRotateKey( spep_2 + 276 + OFFSET_X , 1, -3.3 );
setRotateKey( spep_2 + 279 + OFFSET_X , 1, -3.3 );
setRotateKey( spep_2 + 280 + OFFSET_X , 1, 21.7 );
setRotateKey( spep_2 + 285 + OFFSET_X , 1, 21.7 );
setRotateKey( spep_2 + 286 + OFFSET_X , 1, -15.3 );
setRotateKey( spep_2 + 289 + OFFSET_X , 1, -15.3 );
setRotateKey( spep_2 + 290 + OFFSET_X , 1, 21.7 );
setRotateKey( spep_2 + 295 + OFFSET_X , 1, 21.7 );
setRotateKey( spep_2 + 296 + OFFSET_X , 1, -3.3 );
setRotateKey( spep_2 + 299 + OFFSET_X , 1, -3.3 );
setRotateKey( spep_2 + 300 + OFFSET_X , 1, -32.3 );
setRotateKey( spep_2 + 304 + OFFSET_X , 1, -32.3 );

--敵の動き3
setDisp( spep_2 + 314 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 364 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 314 + OFFSET_X , 1, 105 );

setMoveKey( spep_2 + 314 + OFFSET_X , 1, -41.3, -117.4 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X , 1, -41.3, -117.4 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X , 1, -27.5, -70.6 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X , 1, -27.5, -70.6 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X , 1, -4, -65.6 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X , 1, -4, -65.6 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X , 1, -7.2, -14.8 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X , 1, -7.2, -14.8 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X , 1, -6.9, -14.9 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X , 1, -6.9, -14.9 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X , 1, 2.7, -20.5 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X , 1, 2.7, -20.5 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X , 1, 2.5, 7.1 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X , 1, 2.5, 7.1 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X , 1, -0.5, -2.8 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X , 1, -0.5, -2.8 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X , 1, -0.6, 2.7 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X , 1, -0.6, 2.7 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X , 1, -0.7, 2.5 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X , 1, -0.7, 2.5 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X , 1, -0.8, -12.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X , 1, -0.8, -12.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X , 1, 1.8, 5.7 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X , 1, 1.8, 5.7 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X , 1, 0.2, -1.2 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X , 1, 0.2, -1.2 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X , 1, 1.3, 3.2 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X , 1, 1.3, 3.2 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X , 1, 1, 3.2 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X , 1, 1, 3.2 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X , 1, 0.7, 1.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X , 1, 0.7, 1.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X , 1, 0.4, 4.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X , 1, 0.4, 4.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X , 1, 0.1, 4.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X , 1, 0.1, 4.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X , 1, -0.3, 6.2 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X , 1, -0.3, 6.2 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X , 1, -0.6, 6.4 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X , 1, -0.6, 6.4 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X , 1, -0.9, 6.5 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X , 1, -0.9, 6.5 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X , 1, -1.3, 7.9 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X , 1, -1.3, 7.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X , 1, -1.6, 8 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X , 1, -1.6, 8 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X , 1, -1.9, 8.2 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X , 1, -1.9, 8.2 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X , 1, -2.2, 8.3 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X , 1, -2.2, 8.3 , 0 );

setScaleKey( spep_2 + 314 + OFFSET_X , 1, 2.21, 2.21 );
setScaleKey( spep_2 + 317 + OFFSET_X , 1, 2.21, 2.21 );
setScaleKey( spep_2 + 318 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_2 + 319 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_2 + 320 + OFFSET_X , 1, 0.54, 0.54 );
setScaleKey( spep_2 + 323 + OFFSET_X , 1, 0.54, 0.54 );
setScaleKey( spep_2 + 324 + OFFSET_X , 1, 0.43, 0.43 );
setScaleKey( spep_2 + 325 + OFFSET_X , 1, 0.43, 0.43 );
setScaleKey( spep_2 + 326 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_2 + 335 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_2 + 336 + OFFSET_X , 1, 0.3, 0.3 );
setScaleKey( spep_2 + 345 + OFFSET_X , 1, 0.3, 0.3 );
setScaleKey( spep_2 + 346 + OFFSET_X , 1, 0.26, 0.26 );
setScaleKey( spep_2 + 349 + OFFSET_X , 1, 0.26, 0.26 );
setScaleKey( spep_2 + 350 + OFFSET_X , 1, 0.23, 0.23 );
setScaleKey( spep_2 + 355 + OFFSET_X , 1, 0.23, 0.23 );
setScaleKey( spep_2 + 356 + OFFSET_X , 1, 0.19, 0.19 );
setScaleKey( spep_2 + 364 + OFFSET_X , 1, 0.19, 0.19 );

setRotateKey( spep_2 + 314 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 364 + OFFSET_X , 1, 0 );

-- ** 音 ** --
--気弾放つ
SE035 = playSeVer2( spep_2 + 4, 1423, "",spep_2 + 72, 0, 26, -1);
SE036 = playSeVer2( spep_2 + 4, 1424, "",spep_2 + 70, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 4, SE036, 141 );
SE037 = playSeVer2( spep_2 + 4, 1430, "",spep_2 + 68, 0, 22, -1);

--爆発
SE038 = playSeVer2( spep_2 + 40, 1188, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE039 = playSeVer2( spep_2 + 46, 1027, "", 0, 0, 0, -1);

--敵飛んでくる
SE040 = playSeVer2( spep_2 + 46, 1183, "",spep_2 + 136, 0, 48, -1);

--画面遷移
SE041 = playSeVer2( spep_2 + 52, 1072, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 86, 1004, "", 0, 0, 0, -1);

--空気砲撃つ
SE043 = playSeVer2( spep_2 + 106, 1258, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 112, 1312, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 112, 1121, "",spep_2 + 246, 0, 70, -1);
setPitch( spep_2 + 112, SE045, 300 );
setTimeStretch( SE045, 1.2, 30, 4 );

--空気砲連打
SE046 = playSeVer2( spep_2 + 180, 1425, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 180, SE046, 80 );
SE047 = playSeVer2( spep_2 + 180, 1014, "",spep_2 + 216, 0, 14, 0.5);
SE048 = playSeVer2( spep_2 + 192, 1011, "",spep_2 + 238, 0, 18, 0.5);
SE049 = playSeVer2( spep_2 + 202, 1014, "",spep_2 + 238, 0, 14, 0.5);
SE050 = playSeVer2( spep_2 + 216, 1014, "",spep_2 + 252, 0, 14, 0.5);
SE051 = playSeVer2( spep_2 + 228, 1011, "",spep_2 + 274, 0, 18, 0.5);
SE052 = playSeVer2( spep_2 + 238, 1014, "",spep_2 + 274, 0, 14, 0.5);
SE053 = playSeVer2( spep_2 + 250, 1014, "",spep_2 + 286, 0, 14, 0.5);
SE054 = playSeVer2( spep_2 + 260, 1011, "",spep_2 + 308, 0, 20, 0.5);
SE055 = playSeVer2( spep_2 + 270, 1425, "",spep_2 + 302, 0, 16, 0.5);
setSeVolumeByWorkId( spep_2 + 270, SE055, 80 );
SE056 = playSeVer2( spep_2 + 270, 1014, "",spep_2 + 306, 0, 14, 0.5);
SE057 = playSeVer2( spep_2 + 286, 1187, "", 0, 0, 0, 0.5);

--敵飛んでいく
SE058 = playSeVer2( spep_2 + 290, 1121, "",spep_2 + 364, 0, 16, -1);

--激突
SE059 = playSeVer2( spep_2 + 346, 1159, "", 0, 0, 0, -1);

--岩激突１
SE060 = playSeVer2( spep_2 + 362, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 362, SE060, 115 );
SE061 = playSeVer2( spep_2 + 366, 1023, "", 0, 0, 0, -1);

--岩激突２
SE062 = playSeVer2( spep_2 + 382, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 382, SE062, 122 );
SE063 = playSeVer2( spep_2 + 386, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 390); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  --478f -4


end