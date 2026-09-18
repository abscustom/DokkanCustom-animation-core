--1032430:UR_グロリオ_必殺技：スマートショット
--sp_effect_a9_00157
--sp2945

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方・敵共通)
SP_01  = 164242;  --ef_001 カード前
SP_02  = 164243;  --ef_002 カード後、敵より前
SP_02b = 164244;  --ef_002b カード後、敵より後ろ


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

ENABLE_AUTO_TIME_STRETCH(0.84);

adjustAttackerLabel( 0, 205);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 112;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- カード前(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 28;

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

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 128, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--銃構える
SE002 = playSeVer2( spep_0 + 20, 1072, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE002, 63 );
setStartTimeMs( SE002,  300 );
SE003 = playSeVer2( spep_0 + 16, 1138, "",spep_0 + 36, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 126 );
SE004 = playSeVer2( spep_0 + 16, 1301, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 150 );
SE005 = playSeVer2( spep_0 + 26, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 32, 1389, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --112f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 340;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後、敵より前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カード後、敵より前(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 98 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 218 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 98 + OFFSET_X, 1, 100 );
changeAnime( spep_2 + 116 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 150 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 194 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 318 + OFFSET_X, 1, 100 );
changeAnime( spep_2 + 334 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 98 + OFFSET_X, 1, 66.7, 25.3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 66.7, 25.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 49.1, 25.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 49.1, 25.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 31.5, 25.3 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 31.5, 25.3 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 14, 25.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 14, 25.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -3.6, 25.3 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -3.6, 25.3 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -21.2, 25.3 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -21.2, 25.3 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -38.8, 25.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -38.8, 25.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -56.3, 25.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -56.3, 25.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -104.4, 52.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -104.4, 52.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -86.2, 89.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -86.2, 89.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -65.3, 123.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -65.3, 123.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -43.5, 154.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -43.5, 154.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -20.5, 182 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -20.5, 182 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 3.8, 206.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 3.8, 206.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 30, 225.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 30, 225.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 58.9, 233.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 58.9, 233.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 81.7, 216.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 81.7, 216.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 94.1, 192.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 94.1, 192.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 101.9, 168.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 101.9, 168.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 107.3, 145.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 107.3, 145.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 111.3, 123.6 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 111.3, 123.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 114.4, 103.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 114.4, 103.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 116.8, 85.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 116.8, 85.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 118.9, 68 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 118.9, 68 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 120.6, 54.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 120.6, 54.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 153.7, 130.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 153.7, 130.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 158.7, 159.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 158.7, 159.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 163.7, 182.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 163.7, 182.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 168.7, 201.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 168.7, 201.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 173.6, 216.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 173.6, 216.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 178.4, 226.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 178.4, 226.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 183.2, 234.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 183.2, 234.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 187.9, 238.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 187.9, 238.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 192.5, 239.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 192.5, 239.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 197, 238.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 197, 238.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 201.3, 235.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 201.3, 235.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 205.5, 230.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 205.5, 230.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 209.6, 223.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 209.6, 223.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 213.6, 215.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 213.6, 215.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 217.3, 206 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 217.3, 206 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 221, 196 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 221, 196 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 224.4, 185.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 224.4, 185.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 227.7, 174.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 227.7, 174.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 230.7, 163.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 230.7, 163.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 233.6, 152.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 233.6, 152.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 236.3, 141.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 236.3, 141.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 238.8, 130.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 238.8, 130.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 194, 245.4 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 194, 245.4 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 244.1, 340.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 244.1, 340.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 302.9, 429.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 302.9, 429.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 368.3, 504.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 368.3, 504.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 434.9, 563.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 434.9, 563.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 496.8, 603.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 496.8, 603.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 550.4, 630 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 550.4, 630 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 594.8, 646.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 594.8, 646.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 630.2, 656.7 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 630.2, 656.7 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 657.3, 662.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 657.3, 662.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 676.9, 666.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 676.9, 666.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 691.4, 666.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 691.4, 666.1 , 0 );

setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.5, 1.5 );

setRotateKey( spep_2 + 98 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -42 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -42 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -42 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -42 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -28.6 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -28.6 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 25.3 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 25.3 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 29.5 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 29.5 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 44 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 44 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 47.1 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 47.1 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 49.9 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 55 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 55 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -42 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -42 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 13 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 13 );

-- ** 音 ** --
--銃撃つ1
SE009 = playSeVer2( spep_2 + 10, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 10, SE009, 200 );
setTimeStretch( SE009, 1.13, 30, 4 );
SE010 = playSeVer2( spep_2 + 10, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE010, 71 );
SE011 = playSeVer2( spep_2 + 10, 1016, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 10, 1155, "", 0, 0, 0, -1);

--銃撃つ2
SE013 = playSeVer2( spep_2 + 32, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 32, SE013, 200 );
setTimeStretch( SE013, 1.13, 30, 4 );
SE014 = playSeVer2( spep_2 + 32, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE014, 67 );
SE015 = playSeVer2( spep_2 + 32, 1016, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 32, 1155, "", 0, 0, 0, -1);

--銃撃つ3
SE017 = playSeVer2( spep_2 + 62, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 62, SE017, 200 );
setTimeStretch( SE017, 1.13, 30, 4 );
SE018 = playSeVer2( spep_2 + 62, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE018, 71 );
SE019 = playSeVer2( spep_2 + 62, 1016, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 62, 1155, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
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
--爆発
SE021 = playSeVer2( spep_2 + 94, 1021, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 110, 1023, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 140, 1011, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 176, 1023, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 176, 1024, "",spep_2 + 294, 0, 66, -1);
setSeVolumeByWorkId( spep_2 + 176, SE025, 72 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 222 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム  340f -4


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 112;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- カード前(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 28;

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

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 128, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--銃構える
SE002 = playSeVer2( spep_0 + 20, 1072, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE002, 63 );
setStartTimeMs( SE002,  300 );
SE003 = playSeVer2( spep_0 + 16, 1138, "",spep_0 + 36, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 126 );
SE004 = playSeVer2( spep_0 + 16, 1301, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 150 );
SE005 = playSeVer2( spep_0 + 26, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 32, 1389, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --112f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 340;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後、敵より前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カード後、敵より前(ef_002b)
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
setDisp( spep_2 + 98 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 218 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 98 + OFFSET_X, 1, 0 );
changeAnime( spep_2 + 116 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 150 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 194 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 318 + OFFSET_X, 1, 0 );
changeAnime( spep_2 + 334 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 98 + OFFSET_X, 1, -66.7, 25.3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -66.7, 25.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -49.1, 25.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -49.1, 25.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -31.5, 25.3 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -31.5, 25.3 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -14, 25.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -14, 25.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 3.6, 25.3 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 3.6, 25.3 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 21.2, 25.3 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 21.2, 25.3 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 38.8, 25.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 38.8, 25.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 56.3, 25.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 56.3, 25.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 104.4, 52.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 104.4, 52.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 86.2, 89.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 86.2, 89.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 65.3, 123.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 65.3, 123.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 43.5, 154.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 43.5, 154.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 20.5, 182 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 20.5, 182 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -3.8, 206.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -3.8, 206.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -30, 225.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -30, 225.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -58.9, 233.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -58.9, 233.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -81.7, 216.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -81.7, 216.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -94.1, 192.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -94.1, 192.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -101.9, 168.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -101.9, 168.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -107.3, 145.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -107.3, 145.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -111.3, 123.6 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -111.3, 123.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -114.4, 103.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -114.4, 103.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -116.8, 85.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -116.8, 85.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -118.9, 68 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -118.9, 68 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -120.6, 54.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -120.6, 54.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -153.7, 130.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -153.7, 130.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -158.7, 159.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -158.7, 159.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -163.7, 182.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -163.7, 182.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -168.7, 201.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -168.7, 201.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -173.6, 216.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -173.6, 216.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -178.4, 226.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -178.4, 226.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -183.2, 234.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -183.2, 234.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -187.9, 238.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -187.9, 238.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -192.5, 239.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -192.5, 239.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -197, 238.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -197, 238.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -201.3, 235.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -201.3, 235.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -205.5, 230.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -205.5, 230.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -209.6, 223.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -209.6, 223.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -213.6, 215.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -213.6, 215.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -217.3, 206 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -217.3, 206 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -221, 196 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -221, 196 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -224.4, 185.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -224.4, 185.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -227.7, 174.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -227.7, 174.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -230.7, 163.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -230.7, 163.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -233.6, 152.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -233.6, 152.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -236.3, 141.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -236.3, 141.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -238.8, 130.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -238.8, 130.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -194, 245.4 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -194, 245.4 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -244.1, 340.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -244.1, 340.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -302.9, 429.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -302.9, 429.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -368.3, 504.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -368.3, 504.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -434.9, 563.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -434.9, 563.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -496.8, 603.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -496.8, 603.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -550.4, 630 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -550.4, 630 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -594.8, 646.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -594.8, 646.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -630.2, 656.7 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -630.2, 656.7 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -657.3, 662.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -657.3, 662.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -676.9, 666.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -676.9, 666.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -691.4, 666.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -691.4, 666.1 , 0 );

setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.5, 1.5 );

setRotateKey( spep_2 + 98 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 28 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 28 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 23.4 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -44 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -44 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -47.1 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -47.1 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -52.6 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -52.6 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 42 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -13 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -13 );

-- ** 音 ** --
--銃撃つ1
SE009 = playSeVer2( spep_2 + 10, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 10, SE009, 200 );
setTimeStretch( SE009, 1.13, 30, 4 );
SE010 = playSeVer2( spep_2 + 10, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE010, 71 );
SE011 = playSeVer2( spep_2 + 10, 1016, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 10, 1155, "", 0, 0, 0, -1);

--銃撃つ2
SE013 = playSeVer2( spep_2 + 32, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 32, SE013, 200 );
setTimeStretch( SE013, 1.13, 30, 4 );
SE014 = playSeVer2( spep_2 + 32, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE014, 67 );
SE015 = playSeVer2( spep_2 + 32, 1016, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 32, 1155, "", 0, 0, 0, -1);

--銃撃つ3
SE017 = playSeVer2( spep_2 + 62, 1256, "", 0, 0, 0, -1);
setPitch( spep_2 + 62, SE017, 200 );
setTimeStretch( SE017, 1.13, 30, 4 );
SE018 = playSeVer2( spep_2 + 62, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE018, 71 );
SE019 = playSeVer2( spep_2 + 62, 1016, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 62, 1155, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
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
--爆発
SE021 = playSeVer2( spep_2 + 94, 1021, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 110, 1023, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 140, 1011, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 176, 1023, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 176, 1024, "",spep_2 + 294, 0, 66, -1);
setSeVolumeByWorkId( spep_2 + 176, SE025, 72 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 222 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム  340f -4


end
