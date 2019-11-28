CREATE TABLE kunde
(
    kundeid serial primary key,
    navn text not null,
    adresse text not null
);

CREATE TABLE vare
(
    vareid serial primary key, 
    navn text not null,
    pris number,
    vekt number
);

CREATE TABLE bestilling
(
    bestillingid serial primary key, 
    pris number,
    antall number,
    betalt text default 'nei' check (
        betalt = 'ja'
        or betalt = 'nei'
    ),
    kundeid int references kunde (kundeid),
    vareid int references vare (vareid)
);