--1029950:UR_超サイヤ人ゴッドSS孫悟空(宇宙樹パワー)_必殺技：極限かめはめ波
--sp_effect_a1_00465
--sp2776

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163361;  --ef_001 連続攻撃
SP_02  = 163365;  --ef_002 かめはめ波

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

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 連続攻撃
-------------------------------------------------
MAX_FRAME_0 = 366;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 連続攻撃(ef_001)
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
spep_x = spep_0 + 258;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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
setDisp( spep_0 + 108 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 234 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 108 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 120 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 142 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 148 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 158 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 162 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 168 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 172 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 182 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 186 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 192 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 196 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 206 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 210 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 216 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 108 + OFFSET_X, 1, 100.1, 27.9 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 100.1, 27.9 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 87.8, 27.9 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 87.8, 27.9 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 78.2, 27.9 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 78.2, 27.9 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 70.9, 27.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 70.9, 27.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 65.4, 27.9 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 65.4, 27.9 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 61.6, 27.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 61.6, 27.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 76.9, 57.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 76.9, 57.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 75.1, 57.9 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 75.1, 57.9 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 90.1, 43.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 90.1, 43.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 65.5, 79.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 65.5, 79.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 97.2, 77.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 97.2, 77.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 59.1, 43.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 59.1, 43.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 91.1, 47.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 91.1, 47.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 87.1, 71.9 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 87.1, 71.9 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 65.1, 69.9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 65.1, 69.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 73.1, 57.9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 73.1, 57.9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 142.1, 122 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 142.1, 122 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 150.1, 134 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 150.1, 134 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 152.1, 98 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 152.1, 98 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 118.1, 130 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 118.1, 130 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 152.1, 138 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 152.1, 138 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 120.1, 112 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 120.1, 112 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 124.1, 128 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 124.1, 128 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 148.1, 134 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 148.1, 134 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 125.1, 151 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 125.1, 151 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 133.1, 163 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 133.1, 163 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 158.1, -99.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 158.1, -99.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 132.1, -65.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 132.1, -65.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 166.1, -57.1 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 166.1, -57.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 162.1, 106 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 162.1, 106 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 128.1, 114 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 128.1, 114 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 124.1, 128 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 124.1, 128 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 148.1, 134 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 148.1, 134 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 134.1, 120 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 134.1, 120 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 120.1, 112 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 120.1, 112 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 124.1, 128 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 124.1, 128 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 139.1, 165 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 139.1, 165 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 125.1, 151 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 125.1, 151 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 156.1, -63.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 156.1, -63.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 158.1, -99.1 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 158.1, -99.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 132.1, -65.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 132.1, -65.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 160.1, 140 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 160.1, 140 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 162.1, 106 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 162.1, 106 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 120.1, 112 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 120.1, 112 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 124.1, 128 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 124.1, 128 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 148.1, 134 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 148.1, 134 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 134.1, 120 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 134.1, 120 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 142.1, 132 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 142.1, 132 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 135.1, 127 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 135.1, 127 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 109.1, 161 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 109.1, 161 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 166.1, -57.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 166.1, -57.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 168.1, -91.1 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 168.1, -91.1 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 134.1, -83.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 134.1, -83.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 153.1, 145 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 153.1, 145 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 128, 81 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 128, 81 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 142.5, 171 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 142.5, 171 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 246.1, 87.9 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 246.1, 87.9 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 256.3, 132 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 256.3, 132 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 351.2, 140 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 351.2, 140 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 382.4, 132 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 382.4, 132 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 447.6, 114 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 447.6, 114 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 513.1, 122 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 513.1, 122 , 0 );

setScaleKey( spep_0 + 108 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.35, 1.35 );

setRotateKey( spep_0 + 108 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -37 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 192, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 77 );
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 190, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 200 );

--入り
SE003 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--気ダメ
SE004 = playSeVer2( spep_0 + 8, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE004, 71 );
SE005 = playSeVer2( spep_0 + 8, 1035, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 96; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
--向かっていく
SE006 = playSeVer2( spep_0 + 94, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 94, 1277, "", 0, 0, 0, -1);

--パンチ
SE008 = playSeVer2( spep_0 + 108, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE008, 153 );
SE009 = playSeVer2( spep_0 + 116, 1187, "", 0, 0, 0, -1);

--ラッシュ
SE010 = playSeVer2( spep_0 + 136, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE010, 62 );
SE011 = playSeVer2( spep_0 + 146, 1153, "",spep_0 + 192, 0, 24, -1);
SE012 = playSeVer2( spep_0 + 146, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 156, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 166, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 166, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 176, 1110, "", 0, 0, 0, -1);
setPitch( spep_0 + 176, SE016, -200 );
setTimeStretch( SE016, 0.87, 30, 4 );
SE017 = playSeVer2( spep_0 + 176, 1010, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 186, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 186, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 198, 1110, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 198, 1010, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 212, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 212, SE022, 79 );

--画面遷移
SE023 = playSeVer2( spep_0 + 222, 1072, "", 0, 0, 0, -1);

--オーラ
SE024 = playSeVer2( spep_0 + 234, 1176, "",spep_0 + 388, 0, 20, -1);
SE025 = playSeVer2( spep_0 + 234, 1181, "",spep_0 + 390, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 234, SE025, 174 );
SE026 = playSeVer2( spep_0 + 244, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE026, 50 );
SE028 = playSeVer2( spep_0 + 268, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE028, 50 );
SE029 = playSeVer2( spep_0 + 292, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE029, 50 );
SE030 = playSeVer2( spep_0 + 316, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE030, 50 );
SE031 = playSeVer2( spep_0 + 340, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE031, 50 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0-2;  --366f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0)-2;

-- ** 音 ** --
--オーラ
SE034 = playSeVer2( spep_1 + 80, 1176, "",spep_1 + 232, 0, 60, -1);
setSeVolumeByWorkId( spep_1 + 80, SE034, 71 );
SE035 = playSeVer2( spep_1 + 80, 1181, "",spep_1 + 232, 0, 56, -1);
setSeVolumeByWorkId( spep_1 + 80, SE035, 178 );

--振りかぶる
SE036 = playSeVer2( spep_1 + 92, 1116, "",spep_1 + 142, 0, 28, -1);

-------------------------------------------------
-- かめはめ波
-------------------------------------------------
MAX_FRAME_2 = 444;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波(ef_002)
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
setDisp( spep_2 + 186 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 294 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 186 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 256 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 186 + OFFSET_X, 1, 135.6, 56.1 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 135.6, 56.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 132.7, 50.1 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 132.7, 50.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 127.8, 54.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 127.8, 54.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 130.8, 56.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 130.8, 56.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 127.9, 48.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 127.9, 48.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 119, 56.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 119, 56.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 122.1, 50.1 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 122.1, 50.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 129.1, 56.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 129.1, 56.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 126.2, 50.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 126.2, 50.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 133.6, 50.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 133.6, 50.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 130.7, 48.1 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 130.7, 48.1 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 121.8, 56.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 121.8, 56.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 124.8, 50.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 124.8, 50.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 131.9, 56.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 131.9, 56.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 129, 50.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 129, 50.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 140.1, 76.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 140.1, 76.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 159.1, 36.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 159.1, 36.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 104.2, 62.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 104.2, 62.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 109.3, 22.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 109.3, 22.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 134.4, 80.1 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 134.4, 80.1 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 109.4, 50.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 109.4, 50.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 122.5, 50.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 122.5, 50.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 120.1, 51 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 120.1, 51 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 131.7, 50.8 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 131.7, 50.8 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 143.3, 50.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 143.3, 50.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 154.9, 50.5 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 154.9, 50.5 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 166.5, 50.4 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 166.5, 50.4 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 165, 51.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 165, 51.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 163.6, 52.1 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 163.6, 52.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 167.6, 46.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 167.6, 46.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 175.6, 52.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 175.6, 52.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 173.6, 46.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 173.6, 46.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 169.6, 50.1 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 169.6, 50.1 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 173.6, 52.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 173.6, 52.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 171.6, 44.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 171.6, 44.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 134.4, 70.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 134.4, 70.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 141.6, 65.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 141.6, 65.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 152.8, 72 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 152.8, 72 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 154.1, 66.6 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 154.1, 66.6 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 157.3, 67.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 157.3, 67.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 150.6, 73.8 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 150.6, 73.8 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 157.8, 68.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 157.8, 68.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 169, 74.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 169, 74.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 170.3, 69.5 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 170.3, 69.5 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 169.5, 74.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 169.5, 74.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 176.7, 76.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 176.7, 76.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 178, 69.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 178, 69.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 173.2, 77.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 173.2, 77.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 180.4, 72.4 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 180.4, 72.4 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 191.7, 79 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 191.7, 79 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 192.9, 73.6 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 192.9, 73.6 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 196.1, 74.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 196.1, 74.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 201.4, 81.4 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 201.4, 81.4 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 206.6, 88.6 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 206.6, 88.6 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 211.9, 95.9 , 0 );

setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.23, 1.23 );

setRotateKey( spep_2 + 186 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -1.7 );

setBlendColor( spep_2 + 256 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 296 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--かめはめ波溜め
SE033 = playSeVer2( spep_2 + 14, 1210, "",spep_2 + 190, 24, 34, -1);
setStartTimeMs( SE033,  1833 );
SE037 = playSeVer2( spep_2 + 16, 1209, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 16, 1443, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE038, 178 );

--かめはめ波発射
SE039 = playSeVer2( spep_2 + 124, 1133, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 124, 1146, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 124, 1213, "",spep_2 + 334, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 124, SE041, 55 );

--かめはめ波中
SE042 = playSeVer2( spep_2 + 158, 1211, "",spep_2 + 332, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 158, SE042, 162 );

--かめはめ波飛んでいく
SE043 = playSeVer2( spep_2 + 176, 1021, "", 0, 0, 0, -1);

--敵呑まれる
SE044 = playSeVer2( spep_2 + 222, 1258, "", 0, 0, 0, -1);

--爆発
SE045 = playSeVer2( spep_2 + 286, 1067, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 286, 1188, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 286, 1156, "",spep_2 + 436, 0, 78, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 324); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム 444f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 連続攻撃
-------------------------------------------------
MAX_FRAME_0 = 366;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 連続攻撃　敵側(ef_001r)
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
spep_x = spep_0 + 258;

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
setDisp( spep_0 + 108 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 234 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 108 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 120 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 142 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 148 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 158 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 162 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 168 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 172 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 182 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 186 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 192 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 196 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 206 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 210 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 216 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 108 + OFFSET_X, 1, -100.1, 27.9 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -100.1, 27.9 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -87.8, 27.9 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -87.8, 27.9 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -78.2, 27.9 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -78.2, 27.9 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -70.9, 27.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -70.9, 27.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -65.4, 27.9 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -65.4, 27.9 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -61.6, 27.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -61.6, 27.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -76.9, 57.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -76.9, 57.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -75.1, 57.9 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -75.1, 57.9 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -90.1, 43.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -90.1, 43.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -65.5, 79.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -65.5, 79.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -97.2, 77.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -97.2, 77.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -59.1, 43.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -59.1, 43.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -91.1, 47.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -91.1, 47.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -87.1, 71.9 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -87.1, 71.9 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -65.1, 69.9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -65.1, 69.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -73.1, 57.9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -73.1, 57.9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -142.1, 122 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -142.1, 122 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -150.1, 134 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -150.1, 134 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -152.1, 98 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -152.1, 98 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -118.1, 130 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -118.1, 130 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -152.1, 138 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -152.1, 138 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -120.1, 112 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -120.1, 112 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -124.1, 128 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -124.1, 128 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -148.1, 134 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -148.1, 134 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -125.1, 151 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -125.1, 151 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -133.1, 163 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -133.1, 163 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -158.1, -99.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -158.1, -99.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -132.1, -65.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -132.1, -65.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -166.1, -57.1 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -166.1, -57.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -162.1, 106 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -162.1, 106 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -128.1, 114 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -128.1, 114 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -124.1, 128 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -124.1, 128 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -148.1, 134 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -148.1, 134 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -134.1, 120 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -134.1, 120 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -120.1, 112 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -120.1, 112 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -124.1, 128 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -124.1, 128 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -139.1, 165 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -139.1, 165 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -125.1, 151 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -125.1, 151 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -156.1, -63.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -156.1, -63.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -158.1, -99.1 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -158.1, -99.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -132.1, -65.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -132.1, -65.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -160.1, 140 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -160.1, 140 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -162.1, 106 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -162.1, 106 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -120.1, 112 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -120.1, 112 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -124.1, 128 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -124.1, 128 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -148.1, 134 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -148.1, 134 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -134.1, 120 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -134.1, 120 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -142.1, 132 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -142.1, 132 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -135.1, 127 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -135.1, 127 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -109.1, 161 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -109.1, 161 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -166.1, -57.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -166.1, -57.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -168.1, -91.1 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -168.1, -91.1 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -134.1, -83.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -134.1, -83.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -153.1, 145 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -153.1, 145 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -128, 81 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -128, 81 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -142.5, 171 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -142.5, 171 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -246.1, 87.9 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -246.1, 87.9 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -256.3, 132 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -256.3, 132 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -351.2, 140 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -351.2, 140 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -382.4, 132 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -382.4, 132 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -447.6, 114 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -447.6, 114 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -513.1, 122 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -513.1, 122 , 0 );

setScaleKey( spep_0 + 108 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.35, 1.35 );

setRotateKey( spep_0 + 108 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, 37 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 192, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 77 );
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 190, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 200 );

--入り
SE003 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--気ダメ
SE004 = playSeVer2( spep_0 + 8, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE004, 71 );
SE005 = playSeVer2( spep_0 + 8, 1035, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 96; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
--向かっていく
SE006 = playSeVer2( spep_0 + 94, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 94, 1277, "", 0, 0, 0, -1);

--パンチ
SE008 = playSeVer2( spep_0 + 108, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE008, 153 );
SE009 = playSeVer2( spep_0 + 116, 1187, "", 0, 0, 0, -1);

--ラッシュ
SE010 = playSeVer2( spep_0 + 136, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE010, 62 );
SE011 = playSeVer2( spep_0 + 146, 1153, "",spep_0 + 192, 0, 24, -1);
SE012 = playSeVer2( spep_0 + 146, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 156, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 166, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 166, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 176, 1110, "", 0, 0, 0, -1);
setPitch( spep_0 + 176, SE016, -200 );
setTimeStretch( SE016, 0.87, 30, 4 );
SE017 = playSeVer2( spep_0 + 176, 1010, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 186, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 186, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 198, 1110, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 198, 1010, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 212, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 212, SE022, 79 );

--画面遷移
SE023 = playSeVer2( spep_0 + 222, 1072, "", 0, 0, 0, -1);

--オーラ
SE024 = playSeVer2( spep_0 + 234, 1176, "",spep_0 + 388, 0, 20, -1);
SE025 = playSeVer2( spep_0 + 234, 1181, "",spep_0 + 390, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 234, SE025, 174 );
SE026 = playSeVer2( spep_0 + 244, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE026, 50 );
SE028 = playSeVer2( spep_0 + 268, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE028, 50 );
SE029 = playSeVer2( spep_0 + 292, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE029, 50 );
SE030 = playSeVer2( spep_0 + 316, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE030, 50 );
SE031 = playSeVer2( spep_0 + 340, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE031, 50 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0-2;  --366f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0)-2;

-- ** 音 ** --
--オーラ
SE034 = playSeVer2( spep_1 + 80, 1176, "",spep_1 + 232, 0, 60, -1);
setSeVolumeByWorkId( spep_1 + 80, SE034, 71 );
SE035 = playSeVer2( spep_1 + 80, 1181, "",spep_1 + 232, 0, 56, -1);
setSeVolumeByWorkId( spep_1 + 80, SE035, 178 );

--振りかぶる
SE036 = playSeVer2( spep_1 + 92, 1116, "",spep_1 + 142, 0, 28, -1);

-------------------------------------------------
-- かめはめ波
-------------------------------------------------
MAX_FRAME_2 = 444;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波　敵側(ef_002r)
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
setDisp( spep_2 + 186 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 294 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 186 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 256 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 186 + OFFSET_X, 1, -135.6, 56.1 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -135.6, 56.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -132.7, 50.1 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -132.7, 50.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -127.8, 54.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -127.8, 54.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -130.8, 56.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -130.8, 56.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -127.9, 48.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -127.9, 48.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -119, 56.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -119, 56.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -122.1, 50.1 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -122.1, 50.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -129.1, 56.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -129.1, 56.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -126.2, 50.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -126.2, 50.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -133.6, 50.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -133.6, 50.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -130.7, 48.1 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -130.7, 48.1 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -121.8, 56.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -121.8, 56.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -124.8, 50.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -124.8, 50.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -131.9, 56.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -131.9, 56.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -129, 50.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -129, 50.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -140.1, 76.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -140.1, 76.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -159.1, 36.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -159.1, 36.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -104.2, 62.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -104.2, 62.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -109.3, 22.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -109.3, 22.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -134.4, 80.1 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -134.4, 80.1 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -109.4, 50.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -109.4, 50.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -122.5, 50.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -122.5, 50.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -120.1, 51 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -120.1, 51 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -131.7, 50.8 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -131.7, 50.8 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -143.3, 50.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -143.3, 50.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -154.9, 50.5 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -154.9, 50.5 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -166.5, 50.4 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -166.5, 50.4 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -165, 51.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -165, 51.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -163.6, 52.1 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -163.6, 52.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -167.6, 46.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -167.6, 46.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -175.6, 52.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -175.6, 52.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -173.6, 46.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -173.6, 46.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -169.6, 50.1 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -169.6, 50.1 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -173.6, 52.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -173.6, 52.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -171.6, 44.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -171.6, 44.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -134.4, 70.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -134.4, 70.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -141.6, 65.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -141.6, 65.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -152.8, 72 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -152.8, 72 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -154.1, 66.6 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -154.1, 66.6 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -157.3, 67.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -157.3, 67.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -150.6, 73.8 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -150.6, 73.8 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -157.8, 68.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -157.8, 68.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -169, 74.9 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -169, 74.9 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -170.3, 69.5 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -170.3, 69.5 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -169.5, 74.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -169.5, 74.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -176.7, 76.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -176.7, 76.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -178, 69.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -178, 69.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -173.2, 77.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -173.2, 77.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -180.4, 72.4 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -180.4, 72.4 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -191.7, 79 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -191.7, 79 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -192.9, 73.6 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -192.9, 73.6 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -196.1, 74.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -196.1, 74.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -201.4, 81.4 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -201.4, 81.4 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -206.6, 88.6 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -206.6, 88.6 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -211.9, 95.9 , 0 );

setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.23, 1.23 );

setRotateKey( spep_2 + 186 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 46.7 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 1.7 );

setBlendColor( spep_2 + 256 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 296 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--かめはめ波溜め
SE033 = playSeVer2( spep_2 + 14, 1210, "",spep_2 + 190, 24, 34, -1);
setStartTimeMs( SE033,  1833 );
SE037 = playSeVer2( spep_2 + 16, 1209, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 16, 1443, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE038, 178 );

--かめはめ波発射
SE039 = playSeVer2( spep_2 + 124, 1133, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 124, 1146, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 124, 1213, "",spep_2 + 334, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 124, SE041, 55 );

--かめはめ波中
SE042 = playSeVer2( spep_2 + 158, 1211, "",spep_2 + 332, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 158, SE042, 162 );

--かめはめ波飛んでいく
SE043 = playSeVer2( spep_2 + 176, 1021, "", 0, 0, 0, -1);

--敵呑まれる
SE044 = playSeVer2( spep_2 + 222, 1258, "", 0, 0, 0, -1);

--爆発
SE045 = playSeVer2( spep_2 + 286, 1067, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 286, 1188, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 286, 1156, "",spep_2 + 436, 0, 78, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 324); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 終了フレーム 444f



end
