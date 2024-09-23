-- Patients
BEGIN
    INSERT INTO Patients
        (FirstName, LastName, DateOfBirth, Gender, ContactInfo, Address, EmergencyContact, InsuranceID)
    VALUES
        ('Ryan', 'Thompson', '2005-8-13', NULL, '759-382-4219', '36009 Anderson Street, Richardside, WA 58918', '892-411-5781', NULL),
        ('Jose', 'Adams', '2001-8-28', 'other', '408-016-0975x3513', 'PSC 8486, Box 976', '332-871-1587x1484', NULL),
        ('Raymond', 'Rodriguez', '2009-4-26', 'male', '894-719-6593x4232', 'PSC 8486, Box 9762, APO AP 55440', '471-122-0186x8483', NULL),
        ('Samantha', 'Gonzalez', '1993-10-9', 'female', '751.591.7953', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '4135256012', NULL),
        ('Jennifer', 'Baker', '2021-9-20', 'female', '0139916151', 'PSC 8486, Box 9762, APO AP 55440', '032-173-0086x9141', NULL),
        ('Elizabeth', 'Perez', '1978-6-14', 'female', '(087)091-6345', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '923.022.5841', NULL),
        ('Peter', 'Wright', '1992-10-28', NULL, '456-428-0715x0842', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '594.599.2466', NULL),
        ('James', 'Nelson', '1964-12-11', 'male', '(337)696-0696', '09021 Cruz Orchard, West Crystalberg, UT 51886', '2714278789', NULL),
        ('Robert', 'Lopez', '1981-5-27', 'male', '063.812.0665', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '(008)913-1934', NULL),
        ('Douglas', 'Wright', '1990-11-3', 'other', '4714285124', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '0034855909', NULL),
        ('Catherine', 'Mitchell', '1995-6-28', NULL, '236-940-2245x5515', '09021 Cruz Orchard, West Crystalberg, UT 51886', '004-229-4568x2417', NULL),
        ('Linda', 'Robinson', '1962-9-24', 'female', '4654611877', '09021 Cruz Orchard, West Crystalberg, UT 51886', '171-760-4522', NULL),
        ('Walter', 'Davis', '1965-12-8', NULL, '6016884779', 'PSC 8486, Box 9762, APO AP 55440', '(615)349-2635', NULL),
        ('William', 'Phillips', '1943-9-15', 'male', '(176)430-3921', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '658.219.7296', NULL),
        ('Amy', 'Lopez', '2003-11-22', NULL, '(893)055-5082', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '926-947-1180', NULL),
        ('Donald', 'Moore', '1945-5-1', 'male', '522.758.6880', '36009 Anderson Street, Richardside, WA 58918', '8916348967', NULL),
        ('Jerry', 'Johnson', '1940-12-6', NULL, '894-517-4466', '36009 Anderson Street, Richardside, WA 58918', '022.345.0076', NULL),
        ('Amy', 'Nelson', '1950-11-23', 'female', '(560)976-7017', '09021 Cruz Orchard, West Crystalberg, UT 51886', '(009)925-1853', NULL),
        ('Roger', 'Jones', '2018-12-15', NULL, '519-426-4183x0675', '09021 Cruz Orchard, West Crystalberg, UT 51886', '(751)007-4089', NULL),
        ('Sandra', 'Davis', '2020-9-23', 'female', '684-126-9611x6116', '09021 Cruz Orchard, West Crystalberg, UT 51886', '(076)607-5415', NULL),
        ('Charles', 'Lewis', '1943-6-12', 'male', '(035)192-3031', '127 Parks Courts, Bakerville, MI 67226', '4509322717', NULL),
        ('Henry', 'Johnson', '1966-6-11', 'other', '448.529.1189', '127 Parks Courts, Bakerville, MI 67226', '(622)358-3324', NULL),
        ('Timothy', 'Moore', '2016-1-13', 'other', '1264862964', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '137-580-6606', NULL),
        ('Dorothy', 'Martinez', '2000-2-6', 'other', '4189276266', '239 Mariah Ports, Robertsview, MO 90238', '(758)257-1734', NULL),
        ('Douglas', 'Hernandez', '2019-8-1', 'male', '(414)892-6717', '09021 Cruz Orchard, West Crystalberg, UT 51886', '(864)014-0046', NULL),
        ('Susan', 'Lewis', '1976-11-7', NULL, '101-448-5183x2164', '127 Parks Courts, Bakerville, MI 67226', '298-381-6864x4759', NULL),
        ('Nancy', 'Wilson', '1955-7-13', 'female', '728-457-6377x8570', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '270-930-5760', NULL),
        ('Harold', 'Davis', '1990-1-12', 'male', '1904432943', '09021 Cruz Orchard, West Crystalberg, UT 51886', '756.256.6272', NULL),
        ('Joseph', 'Hernandez', '1984-7-14', 'other', '633.739.0603', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '2502394918', NULL),
        ('Helen', 'King', '1946-11-23', 'other', '869-774-7354x0002', '36009 Anderson Street, Richardside, WA 58918', '4021639683', NULL),
        ('Paul', 'Nelson', '1950-6-11', NULL, '754-080-3513x8533', 'PSC 8486, Box 9762, APO AP 55440', '486-475-3048', NULL),
        ('James', 'King', '2003-12-15', 'male', '6777111312', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '(791)686-0237', NULL),
        ('Sarah', 'Garcia', '1985-6-14', 'female', '8498347897', '09021 Cruz Orchard, West Crystalberg, UT 51886', '430-191-2633', NULL),
        ('Arthur', 'Evans', '2008-9-14', 'other', '1641953843', '127 Parks Courts, Bakerville, MI 67226', '(184)535-7492', NULL),
        ('Mary', 'Adams', '2004-6-12', 'female', '026-228-1237x9332', '239 Mariah Ports, Robertsview, MO 90238', '(659)927-1908', NULL),
        ('Cynthia', 'Smith', '1968-9-21', 'other', '(778)514-2963', '239 Mariah Ports, Robertsview, MO 90238', '460-305-3573', NULL),
        ('Kevin', 'Robinson', '1942-6-19', 'other', '025-070-0300x3510', '36009 Anderson Street, Richardside, WA 58918', '237.625.4256', NULL),
        ('Laura', 'Green', '2008-12-22', NULL, '091.662.0829', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '215-323-0282x1691', NULL),
        ('Henry', 'Thompson', '1983-12-24', NULL, '007.154.2738', '36009 Anderson Street, Richardside, WA 58918', '(654)760-4848', NULL),
        ('Anna', 'Turner', '1944-8-13', NULL, '6570040494', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '(885)643-1953', NULL),
        ('Karen', 'Evans', '1941-10-27', 'other', '9255445769', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '(029)072-5074', NULL),
        ('Elizabeth', 'Adams', '1994-5-27', 'female', '(821)291-8896', '09021 Cruz Orchard, West Crystalberg, UT 51886', '444.064.4888', NULL),
        ('Betty', 'Taylor', '1940-9-5', 'other', '657-086-9305x8235', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '039.342.6197', NULL),
        ('Rachel', 'Campbell', '1997-9-26', 'female', '3271664465', '239 Mariah Ports, Robertsview, MO 90238', '140-704-3666', NULL),
        ('Jennifer', 'Lewis', '2012-3-19', NULL, '506-782-0195', '36009 Anderson Street, Richardside, WA 58918', '1318705056', NULL),
        ('Heather', 'Mitchell', '1975-7-22', 'female', '(926)480-2227', 'PSC 8486, Box 9762, APO AP 55440', '8086259118', NULL),
        ('Kimberly', 'Jackson', '1973-6-23', 'female', '487-278-2092', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '051-379-3782x5278', NULL),
        ('Andrew', 'Davis', '2006-6-1', 'male', '1695975685', '239 Mariah Ports, Robertsview, MO 90238', '2502205930', NULL),
        ('Linda', 'Walker', '1946-10-25', NULL, '(516)075-9944', '36009 Anderson Street, Richardside, WA 58918', '620.743.6151', NULL),
        ('John', 'Lewis', '1942-3-13', 'male', '057-877-1086x4081', '239 Mariah Ports, Robertsview, MO 90238', '5517028400', NULL),
        ('Anthony', 'Anderson', '1962-3-21', NULL, '(950)760-3345', '239 Mariah Ports, Robertsview, MO 90238', '(532)675-9269', NULL),
        ('Christopher', 'Gonzalez', '1940-11-13', 'male', '(200)580-0019', '239 Mariah Ports, Robertsview, MO 90238', '(260)669-5325', NULL),
        ('Anna', 'Hall', '1949-3-14', 'female', '516-637-6363x7691', '239 Mariah Ports, Robertsview, MO 90238', '485-809-9734', NULL),
        ('Dennis', 'Clark', '1990-11-4', 'male', '026-066-6179x7225', 'PSC 8486, Box 9762, APO AP 55440', '294.815.5257', NULL),
        ('Paul', 'Thompson', '1962-12-19', 'male', '460-486-0646', '127 Parks Courts, Bakerville, MI 67226', '(522)195-2069', NULL),
        ('Jeffrey', 'Young', '2009-12-18', NULL, '(223)230-8275', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '451-642-5858x2684', NULL),
        ('Deborah', 'Lewis', '1989-8-17', 'female', '661-220-9981', 'PSC 8486, Box 9762, APO AP 55440', '(998)149-2610', NULL),
        ('Charles', 'Lee', '2001-6-4', 'male', '594.732.8818', 'PSC 8486, Box 976', '(028)693-7640', NULL),
        ('Deborah', 'Anderson', '1996-10-2', 'female', '196.538.7079', '09021 Cruz Orchard, West Crystalberg, UT 51886', '878-674-2385', NULL),
        ('Michelle', 'Nelson', '1958-8-3', 'female', '7696814731', '127 Parks Courts, Bakerville, MI 67226', '(512)029-8300', NULL),
        ('Debra', 'Campbell', '1953-8-18', NULL, '510-337-4430', 'PSC 8486, Box 9762, APO AP 55440', '851-149-6356', NULL),
        ('Sandra', 'Martinez', '1965-12-25', 'female', '546.921.6587', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '564-564-1741', NULL),
        ('Thomas', 'Evans', '1963-6-16', NULL, '(166)787-9936', '127 Parks Courts, Bakerville, MI 67226', '735-801-7563', NULL),
        ('Michael', 'Allen', '1951-5-7', NULL, '212-503-0068', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '(199)317-3089', NULL),
        ('William', 'Harris', '1969-7-13', NULL, '063.609.4095', 'PSC 8486, Box 9762, APO AP 55440', '572-981-4114', NULL),
        ('Douglas', 'Taylor', '2019-11-5', 'male', '395.368.8181', 'PSC 8486, Box 9762, APO AP 55440', '187.727.8526', NULL),
        ('Barbara', 'Harris', '1998-4-12', 'other', '607.086.7363', 'PSC 8486, Box 9762, APO AP 55440', '723.745.7928', NULL),
        ('Paul', 'Robinson', '2006-11-22', 'male', '0250592763', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '326.058.3528', NULL),
        ('Virginia', 'Roberts', '2013-4-20', NULL, '037.958.3000', '36009 Anderson Street, Richardside, WA 58918', '(793)186-4573', NULL),
        ('Melissa', 'Adams', '1985-12-15', 'female', '757.123.1267', 'PSC 8486, Box 9762, APO AP 55440', '350-063-1699x6830', NULL),
        ('Angela', 'Perez', '2002-5-13', 'female', '811-970-3695x4103', '239 Mariah Ports, Robertsview, MO 90238', '9852741974', NULL),
        ('Deborah', 'Walker', '2004-6-8', 'female', '410-259-9718x7656', '127 Parks Courts, Bakerville, MI 67226', '1692201630', NULL),
        ('Kenneth', 'Lewis', '1977-6-20', 'other', '(880)588-0270', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '525-198-6149', NULL),
        ('Stephen', 'Brown', '2015-3-16', 'male', '8351832363', '239 Mariah Ports, Robertsview, MO 90238', '524.583.3752', NULL),
        ('Raymond', 'Davis', '1981-5-28', 'other', '019-041-2438', '09021 Cruz Orchard, West Crystalberg, UT 51886', '716-886-1197', NULL),
        ('Daniel', 'Mitchell', '1995-11-23', 'other', '000-415-5840', '36009 Anderson Street, Richardside, WA 58918', '(824)906-6493', NULL),
        ('Anna', 'Hernandez', '1955-7-12', 'other', '(803)760-3141', '239 Mariah Ports, Robertsview, MO 90238', '(270)586-1837', NULL),
        ('Stephanie', 'Wright', '1947-3-23', 'other', '533-234-2284x8023', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '238.292.3840', NULL),
        ('Linda', 'Anderson', '1988-9-13', NULL, '(688)712-1801', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '(674)656-4129', NULL),
        ('Rachel', 'White', '1945-1-17', 'female', '7372984092', '36009 Anderson Street, Richardside, WA 58918', '548-420-7396', NULL),
        ('Michelle', 'Moore', '2000-5-26', 'other', '596-696-8493', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '348.282.9888', NULL),
        ('Kimberly', 'Robinson', '1998-11-17', NULL, '3471039140', '239 Mariah Ports, Robertsview, MO 90238', '(292)594-0009', NULL),
        ('Michelle', 'Martin', '1990-8-24', 'female', '519-610-2098', 'PSC 8486, Box 9762, APO AP 55440', '363-522-7299', NULL),
        ('Joshua', 'Smith', '1946-7-20', NULL, '2816459305', '36009 Anderson Street, Richardside, WA 58918', '477-954-1721', NULL),
        ('Janet', 'Nelson', '1997-7-22', 'other', '(962)191-2741', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '441.588.1009', NULL),
        ('Roger', 'Moore', '1955-7-13', 'male', '052.169.3036', 'PSC 8486, Box 976', '0962846680', NULL),
        ('Andrew', 'Perez', '1966-10-6', NULL, '9744436008', '09021 Cruz Orchard, West Crystalberg, UT 51886', '0422821505', NULL),
        ('Amanda', 'Gonzalez', '1948-2-12', 'female', '(475)778-8115', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '687.868.1326', NULL),
        ('Thomas', 'Taylor', '1944-7-21', 'other', '118-494-5769x5978', '36009 Anderson Street, Richardside, WA 58918', '(806)558-0391', NULL),
        ('Melissa', 'Carter', '1971-9-1', NULL, '810-950-5254x7760', '36009 Anderson Street, Richardside, WA 58918', '(752)078-2649', NULL),
        ('Patricia', 'Carter', '2016-11-6', NULL, '759-569-2866x3564', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '(438)957-3959', NULL),
        ('Emily', 'Martin', '1958-5-18', 'female', '(891)773-2959', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '8734648356', NULL),
        ('Carl', 'Jackson', '1965-10-27', 'other', '(871)484-7656', 'PSC 8486, Box 9762, APO AP 55440', '0524987486', NULL),
        ('Jason', 'Parker', '1950-11-3', NULL, '098-591-9300x1419', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '299.834.4229', NULL),
        ('Sarah', 'Moore', '1969-5-16', 'female', '294-312-6239', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '872-419-4930', NULL),
        ('Dorothy', 'Evans', '2013-11-1', 'female', '227.808.5327', '09021 Cruz Orchard, West Crystalberg, UT 51886', '343.157.4589', NULL),
        ('Carol', 'Brown', '1962-7-4', 'other', '182-726-4832x1475', '239 Mariah Ports, Robertsview, MO 90238', '056-682-8920x4978', NULL),
        ('Mark', 'Hall', '1951-2-18', NULL, '187.203.3319', '239 Mariah Ports, Robertsview, MO 90238', '183.833.7131', NULL),
        ('Nicole', 'Jackson', '2010-10-17', 'female', '696-479-0553x0373', '127 Parks Courts, Bakerville, MI 67226', '(023)771-9446', NULL),
        ('Carolyn', 'Roberts', '1951-10-4', 'other', '599.132.6307', '127 Parks Courts, Bakerville, MI 67226', '(852)185-5153', NULL),
        ('Carol', 'Scott', '1994-11-24', 'female', '602.714.2839', 'PSC 8486, Box 9762, APO AP 55440', '292-964-3122', NULL),
        ('Andrew', 'Williams', '1978-8-19', NULL, '5117380091', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '948-623-1982', NULL),
        ('Patrick', 'Smith', '1968-3-23', NULL, '229-921-1414x9794', '36009 Anderson Street, Richardside, WA 58918', '012.705.5466', NULL),
        ('Edward', 'Perez', '1970-4-25', 'male', '9238375046', '36009 Anderson Street, Richardside, WA 58918', '825-986-3417x4344', NULL),
        ('Jason', 'Taylor', '1997-1-13', 'male', '048.967.9983', '239 Mariah Ports, Robertsview, MO 90238', '4164377486', NULL),
        ('Nicole', 'Lopez', '1974-3-23', 'female', '3541064593', '09021 Cruz Orchard, West Crystalberg, UT 51886', '213.577.2566', NULL),
        ('Jason', 'Davis', '2011-8-5', NULL, '0867361604', '239 Mariah Ports, Robertsview, MO 90238', '(448)185-0201', NULL),
        ('Amanda', 'Jackson', '1971-6-22', 'other', '748-276-0101x5348', '09021 Cruz Orchard, West Crystalberg, UT 51886', '411-894-0312x7227', NULL),
        ('Nancy', 'Campbell', '2013-1-18', 'other', '011.416.3463', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '885-260-9693x4585', NULL),
        ('Heather', 'Evans', '1972-6-9', NULL, '(237)505-7943', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '7823695820', NULL),
        ('Cynthia', 'Lee', '1941-4-19', NULL, '(172)188-6943', '127 Parks Courts, Bakerville, MI 67226', '087.503.9467', NULL),
        ('William', 'Lewis', '1988-11-14', 'other', '347.680.6472', '239 Mariah Ports, Robertsview, MO 90238', '699.478.5469', NULL),
        ('Helen', 'Williams', '1994-8-15', 'female', '135-360-9522', '239 Mariah Ports, Robertsview, MO 90238', '112.903.2086', NULL),
        ('Carol', 'Hernandez', '1979-9-2', NULL, '(721)174-4460', '36009 Anderson Street, Richardside, WA 58918', '571-043-7483', NULL),
        ('William', 'Williams', '1951-6-1', NULL, '400-090-2927', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '9208211191', NULL),
        ('Susan', 'Lopez', '1995-2-4', 'female', '782.812.5682', '127 Parks Courts, Bakerville, MI 67226', '083-165-8589x8643', NULL),
        ('Thomas', 'Nelson', '1991-6-24', 'male', '585-000-2432', '239 Mariah Ports, Robertsview, MO 90238', '7724420255', NULL),
        ('Virginia', 'Miller', '2004-8-5', 'female', '531-935-6146', '09021 Cruz Orchard, West Crystalberg, UT 51886', '053-606-8424', NULL),
        ('Arthur', 'Garcia', '1950-6-21', 'male', '043.245.8127', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '991-640-4009x2526', NULL),
        ('Pamela', 'Adams', '1965-1-21', 'female', '378-799-5551x0652', 'PSC 8486, Box 9762, APO AP 55440', '(690)397-6622', NULL),
        ('Matthew', 'Thompson', '1948-12-6', NULL, '042-124-2648x6586', 'PSC 8486, Box 9762, APO AP 55440', '149.544.4698', NULL),
        ('Scott', 'Perez', '2005-9-7', 'male', '460.068.1400', 'PSC 8486, Box 9762, APO AP 55440', '858.787.8792', NULL),
        ('Jerry', 'Lewis', '1966-5-14', 'male', '3129727572', 'PSC 8486, Box 9762, APO AP 55440', '758-305-8468', NULL),
        ('Brian', 'Moore', '2004-3-5', 'male', '5300771980', '36009 Anderson Street, Richardside, WA 58918', '929.414.5275', NULL),
        ('Anthony', 'Miller', '1952-10-22', 'male', '4495207663', '127 Parks Courts, Bakerville, MI 67226', '476.762.6363', NULL),
        ('Sarah', 'Clark', '1986-5-26', 'other', '532.725.3721', '09021 Cruz Orchard, West Crystalberg, UT 51886', '975-215-2451x1655', NULL),
        ('Anthony', 'Jackson', '2023-5-21', 'other', '(282)731-8410', '239 Mariah Ports, Robertsview, MO 90238', '6772201216', NULL),
        ('Edward', 'Davis', '2013-10-4', 'male', '(462)874-5264', '9305 Leslie Shoals Suite 779, Josephland, WV 21417', '(213)857-1586', NULL),
        ('Jeffrey', 'Lewis', '1962-8-8', 'other', '(127)615-3152', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '(985)759-7844', NULL),
        ('Dennis', 'Turner', '2019-3-9', 'male', '(881)472-1078', '127 Parks Courts, Bakerville, MI 67226', '998-665-9535x7280', NULL),
        ('Joseph', 'Adams', '1942-3-25', NULL, '0543103256', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '956-360-9390x7062', NULL),
        ('Elizabeth', 'Gonzalez', '2021-3-26', 'female', '447-586-7548', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '785-656-4037', NULL),
        ('Gary', 'Thomas', '2001-4-6', 'other', '314-882-9271x7362', '09021 Cruz Orchard, West Crystalberg, UT 51886', '8011922935', NULL),
        ('Susan', 'Lopez', '1956-6-19', 'other', '393-997-9412x6132', '239 Mariah Ports, Robertsview, MO 90238', '452-758-1160', NULL),
        ('Paul', 'Rodriguez', '1995-4-26', 'male', '691-517-9743', '239 Mariah Ports, Robertsview, MO 90238', '5521847092', NULL),
        ('Rachel', 'Adams', '2012-6-22', 'female', '164.740.6071', '36009 Anderson Street, Richardside, WA 58918', '549-277-0952', NULL),
        ('John', 'Baker', '1960-2-14', NULL, '782-652-8592x1131', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731', '306.545.9478', NULL),
        ('Brian', 'Hernandez', '1995-4-25', 'male', '089.653.9542', '239 Mariah Ports, Robertsview, MO 90238', '315-624-4926', NULL),
        ('Peter', 'Brown', '1963-7-14', 'male', '1938135789', '36009 Anderson Street, Richardside, WA 58918', '2299907438', NULL),
        ('Scott', 'Brown', '1942-11-2', 'male', '327-384-9912x5809', '09021 Cruz Orchard, West Crystalberg, UT 51886', '839-409-6515', NULL),
        ('Roger', 'Robinson', '2012-3-12', 'other', '0960636974', '239 Mariah Ports, Robertsview, MO 90238', '2978100126', NULL),
        ('Jerry', 'Perez', '2010-2-1', NULL, '6642605683', 'PSC 8486, Box 976', '593-067-8035x7293', NULL),
        ('Jennifer', 'Jackson', '1955-5-25', 'female', '542-296-4061', '09021 Cruz Orchard, West Crystalberg, UT 51886', '726-366-2879x5098', NULL),
        ('Dorothy', 'Hill', '1991-8-8', 'female', '181-224-0512x9892', '09021 Cruz Orchard, West Crystalberg, UT 51886', '405.208.3794', NULL),
        ('Roger', 'Gonzalez', '1974-4-11', NULL, '4754041543', 'PSC 8486, Box 976', '333-361-8425', NULL),
        ('John', 'Green', '1995-11-4', NULL, '384-118-6852', '36009 Anderson Street, Richardside, WA 58918', '4427438931', NULL),
        ('Helen', 'Garcia', '1981-2-26', NULL, '(758)217-6759', '127 Parks Courts, Bakerville, MI 67226', '240.617.9211', NULL),
        ('Donald', 'Young', '2020-10-10', NULL, '090-668-5332x1189', '36009 Anderson Street, Richardside, WA 58918', '578-362-9925', NULL),
        ('Heather', 'Roberts', '1942-6-5', 'female', '8593181789', 'PSC 8486, Box 9762, APO AP 55440', '459.130.6485', NULL),
        ('Pamela', 'Rodriguez', '1973-12-26', 'female', '7201745470', '09021 Cruz Orchard, West Crystalberg, UT 51886', '355-563-0698', NULL);

    INSERT INTO EmergencyContacts
        (PatientID, ContactName, Relationship, Phone, Address)
    VALUES
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Heather Williams', 'daughter', '647.593.8242', '09021 Cruz Orchard, West Crystalberg, UT 51886'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Katherine Green', 'other', '241-157-8156x5938', 'PSC 8486, Box 9762, APO AP 55440'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Angela Jones', 'daughter', '1609753513', 'PSC 8486, Box 976'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Gregory Taylor', 'daughter', '115.871.4841', '09021 Cruz Orchard, West Crystalberg, UT 51886'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthony Nelson', 'son', '719-659-3423', '239 Mariah Ports, Robertsview, MO 90238'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Jennifer Wright', 'father', '(201)868-4833', '9305 Leslie Shoals Suite 779, Josephland, WV 21417'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Pamela Gonzalez', 'nephew', '515.917.9533', '9305 Leslie Shoals Suite 779, Josephland, WV 21417'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Carl Campbell', 'grandfather', '(560)123-0989', '9305 Leslie Shoals Suite 779, Josephland, WV 21417'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'William Mitchell', 'son', '161-510-9032x1730', 'PSC 8486, Box 976'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Patricia Carter', '', '131-456-2087', 'PSC 8486, Box 9762, APO AP 55440'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Susan Jackson', 'grandfather', '923.022.5841', '239 Mariah Ports, Robertsview, MO 90238'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Larry Smith', 'spouse', '984.564.2807', '127 Parks Courts, Bakerville, MI 67226'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'David Green', 'sister', '(759)459-9246', '127 Parks Courts, Bakerville, MI 67226'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Timothy Smith', 'brother', '233-769-6069', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Roger Anderson', 'father', '278-789-0075', '127 Parks Courts, Bakerville, MI 67226'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Linda Jackson', 'spouse', '2066503008', '239 Mariah Ports, Robertsview, MO 90238'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Richard Nelson', 'brother', '421-761-0471', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sarah Wilson', NULL, '(400)034-8559', 'PSC 8486, Box 976'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Rachel Campbell', 'nephew', '582.369.4022', 'PSC 8486, Box 9762, APO AP 55440'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Amanda Campbell', 'grandfather', '004-229-4568x2417', '127 Parks Courts, Bakerville, MI 67226'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Linda Thomas', NULL, '146-546-1187x7551', 'PSC 8486, Box 9762, APO AP 55440'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Debra Young', 'grandmother', '229-611-1330', '239 Mariah Ports, Robertsview, MO 90238'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Susan Adams', 'grandmother', '793.615.3492', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Paul Brown', NULL, '8731764303', '239 Mariah Ports, Robertsview, MO 90238'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Thomas King', 'grandfather', '219-729-6687x5773', '09021 Cruz Orchard, West Crystalberg, UT 51886'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Dennis Rodriguez', 'guardian', '508-249-2694', 'PSC 8486, Box 9762, APO AP 55440'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Henry Davis', '', '1320407522', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cynthia Hill', 'daughter', '091-891-6348x9676', '239 Mariah Ports, Robertsview, MO 90238'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Joshua Roberts', 'guardian', '(489)451-7446', '239 Mariah Ports, Robertsview, MO 90238'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Matthew Perez', 'brother', '500-762-7912', '36009 Anderson Street, Richardside, WA 58918'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Kevin Carter', 'niece', '017.200.9925', '09021 Cruz Orchard, West Crystalberg, UT 51886'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Ruth Jackson', 'other', '109.795.1942', '127 Parks Courts, Bakerville, MI 67226'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Matthew Scott', NULL, '(067)537-5100', 'PSC 8486, Box 9762, APO AP 55440'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Kenneth Harris', 'other', '868-412-6961x1611', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Roger Hernandez', 'spouse', '075.415.1150', '36009 Anderson Street, Richardside, WA 58918'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Kevin Harris', NULL, '192-303-1045', 'PSC 8486, Box 9762, APO AP 55440'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'John Taylor', 'nephew', '7542035574', '127 Parks Courts, Bakerville, MI 67226'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Virginia Thomas', 'father', '8942622358', '9305 Leslie Shoals Suite 779, Josephland, WV 21417'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'George Martinez', 'niece', '2906112648', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Karen Robinson', 'grandfather', '3758066065', '9305 Leslie Shoals Suite 779, Josephland, WV 21417'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Melissa Wright', 'sister', '4189276266', '239 Mariah Ports, Robertsview, MO 90238'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cynthia Scott', 'grandfather', '173.407.9703', '127 Parks Courts, Bakerville, MI 67226'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Virginia Green', 'sister', '717.386.4014', '9305 Leslie Shoals Suite 779, Josephland, WV 21417'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Peter Thompson', 'daughter', '671-454-3910x1448', '09021 Cruz Orchard, West Crystalberg, UT 51886'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Charles Edwards', 'father', '448.298.3816', '127 Parks Courts, Bakerville, MI 67226'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anna Evans', 'other', '475-922-1166', '36009 Anderson Street, Richardside, WA 58918'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sarah Lewis', 'nephew', '377.857.0742', '127 Parks Courts, Bakerville, MI 67226'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Scott Johnson', 'nephew', '081.160.5019', '9305 Leslie Shoals Suite 779, Josephland, WV 21417'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Virginia Parker', 'sister', '431-675-6256x6272', '127 Parks Courts, Bakerville, MI 67226'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Ronald Thomas', 'grandfather', '676.337.3906', 'PSC 8486, Box 9762, APO AP 55440'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Donald Thomas', 'mother', '(394)918-4567', 'PSC 8486, Box 9762, APO AP 55440'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Debra Gonzalez', 'nephew', '735-400-0250', '127 Parks Courts, Bakerville, MI 67226'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Patrick Brown', 'niece', '(968)373-5919', '9305 Leslie Shoals Suite 779, Josephland, WV 21417'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Emily Green', 'grandfather', '080-351-3853', '239 Mariah Ports, Robertsview, MO 90238'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Kimberly Robinson', '', '475.304.8107', 'PSC 8486, Box 9762, APO AP 55440'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Carl Allen', 'nephew', '111.312.6379', '127 Parks Courts, Bakerville, MI 67226'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Ruth Williams', 'brother', '324.556.1849', '09021 Cruz Orchard, West Crystalberg, UT 51886'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Janet Hernandez', 'son', '844.301.9126', '9305 Leslie Shoals Suite 779, Josephland, WV 21417'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Mark Evans', 'daughter', '016.419.5384', '9305 Leslie Shoals Suite 779, Josephland, WV 21417'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Arthur Scott', 'spouse', '357-492-2088', '09021 Cruz Orchard, West Crystalberg, UT 51886'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Jason Moore', 'sister', '(812)379-3323', '09021 Cruz Orchard, West Crystalberg, UT 51886'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Matthew Mitchell', 'father', '089-577-4038x2778', '09021 Cruz Orchard, West Crystalberg, UT 51886'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Barbara Moore', 'niece', '(546)030-5357', '9305 Leslie Shoals Suite 779, Josephland, WV 21417'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Carl Thompson', 'spouse', '(405)980-2507', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Michael Williams', 'brother', '105-623-7625', '127 Parks Courts, Bakerville, MI 67226'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Catherine Parker', 'guardian', '606.488.7091', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Matthew Hill', 'son', '215-323-0282x1691', '239 Mariah Ports, Robertsview, MO 90238'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Walter Carter', 'mother', '560-071-5427', '9305 Leslie Shoals Suite 779, Josephland, WV 21417'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Eric Evans', 'niece', '476-048-4870', '09021 Cruz Orchard, West Crystalberg, UT 51886'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Brenda Turner', 'nephew', '165.700.4049', 'PSC 8486, Box 9762, APO AP 55440'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Roger Edwards', 'daughter', '643-195-3985', '239 Mariah Ports, Robertsview, MO 90238'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Thomas Gonzalez', NULL, '9255445769', '104 Kendle Isle Suite 093, Port Gregorychester, KY 82731'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Christopher Baker', 'nephew', '(507)493-1864', '127 Parks Courts, Bakerville, MI 67226'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Daniel Brown', 'spouse', '(918)896-6444', '9305 Leslie Shoals Suite 779, Josephland, WV 21417'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Janet Thompson', 'daughter', '553-620-8296x5708', 'PSC 8486, Box 976');

    -- Seed the Insurance table
    INSERT INTO Insurance
        (PatientID, ProviderName, PolicyNumber, CoverageDetails)
    VALUES
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '7463343', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '1679215', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '9152513', 'POS'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '6088743', 'POS'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '4664860', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'UnitedHealth Group', '5728454', 'PPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '2590996', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '5202798', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '3465603', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '2237192', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '6539790', 'POS'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '2689485', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '6304900', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '4430567', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '8427162', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '5370335', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '1235580', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '7691148', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '1019173', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '6589080', 'PPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '6456023', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '2056700', 'PPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '4719574', 'PPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '3390659', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '8515682', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '6369625', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '2829687', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '5883691', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '6582627', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '4409161', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '5826088', 'POS'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '7457569', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '5061884', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'UnitedHealth Group', '4177459', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'UnitedHealth Group', '1553185', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '5363019', 'POS'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '2507002', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '3184803', 'PPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '2346343', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '7564858', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '9800890', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '4951063', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'UnitedHealth Group', '8036754', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '8559194', 'POS'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '6995632', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '2935247', 'POS'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '6624905', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'UnitedHealth Group', '5077461', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '5547262', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '4698714', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '3860209', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '2043416', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '3455487', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '4670411', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '9962354', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '2241461', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '4162851', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '3008156', 'POS'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '7209917', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '1610557', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '4264694', 'PPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '3078615', 'POS'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'UnitedHealth Group', '2024834', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '8140699', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '5360732', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'UnitedHealth Group', '2207484', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '6876957', 'POS'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'UnitedHealth Group', '2024122', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '1660665', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '7564525', 'PPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '7015559', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '3842473', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '4412732', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '3654300', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'UnitedHealth Group', '6743051', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '2966505', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '3932984', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '7877071', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '9532894', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '6992010', 'POS'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '5209951', 'PPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '1208646', 'POS'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '2326638', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '1766659', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '3262199', 'PPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '9083717', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '5829789', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '3220368', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '7509848', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '2354309', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '4226418', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '3685693', 'PPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'UnitedHealth Group', '8518463', 'POS'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '7952585', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '8016677', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '1784832', 'PPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '2071834', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '3645541', 'POS'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '9174960', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '1001160', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '6468431', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '8833151', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '7964850', 'PPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '2400344', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '3189791', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '8004237', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '4582349', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '1039553', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '9864174', 'HDHP'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '4195387', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '4330552', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '5697330', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'UnitedHealth Group', '2680753', 'POS'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '7655457', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '1366506', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '2942455', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '3238425', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '6822583', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '3591075', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '1311625', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '4451672', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '6280011', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '1704719', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '9296092', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '8695111', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '7248661', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '3991181', 'PPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '5882765', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'UnitedHealth Group', '3533748', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '6662496', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '2572151', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '1598367', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '3749123', 'PPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '5857521', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '3175014', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '9020594', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'UnitedHealth Group', '1809607', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'UnitedHealth Group', '9775326', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Blue Cross Blue Shield', '6077971', 'POS'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '6511662', 'EPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '2822868', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Cigna', '9072731', 'POS'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '6765517', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '2946292', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Aetna', '8156075', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Anthem', '6621741', 'Catastrophic'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '3611610', 'PPO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '7301041', 'Short-term'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Humana', '2458305', 'HMO'),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Centene', '2420519', 'PPO');

    -- Update the Patients table from the Insurance table
    UPDATE Patients SET InsuranceID = Ins.InsuranceID
    FROM Insurance Ins JOIN Patients P
        ON Ins.PatientID = P.PatientID;
END


-- Seed the Medications table
BEGIN
    INSERT INTO Medications
        (MedicationName, Dosage)
    VALUES
        ('lisinopril (Zestril)', '10mg'),
        ('levothyroxine (Synthroid)', '88mcg'),
        ('atorvastatin (Lipitor)', '20mg'),
        ('metformin (Glucophage)', '500mg'),
        ('simvastatin (Zocor)', '40mg'),
        ('omeprazole (Prilosec)', '20mg'),
        ('amlodipine (Norvasc)', '5mg'),
        ('metoprolol (Lopressor)', '50mg'),
        ('acetaminophen plus hydrocodone', '5mg'),
        ('albuterol (Ventolin)', '90mcg');


    INSERT INTO Vaccines
        (PatientID, VaccineName, VaccinationDate, AdministeredBy)
    VALUES
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sputnik V', '2013-1-9', 'Amy Robinson', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Covaxin', '2011-10-7', 'Sarah Moore', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Moderna', '2019-5-18', 'Henry Robinson', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Moderna', '2023-2-28', 'Amanda Adams', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Moderna', '2011-7-11', 'Dennis Adams', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Covaxin', '2014-9-9', 'Michael Davis', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sputnik V', '2022-11-21', 'Katherine Rodriguez', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'AstraZeneca', '2023-6-23', 'William Martin', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Johnson & Johnson', '2017-8-3', 'Emily Miller', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sinovac', '2017-5-23', 'Ruth Green', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'AstraZeneca', '2019-9-19', 'Edward Nelson', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sputnik V', '2010-10-8', 'Edward Thomas', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Pfizer-BioNTech', '2019-11-9', 'Frank Turner', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Johnson & Johnson', '2004-1-27', 'Debra Campbell', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Covishield', '2008-9-26', 'Dorothy Gonzalez', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sinovac', '2014-8-22', 'Debra Davis', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sinopharm', '2019-2-16', 'Virginia Jackson', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'AstraZeneca', '2000-12-9', 'Charles Lee', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Johnson & Johnson', '2010-7-27', 'Michael Phillips', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'AstraZeneca', '2001-10-21', 'Andrew Johnson', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Moderna', '2020-4-20', 'Jessica Davis', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sinopharm', '2003-1-20', 'John Campbell', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Moderna', '2015-4-24', 'Michael Green', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sputnik V', '2019-2-27', 'Kenneth Brown', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sinovac', '2011-7-6', 'Shirley Williams', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Novavax', '2003-12-13', 'Kimberly Parker', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Covaxin', '2018-3-23', 'Harold Turner', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Johnson & Johnson', '2005-6-17', 'Jessica Roberts', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Johnson & Johnson', '2000-8-22', 'Brenda Perez', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sinopharm', '2012-11-9', 'Thomas King', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Moderna', '2010-12-2', 'Andrew Martin', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Covaxin', '2011-10-10', 'Harold Campbell', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sinovac', '2012-12-14', 'Patrick Nelson', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'AstraZeneca', '2022-6-6', 'Sandra Walker', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Novavax', '2013-1-13', 'Brenda Roberts', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Pfizer-BioNTech', '2005-8-3', 'Kenneth Hernandez', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Covishield', '2015-9-20', 'Ryan Lopez', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sinopharm', '2009-8-2', 'Timothy Parker', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Johnson & Johnson', '2000-7-22', 'Timothy White', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Pfizer-BioNTech', '2022-1-27', 'Harold Jackson', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Moderna', '2019-11-7', 'Brian Miller', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Covaxin', '2012-11-3', 'Donna Wilson', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sinovac', '2004-11-17', 'Catherine Wilson', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Johnson & Johnson', '2008-1-2', 'Dorothy Adams', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sinopharm', '2011-10-28', 'Rachel Campbell', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Covaxin', '2020-7-12', 'Andrew Walker', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Novavax', '2009-1-5', 'Donna Rodriguez', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sinopharm', '2022-2-11', 'Roger Williams', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Sinovac', '2005-3-19', 'Melissa Adams', NULL),
        ((SELECT TOP 1
                patientid
            FROM Patients
            ORDER BY NEWID()), 'Johnson & Johnson', '2009-2-16', 'Carl Robinson', NULL);
END


INSERT INTO Allergies
    (PatientID, AllergyType, Severity)
VALUES
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Dust', 'Life-threatening'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Peanuts', 'Severe'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Cats', 'Life-threatening'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Dust', 'Severe'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Mold', 'Severe'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Dogs', 'Moderate'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Cats', 'Moderate'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Penicillin', 'Moderate'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Shellfish', 'Severe'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Cats', 'Moderate'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Penicillin', 'Mild'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Shellfish', 'Severe'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Mold', 'Mild'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Pollen', 'Life-threatening'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Pollen', 'Moderate'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Cats', 'Life-threatening'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Mold', 'Severe'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Peanuts', 'Mild'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Shellfish', 'Life-threatening'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Peanuts', 'Life-threatening'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Pollen', 'Moderate'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Pollen', 'Mild'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Lactose', 'Moderate'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Lactose', 'Moderate'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Cats', 'Life-threatening'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Shellfish', 'Mild'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Pollen', 'Life-threatening'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Shellfish', 'Severe'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Cats', 'Severe'),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), 'Shellfish', 'Severe');


-- Doctors
BEGIN
    INSERT INTO Departments
        (DepartmentName)
    VALUES
        ('Accident and emergency medicine'),
        ('Addiction medicine'),
        ('Allergology'),
        ('Anaesthetics'),
        ('Biological hematology'),
        ('Cardiology'),
        ('Child psychiatry'),
        ('Clinical biology'),
        ('Clinical chemistry'),
        ('Clinical neurophysiology'),
        ('Clinical radiology'),
        ('Dental, oral and maxillo-facial surgery'),
        ('Dermato-venerology'),
        ('Dermatology'),
        ('Endocrinology'),
        ('Gastro-enterologic surgery'),
        ('Gastroenterology'),
        ('General hematology'),
        ('General Practice'),
        ('General surgery'),
        ('Geriatrics'),
        ('Immunology'),
        ('Infectious diseases'),
        ('Internal medicine'),
        ('Laboratory medicine'),
        ('Maxillo-facial surgery'),
        ('Microbiology'),
        ('Nephrology'),
        ('Neuro-psychiatry'),
        ('Neurology'),
        ('Neurosurgery'),
        ('Nuclear medicine'),
        ('Obstetrics and gynecology'),
        ('Occupational medicine'),
        ('Ophthalmology'),
        ('Orthopaedics'),
        ('Otorhinolaryngology'),
        ('Paediatric surgery'),
        ('Paediatrics'),
        ('Pathology'),
        ('Pharmacology'),
        ('Physical medicine and rehabilitation'),
        ('Plastic surgery'),
        ('Podiatric Medicine'),
        ('Podiatric Surgery'),
        ('Psychiatry'),
        ('Public health and Preventive Medicine'),
        ('Radiology'),
        ('Radiotherapy'),
        ('Respiratory medicine'),
        ('Rheumatology'),
        ('Stomatology'),
        ('Thoracic surgery'),
        ('Tropical medicine'),
        ('Urology'),
        ('Vascular surgery'),
        ('Venereology');

    INSERT INTO Doctors
        (FirstName, LastName, ContactInfo, DepartmentID)
    VALUES
        ('Heather', 'Williams', '876-475-9382', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Edward', 'Carter', '892-411-5781', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Rebecca', 'Carter', '(877)840-8016', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Henry', 'Carter', '535.139.3328', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Larry', 'Clark', '714-841-8583x9894', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Barbara', 'Clark', '342-320-9471x1220', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Debra', 'Campbell', '483-396-9477x5159', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Amy', 'Jackson', '(041)352-5601', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Thomas', 'Williams', '891-013-9916x1510', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Jerry', 'Thomas', '7300869141', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Elizabeth', 'Lewis', '208.709.1634', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Carolyn', 'Baker', '(302)258-4197', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Peter', 'Wright', '984.564.2807', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Barbara', 'Evans', '8423759459', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Walter', 'Campbell', '661-093-5233', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Sharon', 'Campbell', '606-960-2714x2787', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Raymond', 'Williams', '547.063.8120', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Samantha', 'Clark', '3008913193', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Brian', 'Miller', '610.471.4285', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Karen', 'Johnson', '0348559097', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Catherine', 'Mitchell', '582.369.4022', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Amanda', 'Lee', '5900422945', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Gary', 'Martinez', '7304281465', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Brian', 'Miller', '775-517-1760x4522', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Brenda', 'Mitchell', '1133060168', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Carol', 'Lopez', '361-534-9263x5110', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Stephen', 'Wilson', '643.039.2137', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Matthew', 'Miller', '729-668-7577x3893', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Amanda', 'Clark', '8249269471', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('David', 'Brown', '(204)075-2275', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Eric', 'Baker', '8916348967', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Matthew', 'Johnson', '2489451744', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Laura', 'Walker', '2234500762', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Scott', 'Turner', '(560)976-7017', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Roger', 'Williams', '925-185-3671x0979', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Walter', 'Turner', '426-418-3067x5375', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Walter', 'Williams', '408.993.3188', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Shirley', 'Wilson', '(696)116-1162', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Patricia', 'Young', '075.415.1150', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Kevin', 'Smith', '(519)230-3104', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Jason', 'Nelson', '(227)175-4203', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Amanda', 'Martinez', '852-911-8942', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Matthew', 'Harris', '833-245-6029', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('John', 'Phillips', '2648629645', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Ashley', 'Mitchell', '806-606-5735', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Edward', 'Thomas', '4189276266', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Ashley', 'Rodriguez', '257-173-4079x7034', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Virginia', 'Green', '267-173-8640x1400', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Stephanie', 'Hernandez', '4543910144', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID())),
        ('Andrew', 'Scott', '(216)448-2983', (SELECT TOP 1
                DepartmentID
            FROM Departments
            ORDER BY NEWID()));

    -- Update department heads from the list of doctors
    BEGIN
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
        UPDATE Departments SET HeadOfDepartmentID = (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()) WHERE DepartmentID = (SELECT TOP 1
            DepartmentID
        FROM Departments
        ORDER BY NEWID());
    END

END


-- Prescriptions
INSERT INTO Prescriptions
    (PatientID, MedicationID, Dosage, Frequency, StartDate, EndDate, DoctorID)
VALUES
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2013-1-9', '2013-02-08', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '50mg', NULL, '2012-5-16', '2012-05-23', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '90mcg', NULL, '2006-9-5', '2006-09-12', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '20mg', NULL, '2003-10-26', '2003-11-02', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2022-10-5', '2022-10-12', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '88mcg', NULL, '2023-2-28', '2023-03-07', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '50mg', NULL, '2017-2-12', '2017-02-22', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '20mg', NULL, '2019-11-7', '2019-12-07', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '50mg', NULL, '2014-9-9', '2014-09-10', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2000-2-24', '2000-03-05', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '10mg', NULL, '2019-8-27', '2019-09-03', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '500mg', NULL, '2023-6-23', '2023-06-24', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '500mg', NULL, '2018-4-8', '2018-04-13', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2014-2-3', '2014-02-10', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2015-2-10', '2015-03-12', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '40mg', NULL, '2022-2-18', '2022-02-25', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2006-10-18', '2006-11-17', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '40mg', NULL, '2014-2-20', '2014-03-02', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '20mg', NULL, '2018-4-10', '2018-04-15', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '500mg', NULL, '2005-1-20', '2005-01-27', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '50mg', NULL, '2002-2-22', '2002-02-27', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '20mg', NULL, '2001-2-23', '2001-03-25', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2022-9-9', '2022-10-09', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '500mg', NULL, '2006-11-19', '2006-11-29', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '90mcg', NULL, '2008-8-16', '2008-08-23', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '88mcg', NULL, '2010-10-4', '2010-10-14', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '90mcg', NULL, '2020-6-28', '2020-07-03', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '500mg', NULL, '2000-12-9', '2000-12-10', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '500mg', NULL, '2011-3-11', '2011-03-21', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '10mg', NULL, '2003-3-28', '2003-04-02', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '10mg', NULL, '2018-11-18', '2018-12-18', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '88mcg', NULL, '2000-2-21', '2000-02-26', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '90mcg', NULL, '2018-2-13', '2018-02-14', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '20mg', NULL, '2003-1-20', '2003-01-21', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '500mg', NULL, '2005-12-4', '2005-12-14', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '500mg', NULL, '2023-1-22', '2023-01-23', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2013-10-4', '2013-10-11', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '88mcg', NULL, '2007-2-21', '2007-02-28', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '20mg', NULL, '2013-3-2', '2013-04-01', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '50mg', NULL, '2001-10-4', '2001-10-14', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '500mg', NULL, '2008-6-24', '2008-07-04', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '90mcg', NULL, '2005-12-22', '2005-12-27', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '10mg', NULL, '2021-3-28', '2021-04-02', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '20mg', NULL, '2016-5-4', '2016-06-03', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '50mg', NULL, '2021-3-1', '2021-03-11', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2018-9-10', '2018-09-17', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2021-5-5', '2021-06-04', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '10mg', NULL, '2014-12-3', '2014-12-10', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '10mg', NULL, '2017-5-5', '2017-05-10', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '50mg', NULL, '2011-10-10', '2011-10-17', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '90mcg', NULL, '2020-10-5', '2020-10-12', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2023-7-27', '2023-07-28', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '10mg', NULL, '2019-4-23', '2019-04-30', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '20mg', NULL, '2007-4-21', '2007-05-01', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2022-11-19', '2022-11-29', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '10mg', NULL, '2012-12-19', '2012-12-29', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '10mg', NULL, '2005-8-3', '2005-08-10', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '20mg', NULL, '2014-9-16', '2014-10-16', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '90mcg', NULL, '2000-1-16', '2000-01-23', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '40mg', NULL, '2014-1-26', '2014-02-05', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '500mg', NULL, '2017-11-3', '2017-11-08', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '10mg', NULL, '2012-11-14', '2012-11-21', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '10mg', NULL, '2006-1-23', '2006-01-24', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2019-2-7', '2019-02-08', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '90mcg', NULL, '2020-4-28', '2020-05-05', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '40mg', NULL, '2022-3-4', '2022-03-14', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2020-2-1', '2020-02-08', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '50mg', NULL, '2003-5-5', '2003-06-04', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '20mg', NULL, '2003-3-9', '2003-03-10', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '10mg', NULL, '2001-4-22', '2001-04-29', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2010-6-19', '2010-06-20', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '90mcg', NULL, '2020-8-23', '2020-09-02', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2011-9-6', '2011-09-11', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2018-5-1', '2018-05-06', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '20mg', NULL, '2008-6-11', '2008-06-18', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '88mcg', NULL, '2010-10-2', '2010-10-03', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '40mg', NULL, '2005-3-19', '2005-03-26', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '20mg', NULL, '2012-9-5', '2012-09-12', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '88mcg', NULL, '2015-12-8', '2015-12-09', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '40mg', NULL, '2005-9-24', '2005-09-25', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '40mg', NULL, '2012-6-10', '2012-06-20', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '88mcg', NULL, '2003-9-16', '2003-09-26', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '20mg', NULL, '2010-2-16', '2010-02-17', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '50mg', NULL, '2013-1-10', '2013-01-17', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '20mg', NULL, '2005-11-19', '2005-11-29', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '88mcg', NULL, '2002-2-7', '2002-02-12', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '10mg', NULL, '2012-1-4', '2012-01-14', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2016-5-15', '2016-05-25', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '90mcg', NULL, '2022-11-7', '2022-11-17', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '88mcg', NULL, '2011-4-9', '2011-05-09', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '20mg', NULL, '2013-4-12', '2013-04-13', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '88mcg', NULL, '2022-1-17', '2022-01-27', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '500mg', NULL, '2003-8-13', '2003-08-20', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '500mg', NULL, '2020-1-26', '2020-01-31', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '90mcg', NULL, '2004-2-7', '2004-02-17', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2011-9-27', '2011-10-02', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '88mcg', NULL, '2019-8-5', '2019-09-04', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '5mg', NULL, '2020-11-14', '2020-12-14', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '50mg', NULL, '2021-6-27', '2021-07-07', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID())),
    ((SELECT TOP 1
            patientid
        FROM Patients
        ORDER BY NEWID()), (SELECT TOP 1
            MedicationID
        FROM Medications
        ORDER BY NEWID()), '50mg', NULL, '2020-11-28', '2020-12-03', (SELECT TOP 1
            DoctorID
        FROM Doctors
        ORDER BY NEWID()));


-- Seed the Appointments table