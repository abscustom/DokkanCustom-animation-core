print ("[lua]exec b0007");

ATK_01 = 0;
ATK_D = 170;
ATK_end = ATK_01+202+32;

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 182, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 182, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_D+0, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

MAX_FRAME_0=202

-- ** エフェクト等 ** --
effect_back = entryEffect( ATK_01 + 0,86, 0x100, -1, 0, 0, 0); --ef_132(中間)
setEffMoveKey( ATK_01 + 0, effect_back, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_back, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_back, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_back, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_back, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_back, 0);
setEffAlphaKey( ATK_01 + 0, effect_back, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_back, 255);

if (_IS_PLAYER_SIDE_ == 1) then
    effect_front = entryEffect( ATK_01 + 0, 85, 0x100, -1, 0, 0, 0);  --味方側 ef_131
else
    effect_front = entryEffect( ATK_01 + 0, 88, 0x100, -1, 0, 0, 0);  --敵側 ef_131r
end

setEffMoveKey( ATK_01 + 0, effect_front, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_front, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_front, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_front, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_front, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_front, 0);
setEffAlphaKey( ATK_01 + 0, effect_front, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_front, 255);

effect_back2 = entryEffect( ATK_01 + 0,87, 0x80, -1, 0, 0, 0); --ef_133
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
	startBgScroll(ATK_01+0,-80,10);
	startBgScroll(ATK_01+58,-15,10);

else
	startBgScroll(ATK_01+0,-80,10);
	startBgScroll(ATK_01+58,-15,10);

end

--敵と味方のどちらが手前に来るか
setDrawFront( ATK_01+0, 1, 1);
setDrawFront( ATK_01+56, 1, 0);
setDrawFront( ATK_01+56, 0, 1);
setDrawFront( ATK_01+76, 1, 0);
setDrawFront( ATK_01+76, 0, 1);
setDrawFront( ATK_01+106, 0, 0);
setDrawFront( ATK_01+106, 1, 1);
setDrawFront( ATK_01+134, 1, 0);
setDrawFront( ATK_01+134, 0, 1);
setDrawFront( ATK_01+168, 0, 0);
setDrawFront( ATK_01+168, 1, 1);

--画面振動
setShakeXY(ATK_01 + 146 + OFFSET_X,12,60);
setShakeXY(ATK_01 + 158 + OFFSET_X,8,30);
setShakeXY(ATK_01 + 182 + OFFSET_X,4,40);
setShakeXY(ATK_01 + 186 + OFFSET_X,10, 10, 50);
setShakeXY(ATK_01 + 196 + OFFSET_X,4, 5, 30);
setShakeXY(ATK_01 + 200 + OFFSET_X,6, 10, 10);

-----------------------------------------------------
--味方の動き
-----------------------------------------------------

setDisp( ATK_01 + 56 + OFFSET_X, 0, 0);
setDisp( ATK_01 + 58 + OFFSET_X, 0, 1);
setDisp( ATK_01 + 60 + OFFSET_X, 0, 0);
setDisp( ATK_01 + 76 + OFFSET_X, 0, 1);
setDisp( ATK_01 + 78 + OFFSET_X, 0, 0);
setDisp( ATK_01 + 80 + OFFSET_X, 0, 1);
setDisp( ATK_01 + 116 + OFFSET_X, 0, 0);
setDisp( ATK_01 + 118 + OFFSET_X, 0, 1);
setDisp( ATK_01 + 120 + OFFSET_X, 0, 0);
setDisp( ATK_01 + 136 + OFFSET_X, 0, 1);
setDisp( ATK_01 + 138 + OFFSET_X, 0, 0);
setDisp( ATK_01 + 140 + OFFSET_X, 0, 1);
setDisp( ATK_01 + 150 + OFFSET_X, 0, 0);
setDisp( ATK_01 + 152 + OFFSET_X, 0, 1);
setDisp( ATK_01 + 154 + OFFSET_X, 0, 0);
setDisp( ATK_01 + 170 + OFFSET_X, 0, 1);
setDisp( ATK_01 + 172 + OFFSET_X, 0, 0);
setDisp( ATK_01 + 174 + OFFSET_X, 0, 1);
setDisp( ATK_01 + ATK_end -2, 0, 0);

changeAnime( ATK_01 + 0, 0, 3 );
changeAnime( ATK_01 + 42 + OFFSET_X, 0, 1 );
changeAnimeAndStop( ATK_01 + 76 + OFFSET_X, 0, 111 ,1)
changeAnimeAndStop( ATK_01 + 88 + OFFSET_X, 0, 111 ,3)
changeAnimeAndStop( ATK_01 + 136 + OFFSET_X, 0, 111 ,1)
changeAnime( ATK_01 + 146 + OFFSET_X, 0, 114 );
changeAnimeAndStop( ATK_01 + 170 + OFFSET_X, 0, 15 ,1)
changeAnime( ATK_01 + 180 + OFFSET_X, 0, 15 );

setMoveKey( ATK_01 + 0, 0, -955.9, -38.4 , 0 );
setMoveKey( ATK_01 + 2 + OFFSET_X, 0, -837.3, -38.3 , 0 );
setMoveKey( ATK_01 + 3 + OFFSET_X, 0, -837.3, -38.3 , 0 );
setMoveKey( ATK_01 + 4 + OFFSET_X, 0, -731.7, -38.3 , 0 );
setMoveKey( ATK_01 + 5 + OFFSET_X, 0, -731.7, -38.3 , 0 );
setMoveKey( ATK_01 + 6 + OFFSET_X, 0, -637.6, -38.3 , 0 );
setMoveKey( ATK_01 + 7 + OFFSET_X, 0, -637.6, -38.3 , 0 );
setMoveKey( ATK_01 + 8 + OFFSET_X, 0, -554.9, -38.3 , 0 );
setMoveKey( ATK_01 + 9 + OFFSET_X, 0, -554.9, -38.3 , 0 );
setMoveKey( ATK_01 + 10 + OFFSET_X, 0, -484.3, -38.3 , 0 );
setMoveKey( ATK_01 + 11 + OFFSET_X, 0, -484.3, -38.3 , 0 );
setMoveKey( ATK_01 + 12 + OFFSET_X, 0, -427.2, -38.3 , 0 );
setMoveKey( ATK_01 + 13 + OFFSET_X, 0, -427.2, -38.3 , 0 );
setMoveKey( ATK_01 + 14 + OFFSET_X, 0, -385.6, -38.3 , 0 );
setMoveKey( ATK_01 + 15 + OFFSET_X, 0, -385.6, -38.3 , 0 );
setMoveKey( ATK_01 + 16 + OFFSET_X, 0, -362.6, -38.3 , 0 );
setMoveKey( ATK_01 + 17 + OFFSET_X, 0, -362.6, -38.3 , 0 );
setMoveKey( ATK_01 + 18 + OFFSET_X, 0, -348.6, -38.3 , 0 );
setMoveKey( ATK_01 + 19 + OFFSET_X, 0, -348.6, -38.3 , 0 );
setMoveKey( ATK_01 + 20 + OFFSET_X, 0, -334.8, -38.3 , 0 );
setMoveKey( ATK_01 + 21 + OFFSET_X, 0, -334.8, -38.3 , 0 );
setMoveKey( ATK_01 + 22 + OFFSET_X, 0, -321.2, -38.3 , 0 );
setMoveKey( ATK_01 + 23 + OFFSET_X, 0, -321.2, -38.3 , 0 );
setMoveKey( ATK_01 + 24 + OFFSET_X, 0, -307.7, -38.3 , 0 );
setMoveKey( ATK_01 + 25 + OFFSET_X, 0, -307.7, -38.3 , 0 );
setMoveKey( ATK_01 + 26 + OFFSET_X, 0, -294.5, -38.4 , 0 );
setMoveKey( ATK_01 + 27 + OFFSET_X, 0, -294.5, -38.4 , 0 );
setMoveKey( ATK_01 + 28 + OFFSET_X, 0, -281.3, -38.4 , 0 );
setMoveKey( ATK_01 + 29 + OFFSET_X, 0, -281.3, -38.4 , 0 );
setMoveKey( ATK_01 + 30 + OFFSET_X, 0, -268.2, -38.4 , 0 );
setMoveKey( ATK_01 + 31 + OFFSET_X, 0, -268.2, -38.4 , 0 );
setMoveKey( ATK_01 + 32 + OFFSET_X, 0, -255.1, -38.4 , 0 );
setMoveKey( ATK_01 + 33 + OFFSET_X, 0, -255.1, -38.4 , 0 );
setMoveKey( ATK_01 + 34 + OFFSET_X, 0, -242.1, -38.4 , 0 );
setMoveKey( ATK_01 + 35 + OFFSET_X, 0, -242.1, -38.4 , 0 );
setMoveKey( ATK_01 + 36 + OFFSET_X, 0, -229, -38.4 , 0 );
setMoveKey( ATK_01 + 37 + OFFSET_X, 0, -229, -38.4 , 0 );
setMoveKey( ATK_01 + 38 + OFFSET_X, 0, -215.9, -38.4 , 0 );
setMoveKey( ATK_01 + 39 + OFFSET_X, 0, -215.9, -38.4 , 0 );
setMoveKey( ATK_01 + 40 + OFFSET_X, 0, -210, -32.4 , 0 );
setMoveKey( ATK_01 + 41 + OFFSET_X, 0, -210, -32.4 , 0 );
setMoveKey( ATK_01 + 42 + OFFSET_X, 0, -181.8, -4.1 , 0 );
setMoveKey( ATK_01 + 43 + OFFSET_X, 0, -181.8, -4.1 , 0 );
setMoveKey( ATK_01 + 44 + OFFSET_X, 0, -175.9, 1.8 , 0 );
setMoveKey( ATK_01 + 49 + OFFSET_X, 0, -175.9, 1.8 , 0 );
setMoveKey( ATK_01 + 50 + OFFSET_X, 0, -169.9, 0.9 , 0 );
setMoveKey( ATK_01 + 51 + OFFSET_X, 0, -169.9, 0.9 , 0 );
setMoveKey( ATK_01 + 52 + OFFSET_X, 0, -151.9, -1.7 , 0 );
setMoveKey( ATK_01 + 53 + OFFSET_X, 0, -151.9, -1.7 , 0 );
setMoveKey( ATK_01 + 54 + OFFSET_X, 0, -121.8, -6.2 , 0 );
setMoveKey( ATK_01 + 75 + OFFSET_X, 0, -121.8, -6.2 , 0 );
setMoveKey( ATK_01 + 76 + OFFSET_X, 0, 128.5, -68.3 , 0 );
setMoveKey( ATK_01 + 81 + OFFSET_X, 0, 128.5, -68.3 , 0 );
setMoveKey( ATK_01 + 82 + OFFSET_X, 0, 126.4, -68.2 , 0 );
setMoveKey( ATK_01 + 83 + OFFSET_X, 0, 126.4, -68.2 , 0 );
setMoveKey( ATK_01 + 84 + OFFSET_X, 0, 124.5, -68.3 , 0 );
setMoveKey( ATK_01 + 85 + OFFSET_X, 0, 124.5, -68.3 , 0 );
setMoveKey( ATK_01 + 86 + OFFSET_X, 0, 103.3, -68.3 , 0 );
setMoveKey( ATK_01 + 87 + OFFSET_X, 0, 103.3, -68.3 , 0 );
setMoveKey( ATK_01 + 88 + OFFSET_X, 0, 90.7, -68.3 , 0 );
setMoveKey( ATK_01 + 89 + OFFSET_X, 0, 90.7, -68.3 , 0 );
setMoveKey( ATK_01 + 90 + OFFSET_X, 0, 86.4, -68.3 , 0 );
setMoveKey( ATK_01 + 135 + OFFSET_X, 0, 86.4, -68.3 , 0 );
setMoveKey( ATK_01 + 136 + OFFSET_X, 0, 243.1, -137.4 , 0 );
setMoveKey( ATK_01 + 143 + OFFSET_X, 0, 243.1, -137.4 , 0 );
setMoveKey( ATK_01 + 144 + OFFSET_X, 0, 130.1, -87.6 , 0 );
setMoveKey( ATK_01 + 145 + OFFSET_X, 0, 130.1, -87.6 , 0 );
setMoveKey( ATK_01 + 146 + OFFSET_X, 0, 101.8, -58.8 , 0 );
setMoveKey( ATK_01 + 147 + OFFSET_X, 0, 101.8, -58.8 , 0 );
setMoveKey( ATK_01 + 148 + OFFSET_X, 0, 97.4, -56.8 , 0 );
setMoveKey( ATK_01 + 169 + OFFSET_X, 0, 97.4, -56.8 , 0 );
setMoveKey( ATK_01 + 170 + OFFSET_X, 0, -142.9, 103.1 , 0 );
setMoveKey( ATK_01 + 177 + OFFSET_X, 0, -142.9, 103.1 , 0 );
setMoveKey( ATK_01 + 178 + OFFSET_X, 0, -165.6, 94.2 , 0 );
setMoveKey( ATK_01 + 183 + OFFSET_X, 0, -165.6, 94.2 , 0 );
setMoveKey( ATK_01 + 184 + OFFSET_X, 0, -162.4, 90.1 , 0 );
setMoveKey( ATK_01 + 185 + OFFSET_X, 0, -162.4, 90.1 , 0 );
setMoveKey( ATK_01 + 186 + OFFSET_X, 0, -159.7, 86.7 , 0 );
setMoveKey( ATK_01 + 187 + OFFSET_X, 0, -159.7, 86.7 , 0 );
setMoveKey( ATK_01 + 188 + OFFSET_X, 0, -157.6, 84 , 0 );
setMoveKey( ATK_01 + 189 + OFFSET_X, 0, -157.6, 84 , 0 );
setMoveKey( ATK_01 + 190 + OFFSET_X, 0, -156.2, 82.1 , 0 );
setMoveKey( ATK_01 + 191 + OFFSET_X, 0, -156.2, 82.1 , 0 );
setMoveKey( ATK_01 + 192 + OFFSET_X, 0, -155.3, 81 , 0 );
setMoveKey( ATK_01 + 193 + OFFSET_X, 0, -155.3, 81 , 0 );
setMoveKey( ATK_01 + 194 + OFFSET_X, 0, -155, 80.6 , 0 );
setMoveKey( ATK_01 + ATK_end-3, 0, -155, 80.6 , 0 );
setMoveKey( ATK_01 + ATK_end-2, 0, 2000, 0 , 0 );

setScaleKey( ATK_01 + 0, 0, 0.9, 0.9 );
setScaleKey( ATK_01 + 2 + OFFSET_X, 0, 0.9, 0.9 );
setScaleKey( ATK_01 + 3 + OFFSET_X, 0, 0.9, 0.9 );
setScaleKey( ATK_01 + 4 + OFFSET_X, 0, 0.9, 0.9 );
setScaleKey( ATK_01 + 5 + OFFSET_X, 0, 0.9, 0.9 );
setScaleKey( ATK_01 + 6 + OFFSET_X, 0, 0.9, 0.9 );
setScaleKey( ATK_01 + 7 + OFFSET_X, 0, 0.9, 0.9 );
setScaleKey( ATK_01 + 39 + OFFSET_X, 0, 0.9, 0.9 );
setScaleKey( ATK_01 + 40 + OFFSET_X, 0, 0.91, 0.91 );
setScaleKey( ATK_01 + 41 + OFFSET_X, 0, 0.91, 0.91 );
setScaleKey( ATK_01 + 42 + OFFSET_X, 0, 0.94, 0.94 );
setScaleKey( ATK_01 + 43 + OFFSET_X, 0, 0.94, 0.94 );
setScaleKey( ATK_01 + 44 + OFFSET_X, 0, 0.95, 0.95 );
setScaleKey( ATK_01 + 49 + OFFSET_X, 0, 0.95, 0.95 );
setScaleKey( ATK_01 + 50 + OFFSET_X, 0, 0.96, 0.96 );
setScaleKey( ATK_01 + 51 + OFFSET_X, 0, 0.96, 0.96 );
setScaleKey( ATK_01 + 52 + OFFSET_X, 0, 0.97, 0.97 );
setScaleKey( ATK_01 + 53 + OFFSET_X, 0, 0.97, 0.97 );
setScaleKey( ATK_01 + 54 + OFFSET_X, 0, 1, 1 );
setScaleKey( ATK_01 + 75 + OFFSET_X, 0, 1, 1 );
setScaleKey( ATK_01 + 76 + OFFSET_X, 0, 1.26, 1.26 );
setScaleKey( ATK_01 + 135 + OFFSET_X, 0, 1.26, 1.26 );
setScaleKey( ATK_01 + 136 + OFFSET_X, 0, 1.2, 1.2 );
setScaleKey( ATK_01 + 169 + OFFSET_X, 0, 1.2, 1.2 );
setScaleKey( ATK_01 + 170 + OFFSET_X, 0, 0.95, 0.95 );
setScaleKey( ATK_01 + ATK_end, 0, 0.95, 0.95 );

setRotateKey( ATK_01 + 0, 0, -0.1 );
setRotateKey( ATK_01 + 2 + OFFSET_X, 0, -0.1 );
setRotateKey( ATK_01 + 3 + OFFSET_X, 0, -0.1 );
setRotateKey( ATK_01 + 4 + OFFSET_X, 0, -0.1 );
setRotateKey( ATK_01 + 5 + OFFSET_X, 0, -0.1 );
setRotateKey( ATK_01 + 6 + OFFSET_X, 0, -0.1 );
setRotateKey( ATK_01 + 7 + OFFSET_X, 0, -0.1 );
setRotateKey( ATK_01 + 39 + OFFSET_X, 0, -0.1 );
setRotateKey( ATK_01 + 40 + OFFSET_X, 0, -6.9 );
setRotateKey( ATK_01 + 41 + OFFSET_X, 0, -6.9 );
setRotateKey( ATK_01 + 42 + OFFSET_X, 0, 6.8 );
setRotateKey( ATK_01 + 43 + OFFSET_X, 0, 6.8 );
setRotateKey( ATK_01 + 44 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 75 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 76 + OFFSET_X, 0, 16.2 );
setRotateKey( ATK_01 + 85 + OFFSET_X, 0, 16.2 );
setRotateKey( ATK_01 + 86 + OFFSET_X, 0, 16.1 );
setRotateKey( ATK_01 + 87 + OFFSET_X, 0, 16.1 );
setRotateKey( ATK_01 + 88 + OFFSET_X, 0, -4.3 );
setRotateKey( ATK_01 + 135 + OFFSET_X, 0, -4.3 );
setRotateKey( ATK_01 + 136 + OFFSET_X, 0, 10.1 );
setRotateKey( ATK_01 + 143 + OFFSET_X, 0, 10.1 );
setRotateKey( ATK_01 + 144 + OFFSET_X, 0, 22.2 );
setRotateKey( ATK_01 + 145 + OFFSET_X, 0, 22.2 );
setRotateKey( ATK_01 + 146 + OFFSET_X, 0, -9.9 );
setRotateKey( ATK_01 + 147 + OFFSET_X, 0, -9.9 );
setRotateKey( ATK_01 + 148 + OFFSET_X, 0, -9.4 );
setRotateKey( ATK_01 + 169 + OFFSET_X, 0, -9.4 );
setRotateKey( ATK_01 + 170 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 177 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 178 + OFFSET_X, 0, -10.7 );
setRotateKey( ATK_01 + 183 + OFFSET_X, 0, -10.7 );
setRotateKey( ATK_01 + 184 + OFFSET_X, 0, -10.6 );
setRotateKey( ATK_01 + 185 + OFFSET_X, 0, -10.6 );
setRotateKey( ATK_01 + 186 + OFFSET_X, 0, -10.4 );
setRotateKey( ATK_01 + 189 + OFFSET_X, 0, -10.4 );
setRotateKey( ATK_01 + 190 + OFFSET_X, 0, -10.3 );
setRotateKey( ATK_01 + 191 + OFFSET_X, 0, -10.3 );
setRotateKey( ATK_01 + 192 + OFFSET_X, 0, -10.2 );
setRotateKey( ATK_01 + ATK_end, 0, -10.2 );


-----------------------------------------------------
--敵の動き
-----------------------------------------------------

if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then

	setDisp(ATK_01 + 88 + OFFSET_X, 1, 0)
	setDisp(ATK_01 + 90 + OFFSET_X, 1, 1)
	setDisp(ATK_01 + 92 + OFFSET_X, 1, 0)
	setDisp(ATK_01 + 108 + OFFSET_X, 1, 1)
	setDisp(ATK_01 + 110 + OFFSET_X, 1, 0)
	setDisp(ATK_01 + 112 + OFFSET_X, 1, 1)
	setDisp(ATK_01 + ATK_end -2 , 1, 0)

	changeAnime( ATK_01 + 0, 1, 3 );
	changeAnime( ATK_01 + 38 + OFFSET_X, 1, 102 );
	changeAnime( ATK_01 + 56 + OFFSET_X, 1, 114 );
	changeAnimeAndStop( ATK_01 + 108 + OFFSET_X, 1, 111 ,1)
	changeAnime( ATK_01 + 116 + OFFSET_X, 1, 113 );
	changeAnime( ATK_01 + 148 + OFFSET_X, 1, 4 );
	changeAnime( ATK_01 + 178 + OFFSET_X, 1, 104 );

	setMoveKey( ATK_01 + 0, 1, -640.8, -124.2 , 0 );
	setMoveKey( ATK_01 + 2 + OFFSET_X, 1, -514.8, -124.3 , 0 );
	setMoveKey( ATK_01 + 3 + OFFSET_X, 1, -514.8, -124.3 , 0 );
	setMoveKey( ATK_01 + 4 + OFFSET_X, 1, -391.3, -124.3 , 0 );
	setMoveKey( ATK_01 + 5 + OFFSET_X, 1, -391.3, -124.3 , 0 );
	setMoveKey( ATK_01 + 6 + OFFSET_X, 1, -284.8, -124.3 , 0 );
	setMoveKey( ATK_01 + 7 + OFFSET_X, 1, -284.8, -124.3 , 0 );
	setMoveKey( ATK_01 + 8 + OFFSET_X, 1, -202.5, -124.3 , 0 );
	setMoveKey( ATK_01 + 9 + OFFSET_X, 1, -202.5, -124.3 , 0 );
	setMoveKey( ATK_01 + 10 + OFFSET_X, 1, -147.6, -124.3 , 0 );
	setMoveKey( ATK_01 + 11 + OFFSET_X, 1, -147.6, -124.3 , 0 );
	setMoveKey( ATK_01 + 12 + OFFSET_X, 1, -121.1, -124.3 , 0 );
	setMoveKey( ATK_01 + 13 + OFFSET_X, 1, -121.1, -124.3 , 0 );
	setMoveKey( ATK_01 + 14 + OFFSET_X, 1, -111.8, -124.3 , 0 );
	setMoveKey( ATK_01 + 15 + OFFSET_X, 1, -111.8, -124.3 , 0 );
	setMoveKey( ATK_01 + 16 + OFFSET_X, 1, -102.4, -124.3 , 0 );
	setMoveKey( ATK_01 + 17 + OFFSET_X, 1, -102.4, -124.3 , 0 );
	setMoveKey( ATK_01 + 18 + OFFSET_X, 1, -93, -124.3 , 0 );
	setMoveKey( ATK_01 + 19 + OFFSET_X, 1, -93, -124.3 , 0 );
	setMoveKey( ATK_01 + 20 + OFFSET_X, 1, -83.5, -124.3 , 0 );
	setMoveKey( ATK_01 + 21 + OFFSET_X, 1, -83.5, -124.3 , 0 );
	setMoveKey( ATK_01 + 22 + OFFSET_X, 1, -74.1, -124.3 , 0 );
	setMoveKey( ATK_01 + 23 + OFFSET_X, 1, -74.1, -124.3 , 0 );
	setMoveKey( ATK_01 + 24 + OFFSET_X, 1, -64.5, -124.3 , 0 );
	setMoveKey( ATK_01 + 25 + OFFSET_X, 1, -64.5, -124.3 , 0 );
	setMoveKey( ATK_01 + 26 + OFFSET_X, 1, -54.9, -124.3 , 0 );
	setMoveKey( ATK_01 + 27 + OFFSET_X, 1, -54.9, -124.3 , 0 );
	setMoveKey( ATK_01 + 28 + OFFSET_X, 1, -45.3, -124.3 , 0 );
	setMoveKey( ATK_01 + 29 + OFFSET_X, 1, -45.3, -124.3 , 0 );
	setMoveKey( ATK_01 + 30 + OFFSET_X, 1, -35.8, -124.3 , 0 );
	setMoveKey( ATK_01 + 31 + OFFSET_X, 1, -35.8, -124.3 , 0 );
	setMoveKey( ATK_01 + 32 + OFFSET_X, 1, -26.2, -124.3 , 0 );
	setMoveKey( ATK_01 + 33 + OFFSET_X, 1, -26.2, -124.3 , 0 );
	setMoveKey( ATK_01 + 34 + OFFSET_X, 1, -16.6, -124.3 , 0 );
	setMoveKey( ATK_01 + 35 + OFFSET_X, 1, -16.6, -124.3 , 0 );
	setMoveKey( ATK_01 + 36 + OFFSET_X, 1, -0.6, -111.9 , 0 );
	setMoveKey( ATK_01 + 37 + OFFSET_X, 1, -0.6, -111.9 , 0 );
	setMoveKey( ATK_01 + 38 + OFFSET_X, 1, 34.9, -85 , 0 );
	setMoveKey( ATK_01 + 39 + OFFSET_X, 1, 34.9, -85 , 0 );
	setMoveKey( ATK_01 + 40 + OFFSET_X, 1, 51.5, -73.5 , 0 );
	setMoveKey( ATK_01 + 49 + OFFSET_X, 1, 51.5, -73.5 , 0 );
	setMoveKey( ATK_01 + 50 + OFFSET_X, 1, 47.5, -72.2 , 0 );
	setMoveKey( ATK_01 + 51 + OFFSET_X, 1, 47.5, -72.2 , 0 );
	setMoveKey( ATK_01 + 52 + OFFSET_X, 1, 35.7, -68.3 , 0 );
	setMoveKey( ATK_01 + 53 + OFFSET_X, 1, 35.7, -68.3 , 0 );
	setMoveKey( ATK_01 + 54 + OFFSET_X, 1, 15.9, -61.7 , 0 );
	setMoveKey( ATK_01 + 55 + OFFSET_X, 1, 15.9, -61.7 , 0 );
	setMoveKey( ATK_01 + 56 + OFFSET_X, 1, -14.1, -39.1 , 0 );
	setMoveKey( ATK_01 + 107 + OFFSET_X, 1, -14.1, -39.1 , 0 );
	setMoveKey( ATK_01 + 108 + OFFSET_X, 1, 231.9, 108.8 , 0 );
	setMoveKey( ATK_01 + 115 + OFFSET_X, 1, 231.9, 108.8 , 0 );
	setMoveKey( ATK_01 + 116 + OFFSET_X, 1, 129.7, 9.2 , 0 );
	setMoveKey( ATK_01 + 117 + OFFSET_X, 1, 129.7, 9.2 , 0 );
	setMoveKey( ATK_01 + 118 + OFFSET_X, 1, 66.7, -49.2 , 0 );
	setMoveKey( ATK_01 + 119 + OFFSET_X, 1, 66.7, -49.2 , 0 );
	setMoveKey( ATK_01 + 120 + OFFSET_X, 1, 45.7, -68.6 , 0 );
	setMoveKey( ATK_01 + 145 + OFFSET_X, 1, 45.7, -68.6 , 0 );
	setMoveKey( ATK_01 + 146 + OFFSET_X, 1, -22.1, -29.6 , 0 );
	setMoveKey( ATK_01 + 147 + OFFSET_X, 1, -22.1, -29.6 , 0 );
	setMoveKey( ATK_01 + 148 + OFFSET_X, 1, -61.6, -7.1 , 0 );
	setMoveKey( ATK_01 + 149 + OFFSET_X, 1, -61.6, -7.1 , 0 );
	setMoveKey( ATK_01 + 150 + OFFSET_X, 1, -73.9, -0.1 , 0 );
	setMoveKey( ATK_01 + 151 + OFFSET_X, 1, -73.9, -0.1 , 0 );
	setMoveKey( ATK_01 + 152 + OFFSET_X, 1, -81.8, 4.4 , 0 );
	setMoveKey( ATK_01 + 153 + OFFSET_X, 1, -81.8, 4.4 , 0 );
	setMoveKey( ATK_01 + 154 + OFFSET_X, 1, -87.5, 7.7 , 0 );
	setMoveKey( ATK_01 + 155 + OFFSET_X, 1, -87.5, 7.7 , 0 );
	setMoveKey( ATK_01 + 156 + OFFSET_X, 1, -91.8, 10.1 , 0 );
	setMoveKey( ATK_01 + 157 + OFFSET_X, 1, -91.8, 10.1 , 0 );
	setMoveKey( ATK_01 + 158 + OFFSET_X, 1, -95.1, 12 , 0 );
	setMoveKey( ATK_01 + 159 + OFFSET_X, 1, -95.1, 12 , 0 );
	setMoveKey( ATK_01 + 160 + OFFSET_X, 1, -97.6, 13.5 , 0 );
	setMoveKey( ATK_01 + 161 + OFFSET_X, 1, -97.6, 13.5 , 0 );
	setMoveKey( ATK_01 + 162 + OFFSET_X, 1, -99.6, 14.6 , 0 );
	setMoveKey( ATK_01 + 163 + OFFSET_X, 1, -99.6, 14.6 , 0 );
	setMoveKey( ATK_01 + 164 + OFFSET_X, 1, -101.1, 15.5 , 0 );
	setMoveKey( ATK_01 + 165 + OFFSET_X, 1, -101.1, 15.5 , 0 );
	setMoveKey( ATK_01 + 166 + OFFSET_X, 1, -102.3, 16.2 , 0 );
	setMoveKey( ATK_01 + 167 + OFFSET_X, 1, -102.3, 16.2 , 0 );
	setMoveKey( ATK_01 + 168 + OFFSET_X, 1, -103.3, 16.7 , 0 );
	setMoveKey( ATK_01 + 169 + OFFSET_X, 1, -103.3, 16.7 , 0 );
	setMoveKey( ATK_01 + 170 + OFFSET_X, 1, -104.1, 17.2 , 0 );
	setMoveKey( ATK_01 + 171 + OFFSET_X, 1, -104.1, 17.2 , 0 );
	setMoveKey( ATK_01 + 172 + OFFSET_X, 1, -104.7, 17.5 , 0 );
	setMoveKey( ATK_01 + 173 + OFFSET_X, 1, -104.7, 17.5 , 0 );
	setMoveKey( ATK_01 + 174 + OFFSET_X, 1, -105.4, 17.9 , 0 );
	setMoveKey( ATK_01 + 175 + OFFSET_X, 1, -105.4, 17.9 , 0 );
	setMoveKey( ATK_01 + 176 + OFFSET_X, 1, -106.2, 18.4 , 0 );
	setMoveKey( ATK_01 + 177 + OFFSET_X, 1, -106.2, 18.4 , 0 );
	setMoveKey( ATK_01 + 178 + OFFSET_X, 1, -107.7, -3.9 , 0 );
	setMoveKey( ATK_01 + 179 + OFFSET_X, 1, -107.7, -3.9 , 0 );
	setMoveKey( ATK_01 + 180 + OFFSET_X, 1, -107.6, -3.8 , 0 );
	setMoveKey( ATK_01 + 181 + OFFSET_X, 1, -107.6, -3.8 , 0 );
	setMoveKey( ATK_01 + 182 + OFFSET_X, 1, -107.7, -3.9 , 0 );
	setMoveKey( ATK_01 + 183 + OFFSET_X, 1, -107.7, -3.9 , 0 );
	setMoveKey( ATK_01 + 184 + OFFSET_X, 1, -55.2, -42.2 , 0 );
	setMoveKey( ATK_01 + 185 + OFFSET_X, 1, -55.2, -42.2 , 0 );
	setMoveKey( ATK_01 + 186 + OFFSET_X, 1, 70.8, -134.3 , 0 );
	setMoveKey( ATK_01 + 187 + OFFSET_X, 1, 70.8, -134.3 , 0 );
	setMoveKey( ATK_01 + 188 + OFFSET_X, 1, 190.1, -221.5 , 0 );
	setMoveKey( ATK_01 + 189 + OFFSET_X, 1, 190.1, -221.5 , 0 );
	setMoveKey( ATK_01 + 190 + OFFSET_X, 1, 283.8, -290 , 0 );
	setMoveKey( ATK_01 + 191 + OFFSET_X, 1, 283.8, -290 , 0 );
	setMoveKey( ATK_01 + 192 + OFFSET_X, 1, 358.2, -344.4 , 0 );
	setMoveKey( ATK_01 + 193 + OFFSET_X, 1, 358.2, -344.4 , 0 );
	setMoveKey( ATK_01 + 194 + OFFSET_X, 1, 410.9, -382.8 , 0 );
	setMoveKey( ATK_01 + 195 + OFFSET_X, 1, 410.9, -382.8 , 0 );
	setMoveKey( ATK_01 + 196 + OFFSET_X, 1, 446.4, -408.7 , 0 );
	setMoveKey( ATK_01 + 197 + OFFSET_X, 1, 446.4, -408.7 , 0 );
	setMoveKey( ATK_01 + 198 + OFFSET_X, 1, 469.6, -425.7 , 0 );
	setMoveKey( ATK_01 + 199 + OFFSET_X, 1, 469.6, -425.7 , 0 );
	setMoveKey( ATK_01 + 200 + OFFSET_X, 1, 483.9, -436.1 , 0 );
	setMoveKey( ATK_01 + 201 + OFFSET_X, 1, 483.9, -436.1 , 0 );
	setMoveKey( ATK_01 + ATK_end -3, 1, 491.4, -441.6 , 0 );
	setMoveKey( ATK_01 + ATK_end -2, 1, 2000, 0 , 0 );
	-- setMoveKey( ATK_01 + 203 + OFFSET_X, 1, 491.4, -441.6 , 0 );
	-- setMoveKey( ATK_01 + 204 + OFFSET_X, 1, 493.5, -442.8 , 0 );

	setScaleKey( ATK_01 + 0, 1, 1, 1 );
	setScaleKey( ATK_01 + 2 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 3 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 4 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 5 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 6 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 7 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 35 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 36 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + 37 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + 38 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 39 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 40 + OFFSET_X, 1, 1.32, 1.32 );
	setScaleKey( ATK_01 + 49 + OFFSET_X, 1, 1.32, 1.32 );
	setScaleKey( ATK_01 + 50 + OFFSET_X, 1, 1.31, 1.31 );
	setScaleKey( ATK_01 + 51 + OFFSET_X, 1, 1.31, 1.31 );
	setScaleKey( ATK_01 + 52 + OFFSET_X, 1, 1.27, 1.27 );
	setScaleKey( ATK_01 + 53 + OFFSET_X, 1, 1.27, 1.27 );
	setScaleKey( ATK_01 + 54 + OFFSET_X, 1, 1.22, 1.22 );
	setScaleKey( ATK_01 + 55 + OFFSET_X, 1, 1.22, 1.22 );
	setScaleKey( ATK_01 + 56 + OFFSET_X, 1, 1.14, 1.14 );
	setScaleKey( ATK_01 + 107 + OFFSET_X, 1, 1.14, 1.14 );
	setScaleKey( ATK_01 + 108 + OFFSET_X, 1, 1.26, 1.26 );
	setScaleKey( ATK_01 + 115 + OFFSET_X, 1, 1.26, 1.26 );
	setScaleKey( ATK_01 + 116 + OFFSET_X, 1, 1.22, 1.22 );
	setScaleKey( ATK_01 + 117 + OFFSET_X, 1, 1.22, 1.22 );
	setScaleKey( ATK_01 + 118 + OFFSET_X, 1, 1.21, 1.21 );
	setScaleKey( ATK_01 + 119 + OFFSET_X, 1, 1.21, 1.21 );
	setScaleKey( ATK_01 + 120 + OFFSET_X, 1, 1.2, 1.2 );
	setScaleKey( ATK_01 + 145 + OFFSET_X, 1, 1.2, 1.2 );
	setScaleKey( ATK_01 + 146 + OFFSET_X, 1, 1.14, 1.14 );
	setScaleKey( ATK_01 + 147 + OFFSET_X, 1, 1.14, 1.14 );
	setScaleKey( ATK_01 + 148 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + 149 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + 150 + OFFSET_X, 1, 1.05, 1.05 );
	setScaleKey( ATK_01 + 151 + OFFSET_X, 1, 1.05, 1.05 );
	setScaleKey( ATK_01 + 152 + OFFSET_X, 1, 1.04, 1.04 );
	setScaleKey( ATK_01 + 153 + OFFSET_X, 1, 1.04, 1.04 );
	setScaleKey( ATK_01 + 154 + OFFSET_X, 1, 1.03, 1.03 );
	setScaleKey( ATK_01 + 155 + OFFSET_X, 1, 1.03, 1.03 );
	setScaleKey( ATK_01 + 156 + OFFSET_X, 1, 1.02, 1.02 );
	setScaleKey( ATK_01 + 159 + OFFSET_X, 1, 1.02, 1.02 );
	setScaleKey( ATK_01 + 160 + OFFSET_X, 1, 1.01, 1.01 );
	setScaleKey( ATK_01 + 167 + OFFSET_X, 1, 1.01, 1.01 );
	setScaleKey( ATK_01 + 168 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 177 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 178 + OFFSET_X, 1, 1.02, 1.02 );
	setScaleKey( ATK_01 + 183 + OFFSET_X, 1, 1.02, 1.02 );
	setScaleKey( ATK_01 + 184 + OFFSET_X, 1, 1.27, 1.27 );
	setScaleKey( ATK_01 + 185 + OFFSET_X, 1, 1.27, 1.27 );
	setScaleKey( ATK_01 + 186 + OFFSET_X, 1, 1.86, 1.86 );
	setScaleKey( ATK_01 + 187 + OFFSET_X, 1, 1.86, 1.86 );
	setScaleKey( ATK_01 + 188 + OFFSET_X, 1, 2.43, 2.43 );
	setScaleKey( ATK_01 + 189 + OFFSET_X, 1, 2.43, 2.43 );
	setScaleKey( ATK_01 + 190 + OFFSET_X, 1, 2.87, 2.87 );
	setScaleKey( ATK_01 + 191 + OFFSET_X, 1, 2.87, 2.87 );
	setScaleKey( ATK_01 + 192 + OFFSET_X, 1, 3.22, 3.22 );
	setScaleKey( ATK_01 + 193 + OFFSET_X, 1, 3.22, 3.22 );
	setScaleKey( ATK_01 + 194 + OFFSET_X, 1, 3.47, 3.47 );
	setScaleKey( ATK_01 + 195 + OFFSET_X, 1, 3.47, 3.47 );
	setScaleKey( ATK_01 + 196 + OFFSET_X, 1, 3.64, 3.64 );
	setScaleKey( ATK_01 + 197 + OFFSET_X, 1, 3.64, 3.64 );
	setScaleKey( ATK_01 + 198 + OFFSET_X, 1, 3.75, 3.75 );
	setScaleKey( ATK_01 + 199 + OFFSET_X, 1, 3.75, 3.75 );
	setScaleKey( ATK_01 + 200 + OFFSET_X, 1, 3.82, 3.82 );
	setScaleKey( ATK_01 + 201 + OFFSET_X, 1, 3.82, 3.82 );
	setScaleKey( ATK_01 + ATK_end, 1, 3.85, 3.85 );
	-- setScaleKey( ATK_01 + 203 + OFFSET_X, 1, 3.85, 3.85 );
	-- setScaleKey( ATK_01 + 204 + OFFSET_X, 1, 3.86, 3.86 );

	setRotateKey( ATK_01 + 0, 1, -0.1 );
	setRotateKey( ATK_01 + 2 + OFFSET_X, 1, -0.1 );
	setRotateKey( ATK_01 + 3 + OFFSET_X, 1, -0.1 );
	setRotateKey( ATK_01 + 4 + OFFSET_X, 1, -0.1 );
	setRotateKey( ATK_01 + 5 + OFFSET_X, 1, -0.1 );
	setRotateKey( ATK_01 + 6 + OFFSET_X, 1, -0.1 );
	setRotateKey( ATK_01 + 7 + OFFSET_X, 1, -0.1 );
	setRotateKey( ATK_01 + 35 + OFFSET_X, 1, -0.1 );
	setRotateKey( ATK_01 + 36 + OFFSET_X, 1, -9.5 );
	setRotateKey( ATK_01 + 37 + OFFSET_X, 1, -9.5 );
	setRotateKey( ATK_01 + 38 + OFFSET_X, 1, 19.4 );
	setRotateKey( ATK_01 + 39 + OFFSET_X, 1, 19.4 );
	setRotateKey( ATK_01 + 40 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 55 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 56 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 107 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 108 + OFFSET_X, 1, -22.6 );
	setRotateKey( ATK_01 + 115 + OFFSET_X, 1, -22.6 );
	setRotateKey( ATK_01 + 116 + OFFSET_X, 1, -54.3 );
	setRotateKey( ATK_01 + 117 + OFFSET_X, 1, -54.3 );
	setRotateKey( ATK_01 + 118 + OFFSET_X, 1, -51.8 );
	setRotateKey( ATK_01 + 119 + OFFSET_X, 1, -51.8 );
	setRotateKey( ATK_01 + 120 + OFFSET_X, 1, -51 );
	setRotateKey( ATK_01 + 145 + OFFSET_X, 1, -51 );
	setRotateKey( ATK_01 + 146 + OFFSET_X, 1, -35.7 );
	setRotateKey( ATK_01 + 147 + OFFSET_X, 1, -35.7 );
	setRotateKey( ATK_01 + 148 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + ATK_end, 1, 0 );

else

	setDisp(ATK_01 + 88 + OFFSET_X, 1, 0)
	setDisp(ATK_01 + 90 + OFFSET_X, 1, 1)
	setDisp(ATK_01 + 92 + OFFSET_X, 1, 0)
	setDisp(ATK_01 + 108 + OFFSET_X, 1, 1)
	setDisp(ATK_01 + 110 + OFFSET_X, 1, 0)
	setDisp(ATK_01 + 112 + OFFSET_X, 1, 1)
	setDisp(ATK_01 + ATK_end -2, 1, 0)

	changeAnime( ATK_01 + 0, 1, 3 );
	changeAnime( ATK_01 + 38 + OFFSET_X, 1, 102 );
	changeAnime( ATK_01 + 56 + OFFSET_X, 1, 114 );
	changeAnimeAndStop( ATK_01 + 108 + OFFSET_X, 1, 111 ,1)
	changeAnime( ATK_01 + 116 + OFFSET_X, 1, 113 );
	changeAnime( ATK_01 + 148 + OFFSET_X, 1, 4 );
	changeAnime( ATK_01 + 178 + OFFSET_X, 1, 6 );

	setMoveKey( ATK_01 + 0, 1, -640.8, -124.2 , 0 );
	setMoveKey( ATK_01 + 2 + OFFSET_X, 1, -514.8, -124.3 , 0 );
	setMoveKey( ATK_01 + 3 + OFFSET_X, 1, -514.8, -124.3 , 0 );
	setMoveKey( ATK_01 + 4 + OFFSET_X, 1, -391.3, -124.3 , 0 );
	setMoveKey( ATK_01 + 5 + OFFSET_X, 1, -391.3, -124.3 , 0 );
	setMoveKey( ATK_01 + 6 + OFFSET_X, 1, -284.8, -124.3 , 0 );
	setMoveKey( ATK_01 + 7 + OFFSET_X, 1, -284.8, -124.3 , 0 );
	setMoveKey( ATK_01 + 8 + OFFSET_X, 1, -202.5, -124.3 , 0 );
	setMoveKey( ATK_01 + 9 + OFFSET_X, 1, -202.5, -124.3 , 0 );
	setMoveKey( ATK_01 + 10 + OFFSET_X, 1, -147.6, -124.3 , 0 );
	setMoveKey( ATK_01 + 11 + OFFSET_X, 1, -147.6, -124.3 , 0 );
	setMoveKey( ATK_01 + 12 + OFFSET_X, 1, -121.1, -124.3 , 0 );
	setMoveKey( ATK_01 + 13 + OFFSET_X, 1, -121.1, -124.3 , 0 );
	setMoveKey( ATK_01 + 14 + OFFSET_X, 1, -111.8, -124.3 , 0 );
	setMoveKey( ATK_01 + 15 + OFFSET_X, 1, -111.8, -124.3 , 0 );
	setMoveKey( ATK_01 + 16 + OFFSET_X, 1, -102.4, -124.3 , 0 );
	setMoveKey( ATK_01 + 17 + OFFSET_X, 1, -102.4, -124.3 , 0 );
	setMoveKey( ATK_01 + 18 + OFFSET_X, 1, -93, -124.3 , 0 );
	setMoveKey( ATK_01 + 19 + OFFSET_X, 1, -93, -124.3 , 0 );
	setMoveKey( ATK_01 + 20 + OFFSET_X, 1, -83.5, -124.3 , 0 );
	setMoveKey( ATK_01 + 21 + OFFSET_X, 1, -83.5, -124.3 , 0 );
	setMoveKey( ATK_01 + 22 + OFFSET_X, 1, -74.1, -124.3 , 0 );
	setMoveKey( ATK_01 + 23 + OFFSET_X, 1, -74.1, -124.3 , 0 );
	setMoveKey( ATK_01 + 24 + OFFSET_X, 1, -64.5, -124.3 , 0 );
	setMoveKey( ATK_01 + 25 + OFFSET_X, 1, -64.5, -124.3 , 0 );
	setMoveKey( ATK_01 + 26 + OFFSET_X, 1, -54.9, -124.3 , 0 );
	setMoveKey( ATK_01 + 27 + OFFSET_X, 1, -54.9, -124.3 , 0 );
	setMoveKey( ATK_01 + 28 + OFFSET_X, 1, -45.3, -124.3 , 0 );
	setMoveKey( ATK_01 + 29 + OFFSET_X, 1, -45.3, -124.3 , 0 );
	setMoveKey( ATK_01 + 30 + OFFSET_X, 1, -35.8, -124.3 , 0 );
	setMoveKey( ATK_01 + 31 + OFFSET_X, 1, -35.8, -124.3 , 0 );
	setMoveKey( ATK_01 + 32 + OFFSET_X, 1, -26.2, -124.3 , 0 );
	setMoveKey( ATK_01 + 33 + OFFSET_X, 1, -26.2, -124.3 , 0 );
	setMoveKey( ATK_01 + 34 + OFFSET_X, 1, -16.6, -124.3 , 0 );
	setMoveKey( ATK_01 + 35 + OFFSET_X, 1, -16.6, -124.3 , 0 );
	setMoveKey( ATK_01 + 36 + OFFSET_X, 1, -0.6, -111.9 , 0 );
	setMoveKey( ATK_01 + 37 + OFFSET_X, 1, -0.6, -111.9 , 0 );
	setMoveKey( ATK_01 + 38 + OFFSET_X, 1, 34.9, -85 , 0 );
	setMoveKey( ATK_01 + 39 + OFFSET_X, 1, 34.9, -85 , 0 );
	setMoveKey( ATK_01 + 40 + OFFSET_X, 1, 51.5, -73.5 , 0 );
	setMoveKey( ATK_01 + 49 + OFFSET_X, 1, 51.5, -73.5 , 0 );
	setMoveKey( ATK_01 + 50 + OFFSET_X, 1, 47.5, -72.2 , 0 );
	setMoveKey( ATK_01 + 51 + OFFSET_X, 1, 47.5, -72.2 , 0 );
	setMoveKey( ATK_01 + 52 + OFFSET_X, 1, 35.7, -68.3 , 0 );
	setMoveKey( ATK_01 + 53 + OFFSET_X, 1, 35.7, -68.3 , 0 );
	setMoveKey( ATK_01 + 54 + OFFSET_X, 1, 15.9, -61.7 , 0 );
	setMoveKey( ATK_01 + 55 + OFFSET_X, 1, 15.9, -61.7 , 0 );
	setMoveKey( ATK_01 + 56 + OFFSET_X, 1, -14.1, -39.1 , 0 );
	setMoveKey( ATK_01 + 107 + OFFSET_X, 1, -14.1, -39.1 , 0 );
	setMoveKey( ATK_01 + 108 + OFFSET_X, 1, 231.9, 108.8 , 0 );
	setMoveKey( ATK_01 + 115 + OFFSET_X, 1, 231.9, 108.8 , 0 );
	setMoveKey( ATK_01 + 116 + OFFSET_X, 1, 129.7, 9.2 , 0 );
	setMoveKey( ATK_01 + 117 + OFFSET_X, 1, 129.7, 9.2 , 0 );
	setMoveKey( ATK_01 + 118 + OFFSET_X, 1, 66.7, -49.2 , 0 );
	setMoveKey( ATK_01 + 119 + OFFSET_X, 1, 66.7, -49.2 , 0 );
	setMoveKey( ATK_01 + 120 + OFFSET_X, 1, 45.7, -68.6 , 0 );
	setMoveKey( ATK_01 + 145 + OFFSET_X, 1, 45.7, -68.6 , 0 );
	setMoveKey( ATK_01 + 146 + OFFSET_X, 1, -22.1, -29.6 , 0 );
	setMoveKey( ATK_01 + 147 + OFFSET_X, 1, -22.1, -29.6 , 0 );
	setMoveKey( ATK_01 + 148 + OFFSET_X, 1, -61.6, -7.1 , 0 );
	setMoveKey( ATK_01 + 149 + OFFSET_X, 1, -61.6, -7.1 , 0 );
	setMoveKey( ATK_01 + 150 + OFFSET_X, 1, -73.9, -0.1 , 0 );
	setMoveKey( ATK_01 + 151 + OFFSET_X, 1, -73.9, -0.1 , 0 );
	setMoveKey( ATK_01 + 152 + OFFSET_X, 1, -81.8, 4.4 , 0 );
	setMoveKey( ATK_01 + 153 + OFFSET_X, 1, -81.8, 4.4 , 0 );
	setMoveKey( ATK_01 + 154 + OFFSET_X, 1, -87.5, 7.7 , 0 );
	setMoveKey( ATK_01 + 155 + OFFSET_X, 1, -87.5, 7.7 , 0 );
	setMoveKey( ATK_01 + 156 + OFFSET_X, 1, -91.8, 10.1 , 0 );
	setMoveKey( ATK_01 + 157 + OFFSET_X, 1, -91.8, 10.1 , 0 );
	setMoveKey( ATK_01 + 158 + OFFSET_X, 1, -95.1, 12 , 0 );
	setMoveKey( ATK_01 + 159 + OFFSET_X, 1, -95.1, 12 , 0 );
	setMoveKey( ATK_01 + 160 + OFFSET_X, 1, -97.6, 13.5 , 0 );
	setMoveKey( ATK_01 + 161 + OFFSET_X, 1, -97.6, 13.5 , 0 );
	setMoveKey( ATK_01 + 162 + OFFSET_X, 1, -99.6, 14.6 , 0 );
	setMoveKey( ATK_01 + 163 + OFFSET_X, 1, -99.6, 14.6 , 0 );
	setMoveKey( ATK_01 + 164 + OFFSET_X, 1, -101.1, 15.5 , 0 );
	setMoveKey( ATK_01 + 165 + OFFSET_X, 1, -101.1, 15.5 , 0 );
	setMoveKey( ATK_01 + 166 + OFFSET_X, 1, -102.3, 16.2 , 0 );
	setMoveKey( ATK_01 + 167 + OFFSET_X, 1, -102.3, 16.2 , 0 );
	setMoveKey( ATK_01 + 168 + OFFSET_X, 1, -103.3, 16.7 , 0 );
	setMoveKey( ATK_01 + 169 + OFFSET_X, 1, -103.3, 16.7 , 0 );
	setMoveKey( ATK_01 + 170 + OFFSET_X, 1, -104.1, 17.2 , 0 );
	setMoveKey( ATK_01 + 171 + OFFSET_X, 1, -104.1, 17.2 , 0 );
	setMoveKey( ATK_01 + 172 + OFFSET_X, 1, -104.7, 17.5 , 0 );
	setMoveKey( ATK_01 + 173 + OFFSET_X, 1, -104.7, 17.5 , 0 );
	setMoveKey( ATK_01 + 174 + OFFSET_X, 1, -105.4, 17.9 , 0 );
	setMoveKey( ATK_01 + 175 + OFFSET_X, 1, -105.4, 17.9 , 0 );
	setMoveKey( ATK_01 + 176 + OFFSET_X, 1, -106.2, 18.4 , 0 );
	setMoveKey( ATK_01 + 177 + OFFSET_X, 1, -106.2, 18.4 , 0 );
	setMoveKey( ATK_01 + 178 + OFFSET_X, 1, -107.7, -3.9 , 0 );
	setMoveKey( ATK_01 + 179 + OFFSET_X, 1, -107.7, -3.9 , 0 );
	setMoveKey( ATK_01 + 180 + OFFSET_X, 1, -107.6, -3.8 , 0 );
	setMoveKey( ATK_01 + 181 + OFFSET_X, 1, -107.6, -3.8 , 0 );
	setMoveKey( ATK_01 + 182 + OFFSET_X, 1, -107.7, -3.9 , 0 );
	setMoveKey( ATK_01 + 183 + OFFSET_X, 1, -107.7, -3.9 , 0 );
	setMoveKey( ATK_01 + 184 + OFFSET_X, 1, -55.2, -42.2 , 0 );
	setMoveKey( ATK_01 + 185 + OFFSET_X, 1, -55.2, -42.2 , 0 );
	setMoveKey( ATK_01 + 186 + OFFSET_X, 1, 70.8, -134.3 , 0 );
	setMoveKey( ATK_01 + 187 + OFFSET_X, 1, 70.8, -134.3 , 0 );
	setMoveKey( ATK_01 + 188 + OFFSET_X, 1, 190.1, -221.5 , 0 );
	setMoveKey( ATK_01 + 189 + OFFSET_X, 1, 190.1, -221.5 , 0 );
	setMoveKey( ATK_01 + 190 + OFFSET_X, 1, 283.8, -290 , 0 );
	setMoveKey( ATK_01 + 191 + OFFSET_X, 1, 283.8, -290 , 0 );
	setMoveKey( ATK_01 + 192 + OFFSET_X, 1, 358.2, -344.4 , 0 );
	setMoveKey( ATK_01 + 193 + OFFSET_X, 1, 358.2, -344.4 , 0 );
	setMoveKey( ATK_01 + 194 + OFFSET_X, 1, 410.9, -382.8 , 0 );
	setMoveKey( ATK_01 + 195 + OFFSET_X, 1, 410.9, -382.8 , 0 );
	setMoveKey( ATK_01 + 196 + OFFSET_X, 1, 446.4, -408.7 , 0 );
	setMoveKey( ATK_01 + 197 + OFFSET_X, 1, 446.4, -408.7 , 0 );
	setMoveKey( ATK_01 + 198 + OFFSET_X, 1, 469.6, -425.7 , 0 );
	setMoveKey( ATK_01 + 199 + OFFSET_X, 1, 469.6, -425.7 , 0 );
	setMoveKey( ATK_01 + 200 + OFFSET_X, 1, 483.9, -436.1 , 0 );
	setMoveKey( ATK_01 + 201 + OFFSET_X, 1, 483.9, -436.1 , 0 );
	setMoveKey( ATK_01 + ATK_end-3, 1, 491.4, -441.6 , 0 );
	setMoveKey( ATK_01 + ATK_end-2, 1, 2000, 0 , 0 );
	-- setMoveKey( ATK_01 + 203 + OFFSET_X, 1, 491.4, -441.6 , 0 );
	-- setMoveKey( ATK_01 + 204 + OFFSET_X, 1, 493.5, -442.8 , 0 );

	setScaleKey( ATK_01 + 0, 1, 1, 1 );
	setScaleKey( ATK_01 + 2 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 3 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 4 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 5 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 6 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 7 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 35 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 36 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + 37 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + 38 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 39 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + 40 + OFFSET_X, 1, 1.32, 1.32 );
	setScaleKey( ATK_01 + 49 + OFFSET_X, 1, 1.32, 1.32 );
	setScaleKey( ATK_01 + 50 + OFFSET_X, 1, 1.31, 1.31 );
	setScaleKey( ATK_01 + 51 + OFFSET_X, 1, 1.31, 1.31 );
	setScaleKey( ATK_01 + 52 + OFFSET_X, 1, 1.27, 1.27 );
	setScaleKey( ATK_01 + 53 + OFFSET_X, 1, 1.27, 1.27 );
	setScaleKey( ATK_01 + 54 + OFFSET_X, 1, 1.22, 1.22 );
	setScaleKey( ATK_01 + 55 + OFFSET_X, 1, 1.22, 1.22 );
	setScaleKey( ATK_01 + 56 + OFFSET_X, 1, 1.14, 1.14 );
	setScaleKey( ATK_01 + 107 + OFFSET_X, 1, 1.14, 1.14 );
	setScaleKey( ATK_01 + 108 + OFFSET_X, 1, 1.26, 1.26 );
	setScaleKey( ATK_01 + 115 + OFFSET_X, 1, 1.26, 1.26 );
	setScaleKey( ATK_01 + 116 + OFFSET_X, 1, 1.22, 1.22 );
	setScaleKey( ATK_01 + 117 + OFFSET_X, 1, 1.22, 1.22 );
	setScaleKey( ATK_01 + 118 + OFFSET_X, 1, 1.21, 1.21 );
	setScaleKey( ATK_01 + 119 + OFFSET_X, 1, 1.21, 1.21 );
	setScaleKey( ATK_01 + 120 + OFFSET_X, 1, 1.2, 1.2 );
	setScaleKey( ATK_01 + 145 + OFFSET_X, 1, 1.2, 1.2 );
	setScaleKey( ATK_01 + 146 + OFFSET_X, 1, 1.14, 1.14 );
	setScaleKey( ATK_01 + 147 + OFFSET_X, 1, 1.14, 1.14 );
	setScaleKey( ATK_01 + 148 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + 149 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + 150 + OFFSET_X, 1, 1.05, 1.05 );
	setScaleKey( ATK_01 + 151 + OFFSET_X, 1, 1.05, 1.05 );
	setScaleKey( ATK_01 + 152 + OFFSET_X, 1, 1.04, 1.04 );
	setScaleKey( ATK_01 + 153 + OFFSET_X, 1, 1.04, 1.04 );
	setScaleKey( ATK_01 + 154 + OFFSET_X, 1, 1.03, 1.03 );
	setScaleKey( ATK_01 + 155 + OFFSET_X, 1, 1.03, 1.03 );
	setScaleKey( ATK_01 + 156 + OFFSET_X, 1, 1.02, 1.02 );
	setScaleKey( ATK_01 + 159 + OFFSET_X, 1, 1.02, 1.02 );
	setScaleKey( ATK_01 + 160 + OFFSET_X, 1, 1.01, 1.01 );
	setScaleKey( ATK_01 + 167 + OFFSET_X, 1, 1.01, 1.01 );
	setScaleKey( ATK_01 + 168 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 177 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 178 + OFFSET_X, 1, 1.02, 1.02 );
	setScaleKey( ATK_01 + 183 + OFFSET_X, 1, 1.02, 1.02 );
	setScaleKey( ATK_01 + 184 + OFFSET_X, 1, 1.27, 1.27 );
	setScaleKey( ATK_01 + 185 + OFFSET_X, 1, 1.27, 1.27 );
	setScaleKey( ATK_01 + 186 + OFFSET_X, 1, 1.86, 1.86 );
	setScaleKey( ATK_01 + 187 + OFFSET_X, 1, 1.86, 1.86 );
	setScaleKey( ATK_01 + 188 + OFFSET_X, 1, 2.43, 2.43 );
	setScaleKey( ATK_01 + 189 + OFFSET_X, 1, 2.43, 2.43 );
	setScaleKey( ATK_01 + 190 + OFFSET_X, 1, 2.87, 2.87 );
	setScaleKey( ATK_01 + 191 + OFFSET_X, 1, 2.87, 2.87 );
	setScaleKey( ATK_01 + 192 + OFFSET_X, 1, 3.22, 3.22 );
	setScaleKey( ATK_01 + 193 + OFFSET_X, 1, 3.22, 3.22 );
	setScaleKey( ATK_01 + 194 + OFFSET_X, 1, 3.47, 3.47 );
	setScaleKey( ATK_01 + 195 + OFFSET_X, 1, 3.47, 3.47 );
	setScaleKey( ATK_01 + 196 + OFFSET_X, 1, 3.64, 3.64 );
	setScaleKey( ATK_01 + 197 + OFFSET_X, 1, 3.64, 3.64 );
	setScaleKey( ATK_01 + 198 + OFFSET_X, 1, 3.75, 3.75 );
	setScaleKey( ATK_01 + 199 + OFFSET_X, 1, 3.75, 3.75 );
	setScaleKey( ATK_01 + 200 + OFFSET_X, 1, 3.82, 3.82 );
	setScaleKey( ATK_01 + 201 + OFFSET_X, 1, 3.82, 3.82 );
	setScaleKey( ATK_01 + ATK_end, 1, 3.85, 3.85 );
	-- setScaleKey( ATK_01 + 203 + OFFSET_X, 1, 3.85, 3.85 );
	-- setScaleKey( ATK_01 + 204 + OFFSET_X, 1, 3.86, 3.86 );

	setRotateKey( ATK_01 + 0, 1, -0.1 );
	setRotateKey( ATK_01 + 2 + OFFSET_X, 1, -0.1 );
	setRotateKey( ATK_01 + 3 + OFFSET_X, 1, -0.1 );
	setRotateKey( ATK_01 + 4 + OFFSET_X, 1, -0.1 );
	setRotateKey( ATK_01 + 5 + OFFSET_X, 1, -0.1 );
	setRotateKey( ATK_01 + 6 + OFFSET_X, 1, -0.1 );
	setRotateKey( ATK_01 + 7 + OFFSET_X, 1, -0.1 );
	setRotateKey( ATK_01 + 35 + OFFSET_X, 1, -0.1 );
	setRotateKey( ATK_01 + 36 + OFFSET_X, 1, -9.5 );
	setRotateKey( ATK_01 + 37 + OFFSET_X, 1, -9.5 );
	setRotateKey( ATK_01 + 38 + OFFSET_X, 1, 19.4 );
	setRotateKey( ATK_01 + 39 + OFFSET_X, 1, 19.4 );
	setRotateKey( ATK_01 + 40 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 55 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 56 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 107 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 108 + OFFSET_X, 1, -22.6 );
	setRotateKey( ATK_01 + 115 + OFFSET_X, 1, -22.6 );
	setRotateKey( ATK_01 + 116 + OFFSET_X, 1, -54.3 );
	setRotateKey( ATK_01 + 117 + OFFSET_X, 1, -54.3 );
	setRotateKey( ATK_01 + 118 + OFFSET_X, 1, -51.8 );
	setRotateKey( ATK_01 + 119 + OFFSET_X, 1, -51.8 );
	setRotateKey( ATK_01 + 120 + OFFSET_X, 1, -51 );
	setRotateKey( ATK_01 + 145 + OFFSET_X, 1, -51 );
	setRotateKey( ATK_01 + 146 + OFFSET_X, 1, -35.7 );
	setRotateKey( ATK_01 + 147 + OFFSET_X, 1, -35.7 );
	setRotateKey( ATK_01 + 148 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 177 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 178 + OFFSET_X, 1, 99.1 );
	setRotateKey( ATK_01 + 183 + OFFSET_X, 1, 99.1 );
	setRotateKey( ATK_01 + 184 + OFFSET_X, 1, 98.6 );
	setRotateKey( ATK_01 + 185 + OFFSET_X, 1, 98.6 );
	setRotateKey( ATK_01 + 186 + OFFSET_X, 1, 97.4 );
	setRotateKey( ATK_01 + 187 + OFFSET_X, 1, 97.4 );
	setRotateKey( ATK_01 + 188 + OFFSET_X, 1, 96.2 );
	setRotateKey( ATK_01 + 189 + OFFSET_X, 1, 96.2 );
	setRotateKey( ATK_01 + 190 + OFFSET_X, 1, 95.3 );
	setRotateKey( ATK_01 + 191 + OFFSET_X, 1, 95.3 );
	setRotateKey( ATK_01 + 192 + OFFSET_X, 1, 94.6 );
	setRotateKey( ATK_01 + 193 + OFFSET_X, 1, 94.6 );
	setRotateKey( ATK_01 + 194 + OFFSET_X, 1, 94.1 );
	setRotateKey( ATK_01 + 195 + OFFSET_X, 1, 94.1 );
	setRotateKey( ATK_01 + 196 + OFFSET_X, 1, 93.8 );
	setRotateKey( ATK_01 + 197 + OFFSET_X, 1, 93.8 );
	setRotateKey( ATK_01 + 198 + OFFSET_X, 1, 93.5 );
	setRotateKey( ATK_01 + 199 + OFFSET_X, 1, 93.5 );
	setRotateKey( ATK_01 + 200 + OFFSET_X, 1, 93.4 );
	setRotateKey( ATK_01 + 201 + OFFSET_X, 1, 93.4 );
	setRotateKey( ATK_01 + ATK_end, 1, 93.3 );

end

-- ** 音 ** --
--二人並走する
SE001 = playSeVer2( ATK_01 + 0, 1117, "", 0, 0, 0, -1);
SE002 = playSeVer2( ATK_01 + 0, 1019, "", 0, 0, 0, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

	SP_dodge = 30; --エンドフェイズのフレーム数を置き換える
	
	playSe( SP_dodge-12, 1042);
	stopSe( SP_dodge-12, SE001, 0);
	stopSe( SP_dodge-12, SE002, 0);
	
	speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
	setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
		
	kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
	
		if (_IS_PLAYER_SIDE_ == 1) then
	
			setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
			stopBgScroll(SP_dodge,0);

		else
	
			setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
			stopBgScroll(SP_dodge,0);
	
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
--空振り
SE003 = playSeVer2( ATK_01 + 42, 1013, "", 0, 0, 0, -1);

--二人並走する
SE004 = playSeVer2( ATK_01 + 48, 1019, "",ATK_01 + 76, 0, 24, -1);

--瞬間移動
SE005 = playSeVer2( ATK_01 + 48, 1109, "", 0, 0, 0, -1);

--空振り
SE006 = playSeVer2( ATK_01 + 74, 1003, "", 0, 0, 0, -1);

--瞬間移動
SE007 = playSeVer2( ATK_01 + 78, 1109, "", 0, 0, 0, -1);

--飛び込む
SE008 = playSeVer2( ATK_01 + 102, 1048, "", 0, 0, 0, -1);

--瞬間移動
SE009 = playSeVer2( ATK_01 + 108, 1109, "", 0, 0, 0, -1);

--殴る
SE010 = playSeVer2( ATK_01 + 134, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( ATK_01 + 134, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE012 = playSeVer2( ATK_01 + 142, 1109, "", 0, 0, 0, -1);

--叩き落とす
SE013 = playSeVer2( ATK_01 + 168, 1120, "", 0, 0, 0, -1);

--------------------------------死亡

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_01 + 180;	

        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
else

dealDamage(  ATK_D+4);
endPhase(  ATK_end);
end


print ("[lua]exec b0007");