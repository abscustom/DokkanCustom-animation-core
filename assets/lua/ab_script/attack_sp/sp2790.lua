--1030210:UR_孫悟天(幼年期)&ハイヤードラゴンJr._必殺技：
--sp_effect_b4_00359
--sp2790

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163339; --開幕〜カードカットインまで_手前_ef_001
SP_01b = 163341; --開幕〜カードカットインまで_奥_ef_001b
SP_02  = 163343; --かめはめ波〜フィニッシュ_手前_ef_002
SP_02b = 163344; --かめはめ波〜フィニッシュ_奥_ef_002b
SP_03  = 906; --集中線_ef_007

--エフェクト(敵)
SP_01r  = 163340; --開幕〜カードカットインまで_手前_ef_001r
SP_01br = 163342; --開幕〜カードカットインまで_奥_ef_001br

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 296;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕〜カードカットインまで_手前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕〜カードカットインまで_奥(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 集中線 ** --
concentr_el = entryEffectLife( spep_0 + 268 + OFFSET_X, SP_03, 20, 0x100, -1, 0, 0, 0 ); -- 集中線_白(ef_007)
setEffShake( spep_0 + 0, concentr_el, 90, 20 );
setEffMoveKey( spep_0 + 0, concentr_el, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, concentr_el, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, concentr_el, 1.6, 1.6 );
setEffScaleKey( spep_0 + MAX_FRAME_0, concentr_el, 1.6, 1.6 );
setEffRotateKey( spep_0 + 0, concentr_el, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, concentr_el, 0 );
setEffAlphaKey( spep_0 + 0, concentr_el, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, concentr_el, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 198, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 198, 515.5 , 0 );
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
--敵の動き1
setDisp( spep_0 + 118 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 224 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 118 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 128 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 146 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 168 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 184 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 204 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 118 + OFFSET_X, 1, 81.6, 73.5 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 81.6, 73.5 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 73.1, 63.5 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 73.1, 63.5 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 64.6, 53.5 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 64.6, 53.5 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 56.1, 43.5 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 56.1, 43.5 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 47.5, 33.5 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 47.5, 33.5 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 104.4, 67.1 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 104.4, 67.1 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 21.7, 13.6 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 21.7, 13.6 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 56.1, 90.6 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 56.1, 90.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 87.9, 54.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 87.9, 54.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 83.8, 63.6 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 83.8, 63.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 79.1, 70.8 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 79.1, 70.8 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 74.2, 76.4 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 74.2, 76.4 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 74.3, 77 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 74.3, 77 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 74.3, 77.1 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 74.3, 77.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 83.7, 82.7 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 83.7, 82.7 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 17.3, 44.4 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 17.3, 44.4 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 126.2, 35 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 126.2, 35 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 100.6, 94.8 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 100.6, 94.8 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 97.6, 98.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 97.6, 98.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 92.9, 100.8 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 92.9, 100.8 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 86.6, 101 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 86.6, 101 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 88.4, 103.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 88.4, 103.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 89.4, 104.3 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 89.4, 104.3 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 89.7, 104.7 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 89.7, 104.7 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 89.8, 104.8 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 89.8, 104.8 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 70.3, 125.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 70.3, 125.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 121.2, 66.2 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 121.2, 66.2 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 67.6, 80.1 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 67.6, 80.1 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 133.8, 111.5 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 133.8, 111.5 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 123.1, 111.4 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 123.1, 111.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 111.1, 109.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 111.1, 109.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 98.2, 107 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 98.2, 107 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 98.3, 107.1 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 98.3, 107.1 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 119.8, 92.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 119.8, 92.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 104.9, 141.7 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 104.9, 141.7 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 112.5, 102.6 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 112.5, 102.6 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 70.6, 95.9 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 70.6, 95.9 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 80.3, 105 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 80.3, 105 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 89, 112.8 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 89, 112.8 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 96.9, 119.7 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 96.9, 119.7 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 97.5, 120.5 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 97.5, 120.5 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 97.8, 120.7 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 97.8, 120.7 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 97.8, 120.8 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 97.8, 120.8 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 98.3, 97.1 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 98.3, 97.1 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 70.8, 43 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 70.8, 43 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 89.2, 106.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 89.2, 106.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 130.1, 72 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 130.1, 72 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 130.1, 93.7 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 130.1, 93.7 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 127.7, 113 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 127.7, 113 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 123.6, 130.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 123.6, 130.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 124.3, 131.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 124.3, 131.1 , 0 );

setScaleKey( spep_0 + 118 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 3.03, 3.03 );

setRotateKey( spep_0 + 118 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -62 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, -62 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -62 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, -62 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -62 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -62 );

--敵の動き2
setDisp( spep_0 + 268 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 298 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 268 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 268 + OFFSET_X, 1, -15.4, 117 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -15.4, 117 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 5.4, -61.8 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 5.4, -61.8 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 22.6, -211.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 22.6, -211.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 37, -336.3 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 37, -336.3 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 49, -441.7 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 49, -441.7 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 59.1, -531 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 59.1, -531 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 67.6, -607.2 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 67.6, -607.2 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 75, -672.6 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 75, -672.6 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 81.2, -728.9 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 81.2, -728.9 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 86.6, -777.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 86.6, -777.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 91.2, -818.2 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 91.2, -818.2 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 95, -852.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 95, -852.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 98, -877.5 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 98, -877.5 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 100.3, -899.8 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 100.3, -899.8 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 101.6, -912.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 101.6, -912.3 , 0 );

setScaleKey( spep_0 + 268 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 3.01, 3.01 );

setRotateKey( spep_0 + 268 + OFFSET_X, 1, 3.0 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 3.0 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 8.0 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 8.0 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 17.0 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 17.0 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 24.0 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 24.0 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 28.5 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 28.5 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 30.0 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 30.0 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 33.0 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 33.0 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 36.0 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 36.0 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 39.0 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 39.0 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 39.5 );


-- ** 音 ** --
--飛び上がる
SE002 = playSeVer2( spep_0 + 86, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 86, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 104; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
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
--連打
SE004 = playSeVer2( spep_0 + 120, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE004, 158 );
SE005 = playSeVer2( spep_0 + 126, 1110, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 126, 1009, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 144, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 144, 1010, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 166, 1110, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 166, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 182, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 182, 1010, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 202, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 202, 1009, "", 0, 0, 0, -1);

--振りかぶる
SE015 = playSeVer2( spep_0 + 220, 1116, "",spep_0 + 270, 0, 22, -1);
SE016 = playSeVer2( spep_0 + 248, 1003, "", 0, 0, 0, -1);

--殴り飛ばす
SE017 = playSeVer2( spep_0 + 254, 1120, "",spep_0 + 304, 0, 8, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 296f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    speff2 = entryEffectLife( spep_1 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

    spname = entryEffectLife( spep_1 + 0, 1512, 90, 0x100, -1, 0, 0, -88 );
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 放射線(黄) ** --
    housha = entryEffectLife( spep_1 + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
    setEffMoveKey( spep_1 + 0, housha, 0, 0 , 0 );
    setEffMoveKey( spep_1 + 90, housha, 0, 0 , 0 );
    setEffScaleKey( spep_1 + 0, housha, 1.0, 1.0 );
    setEffScaleKey( spep_1 + 90, housha, 1.0, 1.0 );
    setEffRotateKey( spep_1 + 0, housha, 0 );
    setEffRotateKey( spep_1 + 90, housha, 0 );
    setEffAlphaKey( spep_1 + 0, housha, 255 );
    setEffAlphaKey( spep_1 + 90, housha, 255 );

    -- ** 集中線 ** --
    shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
    setEffShake( spep_1 + 0, shuchusen, 90, 20 );
    setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
    setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
    setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
    setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
    setEffRotateKey( spep_1 + 0, shuchusen, 0 );
    setEffRotateKey( spep_1 + 90, shuchusen, 0 );
    setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
    setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    speff2 = entryEffectLife( spep_1 + 0, 3248, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 雷エフェクト ** --
    kaminari = entryEffectLife( spep_1 + 0, 3247, 90, 0x100, -1, 0, 0, 0 );  -- 雷エフェクト
    setEffMoveKey( spep_1 + 0, kaminari, 0, 0 , 0 );
    setEffMoveKey( spep_1 + 90, kaminari, 0, 0 , 0 );
    setEffScaleKey( spep_1 + 0, kaminari, 1.0, 1.0 );
    setEffScaleKey( spep_1 + 90, kaminari, 1.0, 1.0 );
    setEffRotateKey( spep_1 + 0, kaminari, 0 );
    setEffRotateKey( spep_1 + 90, kaminari, 0 );
    setEffAlphaKey( spep_1 + 0, kaminari, 255 );
    setEffAlphaKey( spep_1 + 90, kaminari, 255 );

    spname = entryEffectLife( spep_1 + 0, 3246, 90, 0x100, -1, 0, 0, -88 );
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え 

    -- ** 極限背景 ** --
    haikei = entryEffectLife( spep_1 + 0, 3249, 90, 0x80, -1, 0, 0, 0 );  -- 極限背景
    setEffMoveKey( spep_1 + 0, haikei, 0, 0 , 0 );
    setEffMoveKey( spep_1 + 90, haikei, 0, 0 , 0 );
    setEffScaleKey( spep_1 + 0, haikei, 1.0, 1.0 );
    setEffScaleKey( spep_1 + 90, haikei, 1.0, 1.0 );
    setEffRotateKey( spep_1 + 0, haikei, 0 );
    setEffRotateKey( spep_1 + 90, haikei, 0 );
    setEffAlphaKey( spep_1 + 0, haikei, 255 );
    setEffAlphaKey( spep_1 + 90, haikei, 255 );

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    speff2 = entryEffectLife( spep_1 + 0, 3252, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 雷エフェクト ** --
    kaminari = entryEffectLife( spep_1 + 0, 3251, 90, 0x100, -1, 0, 0, 0 );  -- 雷エフェクト
    setEffMoveKey( spep_1 + 0, kaminari, 0, 0 , 0 );
    setEffMoveKey( spep_1 + 90, kaminari, 0, 0 , 0 );
    setEffScaleKey( spep_1 + 0, kaminari, 1.0, 1.0 );
    setEffScaleKey( spep_1 + 90, kaminari, 1.0, 1.0 );
    setEffRotateKey( spep_1 + 0, kaminari, 0 );
    setEffRotateKey( spep_1 + 90, kaminari, 0 );
    setEffAlphaKey( spep_1 + 0, kaminari, 255 );
    setEffAlphaKey( spep_1 + 90, kaminari, 255 );

    spname = entryEffectLife( spep_1 + 0, 3250, 90, 0x100, -1, 0, 0, -88 ); 
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え 

    -- ** 極限背景 ** --
    haikei = entryEffectLife( spep_1 + 0, 3253, 90, 0x80, -1, 0, 0, 0 );  -- 極限背景
    setEffMoveKey( spep_1 + 0, haikei, 0, 0 , 0 );
    setEffMoveKey( spep_1 + 90, haikei, 0, 0 , 0 );
    setEffScaleKey( spep_1 + 0, haikei, 1.0, 1.0 );
    setEffScaleKey( spep_1 + 90, haikei, 1.0, 1.0 );
    setEffRotateKey( spep_1 + 0, haikei, 0 );
    setEffRotateKey( spep_1 + 90, haikei, 0 );
    setEffAlphaKey( spep_1 + 0, haikei, 255 );
    setEffAlphaKey( spep_1 + 90, haikei, 255 );
end
 
-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_1 + 0, 1035, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

-- ** 音 ** --
--かめはめ波溜め
SE018 = playSeVer2( spep_1 + 92, 1210, "",spep_2 + 106, 28, 26, -1);
setStartTimeMs( SE018,  1467 );
SE020 = playSeVer2( spep_1 + 92, 1209, "", 0, 0, 0, -1);


-------------------------------------------------
-- かめはめ波〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 350;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波〜フィニッシュ_手前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ波〜フィニッシュ_奥(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 集中線 ** --
concentr_el = entryEffectLife( spep_2 + 156 + OFFSET_X, SP_03, 38, 0x100, -1, 0, 0, 0 ); -- 集中線_白(ef_007)
setEffShake( spep_2 + 0, concentr_el, 90, 20 );
setEffMoveKey( spep_2 + 0, concentr_el, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_0, concentr_el, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, concentr_el, 1.6, 1.6 );
setEffScaleKey( spep_2 + MAX_FRAME_0, concentr_el, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, concentr_el, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_0, concentr_el, 0 );
setEffAlphaKey( spep_2 + 0, concentr_el, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_0, concentr_el, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 112 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 158 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 112 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 112 + OFFSET_X, 1, 1.6, -22 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 1.6, -22 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 1.7, -21.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 1.7, -21.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 1.8, -21.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 1.8, -21.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 1.9, -21.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 1.9, -21.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 2, -21 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 2, -21 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 2.1, -20.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 2.1, -20.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 2.1, -20.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 2.1, -20.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 2.2, -20.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 2.2, -20.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 2.2, -20.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 2.2, -20.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 2.2, -20.4 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 2.2, -20.4 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 2.3, -20.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 2.3, -20.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 2.3, -20.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 2.3, -20.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 8.3, 36.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 8.3, 36.8 , 0 );

setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.12, 2.13 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.12, 2.13 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.89, 1.9 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.89, 1.9 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.69, 1.7 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.69, 1.7 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.52, 1.53 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.52, 1.53 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.37, 1.38 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.37, 1.38 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.24, 1.25 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.24, 1.25 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.14, 1.15 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.14, 1.15 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.05, 1.06 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.05, 1.06 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.98, 0.99 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.98, 0.99 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.92, 0.93 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.92, 0.93 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.84, 0.85 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.84, 0.85 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.81, 0.82 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.81, 0.82 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.79, 0.8 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.79, 0.8 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.78, 0.79 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.78, 0.79 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.77, 0.78 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.77, 0.78 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.76, 0.77 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.76, 0.77 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.76, 0.76 );

setRotateKey( spep_2 + 112 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 30 );


-- ** 音 ** --
--かめはめ波発射
SE021 = playSeVer2( spep_2 + 74, 1022, "",spep_2 + 182, 0, 24, -1);
SE022 = playSeVer2( spep_2 + 84, 1145, "",spep_2 + 182, 0, 26, -1);
SE023 = playSeVer2( spep_2 + 84, 1211, "",spep_2 + 180, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 84, SE023, 243 );
SE024 = playSeVer2( spep_2 + 114, 1202, "", 0, 0, 0, -1);

--敵ヒット
SE025 = playSeVer2( spep_2 + 154, 1024, "", 0, 0, 0, -1);

--環境音
SE026 = playSeVer2( spep_2 + 170, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 170, SE026, 25 );

--なでる
SE027 = playSeVer2( spep_2 + 236, 1331, "",spep_2 + 296, 0, 24, -1);

--ラスト顔あげる
SE028 = playSeVer2( spep_2 + 304, 27, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 304, 34, "", 0, 0, 0, -1);
setPitch( spep_2 + 304, SE029, 500 );
setTimeStretch( SE029, 1.33, 30, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 158); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 350f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 296;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開幕〜カードカットインまで_手前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 開幕〜カードカットインまで_奥(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 集中線 ** --
concentr_el = entryEffectLife( spep_0 + 268 + OFFSET_X, SP_03, 20, 0x100, -1, 0, 0, 0 ); -- 集中線_白(ef_007)
setEffShake( spep_0 + 0, concentr_el, 90, 20 );
setEffMoveKey( spep_0 + 0, concentr_el, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, concentr_el, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, concentr_el, 1.6, 1.6 );
setEffScaleKey( spep_0 + MAX_FRAME_0, concentr_el, 1.6, 1.6 );
setEffRotateKey( spep_0 + 0, concentr_el, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, concentr_el, 0 );
setEffAlphaKey( spep_0 + 0, concentr_el, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, concentr_el, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -198, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -198, 515.5 , 0 );
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


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 118 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 224 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 118 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 128 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 146 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 168 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 184 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 204 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 118 + OFFSET_X, 1, 81.6, 73.5 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 81.6, 73.5 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 73.1, 63.5 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 73.1, 63.5 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 64.6, 53.5 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 64.6, 53.5 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 56.1, 43.5 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 56.1, 43.5 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 47.5, 33.5 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 47.5, 33.5 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 104.4, 67.1 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 104.4, 67.1 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 21.7, 13.6 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 21.7, 13.6 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 56.1, 90.6 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 56.1, 90.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 87.9, 54.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 87.9, 54.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 83.8, 63.6 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 83.8, 63.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 79.1, 70.8 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 79.1, 70.8 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 74.2, 76.4 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 74.2, 76.4 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 74.3, 77 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 74.3, 77 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 74.3, 77.1 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 74.3, 77.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 83.7, 82.7 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 83.7, 82.7 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 17.3, 44.4 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 17.3, 44.4 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 126.2, 35 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 126.2, 35 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 100.6, 94.8 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 100.6, 94.8 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 97.6, 98.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 97.6, 98.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 92.9, 100.8 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 92.9, 100.8 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 86.6, 101 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 86.6, 101 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 88.4, 103.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 88.4, 103.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 89.4, 104.3 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 89.4, 104.3 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 89.7, 104.7 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 89.7, 104.7 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 89.8, 104.8 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 89.8, 104.8 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 70.3, 125.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 70.3, 125.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 121.2, 66.2 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 121.2, 66.2 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 67.6, 80.1 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 67.6, 80.1 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 133.8, 111.5 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 133.8, 111.5 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 123.1, 111.4 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 123.1, 111.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 111.1, 109.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 111.1, 109.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 98.2, 107 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 98.2, 107 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 98.3, 107.1 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 98.3, 107.1 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 119.8, 92.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 119.8, 92.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 104.9, 141.7 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 104.9, 141.7 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 112.5, 102.6 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 112.5, 102.6 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 70.6, 95.9 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 70.6, 95.9 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 80.3, 105 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 80.3, 105 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 89, 112.8 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 89, 112.8 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 96.9, 119.7 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 96.9, 119.7 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 97.5, 120.5 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 97.5, 120.5 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 97.8, 120.7 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 97.8, 120.7 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 97.8, 120.8 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 97.8, 120.8 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 98.3, 97.1 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 98.3, 97.1 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 70.8, 43 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 70.8, 43 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 89.2, 106.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 89.2, 106.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 130.1, 72 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 130.1, 72 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 130.1, 93.7 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 130.1, 93.7 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 127.7, 113 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 127.7, 113 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 123.6, 130.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 123.6, 130.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 124.3, 131.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 124.3, 131.1 , 0 );

setScaleKey( spep_0 + 118 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 3.03, 3.03 );

setRotateKey( spep_0 + 118 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -62 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, -62 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -62 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, -62 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -62 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -62 );

--敵の動き2
setDisp( spep_0 + 268 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 298 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 268 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 268 + OFFSET_X, 1, 15.4, 117 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 15.4, 117 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -5.4, -61.8 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -5.4, -61.8 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -22.6, -211.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -22.6, -211.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -37, -336.3 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -37, -336.3 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -49, -441.7 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -49, -441.7 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -59.1, -531 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -59.1, -531 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -67.6, -607.2 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -67.6, -607.2 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -75, -672.6 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -75, -672.6 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -81.2, -728.9 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -81.2, -728.9 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -86.6, -777.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -86.6, -777.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -91.2, -818.2 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -91.2, -818.2 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -95, -852.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -95, -852.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -98, -877.5 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -98, -877.5 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -100.3, -899.8 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -100.3, -899.8 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -101.6, -912.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -101.6, -912.3 , 0 );

setScaleKey( spep_0 + 268 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 3.01, 3.01 );

setRotateKey( spep_0 + 268 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -33 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -33 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -36 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -36 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -39.5 );


-- ** 音 ** --
--飛び上がる
SE002 = playSeVer2( spep_0 + 86, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 86, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 104; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
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
--連打
SE004 = playSeVer2( spep_0 + 120, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE004, 158 );
SE005 = playSeVer2( spep_0 + 126, 1110, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 126, 1009, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 144, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 144, 1010, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 166, 1110, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 166, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 182, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 182, 1010, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 202, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 202, 1009, "", 0, 0, 0, -1);

--振りかぶる
SE015 = playSeVer2( spep_0 + 220, 1116, "",spep_0 + 270, 0, 22, -1);
SE016 = playSeVer2( spep_0 + 248, 1003, "", 0, 0, 0, -1);

--殴り飛ばす
SE017 = playSeVer2( spep_0 + 254, 1120, "",spep_0 + 304, 0, 8, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 296f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_1 + 0, speff2, -1.0, 1.0); -- 敵側のみ  
setEffScaleKey( spep_1 + 90, speff2, -1.0, 1.0); -- 敵側のみ 
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

spname = entryEffectLife( spep_1 + 0, 1512, 90, 0x100, -1, 0, 0, -88 );
setEffScaleKey( spep_1 + 0, spname, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_1 + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_1 + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_1 + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_1 + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, housha, 0 );
setEffRotateKey( spep_1 + 90, housha, 0 );
setEffAlphaKey( spep_1 + 0, housha, 255 );
setEffAlphaKey( spep_1 + 90, housha, 255 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_1 + 0, 1035, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

-- ** 音 ** --
--かめはめ波溜め
SE018 = playSeVer2( spep_1 + 92, 1210, "",spep_2 + 106, 28, 26, -1);
setStartTimeMs( SE018,  1467 );
SE020 = playSeVer2( spep_1 + 92, 1209, "", 0, 0, 0, -1);


-------------------------------------------------
-- かめはめ波〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 350;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波〜フィニッシュ_手前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ波〜フィニッシュ_奥(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 集中線 ** --
concentr_el = entryEffectLife( spep_2 + 156 + OFFSET_X, SP_03, 38, 0x100, -1, 0, 0, 0 ); -- 集中線_白(ef_007)
setEffShake( spep_2 + 0, concentr_el, 90, 20 );
setEffMoveKey( spep_2 + 0, concentr_el, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_0, concentr_el, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, concentr_el, 1.6, 1.6 );
setEffScaleKey( spep_2 + MAX_FRAME_0, concentr_el, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, concentr_el, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_0, concentr_el, 0 );
setEffAlphaKey( spep_2 + 0, concentr_el, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_0, concentr_el, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 112 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 158 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 112 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 112 + OFFSET_X, 1, -1.6, -22 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -1.6, -22 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -1.7, -21.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -1.7, -21.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -1.8, -21.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -1.8, -21.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -1.9, -21.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -1.9, -21.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -2, -21 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -2, -21 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -2.1, -20.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -2.1, -20.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -2.1, -20.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -2.1, -20.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -2.2, -20.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -2.2, -20.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -2.2, -20.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -2.2, -20.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -2.2, -20.4 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -2.2, -20.4 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -2.3, -20.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -2.3, -20.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -2.3, -20.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -2.3, -20.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -8.3, 36.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -8.3, 36.8 , 0 );

setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.12, 2.13 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.12, 2.13 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.89, 1.9 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.89, 1.9 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.69, 1.7 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.69, 1.7 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.52, 1.53 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.52, 1.53 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.37, 1.38 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.37, 1.38 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.24, 1.25 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.24, 1.25 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.14, 1.15 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.14, 1.15 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.05, 1.06 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.05, 1.06 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.98, 0.99 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.98, 0.99 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.92, 0.93 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.92, 0.93 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.84, 0.85 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.84, 0.85 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.81, 0.82 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.81, 0.82 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.79, 0.8 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.79, 0.8 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.78, 0.79 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.78, 0.79 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.77, 0.78 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.77, 0.78 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.76, 0.77 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.76, 0.77 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.76, 0.76 );

setRotateKey( spep_2 + 112 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -30 );


-- ** 音 ** --
--かめはめ波発射
SE021 = playSeVer2( spep_2 + 74, 1022, "",spep_2 + 182, 0, 24, -1);
SE022 = playSeVer2( spep_2 + 84, 1145, "",spep_2 + 182, 0, 26, -1);
SE023 = playSeVer2( spep_2 + 84, 1211, "",spep_2 + 180, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 84, SE023, 243 );
SE024 = playSeVer2( spep_2 + 114, 1202, "", 0, 0, 0, -1);

--敵ヒット
SE025 = playSeVer2( spep_2 + 154, 1024, "", 0, 0, 0, -1);

--環境音
SE026 = playSeVer2( spep_2 + 170, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 170, SE026, 25 );

--なでる
SE027 = playSeVer2( spep_2 + 236, 1331, "",spep_2 + 296, 0, 24, -1);

--ラスト顔あげる
SE028 = playSeVer2( spep_2 + 304, 27, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 304, 34, "", 0, 0, 0, -1);
setPitch( spep_2 + 304, SE029, 500 );
setTimeStretch( SE029, 1.33, 30, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 158); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 350f


end