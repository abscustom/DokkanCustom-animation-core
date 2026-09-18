--1029090:LR_ジレン_超必殺技：オーバーヒート・マグネトロン
--sp_effect_b4_00340
--sp2729

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
 
-- 味方側
SP_01 = 163007	--開幕〜跳ね返る敵まで	ef_001
SP_02 = 163009	--開幕〜跳ね返る敵まで	ef_001b
SP_03 = 163011	--腕を前に出し気弾〜フィニッシュまで    ef_002
SP_04 = 163012	--腕を前に出し気弾〜フィニッシュまで	ef_002b

-- 敵側
SP_01r = 163008	--開幕〜跳ね返る敵まで	ef_001r
SP_02r = 163010	--開幕〜跳ね返る敵まで	ef_001br
SP_03r = 163023	--腕を前に出し気弾〜フィニッシュまで    ef_002r
SP_04r = 163024	--腕を前に出し気弾〜フィニッシュまで	ef_002br

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
 
ENABLE_AUTO_TIME_STRETCH(0.86);
 
OFFSET_X = -1;
 
if (_IS_PLAYER_SIDE_ == 1) then
 
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜跳ね返る敵まで
-------------------------------------------------
MAX_FRAME_0 = 444;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕〜跳ね返る敵まで	ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
base_0b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 開幕〜跳ね返る敵まで(背景) ef_001b
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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -100, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -100, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -100, 515.5 , 0 );
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
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵の動き ** --
--敵の動き_1
setDisp( spep_0 + 116 + OFFSET_X, 1, 1);
setDisp( spep_0 + 246 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 116 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 132 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 164 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 178 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 216 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 234 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 116 + OFFSET_X, 1, 165, 8 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 165, 8 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 160.7, 13.2 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 160.7, 13.2 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 156.4, 18.3 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 156.4, 18.3 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 152.3, 23.3 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 152.3, 23.3 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 148.3, 28.2 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 148.3, 28.2 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 144.4, 33 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 144.4, 33 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 140.5, 37.7 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 140.5, 37.7 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 136.8, 42.3 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 136.8, 42.3 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 127.9, 68.5 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 127.9, 68.5 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 108.8, 110.2 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 108.8, 110.2 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 116.5, 35.6 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 116.5, 35.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 174.1, 119.1 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 174.1, 119.1 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 100.2, 39.5 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 100.2, 39.5 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 130.9, 92.1 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 130.9, 92.1 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 133.4, 32.2 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 133.4, 32.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 150, 98.8 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 150, 98.8 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 91.1, 40.4 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 91.1, 40.4 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 141.1, 93.7 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 141.1, 93.7 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 118.2, 55.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 118.2, 55.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 147.7, 71.1 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 147.7, 71.1 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 127.2, 54 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 127.2, 54 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 130.2, 52.1 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 130.2, 52.1 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 131.2, 56.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 131.2, 56.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 125.2, 70.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 125.2, 70.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 16.9, 39.7 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 16.9, 39.7 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 17.3, 38.9 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 17.3, 38.9 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 18, 37.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 18, 37.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 19.2, 36.2 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 19.2, 36.2 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 21.7, 32.6 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 21.7, 32.6 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 27, 25 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 27, 25 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 38.5, 8.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 38.5, 8.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -13, -155.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -13, -155.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -36.5, -164.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -36.5, -164.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -11.4, -186.8 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -11.4, -186.8 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 18, -157.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 18, -157.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -30.5, -197.2 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -30.5, -197.2 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 10, -198 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 10, -198 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 4.6, -187.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 4.6, -187.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 11.6, -167.7 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 11.6, -167.7 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 35.9, -192.6 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 35.9, -192.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 53, -164.3 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 53, -164.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 15.1, -198.2 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 15.1, -198.2 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 31.7, -160.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 31.7, -160.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 44.5, -201.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 44.5, -201.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 25.3, -200.4 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 25.3, -200.4 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 22.9, -205 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 22.9, -205 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 24.4, -201.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 24.4, -201.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 26.7, -205.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 26.7, -205.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 18.9, -188 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 18.9, -188 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 18.9, -188.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 18.9, -188.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 143.7, 18.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 143.7, 18.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 160.7, 65.4 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 160.7, 65.4 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 139.7, -60.8 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 139.7, -60.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 139.5, 65.9 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 139.5, 65.9 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 162.4, -64.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 162.4, -64.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 169.3, 65.9 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 169.3, 65.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 135.1, -28.8 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 135.1, -28.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 136.1, 63.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 136.1, 63.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 140.1, 9.9 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 140.1, 9.9 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 130.4, 203.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 130.4, 203.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 194.7, 616.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 194.7, 616.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 264.9, 972.4 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 264.9, 972.4 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 287.9, 1035.1 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 287.9, 1035.1 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 314.8, 1160.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 314.8, 1160.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 288.5, 1105.3 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 288.5, 1105.3 , 0 );

setScaleKey( spep_0 + 116 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 4.75, 4.75 );

setRotateKey( spep_0 + 116 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -41 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -41 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -74 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -74 );

--敵の動き_2
setDisp( spep_0 + 256 + OFFSET_X, 1, 1);
setDisp( spep_0 + 298 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 256 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 256 + OFFSET_X, 1, -278.5, -514.4 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -278.5, -514.4 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -252.8, -461.2 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -252.8, -461.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -228.4, -410.7 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -228.4, -410.7 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -205.4, -362.9 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -205.4, -362.9 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -183.7, -317.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -183.7, -317.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -163.3, -275.5 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -163.3, -275.5 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -144.2, -235.9 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -144.2, -235.9 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -126.4, -199 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -126.4, -199 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -109.9, -164.9 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -109.9, -164.9 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -94.8, -133.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -94.8, -133.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -81, -104.8 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -81, -104.8 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -68.5, -78.9 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -68.5, -78.9 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -57.3, -55.7 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -57.3, -55.7 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -47.4, -35.2 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -47.4, -35.2 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -38.8, -17.5 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -38.8, -17.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -31.6, -2.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -31.6, -2.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -25.7, 9.8 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -25.7, 9.8 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -21, 19.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -21, 19.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -17.8, 26.2 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -17.8, 26.2 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -15.8, 30.3 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -15.8, 30.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -15.1, 31.7 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -15.1, 31.7 , 0 );

setScaleKey( spep_0 + 256 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.29, 1.29 );

setRotateKey( spep_0 + 256 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -45.1 );

--敵の動き_3
setDisp( spep_0 + 308 + OFFSET_X, 1, 1);
setDisp( spep_0 + 446 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 322 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 376 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 408 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 308 + OFFSET_X, 1, -358.4, -273.1 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -358.4, -273.1 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -357, -275.7 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -357, -275.7 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -329.5, -265.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -329.5, -265.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -276, -242.3 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -276, -242.3 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -196.6, -206.4 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -196.6, -206.4 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -91.4, -157.8 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -91.4, -157.8 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 39.4, -96.5 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 39.4, -96.5 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 13.7, -91.5 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 13.7, -91.5 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 36.7, -45.9 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 36.7, -45.9 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -15.6, -155.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -15.6, -155.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -14.2, -44.9 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -14.2, -44.9 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 29.7, -137.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 29.7, -137.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 31.7, -49.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 31.7, -49.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -18.5, -157.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -18.5, -157.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -5.8, -50.8 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -5.8, -50.8 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 51.4, -149.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 51.4, -149.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 68, -69 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 68, -69 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 35.1, -186.4 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 35.1, -186.4 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 58, -85.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 58, -85.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 125.4, -191.2 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 125.4, -191.2 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 146.3, -147.3 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 146.3, -147.3 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 133.5, -206.5 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 133.5, -206.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 162.6, -189.4 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 162.6, -189.4 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 232.7, -256.5 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 232.7, -256.5 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 252.7, -258.3 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 252.7, -258.3 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 261, -315.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 261, -315.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 295.2, -346.7 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 295.2, -346.7 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 312.4, -392.2 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 312.4, -392.2 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 319.1, -439.7 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 319.1, -439.7 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 311.9, -486.5 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 311.9, -486.5 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 287.5, -528.3 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 287.5, -528.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 244, -560.4 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 244, -560.4 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 181.2, -577.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 181.2, -577.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 135.7, -651.9 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 135.7, -651.9 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -160.2, 670.5 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -160.2, 670.5 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -156.9, 659.4 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -156.9, 659.4 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -147.3, 626.5 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -147.3, 626.5 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -131.8, 572.3 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -131.8, 572.3 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -111.3, 498.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -111.3, 498.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -87.3, 406.9 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -87.3, 406.9 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -61.9, 302.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -61.9, 302.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -38, 190.4 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -38, 190.4 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -19.8, 80.7 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -19.8, 80.7 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -12.6, -13.4 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -12.6, -13.4 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -5, -109 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -5, -109 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 17.8, -234.3 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 17.8, -234.3 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 54.4, -388.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 54.4, -388.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 64.7, -396.6 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 64.7, -396.6 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 57.7, -375.9 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 57.7, -375.9 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 55.8, -372 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 55.8, -372 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 48.4, -289.2 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 48.4, -289.2 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 46.8, -286.7 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 46.8, -286.7 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 49.3, -277.4 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 49.3, -277.4 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 52.7, -276.7 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 52.7, -276.7 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 53.8, -268.5 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 53.8, -268.5 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 51.9, -268.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 51.9, -268.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 53.8, -261.8 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 53.8, -261.8 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 56.6, -263.1 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 56.6, -263.1 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 57.2, -256.8 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 57.2, -256.8 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 54.8, -258.9 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 54.8, -258.9 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 56.2, -253.3 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 56.2, -253.3 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 58.6, -256.1 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 58.6, -256.1 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 57.8, -253.1 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 57.8, -253.1 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 58.1, -252.4 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 58.1, -252.4 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 58.2, -251.9 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 58.2, -251.9 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 58.3, -251.5 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 58.3, -251.5 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 58.4, -251.3 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 58.4, -251.3 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 58.4, -251.2 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 58.4, -251.2 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 58.4, -251.1 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 58.4, -251.1 , 0 );

setScaleKey( spep_0 + 308 + OFFSET_X, 1, 7.47, 7.47 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 7.47, 7.47 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 7.4, 7.4 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 7.4, 7.4 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 7.17, 7.17 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 7.17, 7.17 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 6.79, 6.79 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 6.79, 6.79 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 6.34, 6.34 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 6.34, 6.34 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 6.74, 6.74 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 6.74, 6.74 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 6.7, 6.7 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 6.7, 6.7 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 6.55, 6.55 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 6.55, 6.55 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 6.76, 6.76 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 6.76, 6.76 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 1.35, 1.35 );

setRotateKey( spep_0 + 308 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 365 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_0 + 367 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 90.3 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, 90.3 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_0 + 409 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, 43.7 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, 43.7 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, 44.5 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 44.5 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 44.6 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, 44.6 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, 44.9 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, 44.9 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 45 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, 45 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, 45.1 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, 45.1 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, 45.2 );

-- ** 音 ** --
--構える
SE002 = playSeVer2( spep_0 + 2, 1072, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 26, 1011, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 26, 1168, "",spep_0 + 118, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 81 );

--飛び上がる
SE005 = playSeVer2( spep_0 + 88, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 88, 1117, "",spep_0 + 140, 0, 16, -1);
SE007 = playSeVer2( spep_0 + 96, 1277, "", 0, 0, 0, -1);


--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 120;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);

    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え
    
    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

    -- ** 敵キャラクター ** --
    setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); --回避後の敵の色戻す

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade
    endPhase( SP_dodge+10);

    do return end
    else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--パンチ１
SE008 = playSeVer2( spep_0 + 112, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 118, 1187, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 118, 1153, "", 0, 0, 0, -1);

--パンチ２
SE011 = playSeVer2( spep_0 + 160, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 160, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE012, 63 );

--パンチ３
SE013 = playSeVer2( spep_0 + 200, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 206, 1190, "", 0, 0, 0, -1);

--敵飛んでいく
SE015 = playSeVer2( spep_0 + 206, 1183, "",spep_0 + 344, 0, 36, -1);
SE017 = playSeVer2( spep_0 + 306, 1121, "",spep_0 + 422, 0, 34, -1);

--瞬間移動
SE016 = playSeVer2( spep_0 + 246, 1245, "", 0, 0, 0, -1);

--殴り飛ばす
SE018 = playSeVer2( spep_0 + 308, 1187, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 310, 1120, "", 0, 0, 0, -1);

--ジレン降りてくる
SE021 = playSeVer2( spep_0 + 362, 63, "",spep_0 + 444, 0, 42, -1);

--気弾溜め
SE020 = playSeVer2( spep_0 + 370, 1443, "",spep_0 + 458, 6, 20, -1);
setSeVolumeByWorkId( spep_0 + 370, SE020, 133 );
setStartTimeMs( SE020,  533 );
SE022 = playSeVer2( spep_0 + 378, 1227, "",spep_0 + 456, 12, 20, -1);
setStartTimeMs( SE022,  267 );
SE024 = playSeVer2( spep_0 + 378, 1161, "",spep_0 + 456, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 378, SE024, 46 );
SE025 = playSeVer2( spep_0 + 378, 1222, "",spep_0 + 456, 0, 18, -1);

--地面叩きつける
SE026 = playSeVer2( spep_0 + 384, 1014, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 384, 1011, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 444

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

--発射前気弾溜め
SE023 = playSeVer2( spep_1 + 74, 1255, "",spep_2 + 124, 22, 32, -1);
setStartTimeMs( SE023,  2433 );
SE029 = playSeVer2( spep_1 + 84, 1443, "",spep_2 + 116, 6, 20, -1);
setSeVolumeByWorkId( spep_1 + 84, SE029, 163 );
setStartTimeMs( SE029,  533 );
SE030 = playSeVer2( spep_1 + 80, 1227, "",spep_2 + 116, 12, 20, -1);
setStartTimeMs( SE030,  267 );
SE031 = playSeVer2( spep_1 + 82, 1161, "",spep_2 + 118, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 82, SE031, 48 );

-------------------------------------------------
-- 腕を前に出し気弾〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 298;
 
-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- 腕を前に出し気弾〜フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0, 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);
finish_0b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0); -- 腕を前に出し気弾〜フィニッシュまで(背景) ef_002b
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0, 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0, 0);
setEffScaleKey( spep_2 + 0, finish_0b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0);
setEffAlphaKey( spep_2 + 0, finish_0b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
setDisp( spep_2 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 180 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 100 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, 25.3, -172.5 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 25.3, -172.5 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 25.5, -172.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 25.5, -172.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 25.6, -171.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 25.6, -171.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 25.7, -171.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 25.7, -171.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 25.9, -171 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 25.9, -171 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 26, -170.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 26, -170.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 26.1, -170.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 26.1, -170.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 26.2, -169.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 26.2, -169.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 26.4, -169.5 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 26.4, -169.5 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 26.5, -169.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 26.5, -169.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 26.6, -168.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 26.6, -168.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 26.8, -168.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 26.8, -168.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 26.9, -168 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 26.9, -168 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 27, -167.7 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 27, -167.7 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 27.1, -167.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 27.1, -167.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 27.3, -166.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 27.3, -166.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 27.4, -166.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 27.4, -166.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 27.5, -166.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 27.5, -166.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 29.6, -163.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 29.6, -163.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 25.7, -167.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 25.7, -167.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 25.9, -163.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 25.9, -163.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 30, -166.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 30, -166.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 30.1, -162.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 30.1, -162.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 26.2, -166.2 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 26.2, -166.2 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 26.3, -161.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 26.3, -161.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 30.4, -165.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 30.4, -165.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 32.5, -159.3 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 32.5, -159.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 24.6, -167 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 24.6, -167 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 24.7, -158.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 24.7, -158.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 32.8, -166.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 32.8, -166.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 32.9, -158.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 32.9, -158.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 25, -165.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 25, -165.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 23.1, -151.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 23.1, -151.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 39.1, -171.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 39.1, -171.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 41.1, -139.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 41.1, -139.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 17.2, -169 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 17.2, -169 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 17.1, -142.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 17.1, -142.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 41.2, -178.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 41.2, -178.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 17.2, -128.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 17.2, -128.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 29.3, -180.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 29.3, -180.5 , 0 );

setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.35, 1.35 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, 45.1 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 45.1 );

setBlendColor( spep_2 + 168 + OFFSET_X, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_2 + 170 + OFFSET_X, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_2 + 172 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_2 + 180 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--気弾発射
SE033 = playSeVer2( spep_2 + 84, 1027, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 86, 1193, "",spep_2 + 200, 0, 28, -1);
SE035 = playSeVer2( spep_2 + 86, 1424, "", 0, 0, 0, -1);

--気弾飛んでくる
SE032 = playSeVer2( spep_2 + 98, 1121, "",spep_2 + 206, 18, 34, -1);
setStartTimeMs( SE032,  833 );
setPitch( spep_2 + 98, SE032, 600 );
setTimeStretch( SE032, 1.4, 30, 4 );
setSeVolumeByWorkId( spep_2 + 98, SE032, 110 );
SE036 = playSeVer2( spep_2 + 98, 1422, "",spep_2 + 202, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 98, SE036, 162 );

--爆発
SE037 = playSeVer2( spep_2 + 164, 1159, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 170, 1067, "", 0, 0, 0, -1);

--風圧
SE039 = playSeVer2( spep_2 + 176, 1427, "", 0, 0, 0, -1);

--地響き
SE040 = playSeVer2( spep_2 + 176, 1044, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 198); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 298F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開幕〜跳ね返る敵まで
-------------------------------------------------
MAX_FRAME_0 = 444;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開幕〜跳ね返る敵まで	ef_001r
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
base_0b = entryEffect( spep_0 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- 開幕〜跳ね返る敵まで(背景) ef_001br
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
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -100, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -100, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -100, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵の動き ** --
--敵の動き_1
setDisp( spep_0 + 116 + OFFSET_X, 1, 1);
setDisp( spep_0 + 246 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 116 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 132 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 164 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 178 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 216 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 234 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 116 + OFFSET_X, 1, 165, 8 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 165, 8 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 160.7, 13.2 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 160.7, 13.2 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 156.4, 18.3 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 156.4, 18.3 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 152.3, 23.3 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 152.3, 23.3 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 148.3, 28.2 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 148.3, 28.2 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 144.4, 33 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 144.4, 33 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 140.5, 37.7 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 140.5, 37.7 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 136.8, 42.3 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 136.8, 42.3 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 127.9, 68.5 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 127.9, 68.5 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 108.8, 110.2 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 108.8, 110.2 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 116.5, 35.6 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 116.5, 35.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 174.1, 119.1 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 174.1, 119.1 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 100.2, 39.5 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 100.2, 39.5 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 130.9, 92.1 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 130.9, 92.1 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 133.4, 32.2 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 133.4, 32.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 150, 98.8 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 150, 98.8 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 91.1, 40.4 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 91.1, 40.4 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 141.1, 93.7 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 141.1, 93.7 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 118.2, 55.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 118.2, 55.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 147.7, 71.1 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 147.7, 71.1 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 127.2, 54 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 127.2, 54 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 130.2, 52.1 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 130.2, 52.1 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 131.2, 56.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 131.2, 56.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 125.2, 70.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 125.2, 70.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 16.9, 39.7 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 16.9, 39.7 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 17.3, 38.9 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 17.3, 38.9 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 18, 37.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 18, 37.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 19.2, 36.2 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 19.2, 36.2 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 21.7, 32.6 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 21.7, 32.6 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 27, 25 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 27, 25 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 38.5, 8.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 38.5, 8.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -13, -155.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -13, -155.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -36.5, -164.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -36.5, -164.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -11.4, -186.8 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -11.4, -186.8 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 18, -157.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 18, -157.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -30.5, -197.2 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -30.5, -197.2 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 10, -198 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 10, -198 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 4.6, -187.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 4.6, -187.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 11.6, -167.7 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 11.6, -167.7 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 35.9, -192.6 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 35.9, -192.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 53, -164.3 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 53, -164.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 15.1, -198.2 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 15.1, -198.2 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 31.7, -160.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 31.7, -160.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 44.5, -201.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 44.5, -201.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 25.3, -200.4 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 25.3, -200.4 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 22.9, -205 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 22.9, -205 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 24.4, -201.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 24.4, -201.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 26.7, -205.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 26.7, -205.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 18.9, -188 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 18.9, -188 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 18.9, -188.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 18.9, -188.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 143.7, 18.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 143.7, 18.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 160.7, 65.4 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 160.7, 65.4 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 139.7, -60.8 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 139.7, -60.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 139.5, 65.9 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 139.5, 65.9 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 162.4, -64.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 162.4, -64.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 169.3, 65.9 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 169.3, 65.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 135.1, -28.8 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 135.1, -28.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 136.1, 63.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 136.1, 63.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 140.1, 9.9 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 140.1, 9.9 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 130.4, 203.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 130.4, 203.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 194.7, 616.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 194.7, 616.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 264.9, 972.4 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 264.9, 972.4 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 287.9, 1035.1 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 287.9, 1035.1 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 314.8, 1160.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 314.8, 1160.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 288.5, 1105.3 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 288.5, 1105.3 , 0 );

setScaleKey( spep_0 + 116 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 4.75, 4.75 );

setRotateKey( spep_0 + 116 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -41 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -41 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -74 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -74 );

--敵の動き_2
setDisp( spep_0 + 256 + OFFSET_X, 1, 1);
setDisp( spep_0 + 298 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 256 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 256 + OFFSET_X, 1, -278.5, -514.4 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -278.5, -514.4 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -252.8, -461.2 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -252.8, -461.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -228.4, -410.7 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -228.4, -410.7 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -205.4, -362.9 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -205.4, -362.9 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -183.7, -317.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -183.7, -317.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -163.3, -275.5 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -163.3, -275.5 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -144.2, -235.9 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -144.2, -235.9 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -126.4, -199 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -126.4, -199 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -109.9, -164.9 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -109.9, -164.9 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -94.8, -133.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -94.8, -133.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -81, -104.8 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -81, -104.8 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -68.5, -78.9 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -68.5, -78.9 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -57.3, -55.7 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -57.3, -55.7 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -47.4, -35.2 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -47.4, -35.2 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -38.8, -17.5 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -38.8, -17.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -31.6, -2.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -31.6, -2.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -25.7, 9.8 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -25.7, 9.8 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -21, 19.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -21, 19.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -17.8, 26.2 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -17.8, 26.2 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -15.8, 30.3 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -15.8, 30.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -15.1, 31.7 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -15.1, 31.7 , 0 );

setScaleKey( spep_0 + 256 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.29, 1.29 );

setRotateKey( spep_0 + 256 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -45.1 );

--敵の動き_3
setDisp( spep_0 + 308 + OFFSET_X, 1, 1);
setDisp( spep_0 + 446 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 322 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 376 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 408 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 308 + OFFSET_X, 1, -358.4, -273.1 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -358.4, -273.1 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -357, -275.7 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -357, -275.7 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -329.5, -265.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -329.5, -265.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -276, -242.3 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -276, -242.3 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -196.6, -206.4 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -196.6, -206.4 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -91.4, -157.8 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -91.4, -157.8 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 39.4, -96.5 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 39.4, -96.5 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 13.7, -91.5 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 13.7, -91.5 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 36.7, -45.9 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 36.7, -45.9 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -15.6, -155.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -15.6, -155.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -14.2, -44.9 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -14.2, -44.9 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 29.7, -137.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 29.7, -137.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 31.7, -49.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 31.7, -49.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -18.5, -157.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -18.5, -157.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -5.8, -50.8 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -5.8, -50.8 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 51.4, -149.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 51.4, -149.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 68, -69 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 68, -69 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 35.1, -186.4 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 35.1, -186.4 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 58, -85.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 58, -85.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 125.4, -191.2 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 125.4, -191.2 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 146.3, -147.3 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 146.3, -147.3 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 133.5, -206.5 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 133.5, -206.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 162.6, -189.4 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 162.6, -189.4 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 232.7, -256.5 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 232.7, -256.5 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 252.7, -258.3 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 252.7, -258.3 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 261, -315.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 261, -315.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 295.2, -346.7 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 295.2, -346.7 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 312.4, -392.2 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 312.4, -392.2 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 319.1, -439.7 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 319.1, -439.7 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 311.9, -486.5 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 311.9, -486.5 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 287.5, -528.3 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 287.5, -528.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 244, -560.4 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 244, -560.4 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 181.2, -577.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 181.2, -577.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 135.7, -651.9 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 135.7, -651.9 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -160.2, 670.5 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -160.2, 670.5 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -156.9, 659.4 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -156.9, 659.4 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -147.3, 626.5 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -147.3, 626.5 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -131.8, 572.3 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -131.8, 572.3 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -111.3, 498.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -111.3, 498.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -87.3, 406.9 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -87.3, 406.9 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -61.9, 302.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -61.9, 302.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -38, 190.4 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -38, 190.4 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -19.8, 80.7 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -19.8, 80.7 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -12.6, -13.4 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -12.6, -13.4 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -5, -109 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -5, -109 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 17.8, -234.3 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 17.8, -234.3 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 54.4, -388.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 54.4, -388.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 64.7, -396.6 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 64.7, -396.6 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 57.7, -375.9 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 57.7, -375.9 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 55.8, -372 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 55.8, -372 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 48.4, -289.2 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 48.4, -289.2 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 46.8, -286.7 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 46.8, -286.7 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 49.3, -277.4 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 49.3, -277.4 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 52.7, -276.7 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 52.7, -276.7 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 53.8, -268.5 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 53.8, -268.5 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 51.9, -268.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 51.9, -268.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 53.8, -261.8 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 53.8, -261.8 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 56.6, -263.1 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 56.6, -263.1 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 57.2, -256.8 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 57.2, -256.8 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 54.8, -258.9 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 54.8, -258.9 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 56.2, -253.3 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 56.2, -253.3 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 58.6, -256.1 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 58.6, -256.1 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 57.8, -253.1 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 57.8, -253.1 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 58.1, -252.4 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 58.1, -252.4 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 58.2, -251.9 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 58.2, -251.9 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 58.3, -251.5 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 58.3, -251.5 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 58.4, -251.3 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 58.4, -251.3 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 58.4, -251.2 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 58.4, -251.2 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 58.4, -251.1 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 58.4, -251.1 , 0 );

setScaleKey( spep_0 + 308 + OFFSET_X, 1, 7.47, 7.47 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 7.47, 7.47 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 7.4, 7.4 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 7.4, 7.4 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 7.17, 7.17 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 7.17, 7.17 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 6.79, 6.79 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 6.79, 6.79 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 4.47, 4.47 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 6.34, 6.34 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 6.34, 6.34 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 6.74, 6.74 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 6.74, 6.74 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 6.7, 6.7 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 6.7, 6.7 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 6.55, 6.55 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 6.55, 6.55 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 6.76, 6.76 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 6.76, 6.76 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 1.35, 1.35 );

setRotateKey( spep_0 + 308 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 365 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_0 + 367 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 90.3 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, 90.3 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_0 + 409 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, 43.7 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, 43.7 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, 44.1 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, 44.3 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, 44.5 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 44.5 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 44.6 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, 44.6 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, 44.7 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, 44.9 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, 44.9 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 45 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, 45 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, 45.1 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, 45.1 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, 45.2 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, 45.2 );

-- ** 音 ** --
--構える
SE002 = playSeVer2( spep_0 + 2, 1072, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 26, 1011, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 26, 1168, "",spep_0 + 118, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 81 );

--飛び上がる
SE005 = playSeVer2( spep_0 + 88, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 88, 1117, "",spep_0 + 140, 0, 16, -1);
SE007 = playSeVer2( spep_0 + 96, 1277, "", 0, 0, 0, -1);


--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 120;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);

    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え
    
    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

    -- ** 敵キャラクター ** --
    setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); --回避後の敵の色戻す

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade
    endPhase( SP_dodge+10);

    do return end
    else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--パンチ１
SE008 = playSeVer2( spep_0 + 112, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 118, 1187, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 118, 1153, "", 0, 0, 0, -1);

--パンチ２
SE011 = playSeVer2( spep_0 + 160, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 160, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE012, 63 );

--パンチ３
SE013 = playSeVer2( spep_0 + 200, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 206, 1190, "", 0, 0, 0, -1);

--敵飛んでいく
SE015 = playSeVer2( spep_0 + 206, 1183, "",spep_0 + 344, 0, 36, -1);
SE017 = playSeVer2( spep_0 + 306, 1121, "",spep_0 + 422, 0, 34, -1);

--瞬間移動
SE016 = playSeVer2( spep_0 + 246, 1245, "", 0, 0, 0, -1);

--殴り飛ばす
SE018 = playSeVer2( spep_0 + 308, 1187, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 310, 1120, "", 0, 0, 0, -1);

--ジレン降りてくる
SE021 = playSeVer2( spep_0 + 362, 63, "",spep_0 + 444, 0, 42, -1);

--気弾溜め
SE020 = playSeVer2( spep_0 + 370, 1443, "",spep_0 + 458, 6, 20, -1);
setSeVolumeByWorkId( spep_0 + 370, SE020, 133 );
setStartTimeMs( SE020,  533 );
SE022 = playSeVer2( spep_0 + 378, 1227, "",spep_0 + 456, 12, 20, -1);
setStartTimeMs( SE022,  267 );
SE024 = playSeVer2( spep_0 + 378, 1161, "",spep_0 + 456, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 378, SE024, 46 );
SE025 = playSeVer2( spep_0 + 378, 1222, "",spep_0 + 456, 0, 18, -1);

--地面叩きつける
SE026 = playSeVer2( spep_0 + 384, 1014, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 384, 1011, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 444

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

--発射前気弾溜め
SE023 = playSeVer2( spep_1 + 74, 1255, "",spep_2 + 124, 22, 32, -1);
setStartTimeMs( SE023,  2433 );
SE029 = playSeVer2( spep_1 + 84, 1443, "",spep_2 + 116, 6, 20, -1);
setSeVolumeByWorkId( spep_1 + 84, SE029, 163 );
setStartTimeMs( SE029,  533 );
SE030 = playSeVer2( spep_1 + 80, 1227, "",spep_2 + 116, 12, 20, -1);
setStartTimeMs( SE030,  267 );
SE031 = playSeVer2( spep_1 + 82, 1161, "",spep_2 + 118, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 82, SE031, 48 );

-------------------------------------------------
-- 腕を前に出し気弾〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 298;
 
-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- 腕を前に出し気弾〜フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0, 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);
finish_0b = entryEffect( spep_2 + 0, SP_04r, 0x80, -1, 0, 0, 0); -- 腕を前に出し気弾〜フィニッシュまで(背景) ef_002b
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0, 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0, 0);
setEffScaleKey( spep_2 + 0, finish_0b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0);
setEffAlphaKey( spep_2 + 0, finish_0b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
setDisp( spep_2 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 180 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 100 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, 25.3, -172.5 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 25.3, -172.5 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 25.5, -172.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 25.5, -172.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 25.6, -171.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 25.6, -171.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 25.7, -171.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 25.7, -171.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 25.9, -171 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 25.9, -171 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 26, -170.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 26, -170.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 26.1, -170.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 26.1, -170.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 26.2, -169.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 26.2, -169.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 26.4, -169.5 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 26.4, -169.5 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 26.5, -169.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 26.5, -169.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 26.6, -168.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 26.6, -168.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 26.8, -168.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 26.8, -168.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 26.9, -168 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 26.9, -168 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 27, -167.7 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 27, -167.7 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 27.1, -167.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 27.1, -167.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 27.3, -166.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 27.3, -166.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 27.4, -166.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 27.4, -166.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 27.5, -166.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 27.5, -166.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 29.6, -163.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 29.6, -163.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 25.7, -167.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 25.7, -167.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 25.9, -163.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 25.9, -163.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 30, -166.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 30, -166.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 30.1, -162.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 30.1, -162.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 26.2, -166.2 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 26.2, -166.2 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 26.3, -161.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 26.3, -161.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 30.4, -165.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 30.4, -165.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 32.5, -159.3 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 32.5, -159.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 24.6, -167 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 24.6, -167 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 24.7, -158.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 24.7, -158.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 32.8, -166.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 32.8, -166.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 32.9, -158.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 32.9, -158.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 25, -165.9 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 25, -165.9 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 23.1, -151.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 23.1, -151.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 39.1, -171.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 39.1, -171.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 41.1, -139.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 41.1, -139.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 17.2, -169 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 17.2, -169 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 17.1, -142.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 17.1, -142.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 41.2, -178.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 41.2, -178.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 17.2, -128.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 17.2, -128.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 29.3, -180.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 29.3, -180.5 , 0 );

setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.35, 1.35 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, 45.1 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 45.1 );

setBlendColor( spep_2 + 168 + OFFSET_X, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_2 + 170 + OFFSET_X, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_2 + 172 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_2 + 180 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--気弾発射
SE033 = playSeVer2( spep_2 + 84, 1027, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 86, 1193, "",spep_2 + 200, 0, 28, -1);
SE035 = playSeVer2( spep_2 + 86, 1424, "", 0, 0, 0, -1);

--気弾飛んでくる
SE032 = playSeVer2( spep_2 + 98, 1121, "",spep_2 + 206, 18, 34, -1);
setStartTimeMs( SE032,  833 );
setPitch( spep_2 + 98, SE032, 600 );
setTimeStretch( SE032, 1.4, 30, 4 );
setSeVolumeByWorkId( spep_2 + 98, SE032, 110 );
SE036 = playSeVer2( spep_2 + 98, 1422, "",spep_2 + 202, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 98, SE036, 162 );

--爆発
SE037 = playSeVer2( spep_2 + 164, 1159, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 170, 1067, "", 0, 0, 0, -1);

--風圧
SE039 = playSeVer2( spep_2 + 176, 1427, "", 0, 0, 0, -1);

--地響き
SE040 = playSeVer2( spep_2 + 176, 1044, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 198); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 298F

end