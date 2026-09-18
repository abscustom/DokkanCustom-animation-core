print ("[lua]exec b0009");

ATK_01 = 0;
ATK_D = 128;
ATK_end = ATK_01+178;

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 182, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 182, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_D+0, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

MAX_FRAME_0=156;

-- ** エフェクト等 ** --
effect_back = entryEffect( ATK_01 + 0,90, 0x100, -1, 0, 0, 0); --ef_142(中間)
setEffMoveKey( ATK_01 + 0, effect_back, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_back, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_back, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_back, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_back, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_back, 0);
setEffAlphaKey( ATK_01 + 0, effect_back, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_back, 255);

if (_IS_PLAYER_SIDE_ == 1) then
    effect_front = entryEffect( ATK_01 + 0, 89, 0x100, -1, 0, 0, 0);  --味方側 ef_141

else
    effect_front = entryEffect( ATK_01 + 0, 92, 0x100, -1, 0, 0, 0);  --敵側 ef_141r

end

setEffMoveKey( ATK_01 + 0, effect_front, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_front, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_front, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_front, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_front, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_front, 0);
setEffAlphaKey( ATK_01 + 0, effect_front, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_front, 255);

--背景速度操作
if (_IS_PLAYER_SIDE_ == 1) then
   setBgScroll(ATK_01,0);
   startBgScroll(ATK_01+0,-40,10);
   stopBgScroll(ATK_01+90,10);
   startBgScroll(ATK_01+100,40,40);

else
	setBgScroll(ATK_01,0);
	startBgScroll(ATK_01+0,-40,10);
	stopBgScroll(ATK_01+90,10);
	startBgScroll(ATK_01+100,40,40);

end

-- 味方の動き
--敵と味方のどちらが手前に来るか
setDrawFront( ATK_01+0, 1, 1);
setDrawFront( ATK_01+44, 1, 0);
setDrawFront( ATK_01+44, 0, 1);
setDrawFront( ATK_01+130, 0, 0);
setDrawFront( ATK_01+130, 1, 1);

--画面振動
setShakeXY(ATK_01 + 64 + OFFSET_X,8, 20, 20);
setShakeXY(ATK_01 + 72 + OFFSET_X,8, 10, 30);
setShakeXY(ATK_01 + 80 + OFFSET_X,12, 30, 10);
setShakeXY(ATK_01 + 92 + OFFSET_X,4, 10, 40);
setShakeXY(ATK_01 + 96 + OFFSET_X,4, 10, 0);
setShakeXY(ATK_01 + 100 + OFFSET_X,6, 20, 5);
setShakeXY(ATK_01 + 110 + OFFSET_X,8, 10, 10);
setShakeXY(ATK_01 + 118 + OFFSET_X,4, 10, 20);
setShakeXY(ATK_01 + 122 + OFFSET_X,6, 10, 10);
setShakeXY(ATK_01 + 130 + OFFSET_X,10, 40, 40);
setShakeXY(ATK_01 + 140 + OFFSET_X,8, 40, 20);
setShakeXY(ATK_01 + 148 + OFFSET_X,8, 20, 10);
setShakeXY(ATK_01 + 156 + OFFSET_X,8, 10, 10);

-----------------------------------------------------
--味方の動き
-----------------------------------------------------

setDisp( ATK_01 + ATK_end - 2, 0, 0);

changeAnime( ATK_01 + 0, 0, 17 );
changeAnime( ATK_01 + 22 + OFFSET_X, 0, 117 );
changeAnime( ATK_01 + 44 + OFFSET_X, 0, 118 );
changeAnime( ATK_01 + 64 + OFFSET_X, 0, 114 );
changeAnime( ATK_01 + 68 + OFFSET_X, 0, 104 );
changeAnimeAndStop( ATK_01 + 72 + OFFSET_X, 0, 111 ,1)
changeAnimeAndStop( ATK_01 + 74 + OFFSET_X, 0, 111 ,3)
changeAnime( ATK_01 + 78 + OFFSET_X, 0, 104 );
changeAnime( ATK_01 + 84 + OFFSET_X, 0, 112 );
changeAnime( ATK_01 + 88 + OFFSET_X, 0, 104 );
changeAnimeAndStop( ATK_01 + 90 + OFFSET_X, 0, 111 ,1)
changeAnime( ATK_01 + 94 + OFFSET_X, 0, 114 );
changeAnime( ATK_01 + 96 + OFFSET_X, 0, 18 );
changeAnime( ATK_01 + 110 + OFFSET_X, 0, 114 );
changeAnime( ATK_01 + 114 + OFFSET_X, 0, 104 );
changeAnimeAndStop( ATK_01 + 116 + OFFSET_X, 0, 111 ,1)
changeAnimeAndStop( ATK_01 + 118 + OFFSET_X, 0, 111 ,3)
changeAnime( ATK_01 + 122 + OFFSET_X, 0, 104 );
changeAnime( ATK_01 + 126 + OFFSET_X, 0, 112 );
changeAnime( ATK_01 + 130 + OFFSET_X, 0, 17 );

setMoveKey( ATK_01 + 0, 0, -581.5, 18.1 , 0 );
setMoveKey( ATK_01 + 2 + OFFSET_X, 0, -552.4, 16.6 , 0 );
setMoveKey( ATK_01 + 3 + OFFSET_X, 0, -552.4, 16.6 , 0 );
setMoveKey( ATK_01 + 4 + OFFSET_X, 0, -517.4, 14.8 , 0 );
setMoveKey( ATK_01 + 5 + OFFSET_X, 0, -517.4, 14.8 , 0 );
setMoveKey( ATK_01 + 6 + OFFSET_X, 0, -475.8, 12.6 , 0 );
setMoveKey( ATK_01 + 7 + OFFSET_X, 0, -475.8, 12.6 , 0 );
setMoveKey( ATK_01 + 8 + OFFSET_X, 0, -427.3, 10 , 0 );
setMoveKey( ATK_01 + 9 + OFFSET_X, 0, -427.3, 10 , 0 );
setMoveKey( ATK_01 + 10 + OFFSET_X, 0, -371.5, 7.1 , 0 );
setMoveKey( ATK_01 + 11 + OFFSET_X, 0, -371.5, 7.1 , 0 );
setMoveKey( ATK_01 + 12 + OFFSET_X, 0, -308.5, 3.8 , 0 );
setMoveKey( ATK_01 + 13 + OFFSET_X, 0, -308.5, 3.8 , 0 );
setMoveKey( ATK_01 + 14 + OFFSET_X, 0, -238.6, 0.2 , 0 );
setMoveKey( ATK_01 + 15 + OFFSET_X, 0, -238.6, 0.2 , 0 );
setMoveKey( ATK_01 + 16 + OFFSET_X, 0, -163, -3.8 , 0 );
setMoveKey( ATK_01 + 17 + OFFSET_X, 0, -163, -3.8 , 0 );
setMoveKey( ATK_01 + 18 + OFFSET_X, 0, -83.4, -8 , 0 );
setMoveKey( ATK_01 + 19 + OFFSET_X, 0, -83.4, -8 , 0 );
setMoveKey( ATK_01 + 20 + OFFSET_X, 0, -2.3, -12.2 , 0 );
setMoveKey( ATK_01 + 21 + OFFSET_X, 0, -2.3, -12.2 , 0 );
setMoveKey( ATK_01 + 22 + OFFSET_X, 0, 78, -16.4 , 0 );
setMoveKey( ATK_01 + 23 + OFFSET_X, 0, 78, -16.4 , 0 );
setMoveKey( ATK_01 + 24 + OFFSET_X, 0, 155, -20.5 , 0 );
setMoveKey( ATK_01 + 25 + OFFSET_X, 0, 155, -20.5 , 0 );
setMoveKey( ATK_01 + 26 + OFFSET_X, 0, 226.8, -24.2 , 0 );
setMoveKey( ATK_01 + 27 + OFFSET_X, 0, 226.8, -24.2 , 0 );
setMoveKey( ATK_01 + 28 + OFFSET_X, 0, 292.2, -27.7 , 0 );
setMoveKey( ATK_01 + 29 + OFFSET_X, 0, 292.2, -27.7 , 0 );
setMoveKey( ATK_01 + 30 + OFFSET_X, 0, 350.6, -30.7 , 0 );
setMoveKey( ATK_01 + 31 + OFFSET_X, 0, 350.6, -30.7 , 0 );
setMoveKey( ATK_01 + 32 + OFFSET_X, 0, 402, -33.4 , 0 );
setMoveKey( ATK_01 + 33 + OFFSET_X, 0, 402, -33.4 , 0 );
setMoveKey( ATK_01 + 34 + OFFSET_X, 0, 446.6, -35.7 , 0 );
setMoveKey( ATK_01 + 35 + OFFSET_X, 0, 446.6, -35.7 , 0 );
setMoveKey( ATK_01 + 36 + OFFSET_X, 0, 484.7, -37.7 , 0 );
setMoveKey( ATK_01 + 37 + OFFSET_X, 0, 484.7, -37.7 , 0 );
setMoveKey( ATK_01 + 38 + OFFSET_X, 0, 517, -39.4 , 0 );
setMoveKey( ATK_01 + 43 + OFFSET_X, 0, 517, -39.4 , 0 );
setMoveKey( ATK_01 + 44 + OFFSET_X, 0, 858.5, 72.1 , 0 );
setMoveKey( ATK_01 + 45 + OFFSET_X, 0, 858.5, 72.1 , 0 );
setMoveKey( ATK_01 + 46 + OFFSET_X, 0, 675.2, 84.4 , 0 );
setMoveKey( ATK_01 + 47 + OFFSET_X, 0, 675.2, 84.4 , 0 );
setMoveKey( ATK_01 + 48 + OFFSET_X, 0, 525.2, 94.5 , 0 );
setMoveKey( ATK_01 + 49 + OFFSET_X, 0, 525.2, 94.5 , 0 );
setMoveKey( ATK_01 + 50 + OFFSET_X, 0, 408.5, 102.3 , 0 );
setMoveKey( ATK_01 + 51 + OFFSET_X, 0, 408.5, 102.3 , 0 );
setMoveKey( ATK_01 + 52 + OFFSET_X, 0, 325.2, 107.9 , 0 );
setMoveKey( ATK_01 + 53 + OFFSET_X, 0, 325.2, 107.9 , 0 );
setMoveKey( ATK_01 + 54 + OFFSET_X, 0, 275.2, 111.2 , 0 );
setMoveKey( ATK_01 + 55 + OFFSET_X, 0, 275.2, 111.2 , 0 );
setMoveKey( ATK_01 + 56 + OFFSET_X, 0, 258.5, 112.4 , 0 );
setMoveKey( ATK_01 + 59 + OFFSET_X, 0, 258.5, 112.4 , 0 );
setMoveKey( ATK_01 + 60 + OFFSET_X, 0, 234.7, 102.1 , 0 );
setMoveKey( ATK_01 + 61 + OFFSET_X, 0, 234.7, 102.1 , 0 );
setMoveKey( ATK_01 + 62 + OFFSET_X, 0, 163.2, 71.3 , 0 );
setMoveKey( ATK_01 + 63 + OFFSET_X, 0, 163.2, 71.3 , 0 );
setMoveKey( ATK_01 + 64 + OFFSET_X, 0, 44, 0 , 0 );
setMoveKey( ATK_01 + 67 + OFFSET_X, 0, 44, 0 , 0 );
setMoveKey( ATK_01 + 68 + OFFSET_X, 0, 65.6, 4.1 , 0 );
setMoveKey( ATK_01 + 71 + OFFSET_X, 0, 65.6, 4.1 , 0 );
setMoveKey( ATK_01 + 72 + OFFSET_X, 0, 48, 2 , 0 );
setMoveKey( ATK_01 + 73 + OFFSET_X, 0, 48, 2 , 0 );
setMoveKey( ATK_01 + 74 + OFFSET_X, 0, 5.8, 11.7 , 0 );
setMoveKey( ATK_01 + 77 + OFFSET_X, 0, 5.8, 11.7 , 0 );
setMoveKey( ATK_01 + 78 + OFFSET_X, 0, 67.6, -2.5 , 0 );
setMoveKey( ATK_01 + 83 + OFFSET_X, 0, 67.6, -2.5 , 0 );
setMoveKey( ATK_01 + 84 + OFFSET_X, 0, 24, 16 , 0 );
setMoveKey( ATK_01 + 87 + OFFSET_X, 0, 24, 16 , 0 );
setMoveKey( ATK_01 + 88 + OFFSET_X, 0, 44, 0 , 0 );
setMoveKey( ATK_01 + 93 + OFFSET_X, 0, 44, 0 , 0 );
setMoveKey( ATK_01 + 94 + OFFSET_X, 0, 52, 6 , 0 );
setMoveKey( ATK_01 + 95 + OFFSET_X, 0, 52, 6 , 0 );
setMoveKey( ATK_01 + 96 + OFFSET_X, 0, -128.2, 43.8 , 0 );
setMoveKey( ATK_01 + 97 + OFFSET_X, 0, -128.2, 43.8 , 0 );
setMoveKey( ATK_01 + 98 + OFFSET_X, 0, -232.3, 69.5 , 0 );
setMoveKey( ATK_01 + 99 + OFFSET_X, 0, -232.3, 69.5 , 0 );
setMoveKey( ATK_01 + 100 + OFFSET_X, 0, -294.8, 84.9 , 0 );
setMoveKey( ATK_01 + 101 + OFFSET_X, 0, -294.8, 84.9 , 0 );
setMoveKey( ATK_01 + 102 + OFFSET_X, 0, -310, 108.2 , 0 );
setMoveKey( ATK_01 + 103 + OFFSET_X, 0, -310, 108.2 , 0 );
setMoveKey( ATK_01 + 104 + OFFSET_X, 0, -293.3, 101.5 , 0 );
setMoveKey( ATK_01 + 105 + OFFSET_X, 0, -293.3, 101.5 , 0 );
setMoveKey( ATK_01 + 106 + OFFSET_X, 0, -228.5, 77 , 0 );
setMoveKey( ATK_01 + 107 + OFFSET_X, 0, -228.5, 77 , 0 );
setMoveKey( ATK_01 + 108 + OFFSET_X, 0, -71.5, 21.2 , 0 );
setMoveKey( ATK_01 + 109 + OFFSET_X, 0, -71.5, 21.2 , 0 );
setMoveKey( ATK_01 + 110 + OFFSET_X, 0, 68.6, -3.8 , 0 );
setMoveKey( ATK_01 + 113 + OFFSET_X, 0, 68.6, -3.8 , 0 );
setMoveKey( ATK_01 + 114 + OFFSET_X, 0, 98.7, 0.6 , 0 );
setMoveKey( ATK_01 + 115 + OFFSET_X, 0, 98.7, 0.6 , 0 );
setMoveKey( ATK_01 + 116 + OFFSET_X, 0, 74.3, -1.3 , 0 );
setMoveKey( ATK_01 + 117 + OFFSET_X, 0, 74.3, -1.3 , 0 );
setMoveKey( ATK_01 + 118 + OFFSET_X, 0, 16.4, 14.6 , 0 );
setMoveKey( ATK_01 + 121 + OFFSET_X, 0, 16.4, 14.6 , 0 );
setMoveKey( ATK_01 + 122 + OFFSET_X, 0, 101.1, -8.7 , 0 );
setMoveKey( ATK_01 + 125 + OFFSET_X, 0, 101.1, -8.7 , 0 );
setMoveKey( ATK_01 + 126 + OFFSET_X, 0, 41.9, 19.5 , 0 );
setMoveKey( ATK_01 + 129 + OFFSET_X, 0, 41.9, 19.5 , 0 );
setMoveKey( ATK_01 + 130 + OFFSET_X, 0, -73.4, 58.2 , 0 );
setMoveKey( ATK_01 + 131 + OFFSET_X, 0, -73.4, 58.2 , 0 );
setMoveKey( ATK_01 + 132 + OFFSET_X, 0, -173.8, 23.6 , 0 );
setMoveKey( ATK_01 + 133 + OFFSET_X, 0, -173.8, 23.6 , 0 );
setMoveKey( ATK_01 + 134 + OFFSET_X, 0, -205.2, 12.8 , 0 );
setMoveKey( ATK_01 + 135 + OFFSET_X, 0, -205.2, 12.8 , 0 );
setMoveKey( ATK_01 + 136 + OFFSET_X, 0, -222.3, 7 , 0 );
setMoveKey( ATK_01 + 137 + OFFSET_X, 0, -222.3, 7 , 0 );
setMoveKey( ATK_01 + 138 + OFFSET_X, 0, -232.1, 3.6 , 0 );
setMoveKey( ATK_01 + 139 + OFFSET_X, 0, -232.1, 3.6 , 0 );
setMoveKey( ATK_01 + 140 + OFFSET_X, 0, -237.2, 1.8 , 0 );
setMoveKey( ATK_01 + 141 + OFFSET_X, 0, -237.2, 1.8 , 0 );
setMoveKey( ATK_01 + 142 + OFFSET_X, 0, -239.3, 1.1 , 0 );
setMoveKey( ATK_01 + 143 + OFFSET_X, 0, -239.3, 1.1 , 0 );
setMoveKey( ATK_01 + 144 + OFFSET_X, 0, -239.7, 0.9 , 0 );
setMoveKey( ATK_01 + ATK_end - 3, 0, -239.7, 0.9 , 0 );
setMoveKey( ATK_01 + ATK_end - 2, 0, 2000, 0.0 , 0 );

setScaleKey( ATK_01 + 0, 0, 0.9, 0.9 );
setScaleKey( ATK_01 + 2 + OFFSET_X, 0, 0.87, 0.87 );
setScaleKey( ATK_01 + 3 + OFFSET_X, 0, 0.87, 0.87 );
setScaleKey( ATK_01 + 4 + OFFSET_X, 0, 0.85, 0.85 );
setScaleKey( ATK_01 + 5 + OFFSET_X, 0, 0.85, 0.85 );
setScaleKey( ATK_01 + 6 + OFFSET_X, 0, 0.83, 0.83 );
setScaleKey( ATK_01 + 7 + OFFSET_X, 0, 0.83, 0.83 );
setScaleKey( ATK_01 + 8 + OFFSET_X, 0, 0.82, 0.82 );
setScaleKey( ATK_01 + 9 + OFFSET_X, 0, 0.82, 0.82 );
setScaleKey( ATK_01 + 10 + OFFSET_X, 0, 0.8, 0.8 );
setScaleKey( ATK_01 + 11 + OFFSET_X, 0, 0.8, 0.8 );
setScaleKey( ATK_01 + 12 + OFFSET_X, 0, 0.79, 0.79 );
setScaleKey( ATK_01 + 13 + OFFSET_X, 0, 0.79, 0.79 );
setScaleKey( ATK_01 + 14 + OFFSET_X, 0, 0.78, 0.78 );
setScaleKey( ATK_01 + 15 + OFFSET_X, 0, 0.78, 0.78 );
setScaleKey( ATK_01 + 16 + OFFSET_X, 0, 0.77, 0.77 );
setScaleKey( ATK_01 + 19 + OFFSET_X, 0, 0.77, 0.77 );
setScaleKey( ATK_01 + 20 + OFFSET_X, 0, 0.76, 0.76 );
setScaleKey( ATK_01 + 25 + OFFSET_X, 0, 0.76, 0.76 );
setScaleKey( ATK_01 + 26 + OFFSET_X, 0, 0.77, 0.77 );
setScaleKey( ATK_01 + 29 + OFFSET_X, 0, 0.77, 0.77 );
setScaleKey( ATK_01 + 30 + OFFSET_X, 0, 0.78, 0.78 );
setScaleKey( ATK_01 + 31 + OFFSET_X, 0, 0.78, 0.78 );
setScaleKey( ATK_01 + 32 + OFFSET_X, 0, 0.79, 0.79 );
setScaleKey( ATK_01 + 33 + OFFSET_X, 0, 0.79, 0.79 );
setScaleKey( ATK_01 + 34 + OFFSET_X, 0, 0.8, 0.8 );
setScaleKey( ATK_01 + 35 + OFFSET_X, 0, 0.8, 0.8 );
setScaleKey( ATK_01 + 36 + OFFSET_X, 0, 0.82, 0.82 );
setScaleKey( ATK_01 + 37 + OFFSET_X, 0, 0.82, 0.82 );
setScaleKey( ATK_01 + 38 + OFFSET_X, 0, 0.83, 0.83 );
setScaleKey( ATK_01 + 39 + OFFSET_X, 0, 0.83, 0.83 );
setScaleKey( ATK_01 + 40 + OFFSET_X, 0, 0.85, 0.85 );
setScaleKey( ATK_01 + 41 + OFFSET_X, 0, 0.85, 0.85 );
setScaleKey( ATK_01 + 42 + OFFSET_X, 0, 0.87, 0.87 );
setScaleKey( ATK_01 + 43 + OFFSET_X, 0, 0.87, 0.87 );
setScaleKey( ATK_01 + 44 + OFFSET_X, 0, 1.82, 1.82 );
setScaleKey( ATK_01 + 45 + OFFSET_X, 0, 1.82, 1.82 );
setScaleKey( ATK_01 + 46 + OFFSET_X, 0, 1.94, 1.94 );
setScaleKey( ATK_01 + 47 + OFFSET_X, 0, 1.94, 1.94 );
setScaleKey( ATK_01 + 48 + OFFSET_X, 0, 2.05, 2.05 );
setScaleKey( ATK_01 + 49 + OFFSET_X, 0, 2.05, 2.05 );
setScaleKey( ATK_01 + 50 + OFFSET_X, 0, 2.12, 2.12 );
setScaleKey( ATK_01 + 51 + OFFSET_X, 0, 2.12, 2.12 );
setScaleKey( ATK_01 + 52 + OFFSET_X, 0, 2.18, 2.18 );
setScaleKey( ATK_01 + 53 + OFFSET_X, 0, 2.18, 2.18 );
setScaleKey( ATK_01 + 54 + OFFSET_X, 0, 2.21, 2.21 );
setScaleKey( ATK_01 + 55 + OFFSET_X, 0, 2.21, 2.21 );
setScaleKey( ATK_01 + 56 + OFFSET_X, 0, 2.23, 2.23 );
setScaleKey( ATK_01 + 59 + OFFSET_X, 0, 2.23, 2.23 );
setScaleKey( ATK_01 + 60 + OFFSET_X, 0, 2.1, 2.1 );
setScaleKey( ATK_01 + 61 + OFFSET_X, 0, 2.1, 2.1 );
setScaleKey( ATK_01 + 62 + OFFSET_X, 0, 1.72, 1.72 );
setScaleKey( ATK_01 + 63 + OFFSET_X, 0, 1.72, 1.72 );
setScaleKey( ATK_01 + 64 + OFFSET_X, 0, 1.09, 1.09 );
setScaleKey( ATK_01 + 67 + OFFSET_X, 0, 1.09, 1.09 );
setScaleKey( ATK_01 + 68 + OFFSET_X, 0, 1.12, 1.12 );
setScaleKey( ATK_01 + 71 + OFFSET_X, 0, 1.12, 1.12 );
setScaleKey( ATK_01 + 72 + OFFSET_X, 0, 1.09, 1.09 );
setScaleKey( ATK_01 + 77 + OFFSET_X, 0, 1.09, 1.09 );
setScaleKey( ATK_01 + 78 + OFFSET_X, 0, 1.06, 1.06 );
setScaleKey( ATK_01 + 83 + OFFSET_X, 0, 1.06, 1.06 );
setScaleKey( ATK_01 + 84 + OFFSET_X, 0, 1.09, 1.09 );
setScaleKey( ATK_01 + 95 + OFFSET_X, 0, 1.09, 1.09 );
setScaleKey( ATK_01 + 96 + OFFSET_X, 0, 1.37, 1.37 );
setScaleKey( ATK_01 + 97 + OFFSET_X, 0, 1.37, 1.37 );
setScaleKey( ATK_01 + 98 + OFFSET_X, 0, 1.62, 1.62 );
setScaleKey( ATK_01 + 99 + OFFSET_X, 0, 1.62, 1.62 );
setScaleKey( ATK_01 + 100 + OFFSET_X, 0, 1.76, 1.76 );
setScaleKey( ATK_01 + 101 + OFFSET_X, 0, 1.76, 1.76 );
setScaleKey( ATK_01 + 102 + OFFSET_X, 0, 1.81, 1.81 );
setScaleKey( ATK_01 + 105 + OFFSET_X, 0, 1.81, 1.81 );
setScaleKey( ATK_01 + 106 + OFFSET_X, 0, 1.75, 1.75 );
setScaleKey( ATK_01 + 107 + OFFSET_X, 0, 1.75, 1.75 );
setScaleKey( ATK_01 + 108 + OFFSET_X, 0, 1.51, 1.51 );
setScaleKey( ATK_01 + 113 + OFFSET_X, 0, 1.51, 1.51 );
setScaleKey( ATK_01 + 114 + OFFSET_X, 0, 1.56, 1.56 );
setScaleKey( ATK_01 + 115 + OFFSET_X, 0, 1.56, 1.56 );
setScaleKey( ATK_01 + 116 + OFFSET_X, 0, 1.51, 1.51 );
setScaleKey( ATK_01 + 118 + OFFSET_X, 0, 1.51, 1.51 );
setScaleKey( ATK_01 + 121 + OFFSET_X, 0, 1.51, 1.51 );
setScaleKey( ATK_01 + 122 + OFFSET_X, 0, 1.47, 1.47 );
setScaleKey( ATK_01 + 125 + OFFSET_X, 0, 1.47, 1.47 );
setScaleKey( ATK_01 + 126 + OFFSET_X, 0, 1.51, 1.51 );
setScaleKey( ATK_01 + 129 + OFFSET_X, 0, 1.51, 1.51 );
setScaleKey( ATK_01 + 130 + OFFSET_X, 0, 1.25, 1.25 );
setScaleKey( ATK_01 + 131 + OFFSET_X, 0, 1.25, 1.25 );
setScaleKey( ATK_01 + 132 + OFFSET_X, 0, 0.89, 0.89 );
setScaleKey( ATK_01 + 133 + OFFSET_X, 0, 0.89, 0.89 );
setScaleKey( ATK_01 + 134 + OFFSET_X, 0, 0.78, 0.78 );
setScaleKey( ATK_01 + 135 + OFFSET_X, 0, 0.78, 0.78 );
setScaleKey( ATK_01 + 136 + OFFSET_X, 0, 0.72, 0.72 );
setScaleKey( ATK_01 + 137 + OFFSET_X, 0, 0.72, 0.72 );
setScaleKey( ATK_01 + 138 + OFFSET_X, 0, 0.68, 0.68 );
setScaleKey( ATK_01 + 139 + OFFSET_X, 0, 0.68, 0.68 );
setScaleKey( ATK_01 + 140 + OFFSET_X, 0, 0.66, 0.66 );
setScaleKey( ATK_01 + ATK_end, 0, 0.66, 0.66 );

setRotateKey( ATK_01 + 0, 0, 3 );
setRotateKey( ATK_01 + 2 + OFFSET_X, 0, 3 );
setRotateKey( ATK_01 + 3 + OFFSET_X, 0, 3 );
setRotateKey( ATK_01 + 4 + OFFSET_X, 0, 3 );
setRotateKey( ATK_01 + 5 + OFFSET_X, 0, 3 );
setRotateKey( ATK_01 + 6 + OFFSET_X, 0, 3 );
setRotateKey( ATK_01 + 7 + OFFSET_X, 0, 3 );
setRotateKey( ATK_01 + 43 + OFFSET_X, 0, 3 );
setRotateKey( ATK_01 + 44 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 73 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 74 + OFFSET_X, 0, 5 );
setRotateKey( ATK_01 + 77 + OFFSET_X, 0, 5 );
setRotateKey( ATK_01 + 78 + OFFSET_X, 0, 3.9 );
setRotateKey( ATK_01 + 83 + OFFSET_X, 0, 3.9 );
setRotateKey( ATK_01 + 84 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 95 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 96 + OFFSET_X, 0, 1.5 );
setRotateKey( ATK_01 + 97 + OFFSET_X, 0, 1.5 );
setRotateKey( ATK_01 + 98 + OFFSET_X, 0, 1.2 );
setRotateKey( ATK_01 + 99 + OFFSET_X, 0, 1.2 );
setRotateKey( ATK_01 + 100 + OFFSET_X, 0, 1 );
setRotateKey( ATK_01 + 101 + OFFSET_X, 0, 1 );
setRotateKey( ATK_01 + 102 + OFFSET_X, 0, 4.4 );
setRotateKey( ATK_01 + 105 + OFFSET_X, 0, 4.4 );
setRotateKey( ATK_01 + 106 + OFFSET_X, 0, 4.3 );
setRotateKey( ATK_01 + 107 + OFFSET_X, 0, 4.3 );
setRotateKey( ATK_01 + 108 + OFFSET_X, 0, 4.2 );
setRotateKey( ATK_01 + 109 + OFFSET_X, 0, 4.2 );
setRotateKey( ATK_01 + 110 + OFFSET_X, 0, 2.5 );
setRotateKey( ATK_01 + 117 + OFFSET_X, 0, 2.5 );
setRotateKey( ATK_01 + 118 + OFFSET_X, 0, 7.4 );
setRotateKey( ATK_01 + 121 + OFFSET_X, 0, 7.4 );
setRotateKey( ATK_01 + 122 + OFFSET_X, 0, 6.4 );
setRotateKey( ATK_01 + 125 + OFFSET_X, 0, 6.4 );
setRotateKey( ATK_01 + 126 + OFFSET_X, 0, 2.5 );
setRotateKey( ATK_01 + 129 + OFFSET_X, 0, 2.5 );
setRotateKey( ATK_01 + 130 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + ATK_end, 0, 0 );

-----------------------------------------------------
--敵の動き
-----------------------------------------------------

if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then

	setDisp(ATK_01 + ATK_end -2 , 1, 0)

	changeAnime( ATK_01 + 0, 1, 118 );
	changeAnime( ATK_01 + 22 + OFFSET_X, 1, 18 );
	changeAnime( ATK_01 + 44 + OFFSET_X, 1, 17 );
	changeAnime( ATK_01 + 64 + OFFSET_X, 1, 12 );
	changeAnimeAndStop( ATK_01 + 68 + OFFSET_X, 1, 11 ,3)
	changeAnime( ATK_01 + 72 + OFFSET_X, 1, 13 );
	changeAnime( ATK_01 + 74 + OFFSET_X, 1, 4 );
	changeAnime( ATK_01 + 78 + OFFSET_X, 1, 10 );
	changeAnime( ATK_01 + 84 + OFFSET_X, 1, 4 );
	changeAnime( ATK_01 + 88 + OFFSET_X, 1, 14 );
	changeAnime( ATK_01 + 90 + OFFSET_X, 1, 13 );
	changeAnime( ATK_01 + 94 + OFFSET_X, 1, 9 );
	changeAnime( ATK_01 + 96 + OFFSET_X, 1, 117 );
	changeAnime( ATK_01 + 110 + OFFSET_X, 1, 12 );
	changeAnimeAndStop( ATK_01 + 114 + OFFSET_X, 1, 11 ,3)
	changeAnime( ATK_01 + 116 + OFFSET_X, 1, 13 );
	changeAnime( ATK_01 + 118 + OFFSET_X, 1, 4 );
	changeAnime( ATK_01 + 122 + OFFSET_X, 1, 10 );
	changeAnime( ATK_01 + 126 + OFFSET_X, 1, 4 );
	--changeAnime( ATK_01 + 130 + OFFSET_X, 1, 107 );
	changeAnime( ATK_01 + 130 + OFFSET_X, 1, 104 );
	
	setMoveKey( ATK_01 + 0, 1, 862.7, -41.5 , 0 );
	setMoveKey( ATK_01 + 2 + OFFSET_X, 1, 854.3, -41.1 , 0 );
	setMoveKey( ATK_01 + 3 + OFFSET_X, 1, 854.3, -41.1 , 0 );
	setMoveKey( ATK_01 + 4 + OFFSET_X, 1, 829.1, -39.8 , 0 );
	setMoveKey( ATK_01 + 5 + OFFSET_X, 1, 829.1, -39.8 , 0 );
	setMoveKey( ATK_01 + 6 + OFFSET_X, 1, 787, -37.6 , 0 );
	setMoveKey( ATK_01 + 7 + OFFSET_X, 1, 787, -37.6 , 0 );
	setMoveKey( ATK_01 + 8 + OFFSET_X, 1, 728.2, -34.5 , 0 );
	setMoveKey( ATK_01 + 9 + OFFSET_X, 1, 728.2, -34.5 , 0 );
	setMoveKey( ATK_01 + 10 + OFFSET_X, 1, 652.5, -30.5 , 0 );
	setMoveKey( ATK_01 + 11 + OFFSET_X, 1, 652.5, -30.5 , 0 );
	setMoveKey( ATK_01 + 12 + OFFSET_X, 1, 560, -25.6 , 0 );
	setMoveKey( ATK_01 + 13 + OFFSET_X, 1, 560, -25.6 , 0 );
	setMoveKey( ATK_01 + 14 + OFFSET_X, 1, 450.7, -19.9 , 0 );
	setMoveKey( ATK_01 + 15 + OFFSET_X, 1, 450.7, -19.9 , 0 );
	setMoveKey( ATK_01 + 16 + OFFSET_X, 1, 324.5, -13.3 , 0 );
	setMoveKey( ATK_01 + 17 + OFFSET_X, 1, 324.5, -13.3 , 0 );
	setMoveKey( ATK_01 + 18 + OFFSET_X, 1, 181.6, -5.8 , 0 );
	setMoveKey( ATK_01 + 19 + OFFSET_X, 1, 181.6, -5.8 , 0 );
	setMoveKey( ATK_01 + 20 + OFFSET_X, 1, 26, 2.3 , 0 );
	setMoveKey( ATK_01 + 21 + OFFSET_X, 1, 26, 2.3 , 0 );
	setMoveKey( ATK_01 + 22 + OFFSET_X, 1, -117, 9.8 , 0 );
	setMoveKey( ATK_01 + 23 + OFFSET_X, 1, -117, 9.8 , 0 );
	setMoveKey( ATK_01 + 24 + OFFSET_X, 1, -243.1, 16.4 , 0 );
	setMoveKey( ATK_01 + 25 + OFFSET_X, 1, -243.1, 16.4 , 0 );
	setMoveKey( ATK_01 + 26 + OFFSET_X, 1, -352.4, 22.1 , 0 );
	setMoveKey( ATK_01 + 27 + OFFSET_X, 1, -352.4, 22.1 , 0 );
	setMoveKey( ATK_01 + 28 + OFFSET_X, 1, -444.9, 27 , 0 );
	setMoveKey( ATK_01 + 29 + OFFSET_X, 1, -444.9, 27 , 0 );
	setMoveKey( ATK_01 + 30 + OFFSET_X, 1, -520.6, 30.9 , 0 );
	setMoveKey( ATK_01 + 31 + OFFSET_X, 1, -520.6, 30.9 , 0 );
	setMoveKey( ATK_01 + 32 + OFFSET_X, 1, -579.5, 34 , 0 );
	setMoveKey( ATK_01 + 33 + OFFSET_X, 1, -579.5, 34 , 0 );
	setMoveKey( ATK_01 + 34 + OFFSET_X, 1, -621.5, 36.2 , 0 );
	setMoveKey( ATK_01 + 35 + OFFSET_X, 1, -621.5, 36.2 , 0 );
	setMoveKey( ATK_01 + 36 + OFFSET_X, 1, -646.7, 37.5 , 0 );
	setMoveKey( ATK_01 + 37 + OFFSET_X, 1, -646.7, 37.5 , 0 );
	setMoveKey( ATK_01 + 38 + OFFSET_X, 1, -655.1, 38 , 0 );
	setMoveKey( ATK_01 + 41 + OFFSET_X, 1, -655.1, 38 , 0 );
	setMoveKey( ATK_01 + 42 + OFFSET_X, 1, -655.1, 37.9 , 0 );
	setMoveKey( ATK_01 + 43 + OFFSET_X, 1, -655.1, 37.9 , 0 );
	setMoveKey( ATK_01 + 44 + OFFSET_X, 1, -516.3, -91.8 , 0 );
	setMoveKey( ATK_01 + 45 + OFFSET_X, 1, -516.3, -91.8 , 0 );
	setMoveKey( ATK_01 + 46 + OFFSET_X, 1, -400.2, -79.6 , 0 );
	setMoveKey( ATK_01 + 47 + OFFSET_X, 1, -400.2, -79.6 , 0 );
	setMoveKey( ATK_01 + 48 + OFFSET_X, 1, -305.2, -69.6 , 0 );
	setMoveKey( ATK_01 + 49 + OFFSET_X, 1, -305.2, -69.6 , 0 );
	setMoveKey( ATK_01 + 50 + OFFSET_X, 1, -231.3, -61.9 , 0 );
	setMoveKey( ATK_01 + 51 + OFFSET_X, 1, -231.3, -61.9 , 0 );
	setMoveKey( ATK_01 + 52 + OFFSET_X, 1, -178.5, -56.3 , 0 );
	setMoveKey( ATK_01 + 53 + OFFSET_X, 1, -178.5, -56.3 , 0 );
	setMoveKey( ATK_01 + 54 + OFFSET_X, 1, -146.9, -53 , 0 );
	setMoveKey( ATK_01 + 55 + OFFSET_X, 1, -146.9, -53 , 0 );
	setMoveKey( ATK_01 + 56 + OFFSET_X, 1, -136.3, -51.9 , 0 );
	setMoveKey( ATK_01 + 59 + OFFSET_X, 1, -136.3, -51.9 , 0 );
	setMoveKey( ATK_01 + 60 + OFFSET_X, 1, -127.4, -43.9 , 0 );
	setMoveKey( ATK_01 + 61 + OFFSET_X, 1, -127.4, -43.9 , 0 );
	setMoveKey( ATK_01 + 62 + OFFSET_X, 1, -100.7, -19.9 , 0 );
	setMoveKey( ATK_01 + 63 + OFFSET_X, 1, -100.7, -19.9 , 0 );
	setMoveKey( ATK_01 + 64 + OFFSET_X, 1, -56.4, 0.1 , 0 );
	setMoveKey( ATK_01 + 67 + OFFSET_X, 1, -56.4, 0.1 , 0 );
	setMoveKey( ATK_01 + 68 + OFFSET_X, 1, -37.9, 4.1 , 0 );
	setMoveKey( ATK_01 + 71 + OFFSET_X, 1, -37.9, 4.1 , 0 );
	setMoveKey( ATK_01 + 72 + OFFSET_X, 1, -52.4, 2.1 , 0 );
	setMoveKey( ATK_01 + 73 + OFFSET_X, 1, -52.4, 2.1 , 0 );
	setMoveKey( ATK_01 + 74 + OFFSET_X, 1, -94.1, 20.4 , 0 );
	setMoveKey( ATK_01 + 77 + OFFSET_X, 1, -94.1, 20.4 , 0 );
	setMoveKey( ATK_01 + 78 + OFFSET_X, 1, -32.3, 4.5 , 0 );
	setMoveKey( ATK_01 + 83 + OFFSET_X, 1, -32.3, 4.5 , 0 );
	setMoveKey( ATK_01 + 84 + OFFSET_X, 1, -76.4, 16.1 , 0 );
	setMoveKey( ATK_01 + 87 + OFFSET_X, 1, -76.4, 16.1 , 0 );
	setMoveKey( ATK_01 + 88 + OFFSET_X, 1, -56.4, 0.1 , 0 );
	setMoveKey( ATK_01 + 90 + OFFSET_X, 1, -56.4, 0.1 , 0 );
	setMoveKey( ATK_01 + 93 + OFFSET_X, 1, -56.4, 0.1 , 0 );
	setMoveKey( ATK_01 + 94 + OFFSET_X, 1, -48.4, 6.1 , 0 );
	setMoveKey( ATK_01 + 95 + OFFSET_X, 1, -48.4, 6.1 , 0 );
	setMoveKey( ATK_01 + 96 + OFFSET_X, 1, 102.2, 2.6 , 0 );
	setMoveKey( ATK_01 + 97 + OFFSET_X, 1, 102.2, 2.6 , 0 );
	setMoveKey( ATK_01 + 98 + OFFSET_X, 1, 191.8, -27.7 , 0 );
	setMoveKey( ATK_01 + 99 + OFFSET_X, 1, 191.8, -27.7 , 0 );
	setMoveKey( ATK_01 + 100 + OFFSET_X, 1, 245.5, -45.8 , 0 );
	setMoveKey( ATK_01 + 101 + OFFSET_X, 1, 245.5, -45.8 , 0 );
	setMoveKey( ATK_01 + 102 + OFFSET_X, 1, 259.7, -68.9 , 0 );
	setMoveKey( ATK_01 + 103 + OFFSET_X, 1, 259.7, -68.9 , 0 );
	setMoveKey( ATK_01 + 104 + OFFSET_X, 1, 244.6, -64.1 , 0 );
	setMoveKey( ATK_01 + 105 + OFFSET_X, 1, 244.6, -64.1 , 0 );
	setMoveKey( ATK_01 + 106 + OFFSET_X, 1, 185.9, -46.6 , 0 );
	setMoveKey( ATK_01 + 107 + OFFSET_X, 1, 185.9, -46.6 , 0 );
	setMoveKey( ATK_01 + 108 + OFFSET_X, 1, 42.6, -8.1 , 0 );
	setMoveKey( ATK_01 + 109 + OFFSET_X, 1, 42.6, -8.1 , 0 );
	setMoveKey( ATK_01 + 110 + OFFSET_X, 1, -70.4, 2.3 , 0 );
	setMoveKey( ATK_01 + 113 + OFFSET_X, 1, -70.4, 2.3 , 0 );
	setMoveKey( ATK_01 + 114 + OFFSET_X, 1, -44.5, 6.7 , 0 );
	setMoveKey( ATK_01 + 115 + OFFSET_X, 1, -44.5, 6.7 , 0 );
	setMoveKey( ATK_01 + 116 + OFFSET_X, 1, -64.7, 4.8 , 0 );
	setMoveKey( ATK_01 + 117 + OFFSET_X, 1, -64.7, 4.8 , 0 );
	setMoveKey( ATK_01 + 118 + OFFSET_X, 1, -121.4, 32.6 , 0 );
	setMoveKey( ATK_01 + 121 + OFFSET_X, 1, -121.4, 32.6 , 0 );
	setMoveKey( ATK_01 + 122 + OFFSET_X, 1, -36.7, 7 , 0 );
	setMoveKey( ATK_01 + 125 + OFFSET_X, 1, -36.7, 7 , 0 );
	setMoveKey( ATK_01 + 126 + OFFSET_X, 1, -97.1, 25.6 , 0 );
	setMoveKey( ATK_01 + 129 + OFFSET_X, 1, -97.1, 25.6 , 0 );
	setMoveKey( ATK_01 + 130 + OFFSET_X, 1, 219.8, 23.5 , 0 );
	setMoveKey( ATK_01 + 131 + OFFSET_X, 1, 219.8, 23.5 , 0 );
	setMoveKey( ATK_01 + 132 + OFFSET_X, 1, 297, 71.9 , 0 );
	setMoveKey( ATK_01 + 133 + OFFSET_X, 1, 297, 71.9 , 0 );
	setMoveKey( ATK_01 + 134 + OFFSET_X, 1, 321.1, 87.1 , 0 );
	setMoveKey( ATK_01 + 135 + OFFSET_X, 1, 321.1, 87.1 , 0 );
	setMoveKey( ATK_01 + 136 + OFFSET_X, 1, 334.2, 95.3 , 0 );
	setMoveKey( ATK_01 + 137 + OFFSET_X, 1, 334.2, 95.3 , 0 );
	setMoveKey( ATK_01 + 138 + OFFSET_X, 1, 341.7, 100 , 0 );
	setMoveKey( ATK_01 + 139 + OFFSET_X, 1, 341.7, 100 , 0 );
	setMoveKey( ATK_01 + 140 + OFFSET_X, 1, 345.7, 102.5 , 0 );
	setMoveKey( ATK_01 + 141 + OFFSET_X, 1, 345.7, 102.5 , 0 );
	setMoveKey( ATK_01 + 142 + OFFSET_X, 1, 347.3, 103.5 , 0 );
	setMoveKey( ATK_01 + 143 + OFFSET_X, 1, 347.3, 103.5 , 0 );
	setMoveKey( ATK_01 + 144 + OFFSET_X, 1, 347.5, 103.6 , 0 );
	setMoveKey( ATK_01 + ATK_end - 3, 1, 347.5, 103.6 , 0 );
	setMoveKey( ATK_01 + ATK_end - 2, 1, 2000, 0 , 0 );
	
	setScaleKey( ATK_01 + 0, 1, 2.11, 2.11 );
	setScaleKey( ATK_01 + 2 + OFFSET_X, 1, 2.21, 2.21 );
	setScaleKey( ATK_01 + 3 + OFFSET_X, 1, 2.21, 2.21 );
	setScaleKey( ATK_01 + 4 + OFFSET_X, 1, 2.3, 2.3 );
	setScaleKey( ATK_01 + 5 + OFFSET_X, 1, 2.3, 2.3 );
	setScaleKey( ATK_01 + 6 + OFFSET_X, 1, 2.38, 2.38 );
	setScaleKey( ATK_01 + 7 + OFFSET_X, 1, 2.38, 2.38 );
	setScaleKey( ATK_01 + 8 + OFFSET_X, 1, 2.45, 2.45 );
	setScaleKey( ATK_01 + 9 + OFFSET_X, 1, 2.45, 2.45 );
	setScaleKey( ATK_01 + 10 + OFFSET_X, 1, 2.52, 2.52 );
	setScaleKey( ATK_01 + 11 + OFFSET_X, 1, 2.52, 2.52 );
	setScaleKey( ATK_01 + 12 + OFFSET_X, 1, 2.58, 2.58 );
	setScaleKey( ATK_01 + 13 + OFFSET_X, 1, 2.58, 2.58 );
	setScaleKey( ATK_01 + 14 + OFFSET_X, 1, 2.62, 2.62 );
	setScaleKey( ATK_01 + 15 + OFFSET_X, 1, 2.62, 2.62 );
	setScaleKey( ATK_01 + 16 + OFFSET_X, 1, 2.67, 2.67 );
	setScaleKey( ATK_01 + 17 + OFFSET_X, 1, 2.67, 2.67 );
	setScaleKey( ATK_01 + 18 + OFFSET_X, 1, 2.7, 2.7 );
	setScaleKey( ATK_01 + 19 + OFFSET_X, 1, 2.7, 2.7 );
	setScaleKey( ATK_01 + 20 + OFFSET_X, 1, 2.73, 2.73 );
	setScaleKey( ATK_01 + 21 + OFFSET_X, 1, 2.73, 2.73 );
	setScaleKey( ATK_01 + 22 + OFFSET_X, 1, 2.74, 2.74 );
	setScaleKey( ATK_01 + 23 + OFFSET_X, 1, 2.74, 2.74 );
	setScaleKey( ATK_01 + 24 + OFFSET_X, 1, 2.75, 2.75 );
	setScaleKey( ATK_01 + 25 + OFFSET_X, 1, 2.75, 2.75 );
	setScaleKey( ATK_01 + 26 + OFFSET_X, 1, 2.74, 2.74 );
	setScaleKey( ATK_01 + 27 + OFFSET_X, 1, 2.74, 2.74 );
	setScaleKey( ATK_01 + 28 + OFFSET_X, 1, 2.72, 2.72 );
	setScaleKey( ATK_01 + 29 + OFFSET_X, 1, 2.72, 2.72 );
	setScaleKey( ATK_01 + 30 + OFFSET_X, 1, 2.7, 2.7 );
	setScaleKey( ATK_01 + 31 + OFFSET_X, 1, 2.7, 2.7 );
	setScaleKey( ATK_01 + 32 + OFFSET_X, 1, 2.66, 2.66 );
	setScaleKey( ATK_01 + 33 + OFFSET_X, 1, 2.66, 2.66 );
	setScaleKey( ATK_01 + 34 + OFFSET_X, 1, 2.61, 2.61 );
	setScaleKey( ATK_01 + 35 + OFFSET_X, 1, 2.61, 2.61 );
	setScaleKey( ATK_01 + 36 + OFFSET_X, 1, 2.55, 2.55 );
	setScaleKey( ATK_01 + 37 + OFFSET_X, 1, 2.55, 2.55 );
	setScaleKey( ATK_01 + 38 + OFFSET_X, 1, 2.47, 2.47 );
	setScaleKey( ATK_01 + 39 + OFFSET_X, 1, 2.47, 2.47 );
	setScaleKey( ATK_01 + 40 + OFFSET_X, 1, 2.39, 2.39 );
	setScaleKey( ATK_01 + 41 + OFFSET_X, 1, 2.39, 2.39 );
	setScaleKey( ATK_01 + 42 + OFFSET_X, 1, 2.3, 2.3 );
	setScaleKey( ATK_01 + 43 + OFFSET_X, 1, 2.3, 2.3 );
	setScaleKey( ATK_01 + 44 + OFFSET_X, 1, 0.97, 0.97 );
	setScaleKey( ATK_01 + 45 + OFFSET_X, 1, 0.97, 0.97 );
	setScaleKey( ATK_01 + 46 + OFFSET_X, 1, 0.9, 0.9 );
	setScaleKey( ATK_01 + 47 + OFFSET_X, 1, 0.9, 0.9 );
	setScaleKey( ATK_01 + 48 + OFFSET_X, 1, 0.83, 0.83 );
	setScaleKey( ATK_01 + 49 + OFFSET_X, 1, 0.83, 0.83 );
	setScaleKey( ATK_01 + 50 + OFFSET_X, 1, 0.79, 0.79 );
	setScaleKey( ATK_01 + 51 + OFFSET_X, 1, 0.79, 0.79 );
	setScaleKey( ATK_01 + 52 + OFFSET_X, 1, 0.75, 0.75 );
	setScaleKey( ATK_01 + 53 + OFFSET_X, 1, 0.75, 0.75 );
	setScaleKey( ATK_01 + 54 + OFFSET_X, 1, 0.73, 0.73 );
	setScaleKey( ATK_01 + 55 + OFFSET_X, 1, 0.73, 0.73 );
	setScaleKey( ATK_01 + 56 + OFFSET_X, 1, 0.72, 0.72 );
	setScaleKey( ATK_01 + 59 + OFFSET_X, 1, 0.72, 0.72 );
	setScaleKey( ATK_01 + 60 + OFFSET_X, 1, 0.76, 0.76 );
	setScaleKey( ATK_01 + 61 + OFFSET_X, 1, 0.76, 0.76 );
	setScaleKey( ATK_01 + 62 + OFFSET_X, 1, 0.89, 0.89 );
	setScaleKey( ATK_01 + 63 + OFFSET_X, 1, 0.89, 0.89 );
	setScaleKey( ATK_01 + 64 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 67 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 68 + OFFSET_X, 1, 1.12, 1.12 );
	setScaleKey( ATK_01 + 71 + OFFSET_X, 1, 1.12, 1.12 );
	setScaleKey( ATK_01 + 72 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 74 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 76 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 78 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 82 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 84 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 86 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 88 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 90 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 92 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 94 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 95 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 96 + OFFSET_X, 1, 0.93, 0.93 );
	setScaleKey( ATK_01 + 97 + OFFSET_X, 1, 0.93, 0.93 );
	setScaleKey( ATK_01 + 98 + OFFSET_X, 1, 0.78, 0.78 );
	setScaleKey( ATK_01 + 99 + OFFSET_X, 1, 0.78, 0.78 );
	setScaleKey( ATK_01 + 100 + OFFSET_X, 1, 0.69, 0.69 );
	setScaleKey( ATK_01 + 101 + OFFSET_X, 1, 0.69, 0.69 );
	setScaleKey( ATK_01 + 102 + OFFSET_X, 1, 0.66, 0.66 );
	setScaleKey( ATK_01 + 103 + OFFSET_X, 1, 0.66, 0.66 );
	setScaleKey( ATK_01 + 104 + OFFSET_X, 1, 0.74, 0.74 );
	setScaleKey( ATK_01 + 105 + OFFSET_X, 1, 0.74, 0.74 );
	setScaleKey( ATK_01 + 106 + OFFSET_X, 1, 0.99, 0.99 );
	setScaleKey( ATK_01 + 107 + OFFSET_X, 1, 0.99, 0.99 );
	setScaleKey( ATK_01 + 108 + OFFSET_X, 1, 1.48, 1.48 );
	setScaleKey( ATK_01 + 109 + OFFSET_X, 1, 1.48, 1.48 );
	setScaleKey( ATK_01 + 110 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 113 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 114 + OFFSET_X, 1, 1.56, 1.56 );
	setScaleKey( ATK_01 + 115 + OFFSET_X, 1, 1.56, 1.56 );
	setScaleKey( ATK_01 + 116 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 118 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 120 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 122 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 126 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 129 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 130 + OFFSET_X, 1, 0.74, 0.74 );
	setScaleKey( ATK_01 + 131 + OFFSET_X, 1, 0.74, 0.74 );
	setScaleKey( ATK_01 + 132 + OFFSET_X, 1, 1.21, 1.21 );
	setScaleKey( ATK_01 + 133 + OFFSET_X, 1, 1.21, 1.21 );
	setScaleKey( ATK_01 + 134 + OFFSET_X, 1, 1.36, 1.36 );
	setScaleKey( ATK_01 + 135 + OFFSET_X, 1, 1.36, 1.36 );
	setScaleKey( ATK_01 + 136 + OFFSET_X, 1, 1.44, 1.44 );
	setScaleKey( ATK_01 + 137 + OFFSET_X, 1, 1.44, 1.44 );
	setScaleKey( ATK_01 + 138 + OFFSET_X, 1, 1.48, 1.48 );
	setScaleKey( ATK_01 + 139 + OFFSET_X, 1, 1.48, 1.48 );
	setScaleKey( ATK_01 + 140 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 141 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 142 + OFFSET_X, 1, 1.52, 1.52 );
	setScaleKey( ATK_01 + ATK_end, 1, 1.52, 1.52 );

	setRotateKey( ATK_01 + 0, 1, 3 );
	setRotateKey( ATK_01 + 2 + OFFSET_X, 1, 3 );
	setRotateKey( ATK_01 + 3 + OFFSET_X, 1, 3 );
	setRotateKey( ATK_01 + 4 + OFFSET_X, 1, 3 );
	setRotateKey( ATK_01 + 5 + OFFSET_X, 1, 3 );
	setRotateKey( ATK_01 + 6 + OFFSET_X, 1, 3 );
	setRotateKey( ATK_01 + 7 + OFFSET_X, 1, 3 );
	setRotateKey( ATK_01 + 43 + OFFSET_X, 1, 3 );
	setRotateKey( ATK_01 + 44 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 73 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 74 + OFFSET_X, 1, 5 );
	setRotateKey( ATK_01 + 77 + OFFSET_X, 1, 5 );
	setRotateKey( ATK_01 + 78 + OFFSET_X, 1, -16.8 );
	setRotateKey( ATK_01 + 83 + OFFSET_X, 1, -16.8 );
	setRotateKey( ATK_01 + 84 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 93 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 94 + OFFSET_X, 1, 13.5 );
	setRotateKey( ATK_01 + 95 + OFFSET_X, 1, 13.5 );
	setRotateKey( ATK_01 + 96 + OFFSET_X, 1, 2 );
	setRotateKey( ATK_01 + 97 + OFFSET_X, 1, 2 );
	setRotateKey( ATK_01 + 98 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 99 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 100 + OFFSET_X, 1, 2.9 );
	setRotateKey( ATK_01 + 101 + OFFSET_X, 1, 2.9 );
	setRotateKey( ATK_01 + 102 + OFFSET_X, 1, 6.5 );
	setRotateKey( ATK_01 + 103 + OFFSET_X, 1, 6.5 );
	setRotateKey( ATK_01 + 104 + OFFSET_X, 1, 6.4 );
	setRotateKey( ATK_01 + 105 + OFFSET_X, 1, 6.4 );
	setRotateKey( ATK_01 + 106 + OFFSET_X, 1, 6.1 );
	setRotateKey( ATK_01 + 107 + OFFSET_X, 1, 6.1 );
	setRotateKey( ATK_01 + 108 + OFFSET_X, 1, 5.7 );
	setRotateKey( ATK_01 + 109 + OFFSET_X, 1, 5.7 );
	setRotateKey( ATK_01 + 110 + OFFSET_X, 1, 2.5 );
	setRotateKey( ATK_01 + 117 + OFFSET_X, 1, 2.5 );
	setRotateKey( ATK_01 + 118 + OFFSET_X, 1, 7.4 );
	setRotateKey( ATK_01 + 121 + OFFSET_X, 1, 7.4 );
	setRotateKey( ATK_01 + 122 + OFFSET_X, 1, -14.3 );
	setRotateKey( ATK_01 + 125 + OFFSET_X, 1, -14.3 );
	setRotateKey( ATK_01 + 126 + OFFSET_X, 1, 2.5 );
	setRotateKey( ATK_01 + 129 + OFFSET_X, 1, 2.5 );
	setRotateKey( ATK_01 + 130 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + ATK_end, 1, 0 );

else
	
	setDisp(ATK_01 + ATK_end -2 , 1, 0)

	changeAnime( ATK_01 + 0, 1, 118 );
	changeAnime( ATK_01 + 22 + OFFSET_X, 1, 18 );
	changeAnime( ATK_01 + 44 + OFFSET_X, 1, 17 );
	changeAnime( ATK_01 + 64 + OFFSET_X, 1, 12 );
	changeAnimeAndStop( ATK_01 + 68 + OFFSET_X, 1, 11 ,3)
	changeAnime( ATK_01 + 72 + OFFSET_X, 1, 13 );
	changeAnime( ATK_01 + 74 + OFFSET_X, 1, 4 );
	changeAnime( ATK_01 + 78 + OFFSET_X, 1, 10 );
	changeAnime( ATK_01 + 84 + OFFSET_X, 1, 4 );
	changeAnime( ATK_01 + 88 + OFFSET_X, 1, 14 );
	changeAnime( ATK_01 + 90 + OFFSET_X, 1, 13 );
	changeAnime( ATK_01 + 94 + OFFSET_X, 1, 9 );
	changeAnime( ATK_01 + 96 + OFFSET_X, 1, 117 );
	changeAnime( ATK_01 + 110 + OFFSET_X, 1, 12 );
	changeAnimeAndStop( ATK_01 + 114 + OFFSET_X, 1, 11 ,3)
	changeAnime( ATK_01 + 116 + OFFSET_X, 1, 13 );
	changeAnime( ATK_01 + 118 + OFFSET_X, 1, 4 );
	changeAnime( ATK_01 + 122 + OFFSET_X, 1, 10 );
	changeAnime( ATK_01 + 126 + OFFSET_X, 1, 4 );
	changeAnime( ATK_01 + 130 + OFFSET_X, 1, 107 );
	--changeAnime( ATK_01 + 130 + OFFSET_X, 1, 104 );
	
	setMoveKey( ATK_01 + 0, 1, 862.7, -41.5 , 0 );
	setMoveKey( ATK_01 + 2 + OFFSET_X, 1, 854.3, -41.1 , 0 );
	setMoveKey( ATK_01 + 3 + OFFSET_X, 1, 854.3, -41.1 , 0 );
	setMoveKey( ATK_01 + 4 + OFFSET_X, 1, 829.1, -39.8 , 0 );
	setMoveKey( ATK_01 + 5 + OFFSET_X, 1, 829.1, -39.8 , 0 );
	setMoveKey( ATK_01 + 6 + OFFSET_X, 1, 787, -37.6 , 0 );
	setMoveKey( ATK_01 + 7 + OFFSET_X, 1, 787, -37.6 , 0 );
	setMoveKey( ATK_01 + 8 + OFFSET_X, 1, 728.2, -34.5 , 0 );
	setMoveKey( ATK_01 + 9 + OFFSET_X, 1, 728.2, -34.5 , 0 );
	setMoveKey( ATK_01 + 10 + OFFSET_X, 1, 652.5, -30.5 , 0 );
	setMoveKey( ATK_01 + 11 + OFFSET_X, 1, 652.5, -30.5 , 0 );
	setMoveKey( ATK_01 + 12 + OFFSET_X, 1, 560, -25.6 , 0 );
	setMoveKey( ATK_01 + 13 + OFFSET_X, 1, 560, -25.6 , 0 );
	setMoveKey( ATK_01 + 14 + OFFSET_X, 1, 450.7, -19.9 , 0 );
	setMoveKey( ATK_01 + 15 + OFFSET_X, 1, 450.7, -19.9 , 0 );
	setMoveKey( ATK_01 + 16 + OFFSET_X, 1, 324.5, -13.3 , 0 );
	setMoveKey( ATK_01 + 17 + OFFSET_X, 1, 324.5, -13.3 , 0 );
	setMoveKey( ATK_01 + 18 + OFFSET_X, 1, 181.6, -5.8 , 0 );
	setMoveKey( ATK_01 + 19 + OFFSET_X, 1, 181.6, -5.8 , 0 );
	setMoveKey( ATK_01 + 20 + OFFSET_X, 1, 26, 2.3 , 0 );
	setMoveKey( ATK_01 + 21 + OFFSET_X, 1, 26, 2.3 , 0 );
	setMoveKey( ATK_01 + 22 + OFFSET_X, 1, -117, 9.8 , 0 );
	setMoveKey( ATK_01 + 23 + OFFSET_X, 1, -117, 9.8 , 0 );
	setMoveKey( ATK_01 + 24 + OFFSET_X, 1, -243.1, 16.4 , 0 );
	setMoveKey( ATK_01 + 25 + OFFSET_X, 1, -243.1, 16.4 , 0 );
	setMoveKey( ATK_01 + 26 + OFFSET_X, 1, -352.4, 22.1 , 0 );
	setMoveKey( ATK_01 + 27 + OFFSET_X, 1, -352.4, 22.1 , 0 );
	setMoveKey( ATK_01 + 28 + OFFSET_X, 1, -444.9, 27 , 0 );
	setMoveKey( ATK_01 + 29 + OFFSET_X, 1, -444.9, 27 , 0 );
	setMoveKey( ATK_01 + 30 + OFFSET_X, 1, -520.6, 30.9 , 0 );
	setMoveKey( ATK_01 + 31 + OFFSET_X, 1, -520.6, 30.9 , 0 );
	setMoveKey( ATK_01 + 32 + OFFSET_X, 1, -579.5, 34 , 0 );
	setMoveKey( ATK_01 + 33 + OFFSET_X, 1, -579.5, 34 , 0 );
	setMoveKey( ATK_01 + 34 + OFFSET_X, 1, -621.5, 36.2 , 0 );
	setMoveKey( ATK_01 + 35 + OFFSET_X, 1, -621.5, 36.2 , 0 );
	setMoveKey( ATK_01 + 36 + OFFSET_X, 1, -646.7, 37.5 , 0 );
	setMoveKey( ATK_01 + 37 + OFFSET_X, 1, -646.7, 37.5 , 0 );
	setMoveKey( ATK_01 + 38 + OFFSET_X, 1, -655.1, 38 , 0 );
	setMoveKey( ATK_01 + 41 + OFFSET_X, 1, -655.1, 38 , 0 );
	setMoveKey( ATK_01 + 42 + OFFSET_X, 1, -655.1, 37.9 , 0 );
	setMoveKey( ATK_01 + 43 + OFFSET_X, 1, -655.1, 37.9 , 0 );
	setMoveKey( ATK_01 + 44 + OFFSET_X, 1, -516.3, -91.8 , 0 );
	setMoveKey( ATK_01 + 45 + OFFSET_X, 1, -516.3, -91.8 , 0 );
	setMoveKey( ATK_01 + 46 + OFFSET_X, 1, -400.2, -79.6 , 0 );
	setMoveKey( ATK_01 + 47 + OFFSET_X, 1, -400.2, -79.6 , 0 );
	setMoveKey( ATK_01 + 48 + OFFSET_X, 1, -305.2, -69.6 , 0 );
	setMoveKey( ATK_01 + 49 + OFFSET_X, 1, -305.2, -69.6 , 0 );
	setMoveKey( ATK_01 + 50 + OFFSET_X, 1, -231.3, -61.9 , 0 );
	setMoveKey( ATK_01 + 51 + OFFSET_X, 1, -231.3, -61.9 , 0 );
	setMoveKey( ATK_01 + 52 + OFFSET_X, 1, -178.5, -56.3 , 0 );
	setMoveKey( ATK_01 + 53 + OFFSET_X, 1, -178.5, -56.3 , 0 );
	setMoveKey( ATK_01 + 54 + OFFSET_X, 1, -146.9, -53 , 0 );
	setMoveKey( ATK_01 + 55 + OFFSET_X, 1, -146.9, -53 , 0 );
	setMoveKey( ATK_01 + 56 + OFFSET_X, 1, -136.3, -51.9 , 0 );
	setMoveKey( ATK_01 + 59 + OFFSET_X, 1, -136.3, -51.9 , 0 );
	setMoveKey( ATK_01 + 60 + OFFSET_X, 1, -127.4, -43.9 , 0 );
	setMoveKey( ATK_01 + 61 + OFFSET_X, 1, -127.4, -43.9 , 0 );
	setMoveKey( ATK_01 + 62 + OFFSET_X, 1, -100.7, -19.9 , 0 );
	setMoveKey( ATK_01 + 63 + OFFSET_X, 1, -100.7, -19.9 , 0 );
	setMoveKey( ATK_01 + 64 + OFFSET_X, 1, -56.4, 0.1 , 0 );
	setMoveKey( ATK_01 + 67 + OFFSET_X, 1, -56.4, 0.1 , 0 );
	setMoveKey( ATK_01 + 68 + OFFSET_X, 1, -37.9, 4.1 , 0 );
	setMoveKey( ATK_01 + 71 + OFFSET_X, 1, -37.9, 4.1 , 0 );
	setMoveKey( ATK_01 + 72 + OFFSET_X, 1, -52.4, 2.1 , 0 );
	setMoveKey( ATK_01 + 73 + OFFSET_X, 1, -52.4, 2.1 , 0 );
	setMoveKey( ATK_01 + 74 + OFFSET_X, 1, -94.1, 20.4 , 0 );
	setMoveKey( ATK_01 + 77 + OFFSET_X, 1, -94.1, 20.4 , 0 );
	setMoveKey( ATK_01 + 78 + OFFSET_X, 1, -32.3, 4.5 , 0 );
	setMoveKey( ATK_01 + 83 + OFFSET_X, 1, -32.3, 4.5 , 0 );
	setMoveKey( ATK_01 + 84 + OFFSET_X, 1, -76.4, 16.1 , 0 );
	setMoveKey( ATK_01 + 87 + OFFSET_X, 1, -76.4, 16.1 , 0 );
	setMoveKey( ATK_01 + 88 + OFFSET_X, 1, -56.4, 0.1 , 0 );
	setMoveKey( ATK_01 + 90 + OFFSET_X, 1, -56.4, 0.1 , 0 );
	setMoveKey( ATK_01 + 93 + OFFSET_X, 1, -56.4, 0.1 , 0 );
	setMoveKey( ATK_01 + 94 + OFFSET_X, 1, -48.4, 6.1 , 0 );
	setMoveKey( ATK_01 + 95 + OFFSET_X, 1, -48.4, 6.1 , 0 );
	setMoveKey( ATK_01 + 96 + OFFSET_X, 1, 102.2, 2.6 , 0 );
	setMoveKey( ATK_01 + 97 + OFFSET_X, 1, 102.2, 2.6 , 0 );
	setMoveKey( ATK_01 + 98 + OFFSET_X, 1, 191.8, -27.7 , 0 );
	setMoveKey( ATK_01 + 99 + OFFSET_X, 1, 191.8, -27.7 , 0 );
	setMoveKey( ATK_01 + 100 + OFFSET_X, 1, 245.5, -45.8 , 0 );
	setMoveKey( ATK_01 + 101 + OFFSET_X, 1, 245.5, -45.8 , 0 );
	setMoveKey( ATK_01 + 102 + OFFSET_X, 1, 259.7, -68.9 , 0 );
	setMoveKey( ATK_01 + 103 + OFFSET_X, 1, 259.7, -68.9 , 0 );
	setMoveKey( ATK_01 + 104 + OFFSET_X, 1, 244.6, -64.1 , 0 );
	setMoveKey( ATK_01 + 105 + OFFSET_X, 1, 244.6, -64.1 , 0 );
	setMoveKey( ATK_01 + 106 + OFFSET_X, 1, 185.9, -46.6 , 0 );
	setMoveKey( ATK_01 + 107 + OFFSET_X, 1, 185.9, -46.6 , 0 );
	setMoveKey( ATK_01 + 108 + OFFSET_X, 1, 42.6, -8.1 , 0 );
	setMoveKey( ATK_01 + 109 + OFFSET_X, 1, 42.6, -8.1 , 0 );
	setMoveKey( ATK_01 + 110 + OFFSET_X, 1, -70.4, 2.3 , 0 );
	setMoveKey( ATK_01 + 113 + OFFSET_X, 1, -70.4, 2.3 , 0 );
	setMoveKey( ATK_01 + 114 + OFFSET_X, 1, -44.5, 6.7 , 0 );
	setMoveKey( ATK_01 + 115 + OFFSET_X, 1, -44.5, 6.7 , 0 );
	setMoveKey( ATK_01 + 116 + OFFSET_X, 1, -64.7, 4.8 , 0 );
	setMoveKey( ATK_01 + 117 + OFFSET_X, 1, -64.7, 4.8 , 0 );
	setMoveKey( ATK_01 + 118 + OFFSET_X, 1, -121.4, 32.6 , 0 );
	setMoveKey( ATK_01 + 121 + OFFSET_X, 1, -121.4, 32.6 , 0 );
	setMoveKey( ATK_01 + 122 + OFFSET_X, 1, -36.7, 7 , 0 );
	setMoveKey( ATK_01 + 125 + OFFSET_X, 1, -36.7, 7 , 0 );
	setMoveKey( ATK_01 + 126 + OFFSET_X, 1, -97.1, 25.6 , 0 );
	setMoveKey( ATK_01 + 129 + OFFSET_X, 1, -97.1, 25.6 , 0 );
	setMoveKey( ATK_01 + 130 + OFFSET_X, 1, 219.8, 133.5 , 0 );
	setMoveKey( ATK_01 + 131 + OFFSET_X, 1, 219.8, 133.5 , 0 );
	setMoveKey( ATK_01 + 132 + OFFSET_X, 1, 297, 181.9 , 0 );
	setMoveKey( ATK_01 + 133 + OFFSET_X, 1, 297, 181.9 , 0 );
	setMoveKey( ATK_01 + 134 + OFFSET_X, 1, 321.1, 197.1 , 0 );
	setMoveKey( ATK_01 + 135 + OFFSET_X, 1, 321.1, 197.1 , 0 );
	setMoveKey( ATK_01 + 136 + OFFSET_X, 1, 334.2, 205.3 , 0 );
	setMoveKey( ATK_01 + 137 + OFFSET_X, 1, 334.2, 205.3 , 0 );
	setMoveKey( ATK_01 + 138 + OFFSET_X, 1, 341.7, 210 , 0 );
	setMoveKey( ATK_01 + 139 + OFFSET_X, 1, 341.7, 210 , 0 );
	setMoveKey( ATK_01 + 140 + OFFSET_X, 1, 345.7, 212.5 , 0 );
	setMoveKey( ATK_01 + 141 + OFFSET_X, 1, 345.7, 212.5 , 0 );
	setMoveKey( ATK_01 + 142 + OFFSET_X, 1, 347.3, 213.5 , 0 );
	setMoveKey( ATK_01 + 143 + OFFSET_X, 1, 347.3, 213.5 , 0 );
	setMoveKey( ATK_01 + 144 + OFFSET_X, 1, 347.5, 213.6 , 0 );
	setMoveKey( ATK_01 + ATK_end - 3, 1, 347.5, 213.6 , 0 );
	setMoveKey( ATK_01 + ATK_end - 2, 1, 2000, 0 , 0 );
	
	setScaleKey( ATK_01 + 0, 1, 2.11, 2.11 );
	setScaleKey( ATK_01 + 2 + OFFSET_X, 1, 2.21, 2.21 );
	setScaleKey( ATK_01 + 3 + OFFSET_X, 1, 2.21, 2.21 );
	setScaleKey( ATK_01 + 4 + OFFSET_X, 1, 2.3, 2.3 );
	setScaleKey( ATK_01 + 5 + OFFSET_X, 1, 2.3, 2.3 );
	setScaleKey( ATK_01 + 6 + OFFSET_X, 1, 2.38, 2.38 );
	setScaleKey( ATK_01 + 7 + OFFSET_X, 1, 2.38, 2.38 );
	setScaleKey( ATK_01 + 8 + OFFSET_X, 1, 2.45, 2.45 );
	setScaleKey( ATK_01 + 9 + OFFSET_X, 1, 2.45, 2.45 );
	setScaleKey( ATK_01 + 10 + OFFSET_X, 1, 2.52, 2.52 );
	setScaleKey( ATK_01 + 11 + OFFSET_X, 1, 2.52, 2.52 );
	setScaleKey( ATK_01 + 12 + OFFSET_X, 1, 2.58, 2.58 );
	setScaleKey( ATK_01 + 13 + OFFSET_X, 1, 2.58, 2.58 );
	setScaleKey( ATK_01 + 14 + OFFSET_X, 1, 2.62, 2.62 );
	setScaleKey( ATK_01 + 15 + OFFSET_X, 1, 2.62, 2.62 );
	setScaleKey( ATK_01 + 16 + OFFSET_X, 1, 2.67, 2.67 );
	setScaleKey( ATK_01 + 17 + OFFSET_X, 1, 2.67, 2.67 );
	setScaleKey( ATK_01 + 18 + OFFSET_X, 1, 2.7, 2.7 );
	setScaleKey( ATK_01 + 19 + OFFSET_X, 1, 2.7, 2.7 );
	setScaleKey( ATK_01 + 20 + OFFSET_X, 1, 2.73, 2.73 );
	setScaleKey( ATK_01 + 21 + OFFSET_X, 1, 2.73, 2.73 );
	setScaleKey( ATK_01 + 22 + OFFSET_X, 1, 2.74, 2.74 );
	setScaleKey( ATK_01 + 23 + OFFSET_X, 1, 2.74, 2.74 );
	setScaleKey( ATK_01 + 24 + OFFSET_X, 1, 2.75, 2.75 );
	setScaleKey( ATK_01 + 25 + OFFSET_X, 1, 2.75, 2.75 );
	setScaleKey( ATK_01 + 26 + OFFSET_X, 1, 2.74, 2.74 );
	setScaleKey( ATK_01 + 27 + OFFSET_X, 1, 2.74, 2.74 );
	setScaleKey( ATK_01 + 28 + OFFSET_X, 1, 2.72, 2.72 );
	setScaleKey( ATK_01 + 29 + OFFSET_X, 1, 2.72, 2.72 );
	setScaleKey( ATK_01 + 30 + OFFSET_X, 1, 2.7, 2.7 );
	setScaleKey( ATK_01 + 31 + OFFSET_X, 1, 2.7, 2.7 );
	setScaleKey( ATK_01 + 32 + OFFSET_X, 1, 2.66, 2.66 );
	setScaleKey( ATK_01 + 33 + OFFSET_X, 1, 2.66, 2.66 );
	setScaleKey( ATK_01 + 34 + OFFSET_X, 1, 2.61, 2.61 );
	setScaleKey( ATK_01 + 35 + OFFSET_X, 1, 2.61, 2.61 );
	setScaleKey( ATK_01 + 36 + OFFSET_X, 1, 2.55, 2.55 );
	setScaleKey( ATK_01 + 37 + OFFSET_X, 1, 2.55, 2.55 );
	setScaleKey( ATK_01 + 38 + OFFSET_X, 1, 2.47, 2.47 );
	setScaleKey( ATK_01 + 39 + OFFSET_X, 1, 2.47, 2.47 );
	setScaleKey( ATK_01 + 40 + OFFSET_X, 1, 2.39, 2.39 );
	setScaleKey( ATK_01 + 41 + OFFSET_X, 1, 2.39, 2.39 );
	setScaleKey( ATK_01 + 42 + OFFSET_X, 1, 2.3, 2.3 );
	setScaleKey( ATK_01 + 43 + OFFSET_X, 1, 2.3, 2.3 );
	setScaleKey( ATK_01 + 44 + OFFSET_X, 1, 0.97, 0.97 );
	setScaleKey( ATK_01 + 45 + OFFSET_X, 1, 0.97, 0.97 );
	setScaleKey( ATK_01 + 46 + OFFSET_X, 1, 0.9, 0.9 );
	setScaleKey( ATK_01 + 47 + OFFSET_X, 1, 0.9, 0.9 );
	setScaleKey( ATK_01 + 48 + OFFSET_X, 1, 0.83, 0.83 );
	setScaleKey( ATK_01 + 49 + OFFSET_X, 1, 0.83, 0.83 );
	setScaleKey( ATK_01 + 50 + OFFSET_X, 1, 0.79, 0.79 );
	setScaleKey( ATK_01 + 51 + OFFSET_X, 1, 0.79, 0.79 );
	setScaleKey( ATK_01 + 52 + OFFSET_X, 1, 0.75, 0.75 );
	setScaleKey( ATK_01 + 53 + OFFSET_X, 1, 0.75, 0.75 );
	setScaleKey( ATK_01 + 54 + OFFSET_X, 1, 0.73, 0.73 );
	setScaleKey( ATK_01 + 55 + OFFSET_X, 1, 0.73, 0.73 );
	setScaleKey( ATK_01 + 56 + OFFSET_X, 1, 0.72, 0.72 );
	setScaleKey( ATK_01 + 59 + OFFSET_X, 1, 0.72, 0.72 );
	setScaleKey( ATK_01 + 60 + OFFSET_X, 1, 0.76, 0.76 );
	setScaleKey( ATK_01 + 61 + OFFSET_X, 1, 0.76, 0.76 );
	setScaleKey( ATK_01 + 62 + OFFSET_X, 1, 0.89, 0.89 );
	setScaleKey( ATK_01 + 63 + OFFSET_X, 1, 0.89, 0.89 );
	setScaleKey( ATK_01 + 64 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 67 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 68 + OFFSET_X, 1, 1.12, 1.12 );
	setScaleKey( ATK_01 + 71 + OFFSET_X, 1, 1.12, 1.12 );
	setScaleKey( ATK_01 + 72 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 74 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 76 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 78 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 82 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 84 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 86 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 88 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 90 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 92 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 94 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 95 + OFFSET_X, 1, 1.09, 1.09 );
	setScaleKey( ATK_01 + 96 + OFFSET_X, 1, 0.93, 0.93 );
	setScaleKey( ATK_01 + 97 + OFFSET_X, 1, 0.93, 0.93 );
	setScaleKey( ATK_01 + 98 + OFFSET_X, 1, 0.78, 0.78 );
	setScaleKey( ATK_01 + 99 + OFFSET_X, 1, 0.78, 0.78 );
	setScaleKey( ATK_01 + 100 + OFFSET_X, 1, 0.69, 0.69 );
	setScaleKey( ATK_01 + 101 + OFFSET_X, 1, 0.69, 0.69 );
	setScaleKey( ATK_01 + 102 + OFFSET_X, 1, 0.66, 0.66 );
	setScaleKey( ATK_01 + 103 + OFFSET_X, 1, 0.66, 0.66 );
	setScaleKey( ATK_01 + 104 + OFFSET_X, 1, 0.74, 0.74 );
	setScaleKey( ATK_01 + 105 + OFFSET_X, 1, 0.74, 0.74 );
	setScaleKey( ATK_01 + 106 + OFFSET_X, 1, 0.99, 0.99 );
	setScaleKey( ATK_01 + 107 + OFFSET_X, 1, 0.99, 0.99 );
	setScaleKey( ATK_01 + 108 + OFFSET_X, 1, 1.48, 1.48 );
	setScaleKey( ATK_01 + 109 + OFFSET_X, 1, 1.48, 1.48 );
	setScaleKey( ATK_01 + 110 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 113 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 114 + OFFSET_X, 1, 1.56, 1.56 );
	setScaleKey( ATK_01 + 115 + OFFSET_X, 1, 1.56, 1.56 );
	setScaleKey( ATK_01 + 116 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 118 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 120 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 122 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 126 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 129 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 130 + OFFSET_X, 1, 0.74, 0.74 );
	setScaleKey( ATK_01 + 131 + OFFSET_X, 1, 0.74, 0.74 );
	setScaleKey( ATK_01 + 132 + OFFSET_X, 1, 1.21, 1.21 );
	setScaleKey( ATK_01 + 133 + OFFSET_X, 1, 1.21, 1.21 );
	setScaleKey( ATK_01 + 134 + OFFSET_X, 1, 1.36, 1.36 );
	setScaleKey( ATK_01 + 135 + OFFSET_X, 1, 1.36, 1.36 );
	setScaleKey( ATK_01 + 136 + OFFSET_X, 1, 1.44, 1.44 );
	setScaleKey( ATK_01 + 137 + OFFSET_X, 1, 1.44, 1.44 );
	setScaleKey( ATK_01 + 138 + OFFSET_X, 1, 1.48, 1.48 );
	setScaleKey( ATK_01 + 139 + OFFSET_X, 1, 1.48, 1.48 );
	setScaleKey( ATK_01 + 140 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 141 + OFFSET_X, 1, 1.51, 1.51 );
	setScaleKey( ATK_01 + 142 + OFFSET_X, 1, 1.52, 1.52 );
	setScaleKey( ATK_01 + ATK_end, 1, 1.52, 1.52 );

	setRotateKey( ATK_01 + 0, 1, 3 );
	setRotateKey( ATK_01 + 2 + OFFSET_X, 1, 3 );
	setRotateKey( ATK_01 + 3 + OFFSET_X, 1, 3 );
	setRotateKey( ATK_01 + 4 + OFFSET_X, 1, 3 );
	setRotateKey( ATK_01 + 5 + OFFSET_X, 1, 3 );
	setRotateKey( ATK_01 + 6 + OFFSET_X, 1, 3 );
	setRotateKey( ATK_01 + 7 + OFFSET_X, 1, 3 );
	setRotateKey( ATK_01 + 43 + OFFSET_X, 1, 3 );
	setRotateKey( ATK_01 + 44 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 73 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 74 + OFFSET_X, 1, 5 );
	setRotateKey( ATK_01 + 77 + OFFSET_X, 1, 5 );
	setRotateKey( ATK_01 + 78 + OFFSET_X, 1, -16.8 );
	setRotateKey( ATK_01 + 83 + OFFSET_X, 1, -16.8 );
	setRotateKey( ATK_01 + 84 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 93 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 94 + OFFSET_X, 1, 13.5 );
	setRotateKey( ATK_01 + 95 + OFFSET_X, 1, 13.5 );
	setRotateKey( ATK_01 + 96 + OFFSET_X, 1, 2 );
	setRotateKey( ATK_01 + 97 + OFFSET_X, 1, 2 );
	setRotateKey( ATK_01 + 98 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 99 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 100 + OFFSET_X, 1, 2.9 );
	setRotateKey( ATK_01 + 101 + OFFSET_X, 1, 2.9 );
	setRotateKey( ATK_01 + 102 + OFFSET_X, 1, 6.5 );
	setRotateKey( ATK_01 + 103 + OFFSET_X, 1, 6.5 );
	setRotateKey( ATK_01 + 104 + OFFSET_X, 1, 6.4 );
	setRotateKey( ATK_01 + 105 + OFFSET_X, 1, 6.4 );
	setRotateKey( ATK_01 + 106 + OFFSET_X, 1, 6.1 );
	setRotateKey( ATK_01 + 107 + OFFSET_X, 1, 6.1 );
	setRotateKey( ATK_01 + 108 + OFFSET_X, 1, 5.7 );
	setRotateKey( ATK_01 + 109 + OFFSET_X, 1, 5.7 );
	setRotateKey( ATK_01 + 110 + OFFSET_X, 1, 2.5 );
	setRotateKey( ATK_01 + 117 + OFFSET_X, 1, 2.5 );
	setRotateKey( ATK_01 + 118 + OFFSET_X, 1, 7.4 );
	setRotateKey( ATK_01 + 121 + OFFSET_X, 1, 7.4 );
	setRotateKey( ATK_01 + 122 + OFFSET_X, 1, -14.3 );
	setRotateKey( ATK_01 + 125 + OFFSET_X, 1, -14.3 );
	setRotateKey( ATK_01 + 126 + OFFSET_X, 1, 2.5 );
	setRotateKey( ATK_01 + 129 + OFFSET_X, 1, 2.5 );
	setRotateKey( ATK_01 + 130 + OFFSET_X, 1, -23.5 );
	setRotateKey( ATK_01 + ATK_end, 1, -23.5 );

end

-- ** 音 ** --
--回転する
SE001 = playSeVer2( ATK_01 + 0, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( ATK_01 + 0, SE001, 43 );
SE002 = playSeVer2( ATK_01 + 0, 63, "",ATK_01 + 70, 0, 14, 0.6);
setSeVolumeByWorkId( ATK_01 + 0, SE002, 71 );

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
--殴り合う
SE003 = playSeVer2( ATK_01 + 46, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 46, SE003, 158 );
SE004 = playSeVer2( ATK_01 + 52, 1425, "",ATK_01 + 94, 0, 10, -1);
SE005 = playSeVer2( ATK_01 + 54, 1000, "", 0, 0, 0, -1);
SE006 = playSeVer2( ATK_01 + 68, 1000, "", 0, 0, 0, -1);
SE007 = playSeVer2( ATK_01 + 82, 1110, "",ATK_01 + 124, 0, 28, -1);

--殴り合う２
SE008 = playSeVer2( ATK_01 + 92, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 92, SE008, 136 );
SE009 = playSeVer2( ATK_01 + 98, 1425, "",ATK_01 + 134, 0, 12, -1);
SE010 = playSeVer2( ATK_01 + 102, 1000, "", 0, 0, 0, -1);
SE011 = playSeVer2( ATK_01 + 110, 1000, "", 0, 0, 0, -1);
SE012 = playSeVer2( ATK_01 + 120, 1110, "",ATK_01 + 162, 0, 28, -1);
setSeVolumeByWorkId( ATK_01 + 120, SE012, 92 );
SE013 = playSeVer2( ATK_01 + 116, 1153, "", 0, 0, 0, 0.75);
setSeVolumeByWorkId( ATK_01 + 116, SE013, 40 );

--------------------------------死亡

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_01 + 130;	

        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
else

dealDamage(  ATK_D+4);
endPhase(  ATK_end);
end


print ("[lua]exec b0009");