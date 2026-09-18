--1028420:UR_人造人間18号(リンク状態)_必殺技：エネルギーウェイブ
--sp_effect_b4_00310
--sp2661

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162493;  --ef_001  冒頭～18号タメ・手前
SP_01b = 162494;  --ef_001b 冒頭～18号タメ・奥
SP_02  = 162496;  --ef_002  発射～ラスト・手前
SP_02b = 162497;  --ef_002b 発射～ラスト・奥

--エフェクト(敵)
SP_01r  = 162495;  --ef_001r   【敵用】冒頭～18号タメ・手前
SP_02r  = 162514;  --ef_002r   【敵用】発射～ラスト・手前
SP_02rb = 162498;  --ef_002r_b 【敵用】発射～ラスト・奥

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

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭～18号タメ
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_0 = 688;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001   
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b  
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 598;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -35, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -35, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );]]--

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 90);  --黒 通常背景

-- ** 白フェード ** --
entryFade( spep_0 + 594 + OFFSET_X, 0, 1, 7, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 381 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 90 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 114 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 122 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 172 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 212 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 218 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 230 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 236 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 248 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 260 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 268 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 286 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 298 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 316 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 322 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 334 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 354 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 90 + OFFSET_X, 1, 587.8, 11.6 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 587.8, 11.6 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 543.8, 11.3 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 543.8, 11.3 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 499.5, 10.8 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 499.5, 10.8 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 454.7, 10.3 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 454.7, 10.3 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 409.7, 9.8 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 409.7, 9.8 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 364.3, 9.2 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 364.3, 9.2 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 318.7, 8.7 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 318.7, 8.7 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 272.8, 8.2 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 272.8, 8.2 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 226.7, 7.5 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 226.7, 7.5 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 198.1, 7.6 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 198.1, 7.6 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 169.4, 7.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 169.4, 7.6 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 140.6, 7.7 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 140.6, 7.7 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 113.9, 11.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 113.9, 11.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 77.3, 12 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 77.3, 12 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 40.6, 12 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 40.6, 12 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 3.7, 12.1 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 3.7, 12.1 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -18.6, 3.6 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -18.6, 3.6 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -23, -9.2 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -23, -9.2 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -5.8, 6.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -5.8, 6.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -12.6, 25.4 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -12.6, 25.4 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 7, 10.3 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 7, 10.3 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 7.4, -1.3 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 7.4, -1.3 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 19.7, 13.6 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 19.7, 13.6 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 5.5, 6.4 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 5.5, 6.4 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 15.3, 13.6 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 15.3, 13.6 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 13.1, 13.6 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 13.1, 13.6 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 10.9, 13.6 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 10.9, 13.6 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 8.6, 13.6 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 8.6, 13.6 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 6.4, 13.6 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 6.4, 13.6 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -9.6, 31 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -9.6, 31 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 36.4, 34 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 36.4, 34 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 51, 38.7 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 51, 38.7 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 65.6, 43.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 65.6, 43.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 80.3, 48.2 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 80.3, 48.2 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 94.9, 52.9 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 94.9, 52.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 86.4, 53.4 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 86.4, 53.4 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 77.9, 53.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 77.9, 53.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 69.4, 54.3 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 69.4, 54.3 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 60.9, 54.8 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 60.9, 54.8 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 52.4, 55.3 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 52.4, 55.3 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 43.9, 55.8 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 43.9, 55.8 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 97.2, 61.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 97.2, 61.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 114.1, 77.1 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 114.1, 77.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 106.9, 92.7 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 106.9, 92.7 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 121.2, 77 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 121.2, 77 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 117.6, 63.8 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 117.6, 63.8 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 128.4, 77 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 128.4, 77 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 114.4, 69 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 114.4, 69 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 124.4, 77.8 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 124.4, 77.8 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 122.4, 78.2 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 122.4, 78.2 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 120.5, 78.6 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 120.5, 78.6 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 95.9, 180.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 95.9, 180.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 102.2, 198.3 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 102.2, 198.3 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 105.3, 214.5 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 105.3, 214.5 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 104.9, 228.6 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 104.9, 228.6 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 101.1, 240.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 101.1, 240.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 98.1, 244.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 98.1, 244.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 91, 246.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 91, 246.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 79.8, 245.3 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 79.8, 245.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 74.9, 247.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 74.9, 247.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 70.2, 249.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 70.2, 249.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 39.1, 214.9 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 39.1, 214.9 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 43.2, 229.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 43.2, 229.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 60.3, 217.4 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 60.3, 217.4 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 77.8, 181.9 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 77.8, 181.9 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 65.8, 182.2 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 65.8, 182.2 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 15.7, 165.7 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 15.7, 165.7 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -7, 138.4 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -7, 138.4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 5.5, 142.5 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 5.5, 142.5 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 16.5, 131.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 16.5, 131.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 31.5, 116 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 31.5, 116 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 36.4, 105.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 36.4, 105.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 34.1, 94.2 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 34.1, 94.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 69.5, 75.6 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 69.5, 75.6 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 79, 77 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 79, 77 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 73.6, 78.8 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 73.6, 78.8 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 89.3, 94.6 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 89.3, 94.6 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 116.2, 90 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 116.2, 90 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 164.4, 76.6 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 164.4, 76.6 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 173.7, 48.8 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 173.7, 48.8 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 179.7, 62.9 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 179.7, 62.9 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 162.8, 93.9 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 162.8, 93.9 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 167.6, 69.3 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 167.6, 69.3 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 159.9, 84.9 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 159.9, 84.9 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 152.5, 102.3 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 152.5, 102.3 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 169, 48.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 169, 48.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 169.3, 43.6 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 169.3, 43.6 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 127.4, 94.3 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 127.4, 94.3 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 148.1, 119.6 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 148.1, 119.6 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 112.6, 56.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 112.6, 56.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 149.8, 46.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 149.8, 46.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 139.1, 42.2 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 139.1, 42.2 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -5.8, 37.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -5.8, 37.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 13.6, 29.1 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 13.6, 29.1 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 11, 28.2 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 11, 28.2 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -8.8, 15 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -8.8, 15 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -2.3, 26.2 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -2.3, 26.2 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -5.1, 25.2 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -5.1, 25.2 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 116.4, 153.7 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 116.4, 153.7 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 115.9, 169.9 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 115.9, 169.9 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 136.5, 137.1 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 136.5, 137.1 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 64.8, 67.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 64.8, 67.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 104.2, 78.8 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 104.2, 78.8 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 131.4, 77.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 131.4, 77.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 121.6, 105.8 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 121.6, 105.8 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 126.9, 94.2 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 126.9, 94.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 113.9, 94.5 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 113.9, 94.5 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 67.5, 52.4 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 67.5, 52.4 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 77.2, 69.3 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 77.2, 69.3 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 67.2, 49.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 67.2, 49.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 31.5, 42.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 31.5, 42.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 53.1, 23.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 53.1, 23.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 38.4, 22.5 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 38.4, 22.5 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 114.5, 18.3 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 114.5, 18.3 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 136.7, 48.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 136.7, 48.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 127, 61.9 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 127, 61.9 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 70.6, 21.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 70.6, 21.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 85.4, 36.7 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 85.4, 36.7 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 85.1, 20.9 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 85.1, 20.9 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 44.8, 24.5 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 44.8, 24.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 69.6, 11.5 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 69.6, 11.5 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 63.2, 10.5 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 63.2, 10.5 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 174.7, 30.2 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 174.7, 30.2 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 189.7, 53 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 189.7, 53 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 173.7, 76.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 173.7, 76.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 168.4, 64 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 168.4, 64 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 148.1, 51.1 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 148.1, 51.1 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 139.7, 56.2 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 139.7, 56.2 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 125.3, 52.4 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 125.3, 52.4 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 110.9, 48.6 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 110.9, 48.6 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 113.8, 52.1 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 113.8, 52.1 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 117.3, 55.3 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 117.3, 55.3 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 73.3, 2.8 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 73.3, 2.8 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 83.8, 12.8 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 83.8, 12.8 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 75.8, 22.8 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 75.8, 22.8 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 89.3, 11.5 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 89.3, 11.5 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 169.1, 34 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 169.1, 34 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 269.1, 44 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 269.1, 44 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 266.3, 48.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 266.3, 48.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 274.1, 48 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 274.1, 48 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 278.7, 50.6 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 278.7, 50.6 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 315.6, 55.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 315.6, 55.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 406.4, 64.6 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 406.4, 64.6 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 559.8, 80.5 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 559.8, 80.5 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 785.2, 105.4 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 785.2, 105.4 , 0 );

setScaleKey( spep_0 + 90 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.58, 1.63 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 1.58, 1.63 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.57, 1.62 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 1.57, 1.62 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 1.56, 1.6 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 1.56, 1.6 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 1.54, 1.58 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 1.54, 1.58 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 1.51, 1.54 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.51, 1.54 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.48, 1.5 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 1.48, 1.5 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.44, 1.45 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 1.44, 1.45 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 3.34, 3.34 );

setRotateKey( spep_0 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, -27.5 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, -27.5 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, -11.9 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, -11.9 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -91.3 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -91.3 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -83.1 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -83.1 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -56.7 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -56.7 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -79.1 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -79.1 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -51.2 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -51.2 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -26.8 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -26.8 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -6.3 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -6.3 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, -23.7 );
setRotateKey( spep_0 + 365 + OFFSET_X, 1, -23.7 );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 367 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, -20.4 );

--敵の動き２
setDisp( spep_0 + 414 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 574 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 414 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 434 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 492 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 414 + OFFSET_X, 1, 148.9, -6.6 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 148.9, -6.6 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 248.7, 30.1 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 248.7, 30.1 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 188.1, 35.2 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 188.1, 35.2 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 165.9, 16.7 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 165.9, 16.7 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 144.2, 4.6 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 144.2, 4.6 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 136.4, 13.1 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 136.4, 13.1 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 115, 3.8 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 115, 3.8 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 110.5, 8.5 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 110.5, 8.5 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 110.9, 6.9 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 110.9, 6.9 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 117.1, 14 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 117.1, 14 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 129.8, 38.1 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 129.8, 38.1 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 136, 39.3 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 136, 39.3 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 142.3, 40.4 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 142.3, 40.4 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 148.5, 41.6 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 148.5, 41.6 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 154.8, 42.7 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 154.8, 42.7 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 161, 43.9 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 161, 43.9 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 167.3, 45.1 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 167.3, 45.1 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 168.8, 45.3 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 168.8, 45.3 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 170.4, 45.5 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 170.4, 45.5 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 171.9, 45.8 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 171.9, 45.8 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 173.4, 46 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 173.4, 46 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 174.9, 46.2 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 174.9, 46.2 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 176.5, 46.5 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 176.5, 46.5 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 178, 46.7 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 178, 46.7 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 179.5, 46.9 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 179.5, 46.9 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 181.1, 47.1 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 181.1, 47.1 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 182.6, 47.4 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 182.6, 47.4 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 184.1, 47.6 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 184.1, 47.6 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 185.7, 47.8 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 185.7, 47.8 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 187.2, 48.1 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 187.2, 48.1 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 188.7, 48.3 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 188.7, 48.3 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 190.2, 48.5 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 190.2, 48.5 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 191.8, 48.8 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 191.8, 48.8 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 193.3, 49 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 193.3, 49 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 194.8, 49.2 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 194.8, 49.2 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 196.3, 49.5 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 196.3, 49.5 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 197.9, 49.7 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 197.9, 49.7 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 199.4, 49.9 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 199.4, 49.9 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 200.9, 50.2 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 200.9, 50.2 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 189.6, 72.5 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 189.6, 72.5 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 281.4, 88.3 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 281.4, 88.3 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 237.1, 98.6 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 237.1, 98.6 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 279.4, 85.7 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 279.4, 85.7 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 232.7, 77.1 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 232.7, 77.1 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 241.1, 84.1 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 241.1, 84.1 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 262.5, 69.4 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 262.5, 69.4 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 265, 83.7 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 265, 83.7 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 272.6, 76.3 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 272.6, 76.3 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 273.7, 83.4 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 273.7, 83.4 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 261.8, 77.3 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 261.8, 77.3 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 270.6, 82.2 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 270.6, 82.2 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 265, 74 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 265, 74 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 270.8, 80.4 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 270.8, 80.4 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 263.7, 83.8 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 263.7, 83.8 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 271.1, 78.5 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 271.1, 78.5 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 265.4, 66 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 265.4, 66 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 271.2, 76.6 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 271.2, 76.6 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 264.1, 69.9 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 264.1, 69.9 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 271.4, 74.9 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 271.4, 74.9 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 268.7, 71 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 268.7, 71 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 271.6, 73 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 271.6, 73 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 264.5, 76.5 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 264.5, 76.5 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 271.8, 71.2 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 271.8, 71.2 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 264.6, 67.4 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 264.6, 67.4 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 272.1, 69.4 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 272.1, 69.4 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 267.8, 59.8 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 267.8, 59.8 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 272.2, 67.6 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 272.2, 67.6 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 270.1, 62.3 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 270.1, 62.3 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 273.7, 62.9 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 273.7, 62.9 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 271.7, 63.4 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 271.7, 63.4 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 275.3, 58.2 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 275.3, 58.2 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 270.4, 54.4 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 270.4, 54.4 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 276.9, 53.6 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 276.9, 53.6 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 274.7, 48.4 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 274.7, 48.4 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 278.4, 49 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 278.4, 49 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 277.8, 45.2 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 277.8, 45.2 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 559.7, 10 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 559.7, 10 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 770.1, -17.8 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 770.1, -17.8 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 914.7, -36.8 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 914.7, -36.8 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 993.9, -47 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 993.9, -47 , 0 );

setScaleKey( spep_0 + 414 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 1.87, 1.87 );

setRotateKey( spep_0 + 414 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, -8.1 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -8.1 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 467 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 468 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 469 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, -6.3 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, -6.3 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 487 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 491 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_0 + 513 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_0 + 514 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 515 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 516 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 517 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 519 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_0 + 521 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 523 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 524 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 525 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 526 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 527 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_0 + 529 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_0 + 530 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 531 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 532 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 533 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 534 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_0 + 535 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 537 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 541 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 543 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 544 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 547 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 549 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 550 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 551 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 552 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_0 + 553 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_0 + 554 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_0 + 557 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 559 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 560 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 561 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 562 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 563 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 564 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 565 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 566 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_0 + 567 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_0 + 568 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_0 + 569 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_0 + 570 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_0 + 571 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_0 + 572 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_0 + 574 + OFFSET_X, 1, 7.2 );

-- ** 音 ** --
--構える
SE001 = playSeVer2( spep_0 + 08, 1189, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 12, 1013, "", 0, 0, 0, -1);

--向かっていく
SE003 = playSeVer2( spep_0 + 46, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 46, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 88; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
SE005 = playSeVer2( spep_0 + 114, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE005, 119 );
SE006 = playSeVer2( spep_0 + 120, 1110, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 120, 1009, "", 0, 0, 0, -1);

--パンチ2
SE008 = playSeVer2( spep_0 + 146, 1110, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 146, 1010, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 170, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 170, 1153, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 170, SE011, 880, 24000 );

--膝蹴り
SE012 = playSeVer2( spep_0 + 188, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 188, SE012, 69 );
SE013 = playSeVer2( spep_0 + 188, 1110, "", 0, 0, 0, -1);

--ラッシュ
SE014 = playSeVer2( spep_0 + 208, 1000, "",spep_0 + 238, 0, 14, -1);
SE015 = playSeVer2( spep_0 + 214, 1000, "",spep_0 + 244, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 214, SE015, 133 );
SE016 = playSeVer2( spep_0 + 226, 1110, "",spep_0 + 266, 0, 16, -1);
SE017 = playSeVer2( spep_0 + 232, 1006, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 236, 1000, "",spep_0 + 266, 0, 14, -1);
SE019 = playSeVer2( spep_0 + 240, 1425, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE019, 85 );
setBandpassFilter( spep_0 + 240, SE019, 24, 4220 );
SE020 = playSeVer2( spep_0 + 256, 1000, "",spep_0 + 286, 0, 14, -1);
SE021 = playSeVer2( spep_0 + 266, 1009, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 278, 1000, "",spep_0 + 308, 0, 14, -1);
SE023 = playSeVer2( spep_0 + 284, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE023, 82 );
SE024 = playSeVer2( spep_0 + 302, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE024, 89 );
SE025 = playSeVer2( spep_0 + 350, 1110, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 350, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE026, 73 );

--振りかぶる
SE027 = playSeVer2( spep_0 + 374, 1004, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 374, 1116, "",spep_0 + 424, 0, 26, -1);

--蹴り
SE029 = playSeVer2( spep_0 + 412, 1010, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 412, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 412, SE030, 63 );
SE031 = playSeVer2( spep_0 + 412, 1169, "", 0, 0, 0, -1);

--瞬間移動
SE032 = playSeVer2( spep_0 + 444, 1109, "", 0, 0, 0, -1);

--回転斬り
SE033 = playSeVer2( spep_0 + 486, 1403, "",spep_0 + 554, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 486, SE033, 136 );
SE034 = playSeVer2( spep_0 + 486, 1032, "",spep_0 + 508, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 486, SE034, 74 );
SE035 = playSeVer2( spep_0 + 486, 1254, "",spep_0 + 566, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 486, SE035, 73 );
SE036 = playSeVer2( spep_0 + 486, 1425, "",spep_0 + 568, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 486, SE036, 86 );
setPitch( spep_0 + 486, SE036, -500 );
setTimeStretch( SE036, 0.67, 30, 4 );
SE037 = playSeVer2( spep_0 + 500, 1032, "",spep_0 + 524, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 500, SE037, 71 );
SE038 = playSeVer2( spep_0 + 512, 1032, "",spep_0 + 534, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 512, SE038, 63 );
SE039 = playSeVer2( spep_0 + 528, 1032, "",spep_0 + 550, 0, 2, -1);

--敵吹き飛ぶ
SE040 = playSeVer2( spep_0 + 558, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 558, SE040, 68 );

--気弾溜め
SE041 = playSeVer2( spep_0 + 598, 1154, "",spep_0 + 712, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 598, SE041, 129 );
SE042 = playSeVer2( spep_0 + 598, 1191, "",spep_0 + 684, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 598, SE042, 129 );
SE043 = playSeVer2( spep_0 + 598, 1204, "",spep_0 + 714, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 598, SE043, 151 );
SE044 = playSeVer2( spep_0 + 598, 1199, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --688

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);


------------------------------------------------
-- 発射～ラスト
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_2 = 260;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002  
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002b  
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 90);  --黒 通常背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 70 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 138 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 70 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 70 + OFFSET_X, 1, -338, 601.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -338, 601.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -315.9, 532.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -315.9, 532.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -281.5, 481.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -281.5, 481.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -268.5, 413.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -268.5, 413.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -225, 362.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -225, 362.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -202.8, 309 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -202.8, 309 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -168.5, 243.2 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -168.5, 243.2 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -146.3, 174.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -146.3, 174.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -135.6, 177.6 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -135.6, 177.6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -139.1, 164.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -139.1, 164.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -123.4, 162 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -123.4, 162 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -122, 143.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -122, 143.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -107.4, 141.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -107.4, 141.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -107, 138.4 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -107, 138.4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -87.3, 115.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -87.3, 115.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -82, 92 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -82, 92 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -63.4, 85.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -63.4, 85.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -59.1, 64.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -59.1, 64.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -35.6, 49.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -35.6, 49.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -26.3, 23.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -26.3, 23.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -3.8, 8.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -3.8, 8.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 4.4, -4.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 4.4, -4.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 31.9, -36.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 31.9, -36.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 42, -70.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 42, -70.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 79, -85.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 79, -85.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 96.5, -101.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 96.5, -101.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 140.6, -138.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 140.6, -138.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 165.3, -173 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 165.3, -173 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 210.4, -197.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 210.4, -197.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 238.2, -223.7 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 238.2, -223.7 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 370.9, -351.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 370.9, -351.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 488.3, -478.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 488.3, -478.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 617.9, -593.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 617.9, -593.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 741.4, -714.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 741.4, -714.9 , 0 );

setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.24, 2.24 );

setRotateKey( spep_2 + 70 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 49.8 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 49.8 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 49.6 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 49.6 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 49 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 49 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 48.9 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 48.9 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 48.4 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 48.4 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 48.3 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 48.3 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 48.2 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 48.2 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 48 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 48 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 47.8 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 47.8 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 47.7 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 47.7 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 47.6 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 47.6 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 47.3 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 47.3 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 47.1 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 47.1 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 46.8 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 46.8 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 46.6 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 46.6 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 46.3 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 46.3 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 45.7 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 45.7 );

-- ** 音 ** --
--発射前気弾溜め
SE047 = playSeVer2( spep_1 + 86, 1191, "",spep_2 + 54, 0, 26, -1);
SE048 = playSeVer2( spep_1 + 86, 1204, "",spep_2 + 50, 0, 24, -1);
SE049 = playSeVer2( spep_1 + 86, 1199, "",spep_2 + 52, 0, 28, -1);

--気弾発射
SE050 = playSeVer2( spep_2 + 16, 1022, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 16, 1145, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 18, 1177, "",spep_2 + 170, 0, 30, -1);
SE053 = playSeVer2( spep_2 + 22, 1215, "",spep_2 + 170, 0, 30, 0.6);

--爆発
SE054 = playSeVer2( spep_2 + 136, 1159, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 146, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 142); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム　260 -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭～18号タメ
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_0 = 688;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001   
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b  
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 598;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -35, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -35, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );]]--

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 90);  --黒 通常背景

-- ** 白フェード ** --
entryFade( spep_0 + 594 + OFFSET_X, 0, 1, 7, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 381 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 90 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 114 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 122 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 172 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 212 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 218 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 230 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 236 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 248 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 260 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 268 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 286 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 298 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 316 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 322 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 334 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 354 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 90 + OFFSET_X, 1, 587.8, 11.6 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 587.8, 11.6 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 543.8, 11.3 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 543.8, 11.3 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 499.5, 10.8 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 499.5, 10.8 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 454.7, 10.3 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 454.7, 10.3 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 409.7, 9.8 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 409.7, 9.8 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 364.3, 9.2 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 364.3, 9.2 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 318.7, 8.7 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 318.7, 8.7 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 272.8, 8.2 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 272.8, 8.2 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 226.7, 7.5 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 226.7, 7.5 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 198.1, 7.6 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 198.1, 7.6 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 169.4, 7.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 169.4, 7.6 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 140.6, 7.7 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 140.6, 7.7 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 113.9, 11.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 113.9, 11.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 77.3, 12 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 77.3, 12 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 40.6, 12 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 40.6, 12 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 3.7, 12.1 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 3.7, 12.1 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -18.6, 3.6 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -18.6, 3.6 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -23, -9.2 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -23, -9.2 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -5.8, 6.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -5.8, 6.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -12.6, 25.4 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -12.6, 25.4 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 7, 10.3 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 7, 10.3 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 7.4, -1.3 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 7.4, -1.3 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 19.7, 13.6 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 19.7, 13.6 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 5.5, 6.4 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 5.5, 6.4 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 15.3, 13.6 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 15.3, 13.6 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 13.1, 13.6 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 13.1, 13.6 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 10.9, 13.6 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 10.9, 13.6 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 8.6, 13.6 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 8.6, 13.6 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 6.4, 13.6 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 6.4, 13.6 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -9.6, 31 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -9.6, 31 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 36.4, 34 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 36.4, 34 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 51, 38.7 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 51, 38.7 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 65.6, 43.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 65.6, 43.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 80.3, 48.2 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 80.3, 48.2 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 94.9, 52.9 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 94.9, 52.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 86.4, 53.4 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 86.4, 53.4 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 77.9, 53.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 77.9, 53.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 69.4, 54.3 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 69.4, 54.3 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 60.9, 54.8 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 60.9, 54.8 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 52.4, 55.3 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 52.4, 55.3 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 43.9, 55.8 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 43.9, 55.8 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 97.2, 61.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 97.2, 61.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 114.1, 77.1 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 114.1, 77.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 106.9, 92.7 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 106.9, 92.7 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 121.2, 77 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 121.2, 77 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 117.6, 63.8 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 117.6, 63.8 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 128.4, 77 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 128.4, 77 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 114.4, 69 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 114.4, 69 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 124.4, 77.8 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 124.4, 77.8 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 122.4, 78.2 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 122.4, 78.2 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 120.5, 78.6 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 120.5, 78.6 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 95.9, 180.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 95.9, 180.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 102.2, 198.3 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 102.2, 198.3 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 105.3, 214.5 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 105.3, 214.5 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 104.9, 228.6 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 104.9, 228.6 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 101.1, 240.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 101.1, 240.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 98.1, 244.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 98.1, 244.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 91, 246.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 91, 246.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 79.8, 245.3 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 79.8, 245.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 74.9, 247.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 74.9, 247.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 70.2, 249.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 70.2, 249.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 39.1, 214.9 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 39.1, 214.9 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 43.2, 229.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 43.2, 229.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 60.3, 217.4 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 60.3, 217.4 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 77.8, 181.9 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 77.8, 181.9 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 65.8, 182.2 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 65.8, 182.2 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 15.7, 165.7 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 15.7, 165.7 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -7, 138.4 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -7, 138.4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 5.5, 142.5 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 5.5, 142.5 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 16.5, 131.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 16.5, 131.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 31.5, 116 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 31.5, 116 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 36.4, 105.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 36.4, 105.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 34.1, 94.2 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 34.1, 94.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 69.5, 75.6 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 69.5, 75.6 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 79, 77 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 79, 77 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 73.6, 78.8 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 73.6, 78.8 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 89.3, 94.6 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 89.3, 94.6 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 116.2, 90 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 116.2, 90 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 164.4, 76.6 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 164.4, 76.6 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 173.7, 48.8 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 173.7, 48.8 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 179.7, 62.9 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 179.7, 62.9 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 162.8, 93.9 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 162.8, 93.9 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 167.6, 69.3 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 167.6, 69.3 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 159.9, 84.9 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 159.9, 84.9 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 152.5, 102.3 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 152.5, 102.3 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 169, 48.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 169, 48.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 169.3, 43.6 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 169.3, 43.6 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 127.4, 94.3 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 127.4, 94.3 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 148.1, 119.6 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 148.1, 119.6 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 112.6, 56.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 112.6, 56.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 149.8, 46.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 149.8, 46.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 139.1, 42.2 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 139.1, 42.2 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -5.8, 37.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -5.8, 37.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 13.6, 29.1 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 13.6, 29.1 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 11, 28.2 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 11, 28.2 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -8.8, 15 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -8.8, 15 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -2.3, 26.2 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -2.3, 26.2 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -5.1, 25.2 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -5.1, 25.2 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 116.4, 153.7 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 116.4, 153.7 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 115.9, 169.9 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 115.9, 169.9 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 136.5, 137.1 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 136.5, 137.1 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 64.8, 67.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 64.8, 67.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 104.2, 78.8 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 104.2, 78.8 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 131.4, 77.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 131.4, 77.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 121.6, 105.8 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 121.6, 105.8 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 126.9, 94.2 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 126.9, 94.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 113.9, 94.5 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 113.9, 94.5 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 67.5, 52.4 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 67.5, 52.4 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 77.2, 69.3 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 77.2, 69.3 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 67.2, 49.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 67.2, 49.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 31.5, 42.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 31.5, 42.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 53.1, 23.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 53.1, 23.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 38.4, 22.5 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 38.4, 22.5 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 114.5, 18.3 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 114.5, 18.3 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 136.7, 48.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 136.7, 48.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 127, 61.9 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 127, 61.9 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 70.6, 21.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 70.6, 21.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 85.4, 36.7 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 85.4, 36.7 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 85.1, 20.9 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 85.1, 20.9 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 44.8, 24.5 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 44.8, 24.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 69.6, 11.5 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 69.6, 11.5 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 63.2, 10.5 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 63.2, 10.5 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 174.7, 30.2 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 174.7, 30.2 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 189.7, 53 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 189.7, 53 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 173.7, 76.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 173.7, 76.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 168.4, 64 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 168.4, 64 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 148.1, 51.1 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 148.1, 51.1 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 139.7, 56.2 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 139.7, 56.2 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 125.3, 52.4 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 125.3, 52.4 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 110.9, 48.6 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 110.9, 48.6 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 113.8, 52.1 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 113.8, 52.1 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 117.3, 55.3 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 117.3, 55.3 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 73.3, 2.8 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 73.3, 2.8 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 83.8, 12.8 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 83.8, 12.8 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 75.8, 22.8 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 75.8, 22.8 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 89.3, 11.5 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 89.3, 11.5 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 169.1, 34 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 169.1, 34 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 269.1, 44 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 269.1, 44 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 266.3, 48.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 266.3, 48.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 274.1, 48 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 274.1, 48 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 278.7, 50.6 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 278.7, 50.6 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 315.6, 55.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 315.6, 55.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 406.4, 64.6 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 406.4, 64.6 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 559.8, 80.5 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 559.8, 80.5 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 785.2, 105.4 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 785.2, 105.4 , 0 );

setScaleKey( spep_0 + 90 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.58, 1.63 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 1.58, 1.63 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.57, 1.62 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 1.57, 1.62 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 1.56, 1.6 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 1.56, 1.6 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 1.54, 1.58 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 1.54, 1.58 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 1.51, 1.54 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.51, 1.54 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.48, 1.5 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 1.48, 1.5 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.44, 1.45 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 1.44, 1.45 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 3.34, 3.34 );

setRotateKey( spep_0 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, -27.5 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, -27.5 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, -11.9 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, -11.9 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -18.9 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -91.3 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -91.3 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -83.1 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -83.1 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -56.7 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -56.7 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -79.1 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -79.1 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -51.2 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -51.2 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -26.8 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -26.8 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -6.3 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -6.3 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, -23.7 );
setRotateKey( spep_0 + 365 + OFFSET_X, 1, -23.7 );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 367 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, -20.4 );

--敵の動き２
setDisp( spep_0 + 414 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 574 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 414 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 434 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 492 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 414 + OFFSET_X, 1, 148.9, -6.6 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 148.9, -6.6 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 248.7, 30.1 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 248.7, 30.1 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 188.1, 35.2 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 188.1, 35.2 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 165.9, 16.7 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 165.9, 16.7 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 144.2, 4.6 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 144.2, 4.6 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 136.4, 13.1 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 136.4, 13.1 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 115, 3.8 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 115, 3.8 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 110.5, 8.5 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 110.5, 8.5 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 110.9, 6.9 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 110.9, 6.9 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 117.1, 14 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 117.1, 14 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 129.8, 38.1 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 129.8, 38.1 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 136, 39.3 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 136, 39.3 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 142.3, 40.4 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 142.3, 40.4 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 148.5, 41.6 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 148.5, 41.6 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 154.8, 42.7 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 154.8, 42.7 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 161, 43.9 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 161, 43.9 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 167.3, 45.1 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 167.3, 45.1 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 168.8, 45.3 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 168.8, 45.3 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 170.4, 45.5 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 170.4, 45.5 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 171.9, 45.8 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 171.9, 45.8 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 173.4, 46 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 173.4, 46 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 174.9, 46.2 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 174.9, 46.2 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 176.5, 46.5 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 176.5, 46.5 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 178, 46.7 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 178, 46.7 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 179.5, 46.9 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 179.5, 46.9 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 181.1, 47.1 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 181.1, 47.1 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 182.6, 47.4 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 182.6, 47.4 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 184.1, 47.6 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 184.1, 47.6 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 185.7, 47.8 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 185.7, 47.8 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 187.2, 48.1 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 187.2, 48.1 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 188.7, 48.3 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 188.7, 48.3 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 190.2, 48.5 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 190.2, 48.5 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 191.8, 48.8 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 191.8, 48.8 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 193.3, 49 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 193.3, 49 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 194.8, 49.2 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 194.8, 49.2 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 196.3, 49.5 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 196.3, 49.5 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 197.9, 49.7 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 197.9, 49.7 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 199.4, 49.9 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 199.4, 49.9 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 200.9, 50.2 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 200.9, 50.2 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 189.6, 72.5 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 189.6, 72.5 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 281.4, 88.3 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 281.4, 88.3 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 237.1, 98.6 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 237.1, 98.6 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 279.4, 85.7 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 279.4, 85.7 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 232.7, 77.1 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 232.7, 77.1 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 241.1, 84.1 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 241.1, 84.1 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 262.5, 69.4 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 262.5, 69.4 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 265, 83.7 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 265, 83.7 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 272.6, 76.3 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 272.6, 76.3 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 273.7, 83.4 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 273.7, 83.4 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 261.8, 77.3 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 261.8, 77.3 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 270.6, 82.2 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 270.6, 82.2 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 265, 74 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 265, 74 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 270.8, 80.4 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 270.8, 80.4 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 263.7, 83.8 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 263.7, 83.8 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 271.1, 78.5 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 271.1, 78.5 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 265.4, 66 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 265.4, 66 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 271.2, 76.6 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 271.2, 76.6 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 264.1, 69.9 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 264.1, 69.9 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 271.4, 74.9 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 271.4, 74.9 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 268.7, 71 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 268.7, 71 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 271.6, 73 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 271.6, 73 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 264.5, 76.5 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 264.5, 76.5 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 271.8, 71.2 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 271.8, 71.2 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 264.6, 67.4 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 264.6, 67.4 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 272.1, 69.4 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 272.1, 69.4 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 267.8, 59.8 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 267.8, 59.8 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 272.2, 67.6 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 272.2, 67.6 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 270.1, 62.3 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 270.1, 62.3 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 273.7, 62.9 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 273.7, 62.9 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 271.7, 63.4 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 271.7, 63.4 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 275.3, 58.2 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 275.3, 58.2 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 270.4, 54.4 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 270.4, 54.4 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 276.9, 53.6 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 276.9, 53.6 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 274.7, 48.4 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 274.7, 48.4 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 278.4, 49 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 278.4, 49 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 277.8, 45.2 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 277.8, 45.2 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 559.7, 10 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 559.7, 10 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 770.1, -17.8 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 770.1, -17.8 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 914.7, -36.8 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 914.7, -36.8 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 993.9, -47 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 993.9, -47 , 0 );

setScaleKey( spep_0 + 414 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 1.87, 1.87 );

setRotateKey( spep_0 + 414 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, -8.1 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -8.1 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 467 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 468 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 469 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, -6.3 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, -6.3 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 487 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 491 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_0 + 513 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_0 + 514 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 515 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 516 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 517 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 519 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_0 + 521 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 523 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 524 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 525 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 526 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 527 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_0 + 529 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_0 + 530 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 531 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 532 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 533 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 534 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_0 + 535 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 537 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 541 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 543 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 544 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 547 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 549 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 550 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 551 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 552 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_0 + 553 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_0 + 554 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_0 + 557 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 559 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 560 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 561 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 562 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 563 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 564 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 565 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 566 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_0 + 567 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_0 + 568 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_0 + 569 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_0 + 570 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_0 + 571 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_0 + 572 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_0 + 574 + OFFSET_X, 1, 7.2 );

-- ** 音 ** --
--構える
SE001 = playSeVer2( spep_0 + 08, 1189, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 12, 1013, "", 0, 0, 0, -1);

--向かっていく
SE003 = playSeVer2( spep_0 + 46, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 46, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 88; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
SE005 = playSeVer2( spep_0 + 114, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE005, 119 );
SE006 = playSeVer2( spep_0 + 120, 1110, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 120, 1009, "", 0, 0, 0, -1);

--パンチ2
SE008 = playSeVer2( spep_0 + 146, 1110, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 146, 1010, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 170, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 170, 1153, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 170, SE011, 880, 24000 );

--膝蹴り
SE012 = playSeVer2( spep_0 + 188, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 188, SE012, 69 );
SE013 = playSeVer2( spep_0 + 188, 1110, "", 0, 0, 0, -1);

--ラッシュ
SE014 = playSeVer2( spep_0 + 208, 1000, "",spep_0 + 238, 0, 14, -1);
SE015 = playSeVer2( spep_0 + 214, 1000, "",spep_0 + 244, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 214, SE015, 133 );
SE016 = playSeVer2( spep_0 + 226, 1110, "",spep_0 + 266, 0, 16, -1);
SE017 = playSeVer2( spep_0 + 232, 1006, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 236, 1000, "",spep_0 + 266, 0, 14, -1);
SE019 = playSeVer2( spep_0 + 240, 1425, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE019, 85 );
setBandpassFilter( spep_0 + 240, SE019, 24, 4220 );
SE020 = playSeVer2( spep_0 + 256, 1000, "",spep_0 + 286, 0, 14, -1);
SE021 = playSeVer2( spep_0 + 266, 1009, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 278, 1000, "",spep_0 + 308, 0, 14, -1);
SE023 = playSeVer2( spep_0 + 284, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE023, 82 );
SE024 = playSeVer2( spep_0 + 302, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE024, 89 );
SE025 = playSeVer2( spep_0 + 350, 1110, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 350, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE026, 73 );

--振りかぶる
SE027 = playSeVer2( spep_0 + 374, 1004, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 374, 1116, "",spep_0 + 424, 0, 26, -1);

--蹴り
SE029 = playSeVer2( spep_0 + 412, 1010, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 412, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 412, SE030, 63 );
SE031 = playSeVer2( spep_0 + 412, 1169, "", 0, 0, 0, -1);

--瞬間移動
SE032 = playSeVer2( spep_0 + 444, 1109, "", 0, 0, 0, -1);

--回転斬り
SE033 = playSeVer2( spep_0 + 486, 1403, "",spep_0 + 554, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 486, SE033, 136 );
SE034 = playSeVer2( spep_0 + 486, 1032, "",spep_0 + 508, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 486, SE034, 74 );
SE035 = playSeVer2( spep_0 + 486, 1254, "",spep_0 + 566, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 486, SE035, 73 );
SE036 = playSeVer2( spep_0 + 486, 1425, "",spep_0 + 568, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 486, SE036, 86 );
setPitch( spep_0 + 486, SE036, -500 );
setTimeStretch( SE036, 0.67, 30, 4 );
SE037 = playSeVer2( spep_0 + 500, 1032, "",spep_0 + 524, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 500, SE037, 71 );
SE038 = playSeVer2( spep_0 + 512, 1032, "",spep_0 + 534, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 512, SE038, 63 );
SE039 = playSeVer2( spep_0 + 528, 1032, "",spep_0 + 550, 0, 2, -1);

--敵吹き飛ぶ
SE040 = playSeVer2( spep_0 + 558, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 558, SE040, 68 );

--気弾溜め
SE041 = playSeVer2( spep_0 + 598, 1154, "",spep_0 + 712, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 598, SE041, 129 );
SE042 = playSeVer2( spep_0 + 598, 1191, "",spep_0 + 684, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 598, SE042, 129 );
SE043 = playSeVer2( spep_0 + 598, 1204, "",spep_0 + 714, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 598, SE043, 151 );
SE044 = playSeVer2( spep_0 + 598, 1199, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --688

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);


------------------------------------------------
-- 発射～ラスト
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_2 = 260;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002  
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02rb, 0x80, -1, 0, 0, 0); -- ef_002b  
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 90);  --黒 通常背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 70 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 138 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 70 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 70 + OFFSET_X, 1, -338, 601.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -338, 601.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -315.9, 532.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -315.9, 532.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -281.5, 481.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -281.5, 481.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -268.5, 413.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -268.5, 413.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -225, 362.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -225, 362.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -202.8, 309 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -202.8, 309 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -168.5, 243.2 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -168.5, 243.2 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -146.3, 174.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -146.3, 174.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -135.6, 177.6 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -135.6, 177.6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -139.1, 164.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -139.1, 164.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -123.4, 162 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -123.4, 162 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -122, 143.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -122, 143.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -107.4, 141.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -107.4, 141.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -107, 138.4 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -107, 138.4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -87.3, 115.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -87.3, 115.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -82, 92 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -82, 92 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -63.4, 85.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -63.4, 85.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -59.1, 64.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -59.1, 64.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -35.6, 49.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -35.6, 49.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -26.3, 23.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -26.3, 23.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -3.8, 8.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -3.8, 8.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 4.4, -4.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 4.4, -4.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 31.9, -36.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 31.9, -36.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 42, -70.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 42, -70.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 79, -85.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 79, -85.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 96.5, -101.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 96.5, -101.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 140.6, -138.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 140.6, -138.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 165.3, -173 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 165.3, -173 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 210.4, -197.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 210.4, -197.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 238.2, -223.7 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 238.2, -223.7 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 370.9, -351.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 370.9, -351.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 488.3, -478.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 488.3, -478.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 617.9, -593.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 617.9, -593.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 741.4, -714.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 741.4, -714.9 , 0 );

setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.24, 2.24 );

setRotateKey( spep_2 + 70 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 49.8 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 49.8 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 49.6 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 49.6 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 49.4 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 49 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 49 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 48.9 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 48.9 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 48.4 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 48.4 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 48.3 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 48.3 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 48.2 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 48.2 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 48 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 48 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 47.8 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 47.8 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 47.7 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 47.7 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 47.6 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 47.6 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 47.3 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 47.3 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 47.1 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 47.1 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 46.8 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 46.8 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 46.6 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 46.6 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 46.3 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 46.3 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 46 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 45.7 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 45.7 );

-- ** 音 ** --
--発射前気弾溜め
SE047 = playSeVer2( spep_1 + 86, 1191, "",spep_2 + 54, 0, 26, -1);
SE048 = playSeVer2( spep_1 + 86, 1204, "",spep_2 + 50, 0, 24, -1);
SE049 = playSeVer2( spep_1 + 86, 1199, "",spep_2 + 52, 0, 28, -1);

--気弾発射
SE050 = playSeVer2( spep_2 + 16, 1022, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 16, 1145, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 18, 1177, "",spep_2 + 170, 0, 30, -1);
SE053 = playSeVer2( spep_2 + 22, 1215, "",spep_2 + 170, 0, 30, 0.6);

--爆発
SE054 = playSeVer2( spep_2 + 136, 1159, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 146, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 142); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム　260 -4

end
