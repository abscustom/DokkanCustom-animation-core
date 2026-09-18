print ("[lua]exec ak0001");

ATK_01 = 0;
ATK_D = 206;
ATK_end = ATK_01+272;

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, ATK_D, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, ATK_D, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_D+0, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

MAX_FRAME_0=250

-- ** エフェクト等 ** --
if (_IS_PLAYER_SIDE_ == 1) then
    effect_front = entryEffect( ATK_01 + 0, 131, 0x100, -1, 0, 0, 0);  --味方側 ef_201

else
    effect_front = entryEffect( ATK_01 + 0, 134, 0x100, -1, 0, 0, 0);  --敵側 ef_201r

end

setEffMoveKey( ATK_01 + 0, effect_front, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_front, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_front, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_front, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_front, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_front, 0);
setEffAlphaKey( ATK_01 + 0, effect_front, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_front, 255);

effect_back2 = entryEffect( ATK_01 + 0,132, 0x80, -1, 0, 0, 0); --ef_203
setEffMoveKey( ATK_01 + 0, effect_back2, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_back2, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_back2, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_back2, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_back2, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_back2, 0);
setEffAlphaKey( ATK_01 + 0, effect_back2, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_back2, 255);

kidan01 = entryEffectLife( ATK_01 + 74-8, 139, 14, 0x40, 0, 100, 0, 0);  --ef304
setEffAlphaKey(ATK_01 + 74-8, kidan01, 0);
setEffAlphaKey(ATK_01 + 74-2, kidan01, 0);
setEffAlphaKey(ATK_01 + 74-1, kidan01, 255);

kidan02 = entryEffectLife( ATK_01 + 84-8, 140, 14, 0x40, 0, 100, 0, 0);  --ef305
setEffAlphaKey(ATK_01 + 84-8, kidan02, 0);
setEffAlphaKey(ATK_01 + 84-2, kidan02, 0);
setEffAlphaKey(ATK_01 + 84-1, kidan02, 255);

kidan03 = entryEffectLife( ATK_01 + 104-8, 139, 14, 0x40, 0, 100, 0, 0);  --ef304
setEffAlphaKey(ATK_01 + 104-8, kidan03, 0);
setEffAlphaKey(ATK_01 + 104-2, kidan03, 0);
setEffAlphaKey(ATK_01 + 104-1, kidan03, 255);

kidan04 = entryEffectLife( ATK_01 + 114-8, 140, 14, 0x40, 0, 100, 0, 0);  --ef305
setEffAlphaKey(ATK_01 + 114-8, kidan04, 0);
setEffAlphaKey(ATK_01 + 114-2, kidan04, 0);
setEffAlphaKey(ATK_01 + 114-1, kidan04, 255);

kidan05 = entryEffectLife( ATK_01 + 122-8, 140, 14, 0x40, 0, 100, 0, 0);  --ef305
setEffAlphaKey(ATK_01 + 122-8, kidan05, 0);
setEffAlphaKey(ATK_01 + 122-2, kidan05, 0);
setEffAlphaKey(ATK_01 + 122-1, kidan05, 255);

--背景速度操作
if (_IS_PLAYER_SIDE_ == 1) then
	startBgScroll(ATK_01+0,-60,1);
	startBgScroll(ATK_01+164,-100,1);
	stopBgScroll(ATK_01+196,40);

else
	startBgScroll(ATK_01+0,-60,1);
	startBgScroll(ATK_01+164,-100,1);
	stopBgScroll(ATK_01+196,40);

end

--敵と味方のどちらが手前に来るか
setDrawFront( ATK_01+0, 0, 1);

--画面振動
setShakeXY(ATK_01 + 194 + OFFSET_X,8, 30, 30);
setShakeXY(ATK_01 + 202 + OFFSET_X,8, 20, 20);
setShakeXY(ATK_01 + 210 + OFFSET_X,8, 10, 10);

-----------------------------------------------------
--味方の動き
-----------------------------------------------------
setDisp( ATK_01 + 152 + OFFSET_X, 0, 0);

changeAnime( ATK_01 + 0, 0, 3 );
changeAnimeAndStop( ATK_01 + 68 + OFFSET_X, 0, 19 ,1);
changeAnimeAndStop( ATK_01 + 74 + OFFSET_X, 0, 19 ,4);
changeAnimeAndStop( ATK_01 + 80 + OFFSET_X, 0, 19 ,1);
changeAnimeAndStop( ATK_01 + 84 + OFFSET_X, 0, 19 ,10);
changeAnimeAndStop( ATK_01 + 100 + OFFSET_X, 0, 19 ,1);
changeAnimeAndStop( ATK_01 + 104 + OFFSET_X, 0, 19 ,4);
changeAnimeAndStop( ATK_01 + 110 + OFFSET_X, 0, 19 ,1);
changeAnimeAndStop( ATK_01 + 114 + OFFSET_X, 0, 19 ,10);

setMoveKey( ATK_01 + 0, 0, -1162, 0 , 0 );
setMoveKey( ATK_01 + 2 + OFFSET_X, 0, -974.2, 1.2 , 0 );
setMoveKey( ATK_01 + 3 + OFFSET_X, 0, -974.2, 1.2 , 0 );
setMoveKey( ATK_01 + 4 + OFFSET_X, 0, -804.8, 2.4 , 0 );
setMoveKey( ATK_01 + 5 + OFFSET_X, 0, -804.8, 2.4 , 0 );
setMoveKey( ATK_01 + 6 + OFFSET_X, 0, -652.6, 3.6 , 0 );
setMoveKey( ATK_01 + 7 + OFFSET_X, 0, -652.6, 3.6 , 0 );
setMoveKey( ATK_01 + 8 + OFFSET_X, 0, -516.5, 4.7 , 0 );
setMoveKey( ATK_01 + 9 + OFFSET_X, 0, -516.5, 4.7 , 0 );
setMoveKey( ATK_01 + 10 + OFFSET_X, 0, -395.3, 5.8 , 0 );
setMoveKey( ATK_01 + 11 + OFFSET_X, 0, -395.3, 5.8 , 0 );
setMoveKey( ATK_01 + 12 + OFFSET_X, 0, -288, 6.8 , 0 );
setMoveKey( ATK_01 + 13 + OFFSET_X, 0, -288, 6.8 , 0 );
setMoveKey( ATK_01 + 14 + OFFSET_X, 0, -193.6, 7.8 , 0 );
setMoveKey( ATK_01 + 15 + OFFSET_X, 0, -193.6, 7.8 , 0 );
setMoveKey( ATK_01 + 16 + OFFSET_X, 0, -111.1, 8.8 , 0 );
setMoveKey( ATK_01 + 17 + OFFSET_X, 0, -111.1, 8.8 , 0 );
setMoveKey( ATK_01 + 18 + OFFSET_X, 0, -39.6, 9.7 , 0 );
setMoveKey( ATK_01 + 19 + OFFSET_X, 0, -39.6, 9.7 , 0 );
setMoveKey( ATK_01 + 20 + OFFSET_X, 0, 21.7, 10.6 , 0 );
setMoveKey( ATK_01 + 21 + OFFSET_X, 0, 21.7, 10.6 , 0 );
setMoveKey( ATK_01 + 22 + OFFSET_X, 0, 73.8, 11.4 , 0 );
setMoveKey( ATK_01 + 23 + OFFSET_X, 0, 73.8, 11.4 , 0 );
setMoveKey( ATK_01 + 24 + OFFSET_X, 0, 117.3, 12.2 , 0 );
setMoveKey( ATK_01 + 25 + OFFSET_X, 0, 117.3, 12.2 , 0 );
setMoveKey( ATK_01 + 26 + OFFSET_X, 0, 152.9, 13 , 0 );
setMoveKey( ATK_01 + 27 + OFFSET_X, 0, 152.9, 13 , 0 );
setMoveKey( ATK_01 + 28 + OFFSET_X, 0, 181.4, 13.7 , 0 );
setMoveKey( ATK_01 + 29 + OFFSET_X, 0, 181.4, 13.7 , 0 );
setMoveKey( ATK_01 + 30 + OFFSET_X, 0, 203.4, 14.4 , 0 );
setMoveKey( ATK_01 + 31 + OFFSET_X, 0, 203.4, 14.4 , 0 );
setMoveKey( ATK_01 + 32 + OFFSET_X, 0, 219.3, 15 , 0 );
setMoveKey( ATK_01 + 33 + OFFSET_X, 0, 219.3, 15 , 0 );
setMoveKey( ATK_01 + 34 + OFFSET_X, 0, 229.8, 15.6 , 0 );
setMoveKey( ATK_01 + 35 + OFFSET_X, 0, 229.8, 15.6 , 0 );
setMoveKey( ATK_01 + 36 + OFFSET_X, 0, 235.2, 16.2 , 0 );
setMoveKey( ATK_01 + 37 + OFFSET_X, 0, 235.2, 16.2 , 0 );
setMoveKey( ATK_01 + 38 + OFFSET_X, 0, 236.1, 16.7 , 0 );
setMoveKey( ATK_01 + 39 + OFFSET_X, 0, 236.1, 16.7 , 0 );
setMoveKey( ATK_01 + 40 + OFFSET_X, 0, 232.8, 17.2 , 0 );
setMoveKey( ATK_01 + 41 + OFFSET_X, 0, 232.8, 17.2 , 0 );
setMoveKey( ATK_01 + 42 + OFFSET_X, 0, 222.4, 17.6 , 0 );
setMoveKey( ATK_01 + 43 + OFFSET_X, 0, 222.4, 17.6 , 0 );
setMoveKey( ATK_01 + 44 + OFFSET_X, 0, 205.5, 18 , 0 );
setMoveKey( ATK_01 + 45 + OFFSET_X, 0, 205.5, 18 , 0 );
setMoveKey( ATK_01 + 46 + OFFSET_X, 0, 182.3, 18.4 , 0 );
setMoveKey( ATK_01 + 47 + OFFSET_X, 0, 182.3, 18.4 , 0 );
setMoveKey( ATK_01 + 48 + OFFSET_X, 0, 153.2, 18.7 , 0 );
setMoveKey( ATK_01 + 49 + OFFSET_X, 0, 153.2, 18.7 , 0 );
setMoveKey( ATK_01 + 50 + OFFSET_X, 0, 118.9, 19.1 , 0 );
setMoveKey( ATK_01 + 51 + OFFSET_X, 0, 118.9, 19.1 , 0 );
setMoveKey( ATK_01 + 52 + OFFSET_X, 0, 80.7, 19.3 , 0 );
setMoveKey( ATK_01 + 53 + OFFSET_X, 0, 80.7, 19.3 , 0 );
setMoveKey( ATK_01 + 54 + OFFSET_X, 0, 40.6, 19.6 , 0 );
setMoveKey( ATK_01 + 55 + OFFSET_X, 0, 40.6, 19.6 , 0 );
setMoveKey( ATK_01 + 56 + OFFSET_X, 0, 1.5, 19.8 , 0 );
setMoveKey( ATK_01 + 57 + OFFSET_X, 0, 1.5, 19.8 , 0 );
setMoveKey( ATK_01 + 58 + OFFSET_X, 0, -33.5, 19.9 , 0 );
setMoveKey( ATK_01 + 59 + OFFSET_X, 0, -33.5, 19.9 , 0 );
setMoveKey( ATK_01 + 60 + OFFSET_X, 0, -61.2, 20 , 0 );
setMoveKey( ATK_01 + 61 + OFFSET_X, 0, -61.2, 20 , 0 );
setMoveKey( ATK_01 + 62 + OFFSET_X, 0, -78.8, 20.1 , 0 );
setMoveKey( ATK_01 + 63 + OFFSET_X, 0, -78.8, 20.1 , 0 );
setMoveKey( ATK_01 + 64 + OFFSET_X, 0, -85, 20 , 0 );
setMoveKey( ATK_01 + 65 + OFFSET_X, 0, -85, 20 , 0 );
setMoveKey( ATK_01 + 66 + OFFSET_X, 0, -81.1, 19.9 , 0 );
setMoveKey( ATK_01 + 67 + OFFSET_X, 0, -81.1, 19.9 , 0 );
setMoveKey( ATK_01 + 68 + OFFSET_X, 0, -71.7, 33 , 0 );
setMoveKey( ATK_01 + 69 + OFFSET_X, 0, -71.7, 33 , 0 );
setMoveKey( ATK_01 + 70 + OFFSET_X, 0, -55.3, 33 , 0 );
setMoveKey( ATK_01 + 71 + OFFSET_X, 0, -55.3, 33 , 0 );
setMoveKey( ATK_01 + 72 + OFFSET_X, 0, -36.2, 32.9 , 0 );
setMoveKey( ATK_01 + 73 + OFFSET_X, 0, -36.2, 32.9 , 0 );
setMoveKey( ATK_01 + 74 + OFFSET_X, 0, -16.4, 33.2 , 0 );
setMoveKey( ATK_01 + 75 + OFFSET_X, 0, -16.4, 33.2 , 0 );
setMoveKey( ATK_01 + 76 + OFFSET_X, 0, 2.1, 33 , 0 );
setMoveKey( ATK_01 + 77 + OFFSET_X, 0, 2.1, 33 , 0 );
setMoveKey( ATK_01 + 78 + OFFSET_X, 0, 19.2, 32.9 , 0 );
setMoveKey( ATK_01 + 79 + OFFSET_X, 0, 19.2, 32.9 , 0 );
setMoveKey( ATK_01 + 80 + OFFSET_X, 0, 34.2, 32.2 , 0 );
setMoveKey( ATK_01 + 81 + OFFSET_X, 0, 34.2, 32.2 , 0 );
setMoveKey( ATK_01 + 82 + OFFSET_X, 0, 47.9, 32 , 0 );
setMoveKey( ATK_01 + 83 + OFFSET_X, 0, 47.9, 32 , 0 );
setMoveKey( ATK_01 + 84 + OFFSET_X, 0, 62.2, 33.8 , 0 );
setMoveKey( ATK_01 + 85 + OFFSET_X, 0, 62.2, 33.8 , 0 );
setMoveKey( ATK_01 + 86 + OFFSET_X, 0, 73, 33.5 , 0 );
setMoveKey( ATK_01 + 87 + OFFSET_X, 0, 73, 33.5 , 0 );
setMoveKey( ATK_01 + 88 + OFFSET_X, 0, 82.7, 33.2 , 0 );
setMoveKey( ATK_01 + 89 + OFFSET_X, 0, 82.7, 33.2 , 0 );
setMoveKey( ATK_01 + 90 + OFFSET_X, 0, 91.2, 32.8 , 0 );
setMoveKey( ATK_01 + 91 + OFFSET_X, 0, 91.2, 32.8 , 0 );
setMoveKey( ATK_01 + 92 + OFFSET_X, 0, 98.8, 32.4 , 0 );
setMoveKey( ATK_01 + 93 + OFFSET_X, 0, 98.8, 32.4 , 0 );
setMoveKey( ATK_01 + 94 + OFFSET_X, 0, 105.4, 31.9 , 0 );
setMoveKey( ATK_01 + 95 + OFFSET_X, 0, 105.4, 31.9 , 0 );
setMoveKey( ATK_01 + 96 + OFFSET_X, 0, 111.2, 31.4 , 0 );
setMoveKey( ATK_01 + 97 + OFFSET_X, 0, 111.2, 31.4 , 0 );
setMoveKey( ATK_01 + 98 + OFFSET_X, 0, 116.4, 31 , 0 );
setMoveKey( ATK_01 + 99 + OFFSET_X, 0, 116.4, 31 , 0 );
setMoveKey( ATK_01 + 100 + OFFSET_X, 0, 118.4, 27.6 , 0 );
setMoveKey( ATK_01 + 101 + OFFSET_X, 0, 118.4, 27.6 , 0 );
setMoveKey( ATK_01 + 102 + OFFSET_X, 0, 122.8, 26.8 , 0 );
setMoveKey( ATK_01 + 103 + OFFSET_X, 0, 122.8, 26.8 , 0 );
setMoveKey( ATK_01 + 104 + OFFSET_X, 0, 126.7, 26.6 , 0 );
setMoveKey( ATK_01 + 105 + OFFSET_X, 0, 126.7, 26.6 , 0 );
setMoveKey( ATK_01 + 106 + OFFSET_X, 0, 127.9, 25.6 , 0 );
setMoveKey( ATK_01 + 107 + OFFSET_X, 0, 127.9, 25.6 , 0 );
setMoveKey( ATK_01 + 108 + OFFSET_X, 0, 125.9, 24.6 , 0 );
setMoveKey( ATK_01 + 109 + OFFSET_X, 0, 125.9, 24.6 , 0 );
setMoveKey( ATK_01 + 110 + OFFSET_X, 0, 118.6, 22.7 , 0 );
setMoveKey( ATK_01 + 111 + OFFSET_X, 0, 118.6, 22.7 , 0 );
setMoveKey( ATK_01 + 112 + OFFSET_X, 0, 105.4, 21.4 , 0 );
setMoveKey( ATK_01 + 113 + OFFSET_X, 0, 105.4, 21.4 , 0 );
setMoveKey( ATK_01 + 114 + OFFSET_X, 0, 87.2, 23.9 , 0 );
setMoveKey( ATK_01 + 115 + OFFSET_X, 0, 87.2, 23.9 , 0 );
setMoveKey( ATK_01 + 116 + OFFSET_X, 0, 54.5, 22.7 , 0 );
setMoveKey( ATK_01 + 117 + OFFSET_X, 0, 54.5, 22.7 , 0 );
setMoveKey( ATK_01 + 118 + OFFSET_X, 0, 7.8, 21.4 , 0 );
setMoveKey( ATK_01 + 119 + OFFSET_X, 0, 7.8, 21.4 , 0 );
setMoveKey( ATK_01 + 120 + OFFSET_X, 0, -55.7, 20.1 , 0 );
setMoveKey( ATK_01 + 121 + OFFSET_X, 0, -55.7, 20.1 , 0 );
setMoveKey( ATK_01 + 122 + OFFSET_X, 0, -139, 18.8 , 0 );
setMoveKey( ATK_01 + 123 + OFFSET_X, 0, -139, 18.8 , 0 );
setMoveKey( ATK_01 + 124 + OFFSET_X, 0, -245.3, 17.4 , 0 );
setMoveKey( ATK_01 + 125 + OFFSET_X, 0, -245.3, 17.4 , 0 );
setMoveKey( ATK_01 + 126 + OFFSET_X, 0, -359.6, 16.2 , 0 );
setMoveKey( ATK_01 + 127 + OFFSET_X, 0, -359.6, 16.2 , 0 );
setMoveKey( ATK_01 + 128 + OFFSET_X, 0, -464.4, 15.1 , 0 );
setMoveKey( ATK_01 + 129 + OFFSET_X, 0, -464.4, 15.1 , 0 );
setMoveKey( ATK_01 + 130 + OFFSET_X, 0, -558.1, 14 , 0 );
setMoveKey( ATK_01 + 131 + OFFSET_X, 0, -558.1, 14 , 0 );
setMoveKey( ATK_01 + 132 + OFFSET_X, 0, -639.7, 13.2 , 0 );
setMoveKey( ATK_01 + 133 + OFFSET_X, 0, -639.7, 13.2 , 0 );
setMoveKey( ATK_01 + 134 + OFFSET_X, 0, -708.8, 12.4 , 0 );
setMoveKey( ATK_01 + 135 + OFFSET_X, 0, -708.8, 12.4 , 0 );
setMoveKey( ATK_01 + 136 + OFFSET_X, 0, -765.6, 11.8 , 0 );
setMoveKey( ATK_01 + 137 + OFFSET_X, 0, -765.6, 11.8 , 0 );
setMoveKey( ATK_01 + 138 + OFFSET_X, 0, -810.4, 11.2 , 0 );
setMoveKey( ATK_01 + 139 + OFFSET_X, 0, -810.4, 11.2 , 0 );
setMoveKey( ATK_01 + 140 + OFFSET_X, 0, -844.5, 10.8 , 0 );
setMoveKey( ATK_01 + 141 + OFFSET_X, 0, -844.5, 10.8 , 0 );
setMoveKey( ATK_01 + 142 + OFFSET_X, 0, -869, 10.4 , 0 );
setMoveKey( ATK_01 + 143 + OFFSET_X, 0, -869, 10.4 , 0 );
setMoveKey( ATK_01 + 144 + OFFSET_X, 0, -885.3, 10.2 , 0 );
setMoveKey( ATK_01 + 145 + OFFSET_X, 0, -885.3, 10.2 , 0 );
setMoveKey( ATK_01 + 146 + OFFSET_X, 0, -895.2, 10 , 0 );
setMoveKey( ATK_01 + 147 + OFFSET_X, 0, -895.2, 10 , 0 );
setMoveKey( ATK_01 + 148 + OFFSET_X, 0, -900.2, 9.9 , 0 );
setMoveKey( ATK_01 + 149 + OFFSET_X, 0, -900.2, 9.9 , 0 );
setMoveKey( ATK_01 + 150 + OFFSET_X, 0, -902.1, 9.7 , 0 );
setMoveKey( ATK_01 + 152 + OFFSET_X, 0, -902.1, 9.7 , 0 );

setScaleKey( ATK_01 + 0, 0, 1.6, 1.6 );
setScaleKey( ATK_01 + 2 + OFFSET_X, 0, 1.55, 1.55 );
setScaleKey( ATK_01 + 3 + OFFSET_X, 0, 1.55, 1.55 );
setScaleKey( ATK_01 + 4 + OFFSET_X, 0, 1.5, 1.5 );
setScaleKey( ATK_01 + 5 + OFFSET_X, 0, 1.5, 1.5 );
setScaleKey( ATK_01 + 6 + OFFSET_X, 0, 1.45, 1.45 );
setScaleKey( ATK_01 + 7 + OFFSET_X, 0, 1.45, 1.45 );
setScaleKey( ATK_01 + 8 + OFFSET_X, 0, 1.4, 1.4 );
setScaleKey( ATK_01 + 9 + OFFSET_X, 0, 1.4, 1.4 );
setScaleKey( ATK_01 + 10 + OFFSET_X, 0, 1.36, 1.36 );
setScaleKey( ATK_01 + 11 + OFFSET_X, 0, 1.36, 1.36 );
setScaleKey( ATK_01 + 12 + OFFSET_X, 0, 1.31, 1.31 );
setScaleKey( ATK_01 + 13 + OFFSET_X, 0, 1.31, 1.31 );
setScaleKey( ATK_01 + 14 + OFFSET_X, 0, 1.27, 1.27 );
setScaleKey( ATK_01 + 15 + OFFSET_X, 0, 1.27, 1.27 );
setScaleKey( ATK_01 + 16 + OFFSET_X, 0, 1.23, 1.23 );
setScaleKey( ATK_01 + 17 + OFFSET_X, 0, 1.23, 1.23 );
setScaleKey( ATK_01 + 18 + OFFSET_X, 0, 1.19, 1.19 );
setScaleKey( ATK_01 + 19 + OFFSET_X, 0, 1.19, 1.19 );
setScaleKey( ATK_01 + 20 + OFFSET_X, 0, 1.15, 1.15 );
setScaleKey( ATK_01 + 21 + OFFSET_X, 0, 1.15, 1.15 );
setScaleKey( ATK_01 + 22 + OFFSET_X, 0, 1.12, 1.12 );
setScaleKey( ATK_01 + 23 + OFFSET_X, 0, 1.12, 1.12 );
setScaleKey( ATK_01 + 24 + OFFSET_X, 0, 1.08, 1.08 );
setScaleKey( ATK_01 + 25 + OFFSET_X, 0, 1.08, 1.08 );
setScaleKey( ATK_01 + 26 + OFFSET_X, 0, 1.05, 1.05 );
setScaleKey( ATK_01 + 27 + OFFSET_X, 0, 1.05, 1.05 );
setScaleKey( ATK_01 + 28 + OFFSET_X, 0, 1.02, 1.02 );
setScaleKey( ATK_01 + 29 + OFFSET_X, 0, 1.02, 1.02 );
setScaleKey( ATK_01 + 30 + OFFSET_X, 0, 0.99, 0.99 );
setScaleKey( ATK_01 + 31 + OFFSET_X, 0, 0.99, 0.99 );
setScaleKey( ATK_01 + 32 + OFFSET_X, 0, 0.96, 0.96 );
setScaleKey( ATK_01 + 33 + OFFSET_X, 0, 0.96, 0.96 );
setScaleKey( ATK_01 + 34 + OFFSET_X, 0, 0.94, 0.94 );
setScaleKey( ATK_01 + 35 + OFFSET_X, 0, 0.94, 0.94 );
setScaleKey( ATK_01 + 36 + OFFSET_X, 0, 0.91, 0.91 );
setScaleKey( ATK_01 + 37 + OFFSET_X, 0, 0.91, 0.91 );
setScaleKey( ATK_01 + 38 + OFFSET_X, 0, 0.89, 0.89 );
setScaleKey( ATK_01 + 39 + OFFSET_X, 0, 0.89, 0.89 );
setScaleKey( ATK_01 + 40 + OFFSET_X, 0, 0.87, 0.87 );
setScaleKey( ATK_01 + 41 + OFFSET_X, 0, 0.87, 0.87 );
setScaleKey( ATK_01 + 42 + OFFSET_X, 0, 0.85, 0.85 );
setScaleKey( ATK_01 + 43 + OFFSET_X, 0, 0.85, 0.85 );
setScaleKey( ATK_01 + 44 + OFFSET_X, 0, 0.83, 0.83 );
setScaleKey( ATK_01 + 45 + OFFSET_X, 0, 0.83, 0.83 );
setScaleKey( ATK_01 + 46 + OFFSET_X, 0, 0.82, 0.82 );
setScaleKey( ATK_01 + 47 + OFFSET_X, 0, 0.82, 0.82 );
setScaleKey( ATK_01 + 48 + OFFSET_X, 0, 0.81, 0.81 );
setScaleKey( ATK_01 + 49 + OFFSET_X, 0, 0.81, 0.81 );
setScaleKey( ATK_01 + 50 + OFFSET_X, 0, 0.79, 0.79 );
setScaleKey( ATK_01 + 51 + OFFSET_X, 0, 0.79, 0.79 );
setScaleKey( ATK_01 + 52 + OFFSET_X, 0, 0.78, 0.78 );
setScaleKey( ATK_01 + 53 + OFFSET_X, 0, 0.78, 0.78 );
setScaleKey( ATK_01 + 54 + OFFSET_X, 0, 0.77, 0.77 );
setScaleKey( ATK_01 + 57 + OFFSET_X, 0, 0.77, 0.77 );
setScaleKey( ATK_01 + 58 + OFFSET_X, 0, 0.76, 0.76 );
setScaleKey( ATK_01 + 61 + OFFSET_X, 0, 0.76, 0.76 );
setScaleKey( ATK_01 + 62 + OFFSET_X, 0, 0.75, 0.75 );
setScaleKey( ATK_01 + 69 + OFFSET_X, 0, 0.75, 0.75 );
setScaleKey( ATK_01 + 70 + OFFSET_X, 0, 0.76, 0.76 );
setScaleKey( ATK_01 + 73 + OFFSET_X, 0, 0.76, 0.76 );
setScaleKey( ATK_01 + 74 + OFFSET_X, 0, 0.77, 0.77 );
setScaleKey( ATK_01 + 75 + OFFSET_X, 0, 0.77, 0.77 );
setScaleKey( ATK_01 + 76 + OFFSET_X, 0, 0.78, 0.78 );
setScaleKey( ATK_01 + 77 + OFFSET_X, 0, 0.78, 0.78 );
setScaleKey( ATK_01 + 78 + OFFSET_X, 0, 0.79, 0.79 );
setScaleKey( ATK_01 + 79 + OFFSET_X, 0, 0.79, 0.79 );
setScaleKey( ATK_01 + 80 + OFFSET_X, 0, 0.8, 0.8 );
setScaleKey( ATK_01 + 81 + OFFSET_X, 0, 0.8, 0.8 );
setScaleKey( ATK_01 + 82 + OFFSET_X, 0, 0.81, 0.81 );
setScaleKey( ATK_01 + 83 + OFFSET_X, 0, 0.81, 0.81 );
setScaleKey( ATK_01 + 84 + OFFSET_X, 0, 0.83, 0.83 );
setScaleKey( ATK_01 + 85 + OFFSET_X, 0, 0.83, 0.83 );
setScaleKey( ATK_01 + 86 + OFFSET_X, 0, 0.85, 0.85 );
setScaleKey( ATK_01 + 87 + OFFSET_X, 0, 0.85, 0.85 );
setScaleKey( ATK_01 + 88 + OFFSET_X, 0, 0.87, 0.87 );
setScaleKey( ATK_01 + 89 + OFFSET_X, 0, 0.87, 0.87 );
setScaleKey( ATK_01 + 90 + OFFSET_X, 0, 0.9, 0.9 );
setScaleKey( ATK_01 + 91 + OFFSET_X, 0, 0.9, 0.9 );
setScaleKey( ATK_01 + 92 + OFFSET_X, 0, 0.92, 0.92 );
setScaleKey( ATK_01 + 93 + OFFSET_X, 0, 0.92, 0.92 );
setScaleKey( ATK_01 + 94 + OFFSET_X, 0, 0.96, 0.96 );
setScaleKey( ATK_01 + 95 + OFFSET_X, 0, 0.96, 0.96 );
setScaleKey( ATK_01 + 96 + OFFSET_X, 0, 0.99, 0.99 );
setScaleKey( ATK_01 + 97 + OFFSET_X, 0, 0.99, 0.99 );
setScaleKey( ATK_01 + 98 + OFFSET_X, 0, 1.03, 1.03 );
setScaleKey( ATK_01 + 99 + OFFSET_X, 0, 1.03, 1.03 );
setScaleKey( ATK_01 + 100 + OFFSET_X, 0, 1.07, 1.07 );
setScaleKey( ATK_01 + 101 + OFFSET_X, 0, 1.07, 1.07 );
setScaleKey( ATK_01 + 102 + OFFSET_X, 0, 1.12, 1.12 );
setScaleKey( ATK_01 + 103 + OFFSET_X, 0, 1.12, 1.12 );
setScaleKey( ATK_01 + 104 + OFFSET_X, 0, 1.17, 1.17 );
setScaleKey( ATK_01 + 105 + OFFSET_X, 0, 1.17, 1.17 );
setScaleKey( ATK_01 + 106 + OFFSET_X, 0, 1.23, 1.23 );
setScaleKey( ATK_01 + 107 + OFFSET_X, 0, 1.23, 1.23 );
setScaleKey( ATK_01 + 108 + OFFSET_X, 0, 1.29, 1.29 );
setScaleKey( ATK_01 + 109 + OFFSET_X, 0, 1.29, 1.29 );
setScaleKey( ATK_01 + 110 + OFFSET_X, 0, 1.36, 1.36 );
setScaleKey( ATK_01 + 111 + OFFSET_X, 0, 1.36, 1.36 );
setScaleKey( ATK_01 + 112 + OFFSET_X, 0, 1.43, 1.43 );
setScaleKey( ATK_01 + 113 + OFFSET_X, 0, 1.43, 1.43 );
setScaleKey( ATK_01 + 114 + OFFSET_X, 0, 1.51, 1.51 );
setScaleKey( ATK_01 + 115 + OFFSET_X, 0, 1.51, 1.51 );
setScaleKey( ATK_01 + 116 + OFFSET_X, 0, 1.6, 1.6 );
setScaleKey( ATK_01 + 117 + OFFSET_X, 0, 1.6, 1.6 );
setScaleKey( ATK_01 + 118 + OFFSET_X, 0, 1.69, 1.69 );
setScaleKey( ATK_01 + 119 + OFFSET_X, 0, 1.69, 1.69 );
setScaleKey( ATK_01 + 120 + OFFSET_X, 0, 1.78, 1.78 );
setScaleKey( ATK_01 + 121 + OFFSET_X, 0, 1.78, 1.78 );
setScaleKey( ATK_01 + 122 + OFFSET_X, 0, 1.87, 1.87 );
setScaleKey( ATK_01 + 123 + OFFSET_X, 0, 1.87, 1.87 );
setScaleKey( ATK_01 + 124 + OFFSET_X, 0, 1.96, 1.96 );
setScaleKey( ATK_01 + 125 + OFFSET_X, 0, 1.96, 1.96 );
setScaleKey( ATK_01 + 126 + OFFSET_X, 0, 2.04, 2.04 );
setScaleKey( ATK_01 + 127 + OFFSET_X, 0, 2.04, 2.04 );
setScaleKey( ATK_01 + 128 + OFFSET_X, 0, 2.12, 2.12 );
setScaleKey( ATK_01 + 129 + OFFSET_X, 0, 2.12, 2.12 );
setScaleKey( ATK_01 + 130 + OFFSET_X, 0, 2.19, 2.19 );
setScaleKey( ATK_01 + 131 + OFFSET_X, 0, 2.19, 2.19 );
setScaleKey( ATK_01 + 132 + OFFSET_X, 0, 2.25, 2.25 );
setScaleKey( ATK_01 + 133 + OFFSET_X, 0, 2.25, 2.25 );
setScaleKey( ATK_01 + 134 + OFFSET_X, 0, 2.3, 2.3 );
setScaleKey( ATK_01 + 135 + OFFSET_X, 0, 2.3, 2.3 );
setScaleKey( ATK_01 + 136 + OFFSET_X, 0, 2.34, 2.34 );
setScaleKey( ATK_01 + 137 + OFFSET_X, 0, 2.34, 2.34 );
setScaleKey( ATK_01 + 138 + OFFSET_X, 0, 2.38, 2.38 );
setScaleKey( ATK_01 + 139 + OFFSET_X, 0, 2.38, 2.38 );
setScaleKey( ATK_01 + 140 + OFFSET_X, 0, 2.41, 2.41 );
setScaleKey( ATK_01 + 141 + OFFSET_X, 0, 2.41, 2.41 );
setScaleKey( ATK_01 + 142 + OFFSET_X, 0, 2.44, 2.44 );
setScaleKey( ATK_01 + 143 + OFFSET_X, 0, 2.44, 2.44 );
setScaleKey( ATK_01 + 144 + OFFSET_X, 0, 2.45, 2.45 );
setScaleKey( ATK_01 + 145 + OFFSET_X, 0, 2.45, 2.45 );
setScaleKey( ATK_01 + 146 + OFFSET_X, 0, 2.47, 2.47 );
setScaleKey( ATK_01 + 147 + OFFSET_X, 0, 2.47, 2.47 );
setScaleKey( ATK_01 + 148 + OFFSET_X, 0, 2.48, 2.48 );
setScaleKey( ATK_01 + 152 + OFFSET_X, 0, 2.48, 2.48 );

setRotateKey( ATK_01 + 0, 0, 0 );
setRotateKey( ATK_01 + 2 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 3 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 4 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 5 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 6 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 7 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 152 + OFFSET_X, 0, 0 );

setDisp( ATK_01 + ATK_end - 2, 0, 0);
setMoveKey( ATK_01 + ATK_end - 2, 0, 2000, 0.0 , 0 );

-----------------------------------------------------
--敵の動き
-----------------------------------------------------

if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then

	setDisp( ATK_01 + 0, 1, 0);
	setDisp( ATK_01 + 164 + OFFSET_X, 1, 1);
	setDisp( ATK_01 + ATK_end - 2, 1, 0);

	changeAnime( ATK_01 + 164 + OFFSET_X, 1, 101);
	changeAnime( ATK_01 + 194 + OFFSET_X, 1, 104 );
	changeAnime( ATK_01 + 220 + OFFSET_X, 1, 101 );
	
	setMoveKey( ATK_01 + 164 + OFFSET_X, 1, 125.9, 0.6 , 0 );
	setMoveKey( ATK_01 + 193 + OFFSET_X, 1, 125.9, 0.6 , 0 );
	setMoveKey( ATK_01 + 194 + OFFSET_X, 1, 130.5, 9.9 , 0 );
	setMoveKey( ATK_01 + 195 + OFFSET_X, 1, 130.5, 9.9 , 0 );
	setMoveKey( ATK_01 + 196 + OFFSET_X, 1, 137.2, 9.9 , 0 );
	setMoveKey( ATK_01 + 197 + OFFSET_X, 1, 137.2, 9.9 , 0 );
	setMoveKey( ATK_01 + 198 + OFFSET_X, 1, 139.4, 9.9 , 0 );
	setMoveKey( ATK_01 + 207 + OFFSET_X, 1, 139.4, 9.9 , 0 );
	setMoveKey( ATK_01 + 208 + OFFSET_X, 1, 150.5, 9.9 , 0 );
	setMoveKey( ATK_01 + 209 + OFFSET_X, 1, 150.5, 9.9 , 0 );
	setMoveKey( ATK_01 + 210 + OFFSET_X, 1, 157.2, 9.9 , 0 );
	setMoveKey( ATK_01 + 211 + OFFSET_X, 1, 157.2, 9.9 , 0 );
	setMoveKey( ATK_01 + 212 + OFFSET_X, 1, 159.4, 9.9 , 0 );
	setMoveKey( ATK_01 + 219 + OFFSET_X, 1, 159.4, 9.9 , 0 );
	setMoveKey( ATK_01 + 220 + OFFSET_X, 1, 165.5, 0.4 , 0 );
	setMoveKey( ATK_01 + ATK_end - 3, 1, 165.5, 0.4 , 0 );
	setMoveKey( ATK_01 + ATK_end - 2, 1, 2000, 0.0 , 0 );
	
	setScaleKey( ATK_01 + 164 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + ATK_end -2, 1, 1.25, 1.25 );

	setRotateKey( ATK_01 + 164 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + ATK_end -2, 1, 0 );

else
	setDisp( ATK_01 + 0, 1, 0);
	setDisp( ATK_01 + 164 + OFFSET_X, 1, 1);
	setDisp( ATK_01 + ATK_end -2, 1, 0);

	changeAnime( ATK_01 + 164 + OFFSET_X, 1, 101);
	changeAnime( ATK_01 + 194 + OFFSET_X, 1, 104 );
	changeAnime( ATK_01 + 220 + OFFSET_X, 1, 101 );
	
	setMoveKey( ATK_01 + 164 + OFFSET_X, 1, 125.9, 0.6 , 0 );
	setMoveKey( ATK_01 + 193 + OFFSET_X, 1, 125.9, 0.6 , 0 );
	setMoveKey( ATK_01 + 194 + OFFSET_X, 1, 130.5, 9.9 , 0 );
	setMoveKey( ATK_01 + 195 + OFFSET_X, 1, 130.5, 9.9 , 0 );
	setMoveKey( ATK_01 + 196 + OFFSET_X, 1, 137.2, 9.9 , 0 );
	setMoveKey( ATK_01 + 197 + OFFSET_X, 1, 137.2, 9.9 , 0 );
	setMoveKey( ATK_01 + 198 + OFFSET_X, 1, 139.4, 9.9 , 0 );
	setMoveKey( ATK_01 + 207 + OFFSET_X, 1, 139.4, 9.9 , 0 );
	setMoveKey( ATK_01 + 208 + OFFSET_X, 1, 150.5, 9.9 , 0 );
	setMoveKey( ATK_01 + 209 + OFFSET_X, 1, 150.5, 9.9 , 0 );
	setMoveKey( ATK_01 + 210 + OFFSET_X, 1, 157.2, 9.9 , 0 );
	setMoveKey( ATK_01 + 211 + OFFSET_X, 1, 157.2, 9.9 , 0 );
	setMoveKey( ATK_01 + 212 + OFFSET_X, 1, 159.4, 9.9 , 0 );
	setMoveKey( ATK_01 + 219 + OFFSET_X, 1, 159.4, 9.9 , 0 );
	setMoveKey( ATK_01 + ATK_end - 3, 1, 165.5, 0.4 , 0 );
	setMoveKey( ATK_01 + ATK_end - 2, 1, 2000, 0.0 , 0 );
	
	setScaleKey( ATK_01 + 164 + OFFSET_X, 1, 1.25, 1.25 );
	setScaleKey( ATK_01 + ATK_end -2, 1, 1.25, 1.25 );

	setRotateKey( ATK_01 + 164 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + ATK_end -2, 1, 0 );

end

-- ** 音 ** --
--向かっていく
SE001 = playSeVer2( ATK_01 + 0, 1117, "", 0, 0, 0, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

	SP_dodge = 14; --エンドフェイズのフレーム数を置き換える
	
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
--向かっていく
SE002 = playSeVer2( ATK_01 + 4, 1019, "", 0, 0, 0, -1);

--連続気弾
SE003 = playSeVer2( ATK_01 + 62, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 62, SE003, 76 );
SE004 = playSeVer2( ATK_01 + 66, 1016, "", 0, 0, 0, -1);

--向かっていく
SE005 = playSeVer2( ATK_01 + 68, 1019, "", 0, 0, 0, -1);

--連続気弾
SE006 = playSeVer2( ATK_01 + 76, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 76, SE006, 71 );
SE007 = playSeVer2( ATK_01 + 80, 1016, "", 0, 0, 0, -1);
SE008 = playSeVer2( ATK_01 + 94, 1155, "", 0, 0, 0, -1);
SE009 = playSeVer2( ATK_01 + 100, 1016, "", 0, 0, 0, -1);
SE010 = playSeVer2( ATK_01 + 108, 1155, "", 0, 0, 0, -1);
SE011 = playSeVer2( ATK_01 + 114, 1016, "", 0, 0, 0, -1);

--向かっていく
SE012 = playSeVer2( ATK_01 + 132, 1019, "",ATK_01 + 194, 0, 24, -1);

--気弾飛んでいく
SE013 = playSeVer2( ATK_01 + 154, 1021, "", 0, 0, 0, -1);
SE014 = playSeVer2( ATK_01 + 160, 1016, "", 0, 0, 0, -1);
SE015 = playSeVer2( ATK_01 + 160, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 160, SE015, 68 );
SE016 = playSeVer2( ATK_01 + 172, 1016, "", 0, 0, 0, -1);

--気弾ヒット
SE017 = playSeVer2( ATK_01 + 186, 1011, "", 0, 0, 0, -1);

--------------------------------死亡

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_01 + 190;	

        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
else

dealDamage(  ATK_D+4);
endPhase(  ATK_end);
end

print ("[lua]exec ak0001");