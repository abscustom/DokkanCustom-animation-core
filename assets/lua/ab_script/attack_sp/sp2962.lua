--4022430(エネミーID未定):UR_超サイヤ人4ゴジータ_必殺技A：分身かめはめ波_エネミー側
--sp_effect_a1_00501
--sp2962

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(敵)
SP_01r  = 163988;  --ef_001r 登場〜瞬間移動〜敵蹴り落とす
SP_01b  = 163989;  --ef_001b 登場〜瞬間移動〜敵蹴り落とす
SP_02r  = 163990;  --ef_002r 敵墜落〜分身〜気弾撃つ〜爆発
SP_02b  = 163991;  --ef_002b 敵墜落〜分身〜気弾撃つ〜爆発

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

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場〜瞬間移動〜敵蹴り落とす
-------------------------------------------------
MAX_FRAME_0 = 276;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 登場〜瞬間移動〜敵蹴り落とす(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 登場〜瞬間移動〜敵蹴り落とす(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 62 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 194 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 62 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 66 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 90 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 142 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 162 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 62 + OFFSET_X, 1, 12.6, -17.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 12.6, -17.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 0.9, -3.1 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 0.9, -3.1 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -67.4, 17.9 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -67.4, 17.9 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -52.4, 0.1 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -52.4, 0.1 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -77.4, 2.3 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -77.4, 2.3 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -81.7, 10.3 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -81.7, 10.3 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -76.7, 15.6 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -76.7, 15.6 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -70.2, 6.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -70.2, 6.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -71, -0.7 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -71, -0.7 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -81.2, 0.7 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -81.2, 0.7 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -77.9, 10.1 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -77.9, 10.1 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -70.4, 16.8 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -70.4, 16.8 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -72.4, 6 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -72.4, 6 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -74.4, 5.9 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -74.4, 5.9 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -29.7, -56.3 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -29.7, -56.3 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -18.6, -23.2 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -18.6, -23.2 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -14.7, -11.7 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -14.7, -11.7 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -12.3, -4.5 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -12.3, -4.5 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -10.8, 0.1 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -10.8, 0.1 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -9.9, 2.7 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -9.9, 2.7 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -9.6, 3.5 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -9.6, 3.5 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -25.2, -116.1 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -25.2, -116.1 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -22.3, -95.4 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -22.3, -95.4 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -20.7, -84 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -20.7, -84 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -19.9, -78.7 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -19.9, -78.7 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -19.7, -76.7 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -19.7, -76.7 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -19.6, -76.3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -19.6, -76.3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -19.6, -76.2 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -19.6, -76.2 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -19.6, -76.3 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -19.6, -76.3 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -19.7, -76.3 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -19.7, -76.3 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -19.6, -76.2 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -19.6, -76.2 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 178.3, 6.7 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 178.3, 6.7 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 190.2, 3.3 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 190.2, 3.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 192.2, 1.5 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 192.2, 1.5 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 196.1, 21.7 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 196.1, 21.7 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -63.1, 22.5 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -63.1, 22.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -186.7, 70.3 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -186.7, 70.3 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -183.4, 64.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -183.4, 64.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -219.9, 59.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -219.9, 59.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -238, 61.5 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -238, 61.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -6.8, -13.3 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -6.8, -13.3 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -13.2, -7.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -13.2, -7.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 23, 53 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 23, 53 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 59.9, 91.4 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 59.9, 91.4 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 100.1, 123.4 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 100.1, 123.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 130.8, 129.6 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 130.8, 129.6 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 153.1, 122.1 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 153.1, 122.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 156.7, 128.1 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 156.7, 128.1 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 150.4, 140.3 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 150.4, 140.3 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 156.4, 146.4 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 156.4, 146.4 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 147.8, 151.4 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 147.8, 151.4 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 152.7, 157.1 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 152.7, 157.1 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 156.1, 154.3 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 156.1, 154.3 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 146.2, 152.5 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 146.2, 152.5 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 135.8, 150.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 135.8, 150.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 125.2, 147.5 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 125.2, 147.5 , 0 );

setScaleKey( spep_0 + 62 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 3.01, 2.96 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 3.01, 2.96 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 2.96 +0.0, 2.86 -0.0 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 2.96 +0.0, 2.86 -0.0 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 2.92 +0.0, 2.75 -0.0 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 2.92 +0.0, 2.75 -0.0 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 2.87 -0.1, 2.65 +0.1 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 2.87 -0.1, 2.65 +0.1 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 2.82 -0.2, 2.55 +0.2 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 2.82 -0.2, 2.55 +0.2 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 2.73 -0.2, 2.55 +0.2 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 2.73 -0.2, 2.55 +0.2 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 2.65 -0.1, 2.55 +0.1 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 2.65 -0.1, 2.55 +0.1 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 2.57 -0.2, 2.55 +0.2 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 2.57 -0.2, 2.55 +0.2 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 2.55 -0.1, 2.55 +0.1 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 2.55 -0.1, 2.55 +0.1 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 2.54 -0.05, 2.55 +0.05 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 2.54 -0.05, 2.55 +0.05 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 2.53, 2.55 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 2.53, 2.55 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.17, 0.17 );

setRotateKey( spep_0 + 62 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 67 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 68 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 69 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 70 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 71 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 72 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 73 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 74 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 75 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 76 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 77 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_0 + 79 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_0 + 80 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_0 + 83 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_0 + 84 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 87 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 88 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 89 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, -64.9 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, -64.9 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -64.8 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -64.8 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, 37.7 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, 37.7 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, 49.6 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, 49.6 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 58.2 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, 58.2 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, 64.6 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, 69.6 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, 69.6 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, 73.6 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, 73.6 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 79.6 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, 79.6 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, 81.9 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, 81.9 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, 83.9 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, 83.9 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 85.6 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, 85.6 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, 87 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, 87 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, 88.3 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, 88.3 );

--敵の動き2
setDisp( spep_0 + 258 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 278 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 260 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 258 + OFFSET_X, 1, -508.4, -757.1 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -508.4, -757.1 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -278.4, -207.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -278.4, -207.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -308.4, -247.1 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -308.4, -247.1 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -295.9, -204.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -295.9, -204.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -273.4, -175 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -273.4, -175 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -232.6, -168.7 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -232.6, -168.7 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -221.7, -202.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -221.7, -202.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -255.9, -243.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -255.9, -243.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -313.4, -221.4 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -313.4, -221.4 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -275.9, -254.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -275.9, -254.2 , 0 );

setScaleKey( spep_0 + 258 + OFFSET_X, 1, 7.29, 7.29 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 7.29, 7.29 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 2.29, 2.29 );

setRotateKey( spep_0 + 258 + OFFSET_X, 1, 59.2 )
setRotateKey( spep_0 + 259 + OFFSET_X, 1, 59.2 )
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -68.2 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 20; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);

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
--目光る
SE002 = playSeVer2( spep_0 + 32, 1283, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 32, 1240, "", 0, 0, 0, -1);
setTimeStretch( SE003, 1.33, 30, 4 );

--敵ヒット
SE004 = playSeVer2( spep_0 + 56, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE004, 88 );
SE005 = playSeVer2( spep_0 + 56, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE005, 84 );

--敵吹き飛ぶ
SE006 = playSeVer2( spep_0 + 72, 1258, "",spep_0 + 146, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 72, SE006, 61 );
SE007 = playSeVer2( spep_0 + 78, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE007, 79 );

--瞬間移動
SE008 = playSeVer2( spep_0 + 108, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE008, 56 );
SE009 = playSeVer2( spep_0 + 108, 1235, "",spep_0 + 148, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 108, SE009, 60 );
SE010 = playSeVer2( spep_0 + 112, 1109, "",spep_0 + 148, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 112, SE010, 75 );

--連続攻撃
SE011 = playSeVer2( spep_0 + 134, 1187, "",spep_0 + 184, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 134, SE011, 77 );
SE012 = playSeVer2( spep_0 + 134, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE012, 58 );
SE013 = playSeVer2( spep_0 + 142, 1187, "",spep_0 + 196, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 142, SE013, 65 );
setPitch( spep_0 + 142, SE013, -300 );
setTimeStretch( SE013, 0.8, 30, 4 );
SE014 = playSeVer2( spep_0 + 142, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE014, 47 );
SE015 = playSeVer2( spep_0 + 154, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE015, 68 );
SE016 = playSeVer2( spep_0 + 154, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE016, 56 );

--画面遷移
SE017 = playSeVer2( spep_0 + 168, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE017, 72 );

--おりてくる
SE018 = playSeVer2( spep_0 + 192, 1117, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 192, 1182, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 226, 1314, "",spep_0 + 304, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 226, SE020, 141 );
SE021 = playSeVer2( spep_0 + 226, 1258, "",spep_0 + 306, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 226, SE021, 71 );

--キックヒット
SE022 = playSeVer2( spep_0 + 256, 1190, "",spep_0 + 310, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 256, SE022, 81 );
SE023 = playSeVer2( spep_0 + 256, 1359, "",spep_0 + 312, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 256, SE023, 120 );
SE024 = playSeVer2( spep_0 + 256, 1067, "",spep_0 + 312, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 256, SE024, 75 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --276f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--敵飛ぶ
SE026 = playSeVer2( spep_1 + 92, 1183, "",spep_1 + 166, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 92, SE026, 84 );
SE027 = playSeVer2( spep_1 + 92, 1027, "", 0, 0, 0, -1);

-------------------------------------------------
-- 敵墜落〜分身〜気弾撃つ〜爆発
-------------------------------------------------
MAX_FRAME_2 = 632;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 敵墜落〜分身〜気弾撃つ〜爆発(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 敵墜落〜分身〜気弾撃つ〜爆発(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 18 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 5 );

setMoveKey( spep_2 + 0, 1, 155.9, 68.4 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 58.9, 130.5 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 58.9, 130.5 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -4.4, 171 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -4.4, 171 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -42.8, 195.5 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -42.8, 195.5 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -63.9, 209 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -63.9, 209 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -74, 215.4 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -74, 215.4 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -77.7, 217.8 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -77.7, 217.8 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -78.5, 218.4 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -78.5, 218.4 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -78.6, 218.4 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -78.6, 218.4 , 0 );

setScaleKey( spep_2 + 0, 1, 7.19, 7.19 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 0.64, 0.64 );

setRotateKey( spep_2 + 0, 1, -27.2 );
setRotateKey( spep_2 + 3 + OFFSET_X, 1, -27.2 );
setRotateKey( spep_2 + 4 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -27.1 );

-- ** 音 ** --
--ビル激突
SE028 = playSeVer2( spep_2 + 12, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE028, 89 );
SE029 = playSeVer2( spep_2 + 12, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE029, 79 );

--ゴジータ増える
SE030 = playSeVer2( spep_2 + 28, 1112, "",spep_2 + 78, 0, 22, -1);
setPitch( spep_2 + 28, SE030, 500 );
setTimeStretch( SE030, 1.33, 30, 4 );
SE031 = playSeVer2( spep_2 + 46, 1112, "",spep_2 + 84, 0, 10, -1);
setPitch( spep_2 + 46, SE031, 500 );
setTimeStretch( SE031, 1.33, 30, 4 );

--カメラ回転
SE032 = playSeVer2( spep_2 + 96, 44, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 96, 1175, "",spep_2 + 360, 0, 110, -1);
setSeVolumeByWorkId( spep_2 + 96, SE033, 40 );

--かめはめ波溜め
SE034 = playSeVer2( spep_0 + 678, 1210, "",spep_0 + 788, 12, 28, -1);
setStartTimeMs( SE034,  3500 );
SE036 = playSeVer2( spep_0 + 678, 1209, "", 0, 0, 0, -1);

--画面遷移
SE035 = playSeVer2( spep_0 + 660, 1232, "", 0, 0, 0, -1);

--かめはめ波発射
SE037 = playSeVer2( spep_0 + 752, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 752, SE037, 74 );
SE038 = playSeVer2( spep_0 + 752, 1284, "",spep_0 + 906, 0, 76, -1);
SE039 = playSeVer2( spep_0 + 752, 1285, "",spep_0 + 904, 0, 96, -1);
SE040 = playSeVer2( spep_0 + 752, 1213, "",spep_0 + 878, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 752, SE040, 65 );
SE041 = playSeVer2( spep_0 + 752, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 752, SE041, 84 );

--光る
SE042 = playSeVer2( spep_0 + 852, 1302, "", 0, 0, 0, -1);

--爆発
SE043 = playSeVer2( spep_0 + 872, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 872, SE043, 88 );
SE044 = playSeVer2( spep_0 + 872, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 872, SE044, 79 );

--地響き
SE045 = playSeVer2( spep_0 + 898, 1044, "", 0, 38, 0, -1);
SE046 = playSeVer2( spep_0 + 916, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 916, SE046, 135 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 516 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム  632f -4


end
