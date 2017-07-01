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
"После прихода к власти военной диктатуры под руководством Порфирио Диаса борьба с наркотрафиком перешла на новый уровень. Армия и силы специальных операций регулярно проводят облавы и рейды в районах где власть наркобаронов была крепка. 
<br />Отряду быстрого реагирования Fuerzas Especiales del Alto Mando поручено захватить укрепрайон одного из картелей и вывезти от туда ""Тайфун"" с грузом. "
END

TOPIC("А. Враждебные силы:")
"До 2 взводов незаконных вооруженных формирований картеля вооруженных легким стрелковым оружием. "
END

TOPIC("Б. Дружественные силы:")
"x1 Взвод Fuerzas Especiales del Alto Mando силы быстрого реагирования. "
END

TOPIC("II. Задание:")
"1. Взять штурмом УР картеля.
<br />2. Вывезти ""Тайфун"" на базу.
<br />"
END

TOPIC("III. Выполнение:")
"По плану командира."
END

TOPIC("IV. Поддержка:")
"2x Tatra T810
<br />2x M1123 Humvee (без оружия) "
END

TOPIC("V. Сигналы:")
"PL NET 50
<br />1'1 - SR CH 1
<br />1'2 - SR CH 2"
END

TOPIC("VI. Замечания:")
"Powered by Tactical Shift Framework"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"-Миссия сделана на коленке. "
END
};

ADD_TOPICS