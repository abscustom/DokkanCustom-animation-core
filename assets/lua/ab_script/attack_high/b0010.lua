print ("[lua]exec b0010");

ATK_01 = 0;
ATK_D = 220;
ATK_end = ATK_01+282;

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 218, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 220, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_D+0, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

MAX_FRAME_0=260

-- ** エフェクト等 ** --
--中間エフェクトなし

if (_IS_PLAYER_SIDE_ == 1) then
    effect_front = entryEffect( ATK_01 + 0, 93, 0x100, -1, 0, 0, 0);  --味方側 ef_151

else
    effect_front = entryEffect( ATK_01 + 0, 96, 0x100, -1, 0, 0, 0);  --敵側 ef_151r

end

setEffMoveKey( ATK_01 + 0, effect_front, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_front, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_front, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_front, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_front, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_front, 0);
setEffAlphaKey( ATK_01 + 0, effect_front, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_front, 255);

effect_back2 = entryEffect( ATK_01 + 0,95, 0x80, -1, 0, 0, 0); --ef_153
setEffMoveKey( ATK_01 + 0, effect_back2, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_back2, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_back2, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_back2, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_back2, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_back2, 0);
setEffAlphaKey( ATK_01 + 0, effect_back2, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_back2, 255);

--背景速度操作
if (_IS_PLAYER_SIDE_ == 1) then
	startBgScroll(ATK_01+0,-40,10);
	startBgScroll(ATK_01+150,-80,10);
	stopBgScroll(ATK_01+180,100);

else
	startBgScroll(ATK_01+0,-40,10);
	startBgScroll(ATK_01+150,-80,10);
	stopBgScroll(ATK_01+180,100);

end

-- 味方の動き
--敵と味方のどちらが手前に来るか
setDrawFront( ATK_01+0, 0, 1);

--画面振動
setShakeXY(ATK_01 + 118 + OFFSET_X,10, 40, 40);
setShakeXY(ATK_01 + 128 + OFFSET_X,4, 10, 40);
setShakeXY(ATK_01 + 220 + OFFSET_X,6, 40, 40);
setShakeXY(ATK_01 + 226 + OFFSET_X,6, 10, 30);
setShakeXY(ATK_01 + 232 + OFFSET_X,4, 40, 20);
setShakeXY(ATK_01 + 236 + OFFSET_X,8, 20, 20);
setShakeXY(ATK_01 + 244 + OFFSET_X,8, 5, 5);

-----------------------------------------------------
--味方の動き
-----------------------------------------------------
setDisp(ATK_01 + 18 + OFFSET_X, 0, 0)
setDisp(ATK_01 + 24 + OFFSET_X, 0, 1)
setDisp(ATK_01 + 26 + OFFSET_X, 0, 0)
setDisp(ATK_01 + 28 + OFFSET_X, 0, 1)
setDisp(ATK_01 + 30 + OFFSET_X, 0, 0)
setDisp(ATK_01 + 36 + OFFSET_X, 0, 1)
setDisp(ATK_01 + 42 + OFFSET_X, 0, 0)
setDisp(ATK_01 + 46 + OFFSET_X, 0, 1)
setDisp(ATK_01 + 244 + OFFSET_X, 0, 0)


changeAnime( ATK_01 + 0, 0, 18 );
changeAnime( ATK_01 + 24 + OFFSET_X, 0, 102 );
changeAnimeAndStop( ATK_01 + 36 + OFFSET_X, 0, 11 ,1)
changeAnimeAndStop( ATK_01 + 38 + OFFSET_X, 0, 11 ,3)
changeAnimeAndStop( ATK_01 + 46 + OFFSET_X, 0, 119 ,1)
changeAnime( ATK_01 + 58 + OFFSET_X, 0, 114 );
changeAnime( ATK_01 + 68 + OFFSET_X, 0, 102 );
changeAnime( ATK_01 + 72 + OFFSET_X, 0, 2 );
changeAnime( ATK_01 + 74 + OFFSET_X, 0, 18 );
changeAnime( ATK_01 + 84 + OFFSET_X, 0, 1 );
changeAnimeAndStop( ATK_01 + 98 + OFFSET_X, 0, 19 ,1)
changeAnimeAndStop( ATK_01 + 116 + OFFSET_X, 0, 11 ,3)
changeAnime( ATK_01 + 138 + OFFSET_X, 0, 0 );
changeAnime( ATK_01 + 144 + OFFSET_X, 0, 0 );
changeAnime( ATK_01 + 146 + OFFSET_X, 0, 16 );
changeAnime( ATK_01 + 188 + OFFSET_X, 0, 1 );
changeAnimeAndStop( ATK_01 + 202 + OFFSET_X, 0, 11 ,1)
changeAnimeAndStop( ATK_01 + 216 + OFFSET_X, 0, 11 ,3)

setMoveKey( ATK_01 + 0, 0, -413.8, -100.1 , 0 );
setMoveKey( ATK_01 + 2 + OFFSET_X, 0, -412.2, -100.1 , 0 );
setMoveKey( ATK_01 + 3 + OFFSET_X, 0, -412.2, -100.1 , 0 );
setMoveKey( ATK_01 + 4 + OFFSET_X, 0, -401, -100.1 , 0 );
setMoveKey( ATK_01 + 5 + OFFSET_X, 0, -401, -100.1 , 0 );
setMoveKey( ATK_01 + 6 + OFFSET_X, 0, -370.6, -100.1 , 0 );
setMoveKey( ATK_01 + 7 + OFFSET_X, 0, -370.6, -100.1 , 0 );
setMoveKey( ATK_01 + 8 + OFFSET_X, 0, -311.4, -100.1 , 0 );
setMoveKey( ATK_01 + 9 + OFFSET_X, 0, -311.4, -100.1 , 0 );
setMoveKey( ATK_01 + 10 + OFFSET_X, 0, -213.8, -100.1 , 0 );
setMoveKey( ATK_01 + 23 + OFFSET_X, 0, -213.8, -100.1 , 0 );
setMoveKey( ATK_01 + 24 + OFFSET_X, 0, 154.4, 16.1 , 0 );
setMoveKey( ATK_01 + 35 + OFFSET_X, 0, 154.4, 16.1 , 0 );
setMoveKey( ATK_01 + 36 + OFFSET_X, 0, -10.7, 264.2 , 0 );
setMoveKey( ATK_01 + 37 + OFFSET_X, 0, -10.7, 264.2 , 0 );
setMoveKey( ATK_01 + 38 + OFFSET_X, 0, -5.3, 274.1 , 0 );
setMoveKey( ATK_01 + 45 + OFFSET_X, 0, -5.3, 274.1 , 0 );
setMoveKey( ATK_01 + 46 + OFFSET_X, 0, 202.3, 315.1 , 0 );
setMoveKey( ATK_01 + 47 + OFFSET_X, 0, 202.3, 315.1 , 0 );
setMoveKey( ATK_01 + 48 + OFFSET_X, 0, 202, 315.2 , 0 );
setMoveKey( ATK_01 + 49 + OFFSET_X, 0, 202, 315.2 , 0 );
setMoveKey( ATK_01 + 50 + OFFSET_X, 0, 199.9, 316.1 , 0 );
setMoveKey( ATK_01 + 51 + OFFSET_X, 0, 199.9, 316.1 , 0 );
setMoveKey( ATK_01 + 52 + OFFSET_X, 0, 194.1, 318.4 , 0 );
setMoveKey( ATK_01 + 53 + OFFSET_X, 0, 194.1, 318.4 , 0 );
setMoveKey( ATK_01 + 54 + OFFSET_X, 0, 183, 322.9 , 0 );
setMoveKey( ATK_01 + 55 + OFFSET_X, 0, 183, 322.9 , 0 );
setMoveKey( ATK_01 + 56 + OFFSET_X, 0, 164.6, 330.3 , 0 );
setMoveKey( ATK_01 + 57 + OFFSET_X, 0, 164.6, 330.3 , 0 );
setMoveKey( ATK_01 + 58 + OFFSET_X, 0, 137.1, 341.3 , 0 );
setMoveKey( ATK_01 + 59 + OFFSET_X, 0, 137.1, 341.3 , 0 );
setMoveKey( ATK_01 + 60 + OFFSET_X, 0, 94.6, 354.6 , 0 );
setMoveKey( ATK_01 + 61 + OFFSET_X, 0, 94.6, 354.6 , 0 );
setMoveKey( ATK_01 + 62 + OFFSET_X, 0, 72.8, 361.4 , 0 );
setMoveKey( ATK_01 + 63 + OFFSET_X, 0, 72.8, 361.4 , 0 );
setMoveKey( ATK_01 + 64 + OFFSET_X, 0, 64.8, 364 , 0 );
setMoveKey( ATK_01 + 65 + OFFSET_X, 0, 64.8, 364 , 0 );
setMoveKey( ATK_01 + 66 + OFFSET_X, 0, 63.6, 364.3 , 0 );
setMoveKey( ATK_01 + 67 + OFFSET_X, 0, 63.6, 364.3 , 0 );
setMoveKey( ATK_01 + 68 + OFFSET_X, 0, 46.7, 372.8 , 0 );
setMoveKey( ATK_01 + 69 + OFFSET_X, 0, 46.7, 372.8 , 0 );
setMoveKey( ATK_01 + 70 + OFFSET_X, 0, 39.6, 376.8 , 0 );
setMoveKey( ATK_01 + 71 + OFFSET_X, 0, 39.6, 376.8 , 0 );
setMoveKey( ATK_01 + 72 + OFFSET_X, 0, 32.5, 380.8 , 0 );
setMoveKey( ATK_01 + 73 + OFFSET_X, 0, 32.5, 380.8 , 0 );
setMoveKey( ATK_01 + 74 + OFFSET_X, 0, 26.3, 382.6 , 0 );
setMoveKey( ATK_01 + 75 + OFFSET_X, 0, 26.3, 382.6 , 0 );
setMoveKey( ATK_01 + 76 + OFFSET_X, 0, 23.7, 383.9 , 0 );
setMoveKey( ATK_01 + 77 + OFFSET_X, 0, 23.7, 383.9 , 0 );
setMoveKey( ATK_01 + 78 + OFFSET_X, 0, 21.1, 385.2 , 0 );
setMoveKey( ATK_01 + 84 + OFFSET_X, 0, 21.1, 385.2 , 0 );
setMoveKey( ATK_01 + 85 + OFFSET_X, 0, 21.1, 385.2 , 0 );
setMoveKey( ATK_01 + 86 + OFFSET_X, 0, 9, 381.6 , 0 );
setMoveKey( ATK_01 + 87 + OFFSET_X, 0, 9, 381.6 , 0 );
setMoveKey( ATK_01 + 88 + OFFSET_X, 0, -3.1, 374.8 , 0 );
setMoveKey( ATK_01 + 89 + OFFSET_X, 0, -3.1, 374.8 , 0 );
setMoveKey( ATK_01 + 90 + OFFSET_X, 0, -15.2, 364 , 0 );
setMoveKey( ATK_01 + 91 + OFFSET_X, 0, -15.2, 364 , 0 );
setMoveKey( ATK_01 + 92 + OFFSET_X, 0, -27.3, 347.5 , 0 );
setMoveKey( ATK_01 + 93 + OFFSET_X, 0, -27.3, 347.5 , 0 );
setMoveKey( ATK_01 + 94 + OFFSET_X, 0, -39.4, 323.9 , 0 );
setMoveKey( ATK_01 + 95 + OFFSET_X, 0, -39.4, 323.9 , 0 );
setMoveKey( ATK_01 + 96 + OFFSET_X, 0, -51.5, 294.5 , 0 );
setMoveKey( ATK_01 + 97 + OFFSET_X, 0, -51.5, 294.5 , 0 );
setMoveKey( ATK_01 + 98 + OFFSET_X, 0, -63.6, 265.1 , 0 );
setMoveKey( ATK_01 + 99 + OFFSET_X, 0, -63.6, 265.1 , 0 );
setMoveKey( ATK_01 + 100 + OFFSET_X, 0, -63.4, 240.4 , 0 );
setMoveKey( ATK_01 + 101 + OFFSET_X, 0, -63.4, 240.4 , 0 );
setMoveKey( ATK_01 + 102 + OFFSET_X, 0, -62.1, 221.2 , 0 );
setMoveKey( ATK_01 + 103 + OFFSET_X, 0, -62.1, 221.2 , 0 );
setMoveKey( ATK_01 + 104 + OFFSET_X, 0, -58.7, 206.6 , 0 );
setMoveKey( ATK_01 + 105 + OFFSET_X, 0, -58.7, 206.6 , 0 );
setMoveKey( ATK_01 + 106 + OFFSET_X, 0, -52.1, 195.3 , 0 );
setMoveKey( ATK_01 + 107 + OFFSET_X, 0, -52.1, 195.3 , 0 );
setMoveKey( ATK_01 + 108 + OFFSET_X, 0, -41.2, 186.8 , 0 );
setMoveKey( ATK_01 + 109 + OFFSET_X, 0, -41.2, 186.8 , 0 );
setMoveKey( ATK_01 + 110 + OFFSET_X, 0, -24.9, 180.3 , 0 );
setMoveKey( ATK_01 + 111 + OFFSET_X, 0, -24.9, 180.3 , 0 );
setMoveKey( ATK_01 + 112 + OFFSET_X, 0, -2.3, 175.5 , 0 );
setMoveKey( ATK_01 + 113 + OFFSET_X, 0, -2.3, 175.5 , 0 );
setMoveKey( ATK_01 + 114 + OFFSET_X, 0, 27.9, 171.9 , 0 );
setMoveKey( ATK_01 + 115 + OFFSET_X, 0, 27.9, 171.9 , 0 );
setMoveKey( ATK_01 + 116 + OFFSET_X, 0, 66.3, 169.3 , 0 );
setMoveKey( ATK_01 + 125 + OFFSET_X, 0, 66.3, 169.3 , 0 );
setMoveKey( ATK_01 + 126 + OFFSET_X, 0, 63.6, 169.4 , 0 );
setMoveKey( ATK_01 + 127 + OFFSET_X, 0, 63.6, 169.4 , 0 );
setMoveKey( ATK_01 + 128 + OFFSET_X, 0, 56.5, 174.4 , 0 );
setMoveKey( ATK_01 + 129 + OFFSET_X, 0, 56.5, 174.4 , 0 );
setMoveKey( ATK_01 + 130 + OFFSET_X, 0, 52.6, 177.1 , 0 );
setMoveKey( ATK_01 + 131 + OFFSET_X, 0, 52.6, 177.1 , 0 );
setMoveKey( ATK_01 + 132 + OFFSET_X, 0, 50.8, 178.4 , 0 );
setMoveKey( ATK_01 + 133 + OFFSET_X, 0, 50.8, 178.4 , 0 );
setMoveKey( ATK_01 + 134 + OFFSET_X, 0, 50.1, 178.9 , 0 );
setMoveKey( ATK_01 + 135 + OFFSET_X, 0, 50.1, 178.9 , 0 );
setMoveKey( ATK_01 + 136 + OFFSET_X, 0, 49.9, 179 , 0 );
setMoveKey( ATK_01 + 139 + OFFSET_X, 0, 49.9, 179 , 0 );
setMoveKey( ATK_01 + 140 + OFFSET_X, 0, 48.2, 180.5 , 0 );
setMoveKey( ATK_01 + 141 + OFFSET_X, 0, 48.2, 180.5 , 0 );
setMoveKey( ATK_01 + 142 + OFFSET_X, 0, 46.5, 182 , 0 );
setMoveKey( ATK_01 + 143 + OFFSET_X, 0, 46.5, 182 , 0 );
setMoveKey( ATK_01 + 144 + OFFSET_X, 0, 44.8, 183.9 , 0 );
setMoveKey( ATK_01 + 145 + OFFSET_X, 0, 44.8, 183.9 , 0 );
setMoveKey( ATK_01 + 146 + OFFSET_X, 0, 29.9, 184.8 , 0 );
setMoveKey( ATK_01 + 147 + OFFSET_X, 0, 29.9, 184.8 , 0 );
setMoveKey( ATK_01 + 148 + OFFSET_X, 0, 29.9, 184.7 , 0 );
setMoveKey( ATK_01 + 149 + OFFSET_X, 0, 29.9, 184.7 , 0 );
setMoveKey( ATK_01 + 150 + OFFSET_X, 0, 29.8, 184.5 , 0 );
setMoveKey( ATK_01 + 151 + OFFSET_X, 0, 29.8, 184.5 , 0 );
setMoveKey( ATK_01 + 152 + OFFSET_X, 0, 29.5, 184 , 0 );
setMoveKey( ATK_01 + 153 + OFFSET_X, 0, 29.5, 184 , 0 );
setMoveKey( ATK_01 + 154 + OFFSET_X, 0, 28.8, 183.3 , 0 );
setMoveKey( ATK_01 + 155 + OFFSET_X, 0, 28.8, 183.3 , 0 );
setMoveKey( ATK_01 + 156 + OFFSET_X, 0, 27.8, 182.2 , 0 );
setMoveKey( ATK_01 + 157 + OFFSET_X, 0, 27.8, 182.2 , 0 );
setMoveKey( ATK_01 + 158 + OFFSET_X, 0, 26.2, 180.8 , 0 );
setMoveKey( ATK_01 + 159 + OFFSET_X, 0, 26.2, 180.8 , 0 );
setMoveKey( ATK_01 + 160 + OFFSET_X, 0, 24, 178.8 , 0 );
setMoveKey( ATK_01 + 161 + OFFSET_X, 0, 24, 178.8 , 0 );
setMoveKey( ATK_01 + 162 + OFFSET_X, 0, 21.1, 176.4 , 0 );
setMoveKey( ATK_01 + 163 + OFFSET_X, 0, 21.1, 176.4 , 0 );
setMoveKey( ATK_01 + 164 + OFFSET_X, 0, 17.3, 173.4 , 0 );
setMoveKey( ATK_01 + 165 + OFFSET_X, 0, 17.3, 173.4 , 0 );
setMoveKey( ATK_01 + 166 + OFFSET_X, 0, 12.7, 169.6 , 0 );
setMoveKey( ATK_01 + 167 + OFFSET_X, 0, 12.7, 169.6 , 0 );
setMoveKey( ATK_01 + 168 + OFFSET_X, 0, 6.9, 165.1 , 0 );
setMoveKey( ATK_01 + 169 + OFFSET_X, 0, 6.9, 165.1 , 0 );
setMoveKey( ATK_01 + 170 + OFFSET_X, 0, 0.1, 159.7 , 0 );
setMoveKey( ATK_01 + 171 + OFFSET_X, 0, 0.1, 159.7 , 0 );
setMoveKey( ATK_01 + 172 + OFFSET_X, 0, -8, 153.1 , 0 );
setMoveKey( ATK_01 + 173 + OFFSET_X, 0, -8, 153.1 , 0 );
setMoveKey( ATK_01 + 174 + OFFSET_X, 0, -17.5, 145.4 , 0 );
setMoveKey( ATK_01 + 175 + OFFSET_X, 0, -17.5, 145.4 , 0 );
setMoveKey( ATK_01 + 176 + OFFSET_X, 0, -28.4, 136.1 , 0 );
setMoveKey( ATK_01 + 177 + OFFSET_X, 0, -28.4, 136.1 , 0 );
setMoveKey( ATK_01 + 178 + OFFSET_X, 0, -40.9, 124.7 , 0 );
setMoveKey( ATK_01 + 179 + OFFSET_X, 0, -40.9, 124.7 , 0 );
setMoveKey( ATK_01 + 180 + OFFSET_X, 0, -55, 110.5 , 0 );
setMoveKey( ATK_01 + 181 + OFFSET_X, 0, -55, 110.5 , 0 );
setMoveKey( ATK_01 + 182 + OFFSET_X, 0, -70.9, 92.4 , 0 );
setMoveKey( ATK_01 + 183 + OFFSET_X, 0, -70.9, 92.4 , 0 );
setMoveKey( ATK_01 + 184 + OFFSET_X, 0, -88.6, 70.8 , 0 );
setMoveKey( ATK_01 + 185 + OFFSET_X, 0, -88.6, 70.8 , 0 );
setMoveKey( ATK_01 + 186 + OFFSET_X, 0, -108.4, 54.6 , 0 );
setMoveKey( ATK_01 + 187 + OFFSET_X, 0, -108.4, 54.6 , 0 );
setMoveKey( ATK_01 + 188 + OFFSET_X, 0, -121.9, 28 , 0 );
setMoveKey( ATK_01 + 189 + OFFSET_X, 0, -121.9, 28 , 0 );
setMoveKey( ATK_01 + 190 + OFFSET_X, 0, -128.6, 25.7 , 0 );
setMoveKey( ATK_01 + 191 + OFFSET_X, 0, -128.6, 25.7 , 0 );
setMoveKey( ATK_01 + 192 + OFFSET_X, 0, -135.3, 23.4 , 0 );
setMoveKey( ATK_01 + 193 + OFFSET_X, 0, -135.3, 23.4 , 0 );
setMoveKey( ATK_01 + 194 + OFFSET_X, 0, -142.1, 21.1 , 0 );
setMoveKey( ATK_01 + 201 + OFFSET_X, 0, -142.1, 21.1 , 0 );
setMoveKey( ATK_01 + 202 + OFFSET_X, 0, -115.6, 20.7 , 0 );
setMoveKey( ATK_01 + 207 + OFFSET_X, 0, -115.6, 20.7 , 0 );
setMoveKey( ATK_01 + 208 + OFFSET_X, 0, -107.1, 20.7 , 0 );
setMoveKey( ATK_01 + 209 + OFFSET_X, 0, -107.1, 20.7 , 0 );
setMoveKey( ATK_01 + 210 + OFFSET_X, 0, -84.5, 20.7 , 0 );
setMoveKey( ATK_01 + 211 + OFFSET_X, 0, -84.5, 20.7 , 0 );
setMoveKey( ATK_01 + 212 + OFFSET_X, 0, -61.9, 20.7 , 0 );
setMoveKey( ATK_01 + 213 + OFFSET_X, 0, -61.9, 20.7 , 0 );
setMoveKey( ATK_01 + 214 + OFFSET_X, 0, -39.3, 20.7 , 0 );
setMoveKey( ATK_01 + 215 + OFFSET_X, 0, -39.3, 20.7 , 0 );
setMoveKey( ATK_01 + 216 + OFFSET_X, 0, -49.7, 21.5 , 0 );
setMoveKey( ATK_01 + 227 + OFFSET_X, 0, -49.7, 21.5 , 0 );
setMoveKey( ATK_01 + 228 + OFFSET_X, 0, -83.6, 21.5 , 0 );
setMoveKey( ATK_01 + 229 + OFFSET_X, 0, -83.6, 21.5 , 0 );
setMoveKey( ATK_01 + 230 + OFFSET_X, 0, -151.8, 21.5 , 0 );
setMoveKey( ATK_01 + 231 + OFFSET_X, 0, -151.8, 21.5 , 0 );
setMoveKey( ATK_01 + 232 + OFFSET_X, 0, -220, 21.5 , 0 );
setMoveKey( ATK_01 + 233 + OFFSET_X, 0, -220, 21.5 , 0 );
setMoveKey( ATK_01 + 234 + OFFSET_X, 0, -288.2, 21.5 , 0 );
setMoveKey( ATK_01 + 235 + OFFSET_X, 0, -288.2, 21.5 , 0 );
setMoveKey( ATK_01 + 236 + OFFSET_X, 0, -356.3, 21.5 , 0 );
setMoveKey( ATK_01 + 237 + OFFSET_X, 0, -356.3, 21.5 , 0 );
setMoveKey( ATK_01 + 238 + OFFSET_X, 0, -424.5, 21.5 , 0 );
setMoveKey( ATK_01 + 239 + OFFSET_X, 0, -424.5, 21.5 , 0 );
setMoveKey( ATK_01 + 240 + OFFSET_X, 0, -492.7, 21.5 , 0 );
setMoveKey( ATK_01 + 241 + OFFSET_X, 0, -492.7, 21.5 , 0 );
setMoveKey( ATK_01 + 242 + OFFSET_X, 0, -560.8, 21.5 , 0 );
setMoveKey( ATK_01 + ATK_end-3, 0, -560.8, 21.5 , 0 );
setMoveKey( ATK_01 + ATK_end-2, 0, 2000, 0 , 0 );

setScaleKey( ATK_01 + 0, 0, 2.41, 2.41 );
setScaleKey( ATK_01 + 2 + OFFSET_X, 0, 2.41, 2.41 );
setScaleKey( ATK_01 + 3 + OFFSET_X, 0, 2.41, 2.41 );
setScaleKey( ATK_01 + 4 + OFFSET_X, 0, 2.41, 2.41 );
setScaleKey( ATK_01 + 5 + OFFSET_X, 0, 2.41, 2.41 );
setScaleKey( ATK_01 + 6 + OFFSET_X, 0, 2.41, 2.41 );
setScaleKey( ATK_01 + 7 + OFFSET_X, 0, 2.41, 2.41 );
setScaleKey( ATK_01 + 23 + OFFSET_X, 0, 2.41, 2.41 );
setScaleKey( ATK_01 + 24 + OFFSET_X, 0, 1.44, 1.44 );
setScaleKey( ATK_01 + 35 + OFFSET_X, 0, 1.44, 1.44 );
setScaleKey( ATK_01 + 36 + OFFSET_X, 0, 0.63, 0.63 );
setScaleKey( ATK_01 + 37 + OFFSET_X, 0, 0.63, 0.63 );
setScaleKey( ATK_01 + 38 + OFFSET_X, 0, 0.58, 0.58 );
setScaleKey( ATK_01 + 45 + OFFSET_X, 0, 0.58, 0.58 );
setScaleKey( ATK_01 + 46 + OFFSET_X, 0, 0.3, 0.3 );
setScaleKey( ATK_01 + 49 + OFFSET_X, 0, 0.3, 0.3 );
setScaleKey( ATK_01 + 50 + OFFSET_X, 0, 0.29, 0.29 );
setScaleKey( ATK_01 + 53 + OFFSET_X, 0, 0.29, 0.29 );
setScaleKey( ATK_01 + 54 + OFFSET_X, 0, 0.28, 0.28 );
setScaleKey( ATK_01 + 55 + OFFSET_X, 0, 0.28, 0.28 );
setScaleKey( ATK_01 + 56 + OFFSET_X, 0, 0.26, 0.26 );
setScaleKey( ATK_01 + 57 + OFFSET_X, 0, 0.26, 0.26 );
setScaleKey( ATK_01 + 58 + OFFSET_X, 0, 0.23, 0.23 );
setScaleKey( ATK_01 + 63 + OFFSET_X, 0, 0.23, 0.23 );
setScaleKey( ATK_01 + 64 + OFFSET_X, 0, 0.24, 0.24 );
setScaleKey( ATK_01 + 67 + OFFSET_X, 0, 0.24, 0.24 );
setScaleKey( ATK_01 + 68 + OFFSET_X, 0, 0.22, 0.22 );
setScaleKey( ATK_01 + 109 + OFFSET_X, 0, 0.22, 0.22 );
setScaleKey( ATK_01 + 110 + OFFSET_X, 0, 0.21, 0.21 );
setScaleKey( ATK_01 + 145 + OFFSET_X, 0, 0.21, 0.21 );
setScaleKey( ATK_01 + 146 + OFFSET_X, 0, 0.18, 0.18 );
setScaleKey( ATK_01 + 153 + OFFSET_X, 0, 0.18, 0.18 );
setScaleKey( ATK_01 + 154 + OFFSET_X, 0, 0.19, 0.19 );
setScaleKey( ATK_01 + 159 + OFFSET_X, 0, 0.19, 0.19 );
setScaleKey( ATK_01 + 160 + OFFSET_X, 0, 0.2, 0.2 );
setScaleKey( ATK_01 + 163 + OFFSET_X, 0, 0.2, 0.2 );
setScaleKey( ATK_01 + 164 + OFFSET_X, 0, 0.21, 0.21 );
setScaleKey( ATK_01 + 165 + OFFSET_X, 0, 0.21, 0.21 );
setScaleKey( ATK_01 + 166 + OFFSET_X, 0, 0.23, 0.23 );
setScaleKey( ATK_01 + 167 + OFFSET_X, 0, 0.23, 0.23 );
setScaleKey( ATK_01 + 168 + OFFSET_X, 0, 0.24, 0.24 );
setScaleKey( ATK_01 + 169 + OFFSET_X, 0, 0.24, 0.24 );
setScaleKey( ATK_01 + 170 + OFFSET_X, 0, 0.26, 0.26 );
setScaleKey( ATK_01 + 171 + OFFSET_X, 0, 0.26, 0.26 );
setScaleKey( ATK_01 + 172 + OFFSET_X, 0, 0.28, 0.28 );
setScaleKey( ATK_01 + 173 + OFFSET_X, 0, 0.28, 0.28 );
setScaleKey( ATK_01 + 174 + OFFSET_X, 0, 0.3, 0.3 );
setScaleKey( ATK_01 + 175 + OFFSET_X, 0, 0.3, 0.3 );
setScaleKey( ATK_01 + 176 + OFFSET_X, 0, 0.33, 0.33 );
setScaleKey( ATK_01 + 177 + OFFSET_X, 0, 0.33, 0.33 );
setScaleKey( ATK_01 + 178 + OFFSET_X, 0, 0.36, 0.36 );
setScaleKey( ATK_01 + 179 + OFFSET_X, 0, 0.36, 0.36 );
setScaleKey( ATK_01 + 180 + OFFSET_X, 0, 0.4, 0.4 );
setScaleKey( ATK_01 + 181 + OFFSET_X, 0, 0.4, 0.4 );
setScaleKey( ATK_01 + 182 + OFFSET_X, 0, 0.44, 0.44 );
setScaleKey( ATK_01 + 183 + OFFSET_X, 0, 0.44, 0.44 );
setScaleKey( ATK_01 + 184 + OFFSET_X, 0, 0.48, 0.48 );
setScaleKey( ATK_01 + 185 + OFFSET_X, 0, 0.48, 0.48 );
setScaleKey( ATK_01 + 186 + OFFSET_X, 0, 0.53, 0.53 );
setScaleKey( ATK_01 + 187 + OFFSET_X, 0, 0.53, 0.53 );
setScaleKey( ATK_01 + 188 + OFFSET_X, 0, 1.05, 1.05 );
setScaleKey( ATK_01 + 189 + OFFSET_X, 0, 1.05, 1.05 );
setScaleKey( ATK_01 + 190 + OFFSET_X, 0, 1.09, 1.09 );
setScaleKey( ATK_01 + 191 + OFFSET_X, 0, 1.09, 1.09 );
setScaleKey( ATK_01 + 192 + OFFSET_X, 0, 1.12, 1.12 );
setScaleKey( ATK_01 + 193 + OFFSET_X, 0, 1.12, 1.12 );
setScaleKey( ATK_01 + 194 + OFFSET_X, 0, 1.16, 1.16 );
setScaleKey( ATK_01 + ATK_end, 0, 1.16, 1.16 );

setRotateKey( ATK_01 + 0, 0, 0 );
setRotateKey( ATK_01 + 2 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 3 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 4 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 5 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 6 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 7 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 35 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 36 + OFFSET_X, 0, -22.7 );
setRotateKey( ATK_01 + 37 + OFFSET_X, 0, -22.7 );
setRotateKey( ATK_01 + 38 + OFFSET_X, 0, -15.4 );
setRotateKey( ATK_01 + 45 + OFFSET_X, 0, -15.4 );
setRotateKey( ATK_01 + 46 + OFFSET_X, 0, 9.5 );
setRotateKey( ATK_01 + 47 + OFFSET_X, 0, 9.5 );
setRotateKey( ATK_01 + 48 + OFFSET_X, 0, 9.4 );
setRotateKey( ATK_01 + 49 + OFFSET_X, 0, 9.4 );
setRotateKey( ATK_01 + 50 + OFFSET_X, 0, 9 );
setRotateKey( ATK_01 + 51 + OFFSET_X, 0, 9 );
setRotateKey( ATK_01 + 52 + OFFSET_X, 0, 7.9 );
setRotateKey( ATK_01 + 53 + OFFSET_X, 0, 7.9 );
setRotateKey( ATK_01 + 54 + OFFSET_X, 0, 5.6 );
setRotateKey( ATK_01 + 55 + OFFSET_X, 0, 5.6 );
setRotateKey( ATK_01 + 56 + OFFSET_X, 0, 1.8 );
setRotateKey( ATK_01 + 57 + OFFSET_X, 0, 1.8 );
setRotateKey( ATK_01 + 58 + OFFSET_X, 0, -3.7 );
setRotateKey( ATK_01 + 67 + OFFSET_X, 0, -3.7 );
setRotateKey( ATK_01 + 68 + OFFSET_X, 0, -0.5 );
setRotateKey( ATK_01 + 69 + OFFSET_X, 0, -0.5 );
setRotateKey( ATK_01 + 70 + OFFSET_X, 0, 8.4 );
setRotateKey( ATK_01 + 71 + OFFSET_X, 0, 8.4 );
setRotateKey( ATK_01 + 72 + OFFSET_X, 0, 17.2 );
setRotateKey( ATK_01 + 85 + OFFSET_X, 0, 17.2 );
setRotateKey( ATK_01 + 86 + OFFSET_X, 0, 15.8 );
setRotateKey( ATK_01 + 87 + OFFSET_X, 0, 15.8 );
setRotateKey( ATK_01 + 88 + OFFSET_X, 0, 14.3 );
setRotateKey( ATK_01 + 89 + OFFSET_X, 0, 14.3 );
setRotateKey( ATK_01 + 90 + OFFSET_X, 0, 12.8 );
setRotateKey( ATK_01 + 91 + OFFSET_X, 0, 12.8 );
setRotateKey( ATK_01 + 92 + OFFSET_X, 0, 11.4 );
setRotateKey( ATK_01 + 93 + OFFSET_X, 0, 11.4 );
setRotateKey( ATK_01 + 94 + OFFSET_X, 0, 9.9 );
setRotateKey( ATK_01 + 95 + OFFSET_X, 0, 9.9 );
setRotateKey( ATK_01 + 96 + OFFSET_X, 0, 8.5 );
setRotateKey( ATK_01 + 97 + OFFSET_X, 0, 8.5 );
setRotateKey( ATK_01 + 98 + OFFSET_X, 0, 7 );
setRotateKey( ATK_01 + 101 + OFFSET_X, 0, 7 );
setRotateKey( ATK_01 + 102 + OFFSET_X, 0, 7.2 );
setRotateKey( ATK_01 + 103 + OFFSET_X, 0, 7.2 );
setRotateKey( ATK_01 + 104 + OFFSET_X, 0, 7.7 );
setRotateKey( ATK_01 + 105 + OFFSET_X, 0, 7.7 );
setRotateKey( ATK_01 + 106 + OFFSET_X, 0, 8.6 );
setRotateKey( ATK_01 + 107 + OFFSET_X, 0, 8.6 );
setRotateKey( ATK_01 + 108 + OFFSET_X, 0, 10.2 );
setRotateKey( ATK_01 + 109 + OFFSET_X, 0, 10.2 );
setRotateKey( ATK_01 + 110 + OFFSET_X, 0, 12.5 );
setRotateKey( ATK_01 + 111 + OFFSET_X, 0, 12.5 );
setRotateKey( ATK_01 + 112 + OFFSET_X, 0, 15.8 );
setRotateKey( ATK_01 + 113 + OFFSET_X, 0, 15.8 );
setRotateKey( ATK_01 + 114 + OFFSET_X, 0, 20.1 );
setRotateKey( ATK_01 + 115 + OFFSET_X, 0, 20.1 );
setRotateKey( ATK_01 + 116 + OFFSET_X, 0, 25.6 );
setRotateKey( ATK_01 + 145 + OFFSET_X, 0, 25.6 );
setRotateKey( ATK_01 + 146 + OFFSET_X, 0, 23.4 );
setRotateKey( ATK_01 + 187 + OFFSET_X, 0, 23.4 );
setRotateKey( ATK_01 + 188 + OFFSET_X, 0, -11.5 );
setRotateKey( ATK_01 + 201 + OFFSET_X, 0, -11.5 );
setRotateKey( ATK_01 + 202 + OFFSET_X, 0, -27 );
setRotateKey( ATK_01 + 215 + OFFSET_X, 0, -27 );
setRotateKey( ATK_01 + 216 + OFFSET_X, 0, 3.9 );
setRotateKey( ATK_01 + ATK_end, 0, 3.9 );

-----------------------------------------------------
--敵の動き
-----------------------------------------------------

if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then

	setDisp(ATK_01 + 18 + OFFSET_X, 1, 0)
	setDisp(ATK_01 + 24 + OFFSET_X, 1, 1)
	setDisp(ATK_01 + 26 + OFFSET_X, 1, 0)
	setDisp(ATK_01 + 28 + OFFSET_X, 1, 1)
	setDisp(ATK_01 + 30 + OFFSET_X, 1, 0)
	setDisp(ATK_01 + 36 + OFFSET_X, 1, 1)
	setDisp(ATK_01 + 42 + OFFSET_X, 1, 0)
	setDisp(ATK_01 + 46 + OFFSET_X, 1, 1)
	setDisp(ATK_01 + ATK_end - 2, 1, 0)

	changeAnime( ATK_01 + 0, 1, 100 );
	changeAnime( ATK_01 + 24 + OFFSET_X, 1, 0 );
	changeAnimeAndStop( ATK_01 + 36 + OFFSET_X, 1, 119 ,1)
	changeAnimeAndStop( ATK_01 + 38 + OFFSET_X, 1, 119 ,10)
	--changeAnime( ATK_01 + 38 + OFFSET_X, 1, , atc_energyball_e_03 );
	changeAnime( ATK_01 + 46 + OFFSET_X, 1, 3 );
	changeAnime( ATK_01 + 66 + OFFSET_X, 1, 104 );
	changeAnime( ATK_01 + 68 + OFFSET_X, 1, 102 );
	changeAnime( ATK_01 + 100 + OFFSET_X, 1, 103 );
	changeAnime( ATK_01 + 116 + OFFSET_X, 1, 113 );
	changeAnimeAndStop( ATK_01 + 138 + OFFSET_X, 1, 119 ,1)
	--changeAnime( ATK_01 + 138 + OFFSET_X, 1, , atc_energyball_e_02 );
	changeAnime( ATK_01 + 144 + OFFSET_X, 1, 101 );
	changeAnime( ATK_01 + 146 + OFFSET_X, 1, 116 );
	changeAnime( ATK_01 + 192 + OFFSET_X, 1, 101 );
	changeAnime( ATK_01 + 198 + OFFSET_X, 1, 102 );
	changeAnime( ATK_01 + 216 + OFFSET_X, 1, 104 );

	setMoveKey( ATK_01 + 0, 1, 307.5, 0 , 0 );
	setMoveKey( ATK_01 + 2 + OFFSET_X, 1, 306.4, 0 , 0 );
	setMoveKey( ATK_01 + 3 + OFFSET_X, 1, 306.4, 0 , 0 );
	setMoveKey( ATK_01 + 4 + OFFSET_X, 1, 298.6, 0 , 0 );
	setMoveKey( ATK_01 + 5 + OFFSET_X, 1, 298.6, 0 , 0 );
	setMoveKey( ATK_01 + 6 + OFFSET_X, 1, 277.3, 0 , 0 );
	setMoveKey( ATK_01 + 7 + OFFSET_X, 1, 277.3, 0 , 0 );
	setMoveKey( ATK_01 + 8 + OFFSET_X, 1, 235.8, 0 , 0 );
	setMoveKey( ATK_01 + 9 + OFFSET_X, 1, 235.8, 0 , 0 );
	setMoveKey( ATK_01 + 10 + OFFSET_X, 1, 167.5, 0 , 0 );
	setMoveKey( ATK_01 + 23 + OFFSET_X, 1, 167.5, 0 , 0 );
	setMoveKey( ATK_01 + 24 + OFFSET_X, 1, -145.1, 90.7 , 0 );
	setMoveKey( ATK_01 + 35 + OFFSET_X, 1, -145.1, 90.7 , 0 );
	setMoveKey( ATK_01 + 36 + OFFSET_X, 1, 73.5, 308.2 , 0 );
	setMoveKey( ATK_01 + 37 + OFFSET_X, 1, 73.5, 308.2 , 0 );
	setMoveKey( ATK_01 + 38 + OFFSET_X, 1, 78.8, 308.2 , 0 );
	setMoveKey( ATK_01 + 45 + OFFSET_X, 1, 78.8, 308.2 , 0 );
	setMoveKey( ATK_01 + 46 + OFFSET_X, 1, 25.7, 376.2 , 0 );
	setMoveKey( ATK_01 + 49 + OFFSET_X, 1, 25.7, 376.2 , 0 );
	setMoveKey( ATK_01 + 50 + OFFSET_X, 1, 43.8, 371.3 , 0 );
	setMoveKey( ATK_01 + 51 + OFFSET_X, 1, 43.8, 371.3 , 0 );
	setMoveKey( ATK_01 + 52 + OFFSET_X, 1, 61.9, 366.4 , 0 );
	setMoveKey( ATK_01 + 53 + OFFSET_X, 1, 61.9, 366.4 , 0 );
	setMoveKey( ATK_01 + 54 + OFFSET_X, 1, 80, 361.5 , 0 );
	setMoveKey( ATK_01 + 55 + OFFSET_X, 1, 80, 361.5 , 0 );
	setMoveKey( ATK_01 + 56 + OFFSET_X, 1, 98, 356.6 , 0 );
	setMoveKey( ATK_01 + 57 + OFFSET_X, 1, 98, 356.6 , 0 );
	setMoveKey( ATK_01 + 58 + OFFSET_X, 1, 116.1, 351.8 , 0 );
	setMoveKey( ATK_01 + 59 + OFFSET_X, 1, 116.1, 351.8 , 0 );
	setMoveKey( ATK_01 + 60 + OFFSET_X, 1, 134.2, 346.9 , 0 );
	setMoveKey( ATK_01 + 61 + OFFSET_X, 1, 134.2, 346.9 , 0 );
	setMoveKey( ATK_01 + 62 + OFFSET_X, 1, 152.3, 342 , 0 );
	setMoveKey( ATK_01 + 63 + OFFSET_X, 1, 152.3, 342 , 0 );
	setMoveKey( ATK_01 + 64 + OFFSET_X, 1, 170.3, 337.1 , 0 );
	setMoveKey( ATK_01 + 65 + OFFSET_X, 1, 170.3, 337.1 , 0 );
	setMoveKey( ATK_01 + 66 + OFFSET_X, 1, 188.4, 332.2 , 0 );
	setMoveKey( ATK_01 + 67 + OFFSET_X, 1, 188.4, 332.2 , 0 );
	setMoveKey( ATK_01 + 68 + OFFSET_X, 1, 200, 326.9 , 0 );
	setMoveKey( ATK_01 + 69 + OFFSET_X, 1, 200, 326.9 , 0 );
	setMoveKey( ATK_01 + 70 + OFFSET_X, 1, 202, 326.3 , 0 );
	setMoveKey( ATK_01 + 71 + OFFSET_X, 1, 202, 326.3 , 0 );
	setMoveKey( ATK_01 + 72 + OFFSET_X, 1, 203.9, 325.7 , 0 );
	setMoveKey( ATK_01 + 73 + OFFSET_X, 1, 203.9, 325.7 , 0 );
	setMoveKey( ATK_01 + 74 + OFFSET_X, 1, 205.9, 325.1 , 0 );
	setMoveKey( ATK_01 + 75 + OFFSET_X, 1, 205.9, 325.1 , 0 );
	setMoveKey( ATK_01 + 76 + OFFSET_X, 1, 207.9, 324.5 , 0 );
	setMoveKey( ATK_01 + 77 + OFFSET_X, 1, 207.9, 324.5 , 0 );
	setMoveKey( ATK_01 + 78 + OFFSET_X, 1, 209.8, 323.9 , 0 );
	setMoveKey( ATK_01 + 79 + OFFSET_X, 1, 209.8, 323.9 , 0 );
	setMoveKey( ATK_01 + 80 + OFFSET_X, 1, 211.8, 323.2 , 0 );
	setMoveKey( ATK_01 + 81 + OFFSET_X, 1, 211.8, 323.2 , 0 );
	setMoveKey( ATK_01 + 82 + OFFSET_X, 1, 213.8, 322.6 , 0 );
	setMoveKey( ATK_01 + 85 + OFFSET_X, 1, 213.8, 322.6 , 0 );
	setMoveKey( ATK_01 + 86 + OFFSET_X, 1, 220.3, 320 , 0 );
	setMoveKey( ATK_01 + 87 + OFFSET_X, 1, 220.3, 320 , 0 );
	setMoveKey( ATK_01 + 88 + OFFSET_X, 1, 226.9, 315.1 , 0 );
	setMoveKey( ATK_01 + 89 + OFFSET_X, 1, 226.9, 315.1 , 0 );
	setMoveKey( ATK_01 + 90 + OFFSET_X, 1, 233.5, 307.2 , 0 );
	setMoveKey( ATK_01 + 91 + OFFSET_X, 1, 233.5, 307.2 , 0 );
	setMoveKey( ATK_01 + 92 + OFFSET_X, 1, 240.1, 295.2 , 0 );
	setMoveKey( ATK_01 + 93 + OFFSET_X, 1, 240.1, 295.2 , 0 );
	setMoveKey( ATK_01 + 94 + OFFSET_X, 1, 246.6, 278.1 , 0 );
	setMoveKey( ATK_01 + 95 + OFFSET_X, 1, 246.6, 278.1 , 0 );
	setMoveKey( ATK_01 + 96 + OFFSET_X, 1, 253.2, 256.8 , 0 );
	setMoveKey( ATK_01 + 97 + OFFSET_X, 1, 253.2, 256.8 , 0 );
	setMoveKey( ATK_01 + 98 + OFFSET_X, 1, 259.8, 235.4 , 0 );
	setMoveKey( ATK_01 + 99 + OFFSET_X, 1, 259.8, 235.4 , 0 );
	setMoveKey( ATK_01 + 100 + OFFSET_X, 1, 266.4, 217.5 , 0 );
	setMoveKey( ATK_01 + 101 + OFFSET_X, 1, 266.4, 217.5 , 0 );
	setMoveKey( ATK_01 + 102 + OFFSET_X, 1, 247.5, 203.6 , 0 );
	setMoveKey( ATK_01 + 103 + OFFSET_X, 1, 247.5, 203.6 , 0 );
	setMoveKey( ATK_01 + 104 + OFFSET_X, 1, 228.6, 193 , 0 );
	setMoveKey( ATK_01 + 105 + OFFSET_X, 1, 228.6, 193 , 0 );
	setMoveKey( ATK_01 + 106 + OFFSET_X, 1, 209.7, 184.8 , 0 );
	setMoveKey( ATK_01 + 107 + OFFSET_X, 1, 209.7, 184.8 , 0 );
	setMoveKey( ATK_01 + 108 + OFFSET_X, 1, 190.7, 178.6 , 0 );
	setMoveKey( ATK_01 + 109 + OFFSET_X, 1, 190.7, 178.6 , 0 );
	setMoveKey( ATK_01 + 110 + OFFSET_X, 1, 171.8, 173.9 , 0 );
	setMoveKey( ATK_01 + 111 + OFFSET_X, 1, 171.8, 173.9 , 0 );
	setMoveKey( ATK_01 + 112 + OFFSET_X, 1, 152.9, 170.3 , 0 );
	setMoveKey( ATK_01 + 113 + OFFSET_X, 1, 152.9, 170.3 , 0 );
	setMoveKey( ATK_01 + 114 + OFFSET_X, 1, 134, 167.8 , 0 );
	setMoveKey( ATK_01 + 115 + OFFSET_X, 1, 134, 167.8 , 0 );
	setMoveKey( ATK_01 + 116 + OFFSET_X, 1, 115.1, 166 , 0 );
	setMoveKey( ATK_01 + 125 + OFFSET_X, 1, 115.1, 166 , 0 );
	setMoveKey( ATK_01 + 126 + OFFSET_X, 1, 115.3, 166.1 , 0 );
	setMoveKey( ATK_01 + 127 + OFFSET_X, 1, 115.3, 166.1 , 0 );
	setMoveKey( ATK_01 + 128 + OFFSET_X, 1, 133.7, 156.6 , 0 );
	setMoveKey( ATK_01 + 129 + OFFSET_X, 1, 133.7, 156.6 , 0 );
	setMoveKey( ATK_01 + 130 + OFFSET_X, 1, 143.9, 151.4 , 0 );
	setMoveKey( ATK_01 + 131 + OFFSET_X, 1, 143.9, 151.4 , 0 );
	setMoveKey( ATK_01 + 132 + OFFSET_X, 1, 148.7, 149 , 0 );
	setMoveKey( ATK_01 + 133 + OFFSET_X, 1, 148.7, 149 , 0 );
	setMoveKey( ATK_01 + 134 + OFFSET_X, 1, 150.5, 148 , 0 );
	setMoveKey( ATK_01 + 135 + OFFSET_X, 1, 150.5, 148 , 0 );
	setMoveKey( ATK_01 + 136 + OFFSET_X, 1, 150.9, 147.8 , 0 );
	setMoveKey( ATK_01 + 137 + OFFSET_X, 1, 150.9, 147.8 , 0 );
	setMoveKey( ATK_01 + 138 + OFFSET_X, 1, 151, 147.8 , 0 );
	setMoveKey( ATK_01 + 139 + OFFSET_X, 1, 151, 147.8 , 0 );
	setMoveKey( ATK_01 + 140 + OFFSET_X, 1, 153, 147.6 , 0 );
	setMoveKey( ATK_01 + 141 + OFFSET_X, 1, 153, 147.6 , 0 );
	setMoveKey( ATK_01 + 142 + OFFSET_X, 1, 155, 147.3 , 0 );
	setMoveKey( ATK_01 + 143 + OFFSET_X, 1, 155, 147.3 , 0 );
	setMoveKey( ATK_01 + 144 + OFFSET_X, 1, 157.1, 147 , 0 );
	setMoveKey( ATK_01 + 145 + OFFSET_X, 1, 157.1, 147 , 0 );
	setMoveKey( ATK_01 + 146 + OFFSET_X, 1, 157.1, 147.1 , 0 );
	setMoveKey( ATK_01 + 149 + OFFSET_X, 1, 157.1, 147.1 , 0 );
	setMoveKey( ATK_01 + 150 + OFFSET_X, 1, 157.1, 146.9 , 0 );
	setMoveKey( ATK_01 + 151 + OFFSET_X, 1, 157.1, 146.9 , 0 );
	setMoveKey( ATK_01 + 152 + OFFSET_X, 1, 157.2, 146.5 , 0 );
	setMoveKey( ATK_01 + 153 + OFFSET_X, 1, 157.2, 146.5 , 0 );
	setMoveKey( ATK_01 + 154 + OFFSET_X, 1, 157.3, 146 , 0 );
	setMoveKey( ATK_01 + 155 + OFFSET_X, 1, 157.3, 146 , 0 );
	setMoveKey( ATK_01 + 156 + OFFSET_X, 1, 157.4, 145.2 , 0 );
	setMoveKey( ATK_01 + 157 + OFFSET_X, 1, 157.4, 145.2 , 0 );
	setMoveKey( ATK_01 + 158 + OFFSET_X, 1, 157.7, 144.1 , 0 );
	setMoveKey( ATK_01 + 159 + OFFSET_X, 1, 157.7, 144.1 , 0 );
	setMoveKey( ATK_01 + 160 + OFFSET_X, 1, 158.1, 142.8 , 0 );
	setMoveKey( ATK_01 + 161 + OFFSET_X, 1, 158.1, 142.8 , 0 );
	setMoveKey( ATK_01 + 162 + OFFSET_X, 1, 158.6, 141.1 , 0 );
	setMoveKey( ATK_01 + 163 + OFFSET_X, 1, 158.6, 141.1 , 0 );
	setMoveKey( ATK_01 + 164 + OFFSET_X, 1, 159.2, 139.1 , 0 );
	setMoveKey( ATK_01 + 165 + OFFSET_X, 1, 159.2, 139.1 , 0 );
	setMoveKey( ATK_01 + 166 + OFFSET_X, 1, 160, 136.6 , 0 );
	setMoveKey( ATK_01 + 167 + OFFSET_X, 1, 160, 136.6 , 0 );
	setMoveKey( ATK_01 + 168 + OFFSET_X, 1, 161, 133.6 , 0 );
	setMoveKey( ATK_01 + 169 + OFFSET_X, 1, 161, 133.6 , 0 );
	setMoveKey( ATK_01 + 170 + OFFSET_X, 1, 162.2, 130 , 0 );
	setMoveKey( ATK_01 + 171 + OFFSET_X, 1, 162.2, 130 , 0 );
	setMoveKey( ATK_01 + 172 + OFFSET_X, 1, 163.6, 125.6 , 0 );
	setMoveKey( ATK_01 + 173 + OFFSET_X, 1, 163.6, 125.6 , 0 );
	setMoveKey( ATK_01 + 174 + OFFSET_X, 1, 165.2, 120.4 , 0 );
	setMoveKey( ATK_01 + 175 + OFFSET_X, 1, 165.2, 120.4 , 0 );
	setMoveKey( ATK_01 + 176 + OFFSET_X, 1, 167, 114 , 0 );
	setMoveKey( ATK_01 + 177 + OFFSET_X, 1, 167, 114 , 0 );
	setMoveKey( ATK_01 + 178 + OFFSET_X, 1, 169.2, 105.9 , 0 );
	setMoveKey( ATK_01 + 179 + OFFSET_X, 1, 169.2, 105.9 , 0 );
	setMoveKey( ATK_01 + 180 + OFFSET_X, 1, 171.6, 95.5 , 0 );
	setMoveKey( ATK_01 + 181 + OFFSET_X, 1, 171.6, 95.5 , 0 );
	setMoveKey( ATK_01 + 182 + OFFSET_X, 1, 174.3, 81.6 , 0 );
	setMoveKey( ATK_01 + 183 + OFFSET_X, 1, 174.3, 81.6 , 0 );
	setMoveKey( ATK_01 + 184 + OFFSET_X, 1, 177.3, 64.8 , 0 );
	setMoveKey( ATK_01 + 185 + OFFSET_X, 1, 177.3, 64.8 , 0 );
	setMoveKey( ATK_01 + 186 + OFFSET_X, 1, 180.7, 53.8 , 0 );
	setMoveKey( ATK_01 + 187 + OFFSET_X, 1, 180.7, 53.8 , 0 );
	setMoveKey( ATK_01 + 188 + OFFSET_X, 1, 184.4, 49.4 , 0 );
	setMoveKey( ATK_01 + 189 + OFFSET_X, 1, 184.4, 49.4 , 0 );
	setMoveKey( ATK_01 + 190 + OFFSET_X, 1, 188.5, 46.7 , 0 );
	setMoveKey( ATK_01 + 191 + OFFSET_X, 1, 188.5, 46.7 , 0 );
	setMoveKey( ATK_01 + 192 + OFFSET_X, 1, 189.4, 33.6 , 0 );
	setMoveKey( ATK_01 + 193 + OFFSET_X, 1, 189.4, 33.6 , 0 );
	setMoveKey( ATK_01 + 194 + OFFSET_X, 1, 192.8, 33.5 , 0 );
	setMoveKey( ATK_01 + 195 + OFFSET_X, 1, 192.8, 33.5 , 0 );
	setMoveKey( ATK_01 + 196 + OFFSET_X, 1, 196.2, 33.4 , 0 );
	setMoveKey( ATK_01 + 197 + OFFSET_X, 1, 196.2, 33.4 , 0 );
	setMoveKey( ATK_01 + 198 + OFFSET_X, 1, 199.6, 33.4 , 0 );
	setMoveKey( ATK_01 + 207 + OFFSET_X, 1, 199.6, 33.4 , 0 );
	setMoveKey( ATK_01 + 208 + OFFSET_X, 1, 165.5, 33.4 , 0 );
	setMoveKey( ATK_01 + 209 + OFFSET_X, 1, 165.5, 33.4 , 0 );
	setMoveKey( ATK_01 + 210 + OFFSET_X, 1, 131.4, 33.4 , 0 );
	setMoveKey( ATK_01 + 211 + OFFSET_X, 1, 131.4, 33.4 , 0 );
	setMoveKey( ATK_01 + 212 + OFFSET_X, 1, 97.3, 33.4 , 0 );
	setMoveKey( ATK_01 + 213 + OFFSET_X, 1, 97.3, 33.4 , 0 );
	setMoveKey( ATK_01 + 214 + OFFSET_X, 1, 63.1, 33.4 , 0 );
	setMoveKey( ATK_01 + 215 + OFFSET_X, 1, 63.1, 33.4 , 0 );
	setMoveKey( ATK_01 + 216 + OFFSET_X, 1, 68.7, 32 , 0 );
	setMoveKey( ATK_01 + 227 + OFFSET_X, 1, 68.7, 32 , 0 );
	setMoveKey( ATK_01 + 228 + OFFSET_X, 1, 79.1, 32 , 0 );
	setMoveKey( ATK_01 + 229 + OFFSET_X, 1, 79.1, 32 , 0 );
	setMoveKey( ATK_01 + 230 + OFFSET_X, 1, 88.6, 32 , 0 );
	setMoveKey( ATK_01 + 231 + OFFSET_X, 1, 88.6, 32 , 0 );
	setMoveKey( ATK_01 + 232 + OFFSET_X, 1, 97.2, 32 , 0 );
	setMoveKey( ATK_01 + 233 + OFFSET_X, 1, 97.2, 32 , 0 );
	setMoveKey( ATK_01 + 234 + OFFSET_X, 1, 104.9, 32 , 0 );
	setMoveKey( ATK_01 + 235 + OFFSET_X, 1, 104.9, 32 , 0 );
	setMoveKey( ATK_01 + 236 + OFFSET_X, 1, 111.7, 32 , 0 );
	setMoveKey( ATK_01 + 237 + OFFSET_X, 1, 111.7, 32 , 0 );
	setMoveKey( ATK_01 + 238 + OFFSET_X, 1, 117.6, 32 , 0 );
	setMoveKey( ATK_01 + 239 + OFFSET_X, 1, 117.6, 32 , 0 );
	setMoveKey( ATK_01 + 240 + OFFSET_X, 1, 122.6, 32 , 0 );
	setMoveKey( ATK_01 + 241 + OFFSET_X, 1, 122.6, 32 , 0 );
	setMoveKey( ATK_01 + 242 + OFFSET_X, 1, 126.7, 32 , 0 );
	setMoveKey( ATK_01 + 243 + OFFSET_X, 1, 126.7, 32 , 0 );
	setMoveKey( ATK_01 + 244 + OFFSET_X, 1, 129.8, 32 , 0 );
	setMoveKey( ATK_01 + 245 + OFFSET_X, 1, 129.8, 32 , 0 );
	setMoveKey( ATK_01 + 246 + OFFSET_X, 1, 132.1, 32 , 0 );
	setMoveKey( ATK_01 + 247 + OFFSET_X, 1, 132.1, 32 , 0 );
	setMoveKey( ATK_01 + 248 + OFFSET_X, 1, 133.4, 32 , 0 );
	setMoveKey( ATK_01 + 249 + OFFSET_X, 1, 133.4, 32 , 0 );
	setMoveKey( ATK_01 + 250 + OFFSET_X, 1, 133.9, 32 , 0 );
	setMoveKey( ATK_01 + 251 + OFFSET_X, 1, 133.9, 32 , 0 );
	setMoveKey( ATK_01 + ATK_end -3, 1, 133.9, 32 , 0 );
	setMoveKey( ATK_01 + ATK_end -2, 1, 2000, 0 , 0 );

	setScaleKey( ATK_01 + 0, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 2 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 3 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 4 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 5 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 6 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 7 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 23 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 24 + OFFSET_X, 1, 0.91, 0.91 );
	setScaleKey( ATK_01 + 35 + OFFSET_X, 1, 0.91, 0.91 );
	setScaleKey( ATK_01 + 36 + OFFSET_X, 1, 0.57, 0.57 );
	setScaleKey( ATK_01 + 45 + OFFSET_X, 1, 0.57, 0.57 );
	setScaleKey( ATK_01 + 46 + OFFSET_X, 1, 0.26, 0.26 );
	setScaleKey( ATK_01 + 89 + OFFSET_X, 1, 0.26, 0.26 );
	setScaleKey( ATK_01 + 90 + OFFSET_X, 1, 0.25, 0.25 );
	setScaleKey( ATK_01 + 95 + OFFSET_X, 1, 0.25, 0.25 );
	setScaleKey( ATK_01 + 96 + OFFSET_X, 1, 0.24, 0.24 );
	setScaleKey( ATK_01 + 101 + OFFSET_X, 1, 0.24, 0.24 );
	setScaleKey( ATK_01 + 102 + OFFSET_X, 1, 0.23, 0.23 );
	setScaleKey( ATK_01 + 145 + OFFSET_X, 1, 0.23, 0.23 );
	setScaleKey( ATK_01 + 146 + OFFSET_X, 1, 0.16, 0.16 );
	setScaleKey( ATK_01 + 159 + OFFSET_X, 1, 0.16, 0.16 );
	setScaleKey( ATK_01 + 160 + OFFSET_X, 1, 0.17, 0.17 );
	setScaleKey( ATK_01 + 163 + OFFSET_X, 1, 0.17, 0.17 );
	setScaleKey( ATK_01 + 164 + OFFSET_X, 1, 0.18, 0.18 );
	setScaleKey( ATK_01 + 165 + OFFSET_X, 1, 0.18, 0.18 );
	setScaleKey( ATK_01 + 166 + OFFSET_X, 1, 0.19, 0.19 );
	setScaleKey( ATK_01 + 167 + OFFSET_X, 1, 0.19, 0.19 );
	setScaleKey( ATK_01 + 168 + OFFSET_X, 1, 0.2, 0.2 );
	setScaleKey( ATK_01 + 169 + OFFSET_X, 1, 0.2, 0.2 );
	setScaleKey( ATK_01 + 170 + OFFSET_X, 1, 0.22, 0.22 );
	setScaleKey( ATK_01 + 171 + OFFSET_X, 1, 0.22, 0.22 );
	setScaleKey( ATK_01 + 172 + OFFSET_X, 1, 0.24, 0.24 );
	setScaleKey( ATK_01 + 173 + OFFSET_X, 1, 0.24, 0.24 );
	setScaleKey( ATK_01 + 174 + OFFSET_X, 1, 0.25, 0.25 );
	setScaleKey( ATK_01 + 175 + OFFSET_X, 1, 0.25, 0.25 );
	setScaleKey( ATK_01 + 176 + OFFSET_X, 1, 0.28, 0.28 );
	setScaleKey( ATK_01 + 177 + OFFSET_X, 1, 0.28, 0.28 );
	setScaleKey( ATK_01 + 178 + OFFSET_X, 1, 0.3, 0.3 );
	setScaleKey( ATK_01 + 179 + OFFSET_X, 1, 0.3, 0.3 );
	setScaleKey( ATK_01 + 180 + OFFSET_X, 1, 0.33, 0.33 );
	setScaleKey( ATK_01 + 181 + OFFSET_X, 1, 0.33, 0.33 );
	setScaleKey( ATK_01 + 182 + OFFSET_X, 1, 0.37, 0.37 );
	setScaleKey( ATK_01 + 183 + OFFSET_X, 1, 0.37, 0.37 );
	setScaleKey( ATK_01 + 184 + OFFSET_X, 1, 0.4, 0.4 );
	setScaleKey( ATK_01 + 185 + OFFSET_X, 1, 0.4, 0.4 );
	setScaleKey( ATK_01 + 186 + OFFSET_X, 1, 0.44, 0.44 );
	setScaleKey( ATK_01 + 187 + OFFSET_X, 1, 0.44, 0.44 );
	setScaleKey( ATK_01 + 188 + OFFSET_X, 1, 0.49, 0.49 );
	setScaleKey( ATK_01 + 189 + OFFSET_X, 1, 0.49, 0.49 );
	setScaleKey( ATK_01 + 190 + OFFSET_X, 1, 0.54, 0.54 );
	setScaleKey( ATK_01 + 191 + OFFSET_X, 1, 0.54, 0.54 );
	setScaleKey( ATK_01 + 192 + OFFSET_X, 1, 0.95, 0.95 );
	setScaleKey( ATK_01 + 193 + OFFSET_X, 1, 0.95, 0.95 );
	setScaleKey( ATK_01 + 194 + OFFSET_X, 1, 1.01, 1.01 );
	setScaleKey( ATK_01 + 195 + OFFSET_X, 1, 1.01, 1.01 );
	setScaleKey( ATK_01 + 196 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + 197 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + 198 + OFFSET_X, 1, 1.12, 1.12 );
	setScaleKey( ATK_01 + ATK_end, 1, 1.12, 1.12 );
	
	setRotateKey( ATK_01 + 0, 1, 0 );
	setRotateKey( ATK_01 + 2 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 3 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 4 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 5 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 6 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 7 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 45 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 46 + OFFSET_X, 1, 7.7 );
	setRotateKey( ATK_01 + 85 + OFFSET_X, 1, 7.7 );
	setRotateKey( ATK_01 + 86 + OFFSET_X, 1, 7.6 );
	setRotateKey( ATK_01 + 87 + OFFSET_X, 1, 7.6 );
	setRotateKey( ATK_01 + 88 + OFFSET_X, 1, 7.5 );
	setRotateKey( ATK_01 + 89 + OFFSET_X, 1, 7.5 );
	setRotateKey( ATK_01 + 90 + OFFSET_X, 1, 7.4 );
	setRotateKey( ATK_01 + 91 + OFFSET_X, 1, 7.4 );
	setRotateKey( ATK_01 + 92 + OFFSET_X, 1, 7.3 );
	setRotateKey( ATK_01 + 93 + OFFSET_X, 1, 7.3 );
	setRotateKey( ATK_01 + 94 + OFFSET_X, 1, 7.2 );
	setRotateKey( ATK_01 + 95 + OFFSET_X, 1, 7.2 );
	setRotateKey( ATK_01 + 96 + OFFSET_X, 1, 7.1 );
	setRotateKey( ATK_01 + 97 + OFFSET_X, 1, 7.1 );
	setRotateKey( ATK_01 + 98 + OFFSET_X, 1, 7 );
	setRotateKey( ATK_01 + 99 + OFFSET_X, 1, 7 );
	setRotateKey( ATK_01 + 100 + OFFSET_X, 1, 6.9 );
	setRotateKey( ATK_01 + 101 + OFFSET_X, 1, 6.9 );
	setRotateKey( ATK_01 + 102 + OFFSET_X, 1, 7 );
	setRotateKey( ATK_01 + 103 + OFFSET_X, 1, 7 );
	setRotateKey( ATK_01 + 104 + OFFSET_X, 1, 7.1 );
	setRotateKey( ATK_01 + 105 + OFFSET_X, 1, 7.1 );
	setRotateKey( ATK_01 + 106 + OFFSET_X, 1, 7.2 );
	setRotateKey( ATK_01 + 109 + OFFSET_X, 1, 7.2 );
	setRotateKey( ATK_01 + 110 + OFFSET_X, 1, 7.3 );
	setRotateKey( ATK_01 + 111 + OFFSET_X, 1, 7.3 );
	setRotateKey( ATK_01 + 112 + OFFSET_X, 1, 7.4 );
	setRotateKey( ATK_01 + 113 + OFFSET_X, 1, 7.4 );
	setRotateKey( ATK_01 + 114 + OFFSET_X, 1, 7.5 );
	setRotateKey( ATK_01 + 115 + OFFSET_X, 1, 7.5 );
	setRotateKey( ATK_01 + 116 + OFFSET_X, 1, 7.6 );
	setRotateKey( ATK_01 + 125 + OFFSET_X, 1, 7.6 );
	setRotateKey( ATK_01 + 126 + OFFSET_X, 1, 7 );
	setRotateKey( ATK_01 + 127 + OFFSET_X, 1, 7 );
	setRotateKey( ATK_01 + 128 + OFFSET_X, 1, 8.7 );
	setRotateKey( ATK_01 + 129 + OFFSET_X, 1, 8.7 );
	setRotateKey( ATK_01 + 130 + OFFSET_X, 1, 9.6 );
	setRotateKey( ATK_01 + 131 + OFFSET_X, 1, 9.6 );
	setRotateKey( ATK_01 + 132 + OFFSET_X, 1, 10.1 );
	setRotateKey( ATK_01 + 133 + OFFSET_X, 1, 10.1 );
	setRotateKey( ATK_01 + 134 + OFFSET_X, 1, 10.3 );
	setRotateKey( ATK_01 + 139 + OFFSET_X, 1, 10.3 );
	setRotateKey( ATK_01 + 140 + OFFSET_X, 1, 10.9 );
	setRotateKey( ATK_01 + 141 + OFFSET_X, 1, 10.9 );
	setRotateKey( ATK_01 + 142 + OFFSET_X, 1, 11.4 );
	setRotateKey( ATK_01 + 143 + OFFSET_X, 1, 11.4 );
	setRotateKey( ATK_01 + 144 + OFFSET_X, 1, 12 );
	setRotateKey( ATK_01 + 145 + OFFSET_X, 1, 12 );
	setRotateKey( ATK_01 + 146 + OFFSET_X, 1, -16.4 );
	setRotateKey( ATK_01 + 151 + OFFSET_X, 1, -16.4 );
	setRotateKey( ATK_01 + 152 + OFFSET_X, 1, -16.5 );
	setRotateKey( ATK_01 + 157 + OFFSET_X, 1, -16.5 );
	setRotateKey( ATK_01 + 158 + OFFSET_X, 1, -16.6 );
	setRotateKey( ATK_01 + 159 + OFFSET_X, 1, -16.6 );
	setRotateKey( ATK_01 + 160 + OFFSET_X, 1, -16.7 );
	setRotateKey( ATK_01 + 161 + OFFSET_X, 1, -16.7 );
	setRotateKey( ATK_01 + 162 + OFFSET_X, 1, -16.8 );
	setRotateKey( ATK_01 + 163 + OFFSET_X, 1, -16.8 );
	setRotateKey( ATK_01 + 164 + OFFSET_X, 1, -16.9 );
	setRotateKey( ATK_01 + 165 + OFFSET_X, 1, -16.9 );
	setRotateKey( ATK_01 + 166 + OFFSET_X, 1, -17.1 );
	setRotateKey( ATK_01 + 167 + OFFSET_X, 1, -17.1 );
	setRotateKey( ATK_01 + 168 + OFFSET_X, 1, -17.4 );
	setRotateKey( ATK_01 + 169 + OFFSET_X, 1, -17.4 );
	setRotateKey( ATK_01 + 170 + OFFSET_X, 1, -17.6 );
	setRotateKey( ATK_01 + 171 + OFFSET_X, 1, -17.6 );
	setRotateKey( ATK_01 + 172 + OFFSET_X, 1, -18 );
	setRotateKey( ATK_01 + 173 + OFFSET_X, 1, -18 );
	setRotateKey( ATK_01 + 174 + OFFSET_X, 1, -18.4 );
	setRotateKey( ATK_01 + 175 + OFFSET_X, 1, -18.4 );
	setRotateKey( ATK_01 + 176 + OFFSET_X, 1, -18.8 );
	setRotateKey( ATK_01 + 177 + OFFSET_X, 1, -18.8 );
	setRotateKey( ATK_01 + 178 + OFFSET_X, 1, -19.3 );
	setRotateKey( ATK_01 + 179 + OFFSET_X, 1, -19.3 );
	setRotateKey( ATK_01 + 180 + OFFSET_X, 1, -19.9 );
	setRotateKey( ATK_01 + 181 + OFFSET_X, 1, -19.9 );
	setRotateKey( ATK_01 + 182 + OFFSET_X, 1, -20.5 );
	setRotateKey( ATK_01 + 183 + OFFSET_X, 1, -20.5 );
	setRotateKey( ATK_01 + 184 + OFFSET_X, 1, -21.2 );
	setRotateKey( ATK_01 + 185 + OFFSET_X, 1, -21.2 );
	setRotateKey( ATK_01 + 186 + OFFSET_X, 1, -22 );
	setRotateKey( ATK_01 + 187 + OFFSET_X, 1, -22 );
	setRotateKey( ATK_01 + 188 + OFFSET_X, 1, -22.9 );
	setRotateKey( ATK_01 + 189 + OFFSET_X, 1, -22.9 );
	setRotateKey( ATK_01 + 190 + OFFSET_X, 1, -23.9 );
	setRotateKey( ATK_01 + 191 + OFFSET_X, 1, -23.9 );
	setRotateKey( ATK_01 + 192 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 195 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 196 + OFFSET_X, 1, 2.5 );
	setRotateKey( ATK_01 + ATK_end, 1, 2.5 );

else

	setDisp(ATK_01 + 18 + OFFSET_X, 1, 0)
	setDisp(ATK_01 + 24 + OFFSET_X, 1, 1)
	setDisp(ATK_01 + 26 + OFFSET_X, 1, 0)
	setDisp(ATK_01 + 28 + OFFSET_X, 1, 1)
	setDisp(ATK_01 + 30 + OFFSET_X, 1, 0)
	setDisp(ATK_01 + 36 + OFFSET_X, 1, 1)
	setDisp(ATK_01 + 42 + OFFSET_X, 1, 0)
	setDisp(ATK_01 + 46 + OFFSET_X, 1, 1)
	setDisp(ATK_01 + ATK_end - 2, 1, 0)

	changeAnime( ATK_01 + 0, 1, 100 );
	changeAnime( ATK_01 + 24 + OFFSET_X, 1, 0 );
	changeAnimeAndStop( ATK_01 + 36 + OFFSET_X, 1, 119 ,1)
	changeAnimeAndStop( ATK_01 + 38 + OFFSET_X, 1, 119 ,10)
	--changeAnime( ATK_01 + 38 + OFFSET_X, 1, , atc_energyball_e_03 );
	changeAnime( ATK_01 + 46 + OFFSET_X, 1, 3 );
	changeAnime( ATK_01 + 66 + OFFSET_X, 1, 104 );
	changeAnime( ATK_01 + 68 + OFFSET_X, 1, 102 );
	changeAnime( ATK_01 + 100 + OFFSET_X, 1, 103 );
	changeAnime( ATK_01 + 116 + OFFSET_X, 1, 113 );
	changeAnimeAndStop( ATK_01 + 138 + OFFSET_X, 1, 119 ,1)
	--changeAnime( ATK_01 + 138 + OFFSET_X, 1, , atc_energyball_e_02 );
	changeAnime( ATK_01 + 144 + OFFSET_X, 1, 101 );
	changeAnime( ATK_01 + 146 + OFFSET_X, 1, 116 );
	changeAnime( ATK_01 + 192 + OFFSET_X, 1, 101 );
	changeAnime( ATK_01 + 198 + OFFSET_X, 1, 102 );
	changeAnime( ATK_01 + 216 + OFFSET_X, 1, 106 );
	changeAnime( ATK_01 + 252 + OFFSET_X, 1, 104 );

	setMoveKey( ATK_01 + 0, 1, 307.5, 0 , 0 );
	setMoveKey( ATK_01 + 2 + OFFSET_X, 1, 306.4, 0 , 0 );
	setMoveKey( ATK_01 + 3 + OFFSET_X, 1, 306.4, 0 , 0 );
	setMoveKey( ATK_01 + 4 + OFFSET_X, 1, 298.6, 0 , 0 );
	setMoveKey( ATK_01 + 5 + OFFSET_X, 1, 298.6, 0 , 0 );
	setMoveKey( ATK_01 + 6 + OFFSET_X, 1, 277.3, 0 , 0 );
	setMoveKey( ATK_01 + 7 + OFFSET_X, 1, 277.3, 0 , 0 );
	setMoveKey( ATK_01 + 8 + OFFSET_X, 1, 235.8, 0 , 0 );
	setMoveKey( ATK_01 + 9 + OFFSET_X, 1, 235.8, 0 , 0 );
	setMoveKey( ATK_01 + 10 + OFFSET_X, 1, 167.5, 0 , 0 );
	setMoveKey( ATK_01 + 23 + OFFSET_X, 1, 167.5, 0 , 0 );
	setMoveKey( ATK_01 + 24 + OFFSET_X, 1, -145.1, 90.7 , 0 );
	setMoveKey( ATK_01 + 35 + OFFSET_X, 1, -145.1, 90.7 , 0 );
	setMoveKey( ATK_01 + 36 + OFFSET_X, 1, 73.5, 308.2 , 0 );
	setMoveKey( ATK_01 + 37 + OFFSET_X, 1, 73.5, 308.2 , 0 );
	setMoveKey( ATK_01 + 38 + OFFSET_X, 1, 78.8, 308.2 , 0 );
	setMoveKey( ATK_01 + 45 + OFFSET_X, 1, 78.8, 308.2 , 0 );
	setMoveKey( ATK_01 + 46 + OFFSET_X, 1, 25.7, 376.2 , 0 );
	setMoveKey( ATK_01 + 49 + OFFSET_X, 1, 25.7, 376.2 , 0 );
	setMoveKey( ATK_01 + 50 + OFFSET_X, 1, 43.8, 371.3 , 0 );
	setMoveKey( ATK_01 + 51 + OFFSET_X, 1, 43.8, 371.3 , 0 );
	setMoveKey( ATK_01 + 52 + OFFSET_X, 1, 61.9, 366.4 , 0 );
	setMoveKey( ATK_01 + 53 + OFFSET_X, 1, 61.9, 366.4 , 0 );
	setMoveKey( ATK_01 + 54 + OFFSET_X, 1, 80, 361.5 , 0 );
	setMoveKey( ATK_01 + 55 + OFFSET_X, 1, 80, 361.5 , 0 );
	setMoveKey( ATK_01 + 56 + OFFSET_X, 1, 98, 356.6 , 0 );
	setMoveKey( ATK_01 + 57 + OFFSET_X, 1, 98, 356.6 , 0 );
	setMoveKey( ATK_01 + 58 + OFFSET_X, 1, 116.1, 351.8 , 0 );
	setMoveKey( ATK_01 + 59 + OFFSET_X, 1, 116.1, 351.8 , 0 );
	setMoveKey( ATK_01 + 60 + OFFSET_X, 1, 134.2, 346.9 , 0 );
	setMoveKey( ATK_01 + 61 + OFFSET_X, 1, 134.2, 346.9 , 0 );
	setMoveKey( ATK_01 + 62 + OFFSET_X, 1, 152.3, 342 , 0 );
	setMoveKey( ATK_01 + 63 + OFFSET_X, 1, 152.3, 342 , 0 );
	setMoveKey( ATK_01 + 64 + OFFSET_X, 1, 170.3, 337.1 , 0 );
	setMoveKey( ATK_01 + 65 + OFFSET_X, 1, 170.3, 337.1 , 0 );
	setMoveKey( ATK_01 + 66 + OFFSET_X, 1, 188.4, 332.2 , 0 );
	setMoveKey( ATK_01 + 67 + OFFSET_X, 1, 188.4, 332.2 , 0 );
	setMoveKey( ATK_01 + 68 + OFFSET_X, 1, 200, 326.9 , 0 );
	setMoveKey( ATK_01 + 69 + OFFSET_X, 1, 200, 326.9 , 0 );
	setMoveKey( ATK_01 + 70 + OFFSET_X, 1, 202, 326.3 , 0 );
	setMoveKey( ATK_01 + 71 + OFFSET_X, 1, 202, 326.3 , 0 );
	setMoveKey( ATK_01 + 72 + OFFSET_X, 1, 203.9, 325.7 , 0 );
	setMoveKey( ATK_01 + 73 + OFFSET_X, 1, 203.9, 325.7 , 0 );
	setMoveKey( ATK_01 + 74 + OFFSET_X, 1, 205.9, 325.1 , 0 );
	setMoveKey( ATK_01 + 75 + OFFSET_X, 1, 205.9, 325.1 , 0 );
	setMoveKey( ATK_01 + 76 + OFFSET_X, 1, 207.9, 324.5 , 0 );
	setMoveKey( ATK_01 + 77 + OFFSET_X, 1, 207.9, 324.5 , 0 );
	setMoveKey( ATK_01 + 78 + OFFSET_X, 1, 209.8, 323.9 , 0 );
	setMoveKey( ATK_01 + 79 + OFFSET_X, 1, 209.8, 323.9 , 0 );
	setMoveKey( ATK_01 + 80 + OFFSET_X, 1, 211.8, 323.2 , 0 );
	setMoveKey( ATK_01 + 81 + OFFSET_X, 1, 211.8, 323.2 , 0 );
	setMoveKey( ATK_01 + 82 + OFFSET_X, 1, 213.8, 322.6 , 0 );
	setMoveKey( ATK_01 + 85 + OFFSET_X, 1, 213.8, 322.6 , 0 );
	setMoveKey( ATK_01 + 86 + OFFSET_X, 1, 220.3, 320 , 0 );
	setMoveKey( ATK_01 + 87 + OFFSET_X, 1, 220.3, 320 , 0 );
	setMoveKey( ATK_01 + 88 + OFFSET_X, 1, 226.9, 315.1 , 0 );
	setMoveKey( ATK_01 + 89 + OFFSET_X, 1, 226.9, 315.1 , 0 );
	setMoveKey( ATK_01 + 90 + OFFSET_X, 1, 233.5, 307.2 , 0 );
	setMoveKey( ATK_01 + 91 + OFFSET_X, 1, 233.5, 307.2 , 0 );
	setMoveKey( ATK_01 + 92 + OFFSET_X, 1, 240.1, 295.2 , 0 );
	setMoveKey( ATK_01 + 93 + OFFSET_X, 1, 240.1, 295.2 , 0 );
	setMoveKey( ATK_01 + 94 + OFFSET_X, 1, 246.6, 278.1 , 0 );
	setMoveKey( ATK_01 + 95 + OFFSET_X, 1, 246.6, 278.1 , 0 );
	setMoveKey( ATK_01 + 96 + OFFSET_X, 1, 253.2, 256.8 , 0 );
	setMoveKey( ATK_01 + 97 + OFFSET_X, 1, 253.2, 256.8 , 0 );
	setMoveKey( ATK_01 + 98 + OFFSET_X, 1, 259.8, 235.4 , 0 );
	setMoveKey( ATK_01 + 99 + OFFSET_X, 1, 259.8, 235.4 , 0 );
	setMoveKey( ATK_01 + 100 + OFFSET_X, 1, 266.4, 217.5 , 0 );
	setMoveKey( ATK_01 + 101 + OFFSET_X, 1, 266.4, 217.5 , 0 );
	setMoveKey( ATK_01 + 102 + OFFSET_X, 1, 247.5, 203.6 , 0 );
	setMoveKey( ATK_01 + 103 + OFFSET_X, 1, 247.5, 203.6 , 0 );
	setMoveKey( ATK_01 + 104 + OFFSET_X, 1, 228.6, 193 , 0 );
	setMoveKey( ATK_01 + 105 + OFFSET_X, 1, 228.6, 193 , 0 );
	setMoveKey( ATK_01 + 106 + OFFSET_X, 1, 209.7, 184.8 , 0 );
	setMoveKey( ATK_01 + 107 + OFFSET_X, 1, 209.7, 184.8 , 0 );
	setMoveKey( ATK_01 + 108 + OFFSET_X, 1, 190.7, 178.6 , 0 );
	setMoveKey( ATK_01 + 109 + OFFSET_X, 1, 190.7, 178.6 , 0 );
	setMoveKey( ATK_01 + 110 + OFFSET_X, 1, 171.8, 173.9 , 0 );
	setMoveKey( ATK_01 + 111 + OFFSET_X, 1, 171.8, 173.9 , 0 );
	setMoveKey( ATK_01 + 112 + OFFSET_X, 1, 152.9, 170.3 , 0 );
	setMoveKey( ATK_01 + 113 + OFFSET_X, 1, 152.9, 170.3 , 0 );
	setMoveKey( ATK_01 + 114 + OFFSET_X, 1, 134, 167.8 , 0 );
	setMoveKey( ATK_01 + 115 + OFFSET_X, 1, 134, 167.8 , 0 );
	setMoveKey( ATK_01 + 116 + OFFSET_X, 1, 115.1, 166 , 0 );
	setMoveKey( ATK_01 + 125 + OFFSET_X, 1, 115.1, 166 , 0 );
	setMoveKey( ATK_01 + 126 + OFFSET_X, 1, 115.3, 166.1 , 0 );
	setMoveKey( ATK_01 + 127 + OFFSET_X, 1, 115.3, 166.1 , 0 );
	setMoveKey( ATK_01 + 128 + OFFSET_X, 1, 133.7, 156.6 , 0 );
	setMoveKey( ATK_01 + 129 + OFFSET_X, 1, 133.7, 156.6 , 0 );
	setMoveKey( ATK_01 + 130 + OFFSET_X, 1, 143.9, 151.4 , 0 );
	setMoveKey( ATK_01 + 131 + OFFSET_X, 1, 143.9, 151.4 , 0 );
	setMoveKey( ATK_01 + 132 + OFFSET_X, 1, 148.7, 149 , 0 );
	setMoveKey( ATK_01 + 133 + OFFSET_X, 1, 148.7, 149 , 0 );
	setMoveKey( ATK_01 + 134 + OFFSET_X, 1, 150.5, 148 , 0 );
	setMoveKey( ATK_01 + 135 + OFFSET_X, 1, 150.5, 148 , 0 );
	setMoveKey( ATK_01 + 136 + OFFSET_X, 1, 150.9, 147.8 , 0 );
	setMoveKey( ATK_01 + 137 + OFFSET_X, 1, 150.9, 147.8 , 0 );
	setMoveKey( ATK_01 + 138 + OFFSET_X, 1, 151, 147.8 , 0 );
	setMoveKey( ATK_01 + 139 + OFFSET_X, 1, 151, 147.8 , 0 );
	setMoveKey( ATK_01 + 140 + OFFSET_X, 1, 153, 147.6 , 0 );
	setMoveKey( ATK_01 + 141 + OFFSET_X, 1, 153, 147.6 , 0 );
	setMoveKey( ATK_01 + 142 + OFFSET_X, 1, 155, 147.3 , 0 );
	setMoveKey( ATK_01 + 143 + OFFSET_X, 1, 155, 147.3 , 0 );
	setMoveKey( ATK_01 + 144 + OFFSET_X, 1, 157.1, 147 , 0 );
	setMoveKey( ATK_01 + 145 + OFFSET_X, 1, 157.1, 147 , 0 );
	setMoveKey( ATK_01 + 146 + OFFSET_X, 1, 157.1, 147.1 , 0 );
	setMoveKey( ATK_01 + 149 + OFFSET_X, 1, 157.1, 147.1 , 0 );
	setMoveKey( ATK_01 + 150 + OFFSET_X, 1, 157.1, 146.9 , 0 );
	setMoveKey( ATK_01 + 151 + OFFSET_X, 1, 157.1, 146.9 , 0 );
	setMoveKey( ATK_01 + 152 + OFFSET_X, 1, 157.2, 146.5 , 0 );
	setMoveKey( ATK_01 + 153 + OFFSET_X, 1, 157.2, 146.5 , 0 );
	setMoveKey( ATK_01 + 154 + OFFSET_X, 1, 157.3, 146 , 0 );
	setMoveKey( ATK_01 + 155 + OFFSET_X, 1, 157.3, 146 , 0 );
	setMoveKey( ATK_01 + 156 + OFFSET_X, 1, 157.4, 145.2 , 0 );
	setMoveKey( ATK_01 + 157 + OFFSET_X, 1, 157.4, 145.2 , 0 );
	setMoveKey( ATK_01 + 158 + OFFSET_X, 1, 157.7, 144.1 , 0 );
	setMoveKey( ATK_01 + 159 + OFFSET_X, 1, 157.7, 144.1 , 0 );
	setMoveKey( ATK_01 + 160 + OFFSET_X, 1, 158.1, 142.8 , 0 );
	setMoveKey( ATK_01 + 161 + OFFSET_X, 1, 158.1, 142.8 , 0 );
	setMoveKey( ATK_01 + 162 + OFFSET_X, 1, 158.6, 141.1 , 0 );
	setMoveKey( ATK_01 + 163 + OFFSET_X, 1, 158.6, 141.1 , 0 );
	setMoveKey( ATK_01 + 164 + OFFSET_X, 1, 159.2, 139.1 , 0 );
	setMoveKey( ATK_01 + 165 + OFFSET_X, 1, 159.2, 139.1 , 0 );
	setMoveKey( ATK_01 + 166 + OFFSET_X, 1, 160, 136.6 , 0 );
	setMoveKey( ATK_01 + 167 + OFFSET_X, 1, 160, 136.6 , 0 );
	setMoveKey( ATK_01 + 168 + OFFSET_X, 1, 161, 133.6 , 0 );
	setMoveKey( ATK_01 + 169 + OFFSET_X, 1, 161, 133.6 , 0 );
	setMoveKey( ATK_01 + 170 + OFFSET_X, 1, 162.2, 130 , 0 );
	setMoveKey( ATK_01 + 171 + OFFSET_X, 1, 162.2, 130 , 0 );
	setMoveKey( ATK_01 + 172 + OFFSET_X, 1, 163.6, 125.6 , 0 );
	setMoveKey( ATK_01 + 173 + OFFSET_X, 1, 163.6, 125.6 , 0 );
	setMoveKey( ATK_01 + 174 + OFFSET_X, 1, 165.2, 120.4 , 0 );
	setMoveKey( ATK_01 + 175 + OFFSET_X, 1, 165.2, 120.4 , 0 );
	setMoveKey( ATK_01 + 176 + OFFSET_X, 1, 167, 114 , 0 );
	setMoveKey( ATK_01 + 177 + OFFSET_X, 1, 167, 114 , 0 );
	setMoveKey( ATK_01 + 178 + OFFSET_X, 1, 169.2, 105.9 , 0 );
	setMoveKey( ATK_01 + 179 + OFFSET_X, 1, 169.2, 105.9 , 0 );
	setMoveKey( ATK_01 + 180 + OFFSET_X, 1, 171.6, 95.5 , 0 );
	setMoveKey( ATK_01 + 181 + OFFSET_X, 1, 171.6, 95.5 , 0 );
	setMoveKey( ATK_01 + 182 + OFFSET_X, 1, 174.3, 81.6 , 0 );
	setMoveKey( ATK_01 + 183 + OFFSET_X, 1, 174.3, 81.6 , 0 );
	setMoveKey( ATK_01 + 184 + OFFSET_X, 1, 177.3, 64.8 , 0 );
	setMoveKey( ATK_01 + 185 + OFFSET_X, 1, 177.3, 64.8 , 0 );
	setMoveKey( ATK_01 + 186 + OFFSET_X, 1, 180.7, 53.8 , 0 );
	setMoveKey( ATK_01 + 187 + OFFSET_X, 1, 180.7, 53.8 , 0 );
	setMoveKey( ATK_01 + 188 + OFFSET_X, 1, 184.4, 49.4 , 0 );
	setMoveKey( ATK_01 + 189 + OFFSET_X, 1, 184.4, 49.4 , 0 );
	setMoveKey( ATK_01 + 190 + OFFSET_X, 1, 188.5, 46.7 , 0 );
	setMoveKey( ATK_01 + 191 + OFFSET_X, 1, 188.5, 46.7 , 0 );
	setMoveKey( ATK_01 + 192 + OFFSET_X, 1, 189.4, 33.6 , 0 );
	setMoveKey( ATK_01 + 193 + OFFSET_X, 1, 189.4, 33.6 , 0 );
	setMoveKey( ATK_01 + 194 + OFFSET_X, 1, 192.8, 33.5 , 0 );
	setMoveKey( ATK_01 + 195 + OFFSET_X, 1, 192.8, 33.5 , 0 );
	setMoveKey( ATK_01 + 196 + OFFSET_X, 1, 196.2, 33.4 , 0 );
	setMoveKey( ATK_01 + 197 + OFFSET_X, 1, 196.2, 33.4 , 0 );
	setMoveKey( ATK_01 + 198 + OFFSET_X, 1, 199.6, 33.4 , 0 );
	setMoveKey( ATK_01 + 207 + OFFSET_X, 1, 199.6, 33.4 , 0 );
	setMoveKey( ATK_01 + 208 + OFFSET_X, 1, 165.5, 33.4 , 0 );
	setMoveKey( ATK_01 + 209 + OFFSET_X, 1, 165.5, 33.4 , 0 );
	setMoveKey( ATK_01 + 210 + OFFSET_X, 1, 131.4, 33.4 , 0 );
	setMoveKey( ATK_01 + 211 + OFFSET_X, 1, 131.4, 33.4 , 0 );
	setMoveKey( ATK_01 + 212 + OFFSET_X, 1, 97.3, 33.4 , 0 );
	setMoveKey( ATK_01 + 213 + OFFSET_X, 1, 97.3, 33.4 , 0 );
	setMoveKey( ATK_01 + 214 + OFFSET_X, 1, 63.1, 33.4 , 0 );
	setMoveKey( ATK_01 + 215 + OFFSET_X, 1, 63.1, 33.4 , 0 );
	setMoveKey( ATK_01 + 216 + OFFSET_X, 1, 68.7, 32 , 0 );
	setMoveKey( ATK_01 + 227 + OFFSET_X, 1, 68.7, 32 , 0 );
	setMoveKey( ATK_01 + 228 + OFFSET_X, 1, 79.1, 32 , 0 );
	setMoveKey( ATK_01 + 229 + OFFSET_X, 1, 79.1, 32 , 0 );
	setMoveKey( ATK_01 + 230 + OFFSET_X, 1, 88.6, 32 , 0 );
	setMoveKey( ATK_01 + 231 + OFFSET_X, 1, 88.6, 32 , 0 );
	setMoveKey( ATK_01 + 232 + OFFSET_X, 1, 97.2, 32 , 0 );
	setMoveKey( ATK_01 + 233 + OFFSET_X, 1, 97.2, 32 , 0 );
	setMoveKey( ATK_01 + 234 + OFFSET_X, 1, 104.9, 32 , 0 );
	setMoveKey( ATK_01 + 235 + OFFSET_X, 1, 104.9, 32 , 0 );
	setMoveKey( ATK_01 + 236 + OFFSET_X, 1, 111.7, 32 , 0 );
	setMoveKey( ATK_01 + 237 + OFFSET_X, 1, 111.7, 32 , 0 );
	setMoveKey( ATK_01 + 238 + OFFSET_X, 1, 117.6, 32 , 0 );
	setMoveKey( ATK_01 + 239 + OFFSET_X, 1, 117.6, 32 , 0 );
	setMoveKey( ATK_01 + 240 + OFFSET_X, 1, 122.6, 32 , 0 );
	setMoveKey( ATK_01 + 241 + OFFSET_X, 1, 122.6, 32 , 0 );
	setMoveKey( ATK_01 + 242 + OFFSET_X, 1, 126.7, 32 , 0 );
	setMoveKey( ATK_01 + 243 + OFFSET_X, 1, 126.7, 32 , 0 );
	setMoveKey( ATK_01 + 244 + OFFSET_X, 1, 129.8, 32 , 0 );
	setMoveKey( ATK_01 + 245 + OFFSET_X, 1, 129.8, 32 , 0 );
	setMoveKey( ATK_01 + 246 + OFFSET_X, 1, 132.1, 32 , 0 );
	setMoveKey( ATK_01 + 247 + OFFSET_X, 1, 132.1, 32 , 0 );
	setMoveKey( ATK_01 + 248 + OFFSET_X, 1, 133.4, 32 , 0 );
	setMoveKey( ATK_01 + 249 + OFFSET_X, 1, 133.4, 32 , 0 );
	setMoveKey( ATK_01 + 250 + OFFSET_X, 1, 133.9, 32 , 0 );
	setMoveKey( ATK_01 + 251 + OFFSET_X, 1, 133.9, 32 , 0 );
	setMoveKey( ATK_01 + 252 + OFFSET_X, 1, 128.3, 33.4 , 0 );
	setMoveKey( ATK_01 + 253 + OFFSET_X, 1, 128.3, 33.4 , 0 );
	setMoveKey( ATK_01 + 254 + OFFSET_X, 1, 129.9, 33.4 , 0 );
	setMoveKey( ATK_01 + 255 + OFFSET_X, 1, 129.9, 33.4 , 0 );
	setMoveKey( ATK_01 + 256 + OFFSET_X, 1, 131.5, 33.4 , 0 );
	setMoveKey( ATK_01 + ATK_end -3, 1, 133.9, 32 , 0 );
	setMoveKey( ATK_01 + ATK_end -2, 1, 2000, 0 , 0 );

	setScaleKey( ATK_01 + 0, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 2 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 3 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 4 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 5 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 6 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 7 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 23 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 24 + OFFSET_X, 1, 0.91, 0.91 );
	setScaleKey( ATK_01 + 35 + OFFSET_X, 1, 0.91, 0.91 );
	setScaleKey( ATK_01 + 36 + OFFSET_X, 1, 0.57, 0.57 );
	setScaleKey( ATK_01 + 45 + OFFSET_X, 1, 0.57, 0.57 );
	setScaleKey( ATK_01 + 46 + OFFSET_X, 1, 0.26, 0.26 );
	setScaleKey( ATK_01 + 89 + OFFSET_X, 1, 0.26, 0.26 );
	setScaleKey( ATK_01 + 90 + OFFSET_X, 1, 0.25, 0.25 );
	setScaleKey( ATK_01 + 95 + OFFSET_X, 1, 0.25, 0.25 );
	setScaleKey( ATK_01 + 96 + OFFSET_X, 1, 0.24, 0.24 );
	setScaleKey( ATK_01 + 101 + OFFSET_X, 1, 0.24, 0.24 );
	setScaleKey( ATK_01 + 102 + OFFSET_X, 1, 0.23, 0.23 );
	setScaleKey( ATK_01 + 145 + OFFSET_X, 1, 0.23, 0.23 );
	setScaleKey( ATK_01 + 146 + OFFSET_X, 1, 0.16, 0.16 );
	setScaleKey( ATK_01 + 159 + OFFSET_X, 1, 0.16, 0.16 );
	setScaleKey( ATK_01 + 160 + OFFSET_X, 1, 0.17, 0.17 );
	setScaleKey( ATK_01 + 163 + OFFSET_X, 1, 0.17, 0.17 );
	setScaleKey( ATK_01 + 164 + OFFSET_X, 1, 0.18, 0.18 );
	setScaleKey( ATK_01 + 165 + OFFSET_X, 1, 0.18, 0.18 );
	setScaleKey( ATK_01 + 166 + OFFSET_X, 1, 0.19, 0.19 );
	setScaleKey( ATK_01 + 167 + OFFSET_X, 1, 0.19, 0.19 );
	setScaleKey( ATK_01 + 168 + OFFSET_X, 1, 0.2, 0.2 );
	setScaleKey( ATK_01 + 169 + OFFSET_X, 1, 0.2, 0.2 );
	setScaleKey( ATK_01 + 170 + OFFSET_X, 1, 0.22, 0.22 );
	setScaleKey( ATK_01 + 171 + OFFSET_X, 1, 0.22, 0.22 );
	setScaleKey( ATK_01 + 172 + OFFSET_X, 1, 0.24, 0.24 );
	setScaleKey( ATK_01 + 173 + OFFSET_X, 1, 0.24, 0.24 );
	setScaleKey( ATK_01 + 174 + OFFSET_X, 1, 0.25, 0.25 );
	setScaleKey( ATK_01 + 175 + OFFSET_X, 1, 0.25, 0.25 );
	setScaleKey( ATK_01 + 176 + OFFSET_X, 1, 0.28, 0.28 );
	setScaleKey( ATK_01 + 177 + OFFSET_X, 1, 0.28, 0.28 );
	setScaleKey( ATK_01 + 178 + OFFSET_X, 1, 0.3, 0.3 );
	setScaleKey( ATK_01 + 179 + OFFSET_X, 1, 0.3, 0.3 );
	setScaleKey( ATK_01 + 180 + OFFSET_X, 1, 0.33, 0.33 );
	setScaleKey( ATK_01 + 181 + OFFSET_X, 1, 0.33, 0.33 );
	setScaleKey( ATK_01 + 182 + OFFSET_X, 1, 0.37, 0.37 );
	setScaleKey( ATK_01 + 183 + OFFSET_X, 1, 0.37, 0.37 );
	setScaleKey( ATK_01 + 184 + OFFSET_X, 1, 0.4, 0.4 );
	setScaleKey( ATK_01 + 185 + OFFSET_X, 1, 0.4, 0.4 );
	setScaleKey( ATK_01 + 186 + OFFSET_X, 1, 0.44, 0.44 );
	setScaleKey( ATK_01 + 187 + OFFSET_X, 1, 0.44, 0.44 );
	setScaleKey( ATK_01 + 188 + OFFSET_X, 1, 0.49, 0.49 );
	setScaleKey( ATK_01 + 189 + OFFSET_X, 1, 0.49, 0.49 );
	setScaleKey( ATK_01 + 190 + OFFSET_X, 1, 0.54, 0.54 );
	setScaleKey( ATK_01 + 191 + OFFSET_X, 1, 0.54, 0.54 );
	setScaleKey( ATK_01 + 192 + OFFSET_X, 1, 0.95, 0.95 );
	setScaleKey( ATK_01 + 193 + OFFSET_X, 1, 0.95, 0.95 );
	setScaleKey( ATK_01 + 194 + OFFSET_X, 1, 1.01, 1.01 );
	setScaleKey( ATK_01 + 195 + OFFSET_X, 1, 1.01, 1.01 );
	setScaleKey( ATK_01 + 196 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + 197 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + 198 + OFFSET_X, 1, 1.12, 1.12 );
	setScaleKey( ATK_01 + ATK_end, 1, 1.12, 1.12 );
	
	setRotateKey( ATK_01 + 0, 1, 0 );
	setRotateKey( ATK_01 + 2 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 3 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 4 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 5 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 6 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 7 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 45 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 46 + OFFSET_X, 1, 7.7 );
	setRotateKey( ATK_01 + 85 + OFFSET_X, 1, 7.7 );
	setRotateKey( ATK_01 + 86 + OFFSET_X, 1, 7.6 );
	setRotateKey( ATK_01 + 87 + OFFSET_X, 1, 7.6 );
	setRotateKey( ATK_01 + 88 + OFFSET_X, 1, 7.5 );
	setRotateKey( ATK_01 + 89 + OFFSET_X, 1, 7.5 );
	setRotateKey( ATK_01 + 90 + OFFSET_X, 1, 7.4 );
	setRotateKey( ATK_01 + 91 + OFFSET_X, 1, 7.4 );
	setRotateKey( ATK_01 + 92 + OFFSET_X, 1, 7.3 );
	setRotateKey( ATK_01 + 93 + OFFSET_X, 1, 7.3 );
	setRotateKey( ATK_01 + 94 + OFFSET_X, 1, 7.2 );
	setRotateKey( ATK_01 + 95 + OFFSET_X, 1, 7.2 );
	setRotateKey( ATK_01 + 96 + OFFSET_X, 1, 7.1 );
	setRotateKey( ATK_01 + 97 + OFFSET_X, 1, 7.1 );
	setRotateKey( ATK_01 + 98 + OFFSET_X, 1, 7 );
	setRotateKey( ATK_01 + 99 + OFFSET_X, 1, 7 );
	setRotateKey( ATK_01 + 100 + OFFSET_X, 1, 6.9 );
	setRotateKey( ATK_01 + 101 + OFFSET_X, 1, 6.9 );
	setRotateKey( ATK_01 + 102 + OFFSET_X, 1, 7 );
	setRotateKey( ATK_01 + 103 + OFFSET_X, 1, 7 );
	setRotateKey( ATK_01 + 104 + OFFSET_X, 1, 7.1 );
	setRotateKey( ATK_01 + 105 + OFFSET_X, 1, 7.1 );
	setRotateKey( ATK_01 + 106 + OFFSET_X, 1, 7.2 );
	setRotateKey( ATK_01 + 109 + OFFSET_X, 1, 7.2 );
	setRotateKey( ATK_01 + 110 + OFFSET_X, 1, 7.3 );
	setRotateKey( ATK_01 + 111 + OFFSET_X, 1, 7.3 );
	setRotateKey( ATK_01 + 112 + OFFSET_X, 1, 7.4 );
	setRotateKey( ATK_01 + 113 + OFFSET_X, 1, 7.4 );
	setRotateKey( ATK_01 + 114 + OFFSET_X, 1, 7.5 );
	setRotateKey( ATK_01 + 115 + OFFSET_X, 1, 7.5 );
	setRotateKey( ATK_01 + 116 + OFFSET_X, 1, 7.6 );
	setRotateKey( ATK_01 + 125 + OFFSET_X, 1, 7.6 );
	setRotateKey( ATK_01 + 126 + OFFSET_X, 1, 7 );
	setRotateKey( ATK_01 + 127 + OFFSET_X, 1, 7 );
	setRotateKey( ATK_01 + 128 + OFFSET_X, 1, 8.7 );
	setRotateKey( ATK_01 + 129 + OFFSET_X, 1, 8.7 );
	setRotateKey( ATK_01 + 130 + OFFSET_X, 1, 9.6 );
	setRotateKey( ATK_01 + 131 + OFFSET_X, 1, 9.6 );
	setRotateKey( ATK_01 + 132 + OFFSET_X, 1, 10.1 );
	setRotateKey( ATK_01 + 133 + OFFSET_X, 1, 10.1 );
	setRotateKey( ATK_01 + 134 + OFFSET_X, 1, 10.3 );
	setRotateKey( ATK_01 + 139 + OFFSET_X, 1, 10.3 );
	setRotateKey( ATK_01 + 140 + OFFSET_X, 1, 10.9 );
	setRotateKey( ATK_01 + 141 + OFFSET_X, 1, 10.9 );
	setRotateKey( ATK_01 + 142 + OFFSET_X, 1, 11.4 );
	setRotateKey( ATK_01 + 143 + OFFSET_X, 1, 11.4 );
	setRotateKey( ATK_01 + 144 + OFFSET_X, 1, 12 );
	setRotateKey( ATK_01 + 145 + OFFSET_X, 1, 12 );
	setRotateKey( ATK_01 + 146 + OFFSET_X, 1, -16.4 );
	setRotateKey( ATK_01 + 151 + OFFSET_X, 1, -16.4 );
	setRotateKey( ATK_01 + 152 + OFFSET_X, 1, -16.5 );
	setRotateKey( ATK_01 + 157 + OFFSET_X, 1, -16.5 );
	setRotateKey( ATK_01 + 158 + OFFSET_X, 1, -16.6 );
	setRotateKey( ATK_01 + 159 + OFFSET_X, 1, -16.6 );
	setRotateKey( ATK_01 + 160 + OFFSET_X, 1, -16.7 );
	setRotateKey( ATK_01 + 161 + OFFSET_X, 1, -16.7 );
	setRotateKey( ATK_01 + 162 + OFFSET_X, 1, -16.8 );
	setRotateKey( ATK_01 + 163 + OFFSET_X, 1, -16.8 );
	setRotateKey( ATK_01 + 164 + OFFSET_X, 1, -16.9 );
	setRotateKey( ATK_01 + 165 + OFFSET_X, 1, -16.9 );
	setRotateKey( ATK_01 + 166 + OFFSET_X, 1, -17.1 );
	setRotateKey( ATK_01 + 167 + OFFSET_X, 1, -17.1 );
	setRotateKey( ATK_01 + 168 + OFFSET_X, 1, -17.4 );
	setRotateKey( ATK_01 + 169 + OFFSET_X, 1, -17.4 );
	setRotateKey( ATK_01 + 170 + OFFSET_X, 1, -17.6 );
	setRotateKey( ATK_01 + 171 + OFFSET_X, 1, -17.6 );
	setRotateKey( ATK_01 + 172 + OFFSET_X, 1, -18 );
	setRotateKey( ATK_01 + 173 + OFFSET_X, 1, -18 );
	setRotateKey( ATK_01 + 174 + OFFSET_X, 1, -18.4 );
	setRotateKey( ATK_01 + 175 + OFFSET_X, 1, -18.4 );
	setRotateKey( ATK_01 + 176 + OFFSET_X, 1, -18.8 );
	setRotateKey( ATK_01 + 177 + OFFSET_X, 1, -18.8 );
	setRotateKey( ATK_01 + 178 + OFFSET_X, 1, -19.3 );
	setRotateKey( ATK_01 + 179 + OFFSET_X, 1, -19.3 );
	setRotateKey( ATK_01 + 180 + OFFSET_X, 1, -19.9 );
	setRotateKey( ATK_01 + 181 + OFFSET_X, 1, -19.9 );
	setRotateKey( ATK_01 + 182 + OFFSET_X, 1, -20.5 );
	setRotateKey( ATK_01 + 183 + OFFSET_X, 1, -20.5 );
	setRotateKey( ATK_01 + 184 + OFFSET_X, 1, -21.2 );
	setRotateKey( ATK_01 + 185 + OFFSET_X, 1, -21.2 );
	setRotateKey( ATK_01 + 186 + OFFSET_X, 1, -22 );
	setRotateKey( ATK_01 + 187 + OFFSET_X, 1, -22 );
	setRotateKey( ATK_01 + 188 + OFFSET_X, 1, -22.9 );
	setRotateKey( ATK_01 + 189 + OFFSET_X, 1, -22.9 );
	setRotateKey( ATK_01 + 190 + OFFSET_X, 1, -23.9 );
	setRotateKey( ATK_01 + 191 + OFFSET_X, 1, -23.9 );
	setRotateKey( ATK_01 + 192 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 195 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 196 + OFFSET_X, 1, 2.5 );
	setRotateKey( ATK_01 + ATK_end, 1, 2.5 );
	
end

-- ** 音 ** --
--構える
SE001 = playSeVer2( ATK_01 + 0, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 0, SE001, 68 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

	SP_dodge = 20; --エンドフェイズのフレーム数を置き換える
	
	playSe( SP_dodge-12, 1042);
	stopSe( SP_dodge-12, SE001, 0);
	
	speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
	setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
	
	
	kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
	
		if (_IS_PLAYER_SIDE_ == 1) then
	
			setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
	
		else
	
			setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
	
		end
	
	setEffAlphaKey( SP_dodge, kaihi, 255);
	
	pauseAll( SP_dodge, 67);
	
	entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
	setMoveKey(  SP_dodge+5, 0, 90, 80,    0);-- 中央位置から
	setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
	--setDisp( SP_dodge+5, 0, 0);
	
	endPhase(SP_dodge+10);
	do return end
	else end

-- ** 音 ** --
--瞬間移動
SE002 = playSeVer2( ATK_01 + 4, 1109, "", 0, 0, 0, -1);

--ぶつかる
SE003 = playSeVer2( ATK_01 + 28, 1049, "",ATK_01 + 72, 0, 22, -1);
setSeVolumeByWorkId( ATK_01 + 28, SE003, 72 );
SE004 = playSeVer2( ATK_01 + 30, 20, "",ATK_01 + 92, 0, 36, -1);
setSeVolumeByWorkId( ATK_01 + 30, SE004, 71 );

--ぶつかる２
SE005 = playSeVer2( ATK_01 + 48, 1000, "", 0, 0, 0, -1);
SE006 = playSeVer2( ATK_01 + 50, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 50, SE006, 79 );

--近づく
SE007 = playSeVer2( ATK_01 + 76, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 76, SE007, 61 );

--ぶつかる３
SE008 = playSeVer2( ATK_01 + 98, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 98, SE008, 158 );
SE009 = playSeVer2( ATK_01 + 102, 1049, "",ATK_01 + 148, 0, 24, -1);
setSeVolumeByWorkId( ATK_01 + 102, SE009, 72 );
SE010 = playSeVer2( ATK_01 + 106, 20, "",ATK_01 + 166, 0, 34, -1);
setSeVolumeByWorkId( ATK_01 + 106, SE010, 68 );

--手前に飛んでくる
SE011 = playSeVer2( ATK_01 + 138, 9, "",ATK_01 + 204, 0, 14, -1);
setSeVolumeByWorkId( ATK_01 + 138, SE011, 75 );
SE012 = playSeVer2( ATK_01 + 138, 1182, "", 0, 0, 0, -1);
SE013 = playSeVer2( ATK_01 + 138, 1167, "",ATK_01 + 184, 0, 8, -1);
setSeVolumeByWorkId( ATK_01 + 138, SE013, 47 );

--殴り飛ばす
SE014 = playSeVer2( ATK_01 + 198, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 198, SE014, 166 );
SE015 = playSeVer2( ATK_01 + 206, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 206, SE015, 82 );

--敵起きる
SE016 = playSeVer2( ATK_01 + 242, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 242, SE016, 71 );

--------------------------------死亡

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_01 + 216;	

        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
else

dealDamage(  ATK_D+4);
endPhase(  ATK_end);
end


print ("[lua]exec b0010");