print ("[lua]exec b0011");

ATK_01 = 0;
ATK_D = 110;
ATK_end = ATK_01+202;

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 110, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 110, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_D+0, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

MAX_FRAME_0=160

-- ** エフェクト等 ** --
effect_back = entryEffect( ATK_01 + 0,98, 0x100, -1, 0, 0, 0); --ef_162(中間)
setEffMoveKey( ATK_01 + 0, effect_back, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_back, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_back, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_back, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_back, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_back, 0);
setEffAlphaKey( ATK_01 + 0, effect_back, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_back, 255);

if (_IS_PLAYER_SIDE_ == 1) then
    effect_front = entryEffect( ATK_01 + 0, 97, 0x100, -1, 0, 0, 0);  --味方側 ef_161


else
    effect_front = entryEffect( ATK_01 + 0, 110, 0x100, -1, 0, 0, 0);  --敵側 ef_161r

end

setEffMoveKey( ATK_01 + 0, effect_front, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_front, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_front, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_front, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_front, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_front, 0);
setEffAlphaKey( ATK_01 + 0, effect_front, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_front, 255);

effect_back2 = entryEffect( ATK_01 + 0,99, 0x80, -1, 0, 0, 0); --ef_163
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
	startBgScroll(ATK_01+0,-60,10);
	startBgScroll(ATK_01+106,-120,1);
	stopBgScroll(ATK_01+128,40);

else
	startBgScroll(ATK_01+0,-60,10);
	startBgScroll(ATK_01+106,-120,1);
	stopBgScroll(ATK_01+128,40);

end

-- 味方の動き
--敵と味方のどちらが手前に来るか
setDrawFront( ATK_01+0, 1, 1);
setDrawFront( ATK_01+14+OFFSET_X, 1, 0);
setDrawFront( ATK_01+14+OFFSET_X, 0, 1);

--画面振動
setShakeXY(ATK_01 + 16 + OFFSET_X,6, 50, 50);
setShakeXY(ATK_01 + 30 + OFFSET_X,4, 20, 40);
setShakeXY(ATK_01 + 34 + OFFSET_X,4, 20, 20);
setShakeXY(ATK_01 + 40 + OFFSET_X,14, 10, 30);
setShakeXY(ATK_01 + 54 + OFFSET_X,8, 0, 20);
setShakeXY(ATK_01 + 62 + OFFSET_X,10, 60, 60);
setShakeXY(ATK_01 + 72 + OFFSET_X,6, 5, 50);
setShakeXY(ATK_01 + 78 + OFFSET_X,6, 5, 20);
setShakeXY(ATK_01 + 110 + OFFSET_X,6, 40, 50);
setShakeXY(ATK_01 + 116 + OFFSET_X,6, 10, 50);

-----------------------------------------------------
--味方の動き
-----------------------------------------------------
setDisp(ATK_01 + 104 + OFFSET_X, 0, 0)

changeAnime( ATK_01 + 0, 0, 3 );
changeAnimeAndStop( ATK_01 + 12 + OFFSET_X, 0, 11 ,1)
changeAnimeAndStop( ATK_01 + 14 + OFFSET_X, 0, 11 ,3)
changeAnimeAndStop( ATK_01 + 28 + OFFSET_X, 0, 19 ,1)
changeAnime( ATK_01 + 38 + OFFSET_X, 0, 14 );
changeAnime( ATK_01 + 42 + OFFSET_X, 0, 10 );
changeAnimeAndStop( ATK_01 + 46 + OFFSET_X, 0, 11 ,3)
changeAnime( ATK_01 + 50 + OFFSET_X, 0, 13 );
changeAnime( ATK_01 + 54 + OFFSET_X, 0, 12 );
changeAnime( ATK_01 + 58 + OFFSET_X, 0, 14 );
changeAnime( ATK_01 + 62 + OFFSET_X, 0, 3 );
changeAnimeAndStop( ATK_01 + 84 + OFFSET_X, 0, 11 ,1)
changeAnimeAndStop( ATK_01 + 88 + OFFSET_X, 0, 19 ,4)
changeAnimeAndStop( ATK_01 + 100 + OFFSET_X, 0, 11 ,1)

setMoveKey( ATK_01 + 0, 0, -273.8, -0.2 , 0 );
setMoveKey( ATK_01 + 2 + OFFSET_X, 0, -191.8, -0.4 , 0 );
setMoveKey( ATK_01 + 3 + OFFSET_X, 0, -191.8, -0.4 , 0 );
setMoveKey( ATK_01 + 4 + OFFSET_X, 0, -133.3, -2.5 , 0 );
setMoveKey( ATK_01 + 5 + OFFSET_X, 0, -133.3, -2.5 , 0 );
setMoveKey( ATK_01 + 6 + OFFSET_X, 0, -87.7, -8 , 0 );
setMoveKey( ATK_01 + 7 + OFFSET_X, 0, -87.7, -8 , 0 );
setMoveKey( ATK_01 + 8 + OFFSET_X, 0, -44.8, -18.8 , 0 );
setMoveKey( ATK_01 + 9 + OFFSET_X, 0, -44.8, -18.8 , 0 );
setMoveKey( ATK_01 + 10 + OFFSET_X, 0, -37.4, -18.8 , 0 );
setMoveKey( ATK_01 + 11 + OFFSET_X, 0, -37.4, -18.8 , 0 );
setMoveKey( ATK_01 + 12 + OFFSET_X, 0, -36.4, -18.8 , 0 );
setMoveKey( ATK_01 + 27 + OFFSET_X, 0, -36.4, -18.8 , 0 );
setMoveKey( ATK_01 + 28 + OFFSET_X, 0, -36.6, 0 , 0 );
setMoveKey( ATK_01 + 29 + OFFSET_X, 0, -36.6, 0 , 0 );
setMoveKey( ATK_01 + 30 + OFFSET_X, 0, -42.8, -2.5 , 0 );
setMoveKey( ATK_01 + 31 + OFFSET_X, 0, -42.8, -2.5 , 0 );
setMoveKey( ATK_01 + 32 + OFFSET_X, 0, -49.1, -5.1 , 0 );
setMoveKey( ATK_01 + 33 + OFFSET_X, 0, -49.1, -5.1 , 0 );
setMoveKey( ATK_01 + 34 + OFFSET_X, 0, -55.3, -7.6 , 0 );
setMoveKey( ATK_01 + 37 + OFFSET_X, 0, -55.3, -7.6 , 0 );
setMoveKey( ATK_01 + 38 + OFFSET_X, 0, -36.5, 0 , 0 );
setMoveKey( ATK_01 + 45 + OFFSET_X, 0, -36.5, 0 , 0 );
setMoveKey( ATK_01 + 46 + OFFSET_X, 0, -27.1, -0.1 , 0 );
setMoveKey( ATK_01 + 49 + OFFSET_X, 0, -27.1, -0.1 , 0 );
setMoveKey( ATK_01 + 50 + OFFSET_X, 0, -17.6, 31.5 , 0 );
setMoveKey( ATK_01 + 53 + OFFSET_X, 0, -17.6, 31.5 , 0 );
setMoveKey( ATK_01 + 54 + OFFSET_X, 0, -17.6, 0 , 0 );
setMoveKey( ATK_01 + 57 + OFFSET_X, 0, -17.6, 0 , 0 );
setMoveKey( ATK_01 + 58 + OFFSET_X, 0, -17.5, 0 , 0 );
setMoveKey( ATK_01 + 61 + OFFSET_X, 0, -17.5, 0 , 0 );
setMoveKey( ATK_01 + 62 + OFFSET_X, 0, 19.9, 0 , 0 );
setMoveKey( ATK_01 + 73 + OFFSET_X, 0, 19.9, 0 , 0 );
setMoveKey( ATK_01 + 74 + OFFSET_X, 0, -13.3, -0.1 , 0 );
setMoveKey( ATK_01 + 75 + OFFSET_X, 0, -13.3, -0.1 , 0 );
setMoveKey( ATK_01 + 76 + OFFSET_X, 0, -27.6, -0.2 , 0 );
setMoveKey( ATK_01 + 77 + OFFSET_X, 0, -27.6, -0.2 , 0 );
setMoveKey( ATK_01 + 78 + OFFSET_X, 0, -33.6, -0.2 , 0 );
setMoveKey( ATK_01 + 79 + OFFSET_X, 0, -33.6, -0.2 , 0 );
setMoveKey( ATK_01 + 80 + OFFSET_X, 0, -35.9, -0.2 , 0 );
setMoveKey( ATK_01 + 81 + OFFSET_X, 0, -35.9, -0.2 , 0 );
setMoveKey( ATK_01 + 82 + OFFSET_X, 0, -36.2, 0 , 0 );
setMoveKey( ATK_01 + 87 + OFFSET_X, 0, -36.2, 0 , 0 );
setMoveKey( ATK_01 + 88 + OFFSET_X, 0, -55, 18.7 , 0 );
setMoveKey( ATK_01 + 89 + OFFSET_X, 0, -55, 18.7 , 0 );
setMoveKey( ATK_01 + 90 + OFFSET_X, 0, -72.3, 27 , 0 );
setMoveKey( ATK_01 + 91 + OFFSET_X, 0, -72.3, 27 , 0 );
setMoveKey( ATK_01 + 92 + OFFSET_X, 0, -82.8, 32 , 0 );
setMoveKey( ATK_01 + 93 + OFFSET_X, 0, -82.8, 32 , 0 );
setMoveKey( ATK_01 + 94 + OFFSET_X, 0, -88.2, 34.6 , 0 );
setMoveKey( ATK_01 + 95 + OFFSET_X, 0, -88.2, 34.6 , 0 );
setMoveKey( ATK_01 + 96 + OFFSET_X, 0, -90.2, 35.6 , 0 );
setMoveKey( ATK_01 + 97 + OFFSET_X, 0, -90.2, 35.6 , 0 );
setMoveKey( ATK_01 + 98 + OFFSET_X, 0, -90.5, 35.7 , 0 );
setMoveKey( ATK_01 + 99 + OFFSET_X, 0, -90.5, 35.7 , 0 );
setMoveKey( ATK_01 + 100 + OFFSET_X, 0, -20.9, -0.8 , 0 );
setMoveKey( ATK_01 + 104 + OFFSET_X, 0, -20.9, -0.8 , 0 );
setMoveKey( ATK_01 + ATK_end-2, 0, 2000, 0 , 0 );

setScaleKey( ATK_01 + 0, 0, 1.46, 1.46 );
setScaleKey( ATK_01 + 2 + OFFSET_X, 0, 1.46, 1.46 );
setScaleKey( ATK_01 + 3 + OFFSET_X, 0, 1.46, 1.46 );
setScaleKey( ATK_01 + 4 + OFFSET_X, 0, 1.49, 1.49 );
setScaleKey( ATK_01 + 5 + OFFSET_X, 0, 1.49, 1.49 );
setScaleKey( ATK_01 + 6 + OFFSET_X, 0, 1.57, 1.57 );
setScaleKey( ATK_01 + 7 + OFFSET_X, 0, 1.57, 1.57 );
setScaleKey( ATK_01 + 8 + OFFSET_X, 0, 1.72, 1.72 );
setScaleKey( ATK_01 + 104 + OFFSET_X, 0, 1.72, 1.72 );

setRotateKey( ATK_01 + 0, 0, 0 );
setRotateKey( ATK_01 + 2 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 3 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 4 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 5 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 6 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 7 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 13 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 14 + OFFSET_X, 0, 15.7 );
setRotateKey( ATK_01 + 27 + OFFSET_X, 0, 15.7 );
setRotateKey( ATK_01 + 28 + OFFSET_X, 0, -25 );
setRotateKey( ATK_01 + 37 + OFFSET_X, 0, -25 );
setRotateKey( ATK_01 + 38 + OFFSET_X, 0, -7 );
setRotateKey( ATK_01 + 45 + OFFSET_X, 0, -7 );
setRotateKey( ATK_01 + 46 + OFFSET_X, 0, -15.4 );
setRotateKey( ATK_01 + 49 + OFFSET_X, 0, -15.4 );
setRotateKey( ATK_01 + 50 + OFFSET_X, 0, 15.4 );
setRotateKey( ATK_01 + 53 + OFFSET_X, 0, 15.4 );
setRotateKey( ATK_01 + 54 + OFFSET_X, 0, 7.9 );
setRotateKey( ATK_01 + 57 + OFFSET_X, 0, 7.9 );
setRotateKey( ATK_01 + 58 + OFFSET_X, 0, 54.3 );
setRotateKey( ATK_01 + 61 + OFFSET_X, 0, 54.3 );
setRotateKey( ATK_01 + 62 + OFFSET_X, 0, 14 );
setRotateKey( ATK_01 + 89 + OFFSET_X, 0, 14 );
setRotateKey( ATK_01 + 90 + OFFSET_X, 0, 12.8 );
setRotateKey( ATK_01 + 91 + OFFSET_X, 0, 12.8 );
setRotateKey( ATK_01 + 92 + OFFSET_X, 0, 12 );
setRotateKey( ATK_01 + 93 + OFFSET_X, 0, 12 );
setRotateKey( ATK_01 + 94 + OFFSET_X, 0, 11.7 );
setRotateKey( ATK_01 + 95 + OFFSET_X, 0, 11.7 );
setRotateKey( ATK_01 + 96 + OFFSET_X, 0, 11.5 );
setRotateKey( ATK_01 + 99 + OFFSET_X, 0, 11.5 );
setRotateKey( ATK_01 + 100 + OFFSET_X, 0, 14 );
setRotateKey( ATK_01 + 104 + OFFSET_X, 0, 14 );

-----------------------------------------------------
--敵の動き
-----------------------------------------------------

if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then

	setDisp(ATK_01 + ATK_end - 2, 1, 0)

	changeAnime( ATK_01 + 0, 1, 102 );
	changeAnimeAndStop( ATK_01 + 10 + OFFSET_X, 1, 119 ,10);
	changeAnime( ATK_01 + 14 + OFFSET_X, 1, 108 );
	changeAnime( ATK_01 + 38 + OFFSET_X, 1, 106 );
	changeAnime( ATK_01 + 42 + OFFSET_X, 1, 104 );
	changeAnime( ATK_01 + 62 + OFFSET_X, 1, 108 );
	changeAnime( ATK_01 + 80 + OFFSET_X, 1, 106 );
	changeAnime( ATK_01 + 108 + OFFSET_X, 1, 5 );
	changeAnime( ATK_01 + 140 + OFFSET_X, 1, 104 );
	changeAnime( ATK_01 + 150 + OFFSET_X, 1, 117 );

	setMoveKey( ATK_01 + 0, 1, 301.7, 12.1 , 0 );
	setMoveKey( ATK_01 + 2 + OFFSET_X, 1, 234.4, 12.1 , 0 );
	setMoveKey( ATK_01 + 3 + OFFSET_X, 1, 234.4, 12.1 , 0 );
	setMoveKey( ATK_01 + 4 + OFFSET_X, 1, 193.6, 12.1 , 0 );
	setMoveKey( ATK_01 + 5 + OFFSET_X, 1, 193.6, 12.1 , 0 );
	setMoveKey( ATK_01 + 6 + OFFSET_X, 1, 172.7, 12.1 , 0 );
	setMoveKey( ATK_01 + 7 + OFFSET_X, 1, 172.7, 12.1 , 0 );
	setMoveKey( ATK_01 + 8 + OFFSET_X, 1, 165, 12.1 , 0 );
	setMoveKey( ATK_01 + 9 + OFFSET_X, 1, 165, 12.1 , 0 );
	setMoveKey( ATK_01 + 10 + OFFSET_X, 1, 163.9, 12.1 , 0 );
	setMoveKey( ATK_01 + 11 + OFFSET_X, 1, 163.9, 12.1 , 0 );
	setMoveKey( ATK_01 + 12 + OFFSET_X, 1, 154.7, 12.1 , 0 );
	setMoveKey( ATK_01 + 13 + OFFSET_X, 1, 154.7, 12.1 , 0 );
	setMoveKey( ATK_01 + 14 + OFFSET_X, 1, 137.7, 33.7 , 0 );
	setMoveKey( ATK_01 + 27 + OFFSET_X, 1, 137.7, 33.7 , 0 );
	setMoveKey( ATK_01 + 28 + OFFSET_X, 1, 151.3, 32 , 0 );
	setMoveKey( ATK_01 + 29 + OFFSET_X, 1, 151.3, 32 , 0 );
	setMoveKey( ATK_01 + 30 + OFFSET_X, 1, 159.6, 30.8 , 0 );
	setMoveKey( ATK_01 + 31 + OFFSET_X, 1, 159.6, 30.8 , 0 );
	setMoveKey( ATK_01 + 32 + OFFSET_X, 1, 163.4, 30.3 , 0 );
	setMoveKey( ATK_01 + 33 + OFFSET_X, 1, 163.4, 30.3 , 0 );
	setMoveKey( ATK_01 + 34 + OFFSET_X, 1, 165.1, 30 , 0 );
	setMoveKey( ATK_01 + 35 + OFFSET_X, 1, 165.1, 30 , 0 );
	setMoveKey( ATK_01 + 36 + OFFSET_X, 1, 165.6, 29.9 , 0 );
	setMoveKey( ATK_01 + 37 + OFFSET_X, 1, 165.6, 29.9 , 0 );
	setMoveKey( ATK_01 + 38 + OFFSET_X, 1, 114.7, 12.6 , 0 );
	setMoveKey( ATK_01 + 41 + OFFSET_X, 1, 114.7, 12.6 , 0 );
	setMoveKey( ATK_01 + 42 + OFFSET_X, 1, 145.2, 11.9 , 0 );
	setMoveKey( ATK_01 + 61 + OFFSET_X, 1, 145.2, 11.9 , 0 );
	setMoveKey( ATK_01 + 62 + OFFSET_X, 1, 137.5, 20.6 , 0 );
	setMoveKey( ATK_01 + 71 + OFFSET_X, 1, 137.5, 20.6 , 0 );
	setMoveKey( ATK_01 + 72 + OFFSET_X, 1, 222.9, 20.6 , 0 );
	setMoveKey( ATK_01 + 73 + OFFSET_X, 1, 222.9, 20.6 , 0 );
	setMoveKey( ATK_01 + 74 + OFFSET_X, 1, 274.7, 20.6 , 0 );
	setMoveKey( ATK_01 + 75 + OFFSET_X, 1, 274.7, 20.6 , 0 );
	setMoveKey( ATK_01 + 76 + OFFSET_X, 1, 301.3, 20.6 , 0 );
	setMoveKey( ATK_01 + 77 + OFFSET_X, 1, 301.3, 20.6 , 0 );
	setMoveKey( ATK_01 + 78 + OFFSET_X, 1, 311.1, 20.6 , 0 );
	setMoveKey( ATK_01 + 79 + OFFSET_X, 1, 311.1, 20.6 , 0 );
	setMoveKey( ATK_01 + 80 + OFFSET_X, 1, 328, -2.7 , 0 );
	setMoveKey( ATK_01 + 81 + OFFSET_X, 1, 328, -2.7 , 0 );
	setMoveKey( ATK_01 + 82 + OFFSET_X, 1, 327.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 83 + OFFSET_X, 1, 327.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 84 + OFFSET_X, 1, 326.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 85 + OFFSET_X, 1, 326.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 86 + OFFSET_X, 1, 324.2, -2.7 , 0 );
	setMoveKey( ATK_01 + 87 + OFFSET_X, 1, 324.2, -2.7 , 0 );
	setMoveKey( ATK_01 + 88 + OFFSET_X, 1, 318.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 89 + OFFSET_X, 1, 318.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 90 + OFFSET_X, 1, 310.2, -2.7 , 0 );
	setMoveKey( ATK_01 + 91 + OFFSET_X, 1, 310.2, -2.7 , 0 );
	setMoveKey( ATK_01 + 92 + OFFSET_X, 1, 297.2, -2.7 , 0 );
	setMoveKey( ATK_01 + 93 + OFFSET_X, 1, 297.2, -2.7 , 0 );
	setMoveKey( ATK_01 + 94 + OFFSET_X, 1, 279, -2.7 , 0 );
	setMoveKey( ATK_01 + 95 + OFFSET_X, 1, 279, -2.7 , 0 );
	setMoveKey( ATK_01 + 96 + OFFSET_X, 1, 254.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 97 + OFFSET_X, 1, 254.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 98 + OFFSET_X, 1, 223.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 107 + OFFSET_X, 1, 223.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 108 + OFFSET_X, 1, 21.4, 52 , 0 );
	setMoveKey( ATK_01 + 109 + OFFSET_X, 1, 21.4, 52 , 0 );
	setMoveKey( ATK_01 + 110 + OFFSET_X, 1, 38.8, 65.3 , 0 );
	setMoveKey( ATK_01 + 111 + OFFSET_X, 1, 38.8, 65.3 , 0 );
	setMoveKey( ATK_01 + 112 + OFFSET_X, 1, 52.8, 78.7 , 0 );
	setMoveKey( ATK_01 + 113 + OFFSET_X, 1, 52.8, 78.7 , 0 );
	setMoveKey( ATK_01 + 114 + OFFSET_X, 1, 64, 92.1 , 0 );
	setMoveKey( ATK_01 + 115 + OFFSET_X, 1, 64, 92.1 , 0 );
	setMoveKey( ATK_01 + 116 + OFFSET_X, 1, 72.6, 91.9 , 0 );
	setMoveKey( ATK_01 + 117 + OFFSET_X, 1, 72.6, 91.9 , 0 );
	setMoveKey( ATK_01 + 118 + OFFSET_X, 1, 79.3, 90.5 , 0 );
	setMoveKey( ATK_01 + 119 + OFFSET_X, 1, 79.3, 90.5 , 0 );
	setMoveKey( ATK_01 + 120 + OFFSET_X, 1, 84.1, 86.7 , 0 );
	setMoveKey( ATK_01 + 121 + OFFSET_X, 1, 84.1, 86.7 , 0 );
	setMoveKey( ATK_01 + 122 + OFFSET_X, 1, 87.7, 79.3 , 0 );
	setMoveKey( ATK_01 + 123 + OFFSET_X, 1, 87.7, 79.3 , 0 );
	setMoveKey( ATK_01 + 124 + OFFSET_X, 1, 90.1, 67.1 , 0 );
	setMoveKey( ATK_01 + 125 + OFFSET_X, 1, 90.1, 67.1 , 0 );
	setMoveKey( ATK_01 + 126 + OFFSET_X, 1, 91.7, 48.9 , 0 );
	setMoveKey( ATK_01 + 127 + OFFSET_X, 1, 91.7, 48.9 , 0 );
	setMoveKey( ATK_01 + 128 + OFFSET_X, 1, 92.6, 23.5 , 0 );
	setMoveKey( ATK_01 + 129 + OFFSET_X, 1, 92.6, 23.5 , 0 );
	setMoveKey( ATK_01 + 130 + OFFSET_X, 1, 93.2, -10.3 , 0 );
	setMoveKey( ATK_01 + 131 + OFFSET_X, 1, 93.2, -10.3 , 0 );
	setMoveKey( ATK_01 + 132 + OFFSET_X, 1, 93.4, -53.7 , 0 );
	setMoveKey( ATK_01 + 133 + OFFSET_X, 1, 93.4, -53.7 , 0 );
	setMoveKey( ATK_01 + 134 + OFFSET_X, 1, 93.5, -107.9 , 0 );
	setMoveKey( ATK_01 + 135 + OFFSET_X, 1, 93.5, -107.9 , 0 );
	setMoveKey( ATK_01 + 136 + OFFSET_X, 1, 93.2, -147.6 , 0 );
	setMoveKey( ATK_01 + 137 + OFFSET_X, 1, 93.2, -147.6 , 0 );
	setMoveKey( ATK_01 + 138 + OFFSET_X, 1, 92.8, -166.5 , 0 );
	setMoveKey( ATK_01 + 139 + OFFSET_X, 1, 92.8, -166.5 , 0 );
	setMoveKey( ATK_01 + 140 + OFFSET_X, 1, 92.8, -169.3 , 0 );
	setMoveKey( ATK_01 + 141 + OFFSET_X, 1, 92.8, -169.3 , 0 );
	setMoveKey( ATK_01 + 142 + OFFSET_X, 1, 94.4, -169.1 , 0 );
	setMoveKey( ATK_01 + 143 + OFFSET_X, 1, 94.4, -169.1 , 0 );
	setMoveKey( ATK_01 + 144 + OFFSET_X, 1, 96, -167.3 , 0 );
	setMoveKey( ATK_01 + 145 + OFFSET_X, 1, 96, -167.3 , 0 );
	setMoveKey( ATK_01 + 146 + OFFSET_X, 1, 97.7, -165 , 0 );
	setMoveKey( ATK_01 + 147 + OFFSET_X, 1, 97.7, -165 , 0 );
	setMoveKey( ATK_01 + 148 + OFFSET_X, 1, 99.3, -159.8 , 0 );
	setMoveKey( ATK_01 + 149 + OFFSET_X, 1, 99.3, -159.8 , 0 );
	setMoveKey( ATK_01 + 150 + OFFSET_X, 1, 110.1, -155.2 , 0 );
	setMoveKey( ATK_01 + 151 + OFFSET_X, 1, 110.1, -155.2 , 0 );
	setMoveKey( ATK_01 + 152 + OFFSET_X, 1, 110.1, -137.5 , 0 );
	setMoveKey( ATK_01 + 153 + OFFSET_X, 1, 110.1, -137.5 , 0 );
	setMoveKey( ATK_01 + 154 + OFFSET_X, 1, 110.1, -108.2 , 0 );
	setMoveKey( ATK_01 + ATK_end -3, 1, 110.1, -108.2 , 0 );
	setMoveKey( ATK_01 + ATK_end -2, 1, 2000, 0 , 0 );

	setScaleKey( ATK_01 + 0, 1, 2.15, 2.15 );
	setScaleKey( ATK_01 + 2 + OFFSET_X, 1, 1.93, 1.93 );
	setScaleKey( ATK_01 + 3 + OFFSET_X, 1, 1.93, 1.93 );
	setScaleKey( ATK_01 + 4 + OFFSET_X, 1, 1.8, 1.8 );
	setScaleKey( ATK_01 + 5 + OFFSET_X, 1, 1.8, 1.8 );
	setScaleKey( ATK_01 + 6 + OFFSET_X, 1, 1.73, 1.73 );
	setScaleKey( ATK_01 + 7 + OFFSET_X, 1, 1.73, 1.73 );
	setScaleKey( ATK_01 + 8 + OFFSET_X, 1, 1.71, 1.71 );
	setScaleKey( ATK_01 + 9 + OFFSET_X, 1, 1.71, 1.71 );
	setScaleKey( ATK_01 + 10 + OFFSET_X, 1, 1.7, 1.7 );
	setScaleKey( ATK_01 + 11 + OFFSET_X, 1, 1.7, 1.7 );
	setScaleKey( ATK_01 + 12 + OFFSET_X, 1, 1.63, 1.63 );
	setScaleKey( ATK_01 + 13 + OFFSET_X, 1, 1.63, 1.63 );
	setScaleKey( ATK_01 + 14 + OFFSET_X, 1, 1.55, 1.55 );
	setScaleKey( ATK_01 + 37 + OFFSET_X, 1, 1.55, 1.55 );
	setScaleKey( ATK_01 + 38 + OFFSET_X, 1, 1.63, 1.63 );
	setScaleKey( ATK_01 + 41 + OFFSET_X, 1, 1.63, 1.63 );
	setScaleKey( ATK_01 + 42 + OFFSET_X, 1, 1.7, 1.7 );
	setScaleKey( ATK_01 + 61 + OFFSET_X, 1, 1.7, 1.7 );
	setScaleKey( ATK_01 + 62 + OFFSET_X, 1, 1.55, 1.55 );
	setScaleKey( ATK_01 + 80 + OFFSET_X, 1, 1.55, 1.55 );
	setScaleKey( ATK_01 + 107 + OFFSET_X, 1, 1.55, 1.55 );
	setScaleKey( ATK_01 + 108 + OFFSET_X, 1, 3.28, 3.28 );
	setScaleKey( ATK_01 + 109 + OFFSET_X, 1, 3.28, 3.28 );
	setScaleKey( ATK_01 + 110 + OFFSET_X, 1, 2.71, 2.71 );
	setScaleKey( ATK_01 + 111 + OFFSET_X, 1, 2.71, 2.71 );
	setScaleKey( ATK_01 + 112 + OFFSET_X, 1, 2.26, 2.26 );
	setScaleKey( ATK_01 + 113 + OFFSET_X, 1, 2.26, 2.26 );
	setScaleKey( ATK_01 + 114 + OFFSET_X, 1, 1.9, 1.9 );
	setScaleKey( ATK_01 + 115 + OFFSET_X, 1, 1.9, 1.9 );
	setScaleKey( ATK_01 + 116 + OFFSET_X, 1, 1.62, 1.62 );
	setScaleKey( ATK_01 + 117 + OFFSET_X, 1, 1.62, 1.62 );
	setScaleKey( ATK_01 + 118 + OFFSET_X, 1, 1.4, 1.4 );
	setScaleKey( ATK_01 + 119 + OFFSET_X, 1, 1.4, 1.4 );
	setScaleKey( ATK_01 + 120 + OFFSET_X, 1, 1.24, 1.24 );
	setScaleKey( ATK_01 + 121 + OFFSET_X, 1, 1.24, 1.24 );
	setScaleKey( ATK_01 + 122 + OFFSET_X, 1, 1.13, 1.13 );
	setScaleKey( ATK_01 + 123 + OFFSET_X, 1, 1.13, 1.13 );
	setScaleKey( ATK_01 + 124 + OFFSET_X, 1, 1.05, 1.05 );
	setScaleKey( ATK_01 + 125 + OFFSET_X, 1, 1.05, 1.05 );
	setScaleKey( ATK_01 + 126 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 127 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 128 + OFFSET_X, 1, 0.97, 0.97 );
	setScaleKey( ATK_01 + 129 + OFFSET_X, 1, 0.97, 0.97 );
	setScaleKey( ATK_01 + 130 + OFFSET_X, 1, 0.95, 0.95 );
	setScaleKey( ATK_01 + 131 + OFFSET_X, 1, 0.95, 0.95 );
	setScaleKey( ATK_01 + 132 + OFFSET_X, 1, 0.94, 0.94 );
	setScaleKey( ATK_01 + 139 + OFFSET_X, 1, 0.94, 0.94 );
	setScaleKey( ATK_01 + 140 + OFFSET_X, 1, 1.03, 1.03 );
	setScaleKey( ATK_01 + 143 + OFFSET_X, 1, 1.03, 1.03 );
	setScaleKey( ATK_01 + 144 + OFFSET_X, 1, 1.04, 1.04 );
	setScaleKey( ATK_01 + 145 + OFFSET_X, 1, 1.04, 1.04 );
	setScaleKey( ATK_01 + 146 + OFFSET_X, 1, 1.05, 1.05 );
	setScaleKey( ATK_01 + 149 + OFFSET_X, 1, 1.05, 1.05 );
	setScaleKey( ATK_01 + 150 + OFFSET_X, 1, 1.06, 1.06 );
	setScaleKey( ATK_01 + ATK_end, 1, 1.06, 1.06 );

	setRotateKey( ATK_01 + 0, 1, 0 );
	setRotateKey( ATK_01 + 2 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 3 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 4 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 5 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 6 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 7 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 37 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 38 + OFFSET_X, 1, -14.4 );
	setRotateKey( ATK_01 + 41 + OFFSET_X, 1, -14.4 );
	setRotateKey( ATK_01 + 42 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 107 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 108 + OFFSET_X, 1, 10.1 );
	setRotateKey( ATK_01 + 109 + OFFSET_X, 1, 10.1 );
	setRotateKey( ATK_01 + 110 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 133 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 134 + OFFSET_X, 1, 10.1 );
	setRotateKey( ATK_01 + 135 + OFFSET_X, 1, 10.1 );
	setRotateKey( ATK_01 + 136 + OFFSET_X, 1, 4.1 );
	setRotateKey( ATK_01 + 137 + OFFSET_X, 1, 4.1 );
	setRotateKey( ATK_01 + 138 + OFFSET_X, 1, 1.3 );
	setRotateKey( ATK_01 + 139 + OFFSET_X, 1, 1.3 );
	setRotateKey( ATK_01 + 140 + OFFSET_X, 1, 0.3 );
	setRotateKey( ATK_01 + 141 + OFFSET_X, 1, 0.3 );
	setRotateKey( ATK_01 + 142 + OFFSET_X, 1, 1.7 );
	setRotateKey( ATK_01 + 143 + OFFSET_X, 1, 1.7 );
	setRotateKey( ATK_01 + 144 + OFFSET_X, 1, 3.3 );
	setRotateKey( ATK_01 + 145 + OFFSET_X, 1, 3.3 );
	setRotateKey( ATK_01 + 146 + OFFSET_X, 1, 4.9 );
	setRotateKey( ATK_01 + 147 + OFFSET_X, 1, 4.9 );
	setRotateKey( ATK_01 + 148 + OFFSET_X, 1, 6.6 );
	setRotateKey( ATK_01 + 149 + OFFSET_X, 1, 6.6 );
	setRotateKey( ATK_01 + 150 + OFFSET_X, 1, 8.2 );
	setRotateKey( ATK_01 + ATK_end, 1, 8.2 );
	
else

	setDisp(ATK_01 + ATK_end - 2, 1, 0)

	changeAnime( ATK_01 + 0, 1, 102 );
	changeAnimeAndStop( ATK_01 + 10 + OFFSET_X, 1, 119 ,10);
	changeAnime( ATK_01 + 14 + OFFSET_X, 1, 108 );
	changeAnime( ATK_01 + 38 + OFFSET_X, 1, 106 );
	changeAnime( ATK_01 + 42 + OFFSET_X, 1, 104 );
	changeAnime( ATK_01 + 62 + OFFSET_X, 1, 108 );
	changeAnime( ATK_01 + 80 + OFFSET_X, 1, 106 );
	changeAnime( ATK_01 + 108 + OFFSET_X, 1, 5 );
	changeAnime( ATK_01 + 140 + OFFSET_X, 1, 104 );
	changeAnime( ATK_01 + 150 + OFFSET_X, 1, 117 );

	setMoveKey( ATK_01 + 0, 1, 301.7, 12.1 , 0 );
	setMoveKey( ATK_01 + 2 + OFFSET_X, 1, 234.4, 12.1 , 0 );
	setMoveKey( ATK_01 + 3 + OFFSET_X, 1, 234.4, 12.1 , 0 );
	setMoveKey( ATK_01 + 4 + OFFSET_X, 1, 193.6, 12.1 , 0 );
	setMoveKey( ATK_01 + 5 + OFFSET_X, 1, 193.6, 12.1 , 0 );
	setMoveKey( ATK_01 + 6 + OFFSET_X, 1, 172.7, 12.1 , 0 );
	setMoveKey( ATK_01 + 7 + OFFSET_X, 1, 172.7, 12.1 , 0 );
	setMoveKey( ATK_01 + 8 + OFFSET_X, 1, 165, 12.1 , 0 );
	setMoveKey( ATK_01 + 9 + OFFSET_X, 1, 165, 12.1 , 0 );
	setMoveKey( ATK_01 + 10 + OFFSET_X, 1, 163.9, 12.1 , 0 );
	setMoveKey( ATK_01 + 11 + OFFSET_X, 1, 163.9, 12.1 , 0 );
	setMoveKey( ATK_01 + 12 + OFFSET_X, 1, 154.7, 12.1 , 0 );
	setMoveKey( ATK_01 + 13 + OFFSET_X, 1, 154.7, 12.1 , 0 );
	setMoveKey( ATK_01 + 14 + OFFSET_X, 1, 137.7, 33.7 , 0 );
	setMoveKey( ATK_01 + 27 + OFFSET_X, 1, 137.7, 33.7 , 0 );
	setMoveKey( ATK_01 + 28 + OFFSET_X, 1, 151.3, 32 , 0 );
	setMoveKey( ATK_01 + 29 + OFFSET_X, 1, 151.3, 32 , 0 );
	setMoveKey( ATK_01 + 30 + OFFSET_X, 1, 159.6, 30.8 , 0 );
	setMoveKey( ATK_01 + 31 + OFFSET_X, 1, 159.6, 30.8 , 0 );
	setMoveKey( ATK_01 + 32 + OFFSET_X, 1, 163.4, 30.3 , 0 );
	setMoveKey( ATK_01 + 33 + OFFSET_X, 1, 163.4, 30.3 , 0 );
	setMoveKey( ATK_01 + 34 + OFFSET_X, 1, 165.1, 30 , 0 );
	setMoveKey( ATK_01 + 35 + OFFSET_X, 1, 165.1, 30 , 0 );
	setMoveKey( ATK_01 + 36 + OFFSET_X, 1, 165.6, 29.9 , 0 );
	setMoveKey( ATK_01 + 37 + OFFSET_X, 1, 165.6, 29.9 , 0 );
	setMoveKey( ATK_01 + 38 + OFFSET_X, 1, 114.7, 12.6 , 0 );
	setMoveKey( ATK_01 + 41 + OFFSET_X, 1, 114.7, 12.6 , 0 );
	setMoveKey( ATK_01 + 42 + OFFSET_X, 1, 145.2, 11.9 , 0 );
	setMoveKey( ATK_01 + 61 + OFFSET_X, 1, 145.2, 11.9 , 0 );
	setMoveKey( ATK_01 + 62 + OFFSET_X, 1, 137.5, 20.6 , 0 );
	setMoveKey( ATK_01 + 71 + OFFSET_X, 1, 137.5, 20.6 , 0 );
	setMoveKey( ATK_01 + 72 + OFFSET_X, 1, 222.9, 20.6 , 0 );
	setMoveKey( ATK_01 + 73 + OFFSET_X, 1, 222.9, 20.6 , 0 );
	setMoveKey( ATK_01 + 74 + OFFSET_X, 1, 274.7, 20.6 , 0 );
	setMoveKey( ATK_01 + 75 + OFFSET_X, 1, 274.7, 20.6 , 0 );
	setMoveKey( ATK_01 + 76 + OFFSET_X, 1, 301.3, 20.6 , 0 );
	setMoveKey( ATK_01 + 77 + OFFSET_X, 1, 301.3, 20.6 , 0 );
	setMoveKey( ATK_01 + 78 + OFFSET_X, 1, 311.1, 20.6 , 0 );
	setMoveKey( ATK_01 + 79 + OFFSET_X, 1, 311.1, 20.6 , 0 );
	setMoveKey( ATK_01 + 80 + OFFSET_X, 1, 328, -2.7 , 0 );
	setMoveKey( ATK_01 + 81 + OFFSET_X, 1, 328, -2.7 , 0 );
	setMoveKey( ATK_01 + 82 + OFFSET_X, 1, 327.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 83 + OFFSET_X, 1, 327.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 84 + OFFSET_X, 1, 326.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 85 + OFFSET_X, 1, 326.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 86 + OFFSET_X, 1, 324.2, -2.7 , 0 );
	setMoveKey( ATK_01 + 87 + OFFSET_X, 1, 324.2, -2.7 , 0 );
	setMoveKey( ATK_01 + 88 + OFFSET_X, 1, 318.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 89 + OFFSET_X, 1, 318.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 90 + OFFSET_X, 1, 310.2, -2.7 , 0 );
	setMoveKey( ATK_01 + 91 + OFFSET_X, 1, 310.2, -2.7 , 0 );
	setMoveKey( ATK_01 + 92 + OFFSET_X, 1, 297.2, -2.7 , 0 );
	setMoveKey( ATK_01 + 93 + OFFSET_X, 1, 297.2, -2.7 , 0 );
	setMoveKey( ATK_01 + 94 + OFFSET_X, 1, 279, -2.7 , 0 );
	setMoveKey( ATK_01 + 95 + OFFSET_X, 1, 279, -2.7 , 0 );
	setMoveKey( ATK_01 + 96 + OFFSET_X, 1, 254.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 97 + OFFSET_X, 1, 254.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 98 + OFFSET_X, 1, 223.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 107 + OFFSET_X, 1, 223.9, -2.7 , 0 );
	setMoveKey( ATK_01 + 108 + OFFSET_X, 1, 21.4, 52 , 0 );
	setMoveKey( ATK_01 + 109 + OFFSET_X, 1, 21.4, 52 , 0 );
	setMoveKey( ATK_01 + 110 + OFFSET_X, 1, 38.8, 65.3 , 0 );
	setMoveKey( ATK_01 + 111 + OFFSET_X, 1, 38.8, 65.3 , 0 );
	setMoveKey( ATK_01 + 112 + OFFSET_X, 1, 52.8, 78.7 , 0 );
	setMoveKey( ATK_01 + 113 + OFFSET_X, 1, 52.8, 78.7 , 0 );
	setMoveKey( ATK_01 + 114 + OFFSET_X, 1, 64, 92.1 , 0 );
	setMoveKey( ATK_01 + 115 + OFFSET_X, 1, 64, 92.1 , 0 );
	setMoveKey( ATK_01 + 116 + OFFSET_X, 1, 72.6, 91.9 , 0 );
	setMoveKey( ATK_01 + 117 + OFFSET_X, 1, 72.6, 91.9 , 0 );
	setMoveKey( ATK_01 + 118 + OFFSET_X, 1, 79.3, 90.5 , 0 );
	setMoveKey( ATK_01 + 119 + OFFSET_X, 1, 79.3, 90.5 , 0 );
	setMoveKey( ATK_01 + 120 + OFFSET_X, 1, 84.1, 86.7 , 0 );
	setMoveKey( ATK_01 + 121 + OFFSET_X, 1, 84.1, 86.7 , 0 );
	setMoveKey( ATK_01 + 122 + OFFSET_X, 1, 87.7, 79.3 , 0 );
	setMoveKey( ATK_01 + 123 + OFFSET_X, 1, 87.7, 79.3 , 0 );
	setMoveKey( ATK_01 + 124 + OFFSET_X, 1, 90.1, 67.1 , 0 );
	setMoveKey( ATK_01 + 125 + OFFSET_X, 1, 90.1, 67.1 , 0 );
	setMoveKey( ATK_01 + 126 + OFFSET_X, 1, 91.7, 48.9 , 0 );
	setMoveKey( ATK_01 + 127 + OFFSET_X, 1, 91.7, 48.9 , 0 );
	setMoveKey( ATK_01 + 128 + OFFSET_X, 1, 92.6, 23.5 , 0 );
	setMoveKey( ATK_01 + 129 + OFFSET_X, 1, 92.6, 23.5 , 0 );
	setMoveKey( ATK_01 + 130 + OFFSET_X, 1, 93.2, -10.3 , 0 );
	setMoveKey( ATK_01 + 131 + OFFSET_X, 1, 93.2, -10.3 , 0 );
	setMoveKey( ATK_01 + 132 + OFFSET_X, 1, 93.4, -53.7 , 0 );
	setMoveKey( ATK_01 + 133 + OFFSET_X, 1, 93.4, -53.7 , 0 );
	setMoveKey( ATK_01 + 134 + OFFSET_X, 1, 93.5, -107.9 , 0 );
	setMoveKey( ATK_01 + 135 + OFFSET_X, 1, 93.5, -107.9 , 0 );
	setMoveKey( ATK_01 + 136 + OFFSET_X, 1, 93.2, -147.6 , 0 );
	setMoveKey( ATK_01 + 137 + OFFSET_X, 1, 93.2, -147.6 , 0 );
	setMoveKey( ATK_01 + 138 + OFFSET_X, 1, 92.8, -166.5 , 0 );
	setMoveKey( ATK_01 + 139 + OFFSET_X, 1, 92.8, -166.5 , 0 );
	setMoveKey( ATK_01 + 140 + OFFSET_X, 1, 92.8, -169.3 , 0 );
	setMoveKey( ATK_01 + 141 + OFFSET_X, 1, 92.8, -169.3 , 0 );
	setMoveKey( ATK_01 + 142 + OFFSET_X, 1, 94.4, -169.1 , 0 );
	setMoveKey( ATK_01 + 143 + OFFSET_X, 1, 94.4, -169.1 , 0 );
	setMoveKey( ATK_01 + 144 + OFFSET_X, 1, 96, -167.3 , 0 );
	setMoveKey( ATK_01 + 145 + OFFSET_X, 1, 96, -167.3 , 0 );
	setMoveKey( ATK_01 + 146 + OFFSET_X, 1, 97.7, -165 , 0 );
	setMoveKey( ATK_01 + 147 + OFFSET_X, 1, 97.7, -165 , 0 );
	setMoveKey( ATK_01 + 148 + OFFSET_X, 1, 99.3, -159.8 , 0 );
	setMoveKey( ATK_01 + 149 + OFFSET_X, 1, 99.3, -159.8 , 0 );
	setMoveKey( ATK_01 + 150 + OFFSET_X, 1, 110.1, -155.2 , 0 );
	setMoveKey( ATK_01 + 151 + OFFSET_X, 1, 110.1, -155.2 , 0 );
	setMoveKey( ATK_01 + 152 + OFFSET_X, 1, 110.1, -137.5 , 0 );
	setMoveKey( ATK_01 + 153 + OFFSET_X, 1, 110.1, -137.5 , 0 );
	setMoveKey( ATK_01 + 154 + OFFSET_X, 1, 110.1, -108.2 , 0 );
	setMoveKey( ATK_01 + ATK_end -3, 1, 110.1, -108.2 , 0 );
	setMoveKey( ATK_01 + ATK_end -2, 1, 2000, 0 , 0 );

	setScaleKey( ATK_01 + 0, 1, 2.15, 2.15 );
	setScaleKey( ATK_01 + 2 + OFFSET_X, 1, 1.93, 1.93 );
	setScaleKey( ATK_01 + 3 + OFFSET_X, 1, 1.93, 1.93 );
	setScaleKey( ATK_01 + 4 + OFFSET_X, 1, 1.8, 1.8 );
	setScaleKey( ATK_01 + 5 + OFFSET_X, 1, 1.8, 1.8 );
	setScaleKey( ATK_01 + 6 + OFFSET_X, 1, 1.73, 1.73 );
	setScaleKey( ATK_01 + 7 + OFFSET_X, 1, 1.73, 1.73 );
	setScaleKey( ATK_01 + 8 + OFFSET_X, 1, 1.71, 1.71 );
	setScaleKey( ATK_01 + 9 + OFFSET_X, 1, 1.71, 1.71 );
	setScaleKey( ATK_01 + 10 + OFFSET_X, 1, 1.7, 1.7 );
	setScaleKey( ATK_01 + 11 + OFFSET_X, 1, 1.7, 1.7 );
	setScaleKey( ATK_01 + 12 + OFFSET_X, 1, 1.63, 1.63 );
	setScaleKey( ATK_01 + 13 + OFFSET_X, 1, 1.63, 1.63 );
	setScaleKey( ATK_01 + 14 + OFFSET_X, 1, 1.55, 1.55 );
	setScaleKey( ATK_01 + 37 + OFFSET_X, 1, 1.55, 1.55 );
	setScaleKey( ATK_01 + 38 + OFFSET_X, 1, 1.63, 1.63 );
	setScaleKey( ATK_01 + 41 + OFFSET_X, 1, 1.63, 1.63 );
	setScaleKey( ATK_01 + 42 + OFFSET_X, 1, 1.7, 1.7 );
	setScaleKey( ATK_01 + 61 + OFFSET_X, 1, 1.7, 1.7 );
	setScaleKey( ATK_01 + 62 + OFFSET_X, 1, 1.55, 1.55 );
	setScaleKey( ATK_01 + 80 + OFFSET_X, 1, 1.55, 1.55 );
	setScaleKey( ATK_01 + 107 + OFFSET_X, 1, 1.55, 1.55 );
	setScaleKey( ATK_01 + 108 + OFFSET_X, 1, 3.28, 3.28 );
	setScaleKey( ATK_01 + 109 + OFFSET_X, 1, 3.28, 3.28 );
	setScaleKey( ATK_01 + 110 + OFFSET_X, 1, 2.71, 2.71 );
	setScaleKey( ATK_01 + 111 + OFFSET_X, 1, 2.71, 2.71 );
	setScaleKey( ATK_01 + 112 + OFFSET_X, 1, 2.26, 2.26 );
	setScaleKey( ATK_01 + 113 + OFFSET_X, 1, 2.26, 2.26 );
	setScaleKey( ATK_01 + 114 + OFFSET_X, 1, 1.9, 1.9 );
	setScaleKey( ATK_01 + 115 + OFFSET_X, 1, 1.9, 1.9 );
	setScaleKey( ATK_01 + 116 + OFFSET_X, 1, 1.62, 1.62 );
	setScaleKey( ATK_01 + 117 + OFFSET_X, 1, 1.62, 1.62 );
	setScaleKey( ATK_01 + 118 + OFFSET_X, 1, 1.4, 1.4 );
	setScaleKey( ATK_01 + 119 + OFFSET_X, 1, 1.4, 1.4 );
	setScaleKey( ATK_01 + 120 + OFFSET_X, 1, 1.24, 1.24 );
	setScaleKey( ATK_01 + 121 + OFFSET_X, 1, 1.24, 1.24 );
	setScaleKey( ATK_01 + 122 + OFFSET_X, 1, 1.13, 1.13 );
	setScaleKey( ATK_01 + 123 + OFFSET_X, 1, 1.13, 1.13 );
	setScaleKey( ATK_01 + 124 + OFFSET_X, 1, 1.05, 1.05 );
	setScaleKey( ATK_01 + 125 + OFFSET_X, 1, 1.05, 1.05 );
	setScaleKey( ATK_01 + 126 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 127 + OFFSET_X, 1, 1, 1 );
	setScaleKey( ATK_01 + 128 + OFFSET_X, 1, 0.97, 0.97 );
	setScaleKey( ATK_01 + 129 + OFFSET_X, 1, 0.97, 0.97 );
	setScaleKey( ATK_01 + 130 + OFFSET_X, 1, 0.95, 0.95 );
	setScaleKey( ATK_01 + 131 + OFFSET_X, 1, 0.95, 0.95 );
	setScaleKey( ATK_01 + 132 + OFFSET_X, 1, 0.94, 0.94 );
	setScaleKey( ATK_01 + 139 + OFFSET_X, 1, 0.94, 0.94 );
	setScaleKey( ATK_01 + 140 + OFFSET_X, 1, 1.03, 1.03 );
	setScaleKey( ATK_01 + 143 + OFFSET_X, 1, 1.03, 1.03 );
	setScaleKey( ATK_01 + 144 + OFFSET_X, 1, 1.04, 1.04 );
	setScaleKey( ATK_01 + 145 + OFFSET_X, 1, 1.04, 1.04 );
	setScaleKey( ATK_01 + 146 + OFFSET_X, 1, 1.05, 1.05 );
	setScaleKey( ATK_01 + 149 + OFFSET_X, 1, 1.05, 1.05 );
	setScaleKey( ATK_01 + 150 + OFFSET_X, 1, 1.06, 1.06 );
	setScaleKey( ATK_01 + ATK_end, 1, 1.06, 1.06 );

	setRotateKey( ATK_01 + 0, 1, 0 );
	setRotateKey( ATK_01 + 2 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 3 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 4 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 5 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 6 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 7 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 37 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 38 + OFFSET_X, 1, -14.4 );
	setRotateKey( ATK_01 + 41 + OFFSET_X, 1, -14.4 );
	setRotateKey( ATK_01 + 42 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 107 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 108 + OFFSET_X, 1, 10.1 );
	setRotateKey( ATK_01 + 109 + OFFSET_X, 1, 10.1 );
	setRotateKey( ATK_01 + 110 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 133 + OFFSET_X, 1, 10 );
	setRotateKey( ATK_01 + 134 + OFFSET_X, 1, 10.1 );
	setRotateKey( ATK_01 + 135 + OFFSET_X, 1, 10.1 );
	setRotateKey( ATK_01 + 136 + OFFSET_X, 1, 4.1 );
	setRotateKey( ATK_01 + 137 + OFFSET_X, 1, 4.1 );
	setRotateKey( ATK_01 + 138 + OFFSET_X, 1, 1.3 );
	setRotateKey( ATK_01 + 139 + OFFSET_X, 1, 1.3 );
	setRotateKey( ATK_01 + 140 + OFFSET_X, 1, 0.3 );
	setRotateKey( ATK_01 + 141 + OFFSET_X, 1, 0.3 );
	setRotateKey( ATK_01 + 142 + OFFSET_X, 1, 1.7 );
	setRotateKey( ATK_01 + 143 + OFFSET_X, 1, 1.7 );
	setRotateKey( ATK_01 + 144 + OFFSET_X, 1, 3.3 );
	setRotateKey( ATK_01 + 145 + OFFSET_X, 1, 3.3 );
	setRotateKey( ATK_01 + 146 + OFFSET_X, 1, 4.9 );
	setRotateKey( ATK_01 + 147 + OFFSET_X, 1, 4.9 );
	setRotateKey( ATK_01 + 148 + OFFSET_X, 1, 6.6 );
	setRotateKey( ATK_01 + 149 + OFFSET_X, 1, 6.6 );
	setRotateKey( ATK_01 + 150 + OFFSET_X, 1, 8.2 );
	setRotateKey( ATK_01 + ATK_end, 1, 8.2 );

end


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

	SP_dodge = 4; --エンドフェイズのフレーム数を置き換える
	
	playSe( SP_dodge-4, 1042);
	
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
--初手パンチ
SE001 = playSeVer2( ATK_01 + 0, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 0, SE001, 158 );
SE002 = playSeVer2( ATK_01 + 4, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 4, SE002, 71 );
SE003 = playSeVer2( ATK_01 + 4, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 4, SE003, 89 );

--連打
SE004 = playSeVer2( ATK_01 + 28, 1425, "",ATK_01 + 62, 0, 10, -1);
SE005 = playSeVer2( ATK_01 + 28, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 28, SE005, 82 );
SE006 = playSeVer2( ATK_01 + 32, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 32, SE006, 59 );
SE007 = playSeVer2( ATK_01 + 36, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 36, SE007, 75 );
SE008 = playSeVer2( ATK_01 + 48, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 48, SE008, 51 );

--振りかぶる
SE009 = playSeVer2( ATK_01 + 76, 1003, "", 0, 0, 0, -1);

--殴り飛ばす
SE010 = playSeVer2( ATK_01 + 94, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 94, SE010, 89 );

--敵起きる
SE011 = playSeVer2( ATK_01 + 134, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 134, SE011, 72 );

--------------------------------死亡

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_01 + 104;	

        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
else

dealDamage(  ATK_D+4);
endPhase(  ATK_end);
end


print ("[lua]exec b0011");