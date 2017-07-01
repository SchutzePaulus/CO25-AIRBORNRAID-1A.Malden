//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"Отряд специального назначения ВС Мексики проводит рейд на базу наркокартеля. <br /> "
END

TOPIC("А. Враждебные силы:")
"До 2 взводов НВФ картеля "
END

TOPIC("Б. Дружественные силы:")
"X1 Взвод Fuerzas Especiales del Alto Mando"
END

TOPIC("II. Задание:")
"1. Взять штурмом лагерь картеля <br />"
END

TOPIC("III. Выполнение:")
"По плану командира."
END

TOPIC("IV. Поддержка:")
"2X HUMMV <br />2X Tatra T810"
END

TOPIC("V. Сигналы:")
"PL NET 50<br />1'1 - SR CH 1<br />1'2 - SR CH 2<br />1'3 - SR CH 3"
END

TOPIC("VI. Замечания:")
"Powered by Tactical Shift Framework"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"-Миссия сделана на коленке "
END
};

ADD_TOPICS