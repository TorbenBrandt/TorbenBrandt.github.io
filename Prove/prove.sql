CREATE TABLE behandling
(
    behandlingid serial primary key,
    skade text not null,
    pris int default = '1200'
);

CREATE TABLE dyr
(
    dyrid serial primary key, 
    typedyr text not null,
    dato date,  
    kjonn text check (
        kjonn = 'm'
        or kjonn = 'f'
    )
    default 'm'
    behandlingid int references behandling (behandlingid)
);

CREATE TABLE eier
(
    eierid serial primary key, 
    fornavn text not null,
    etternavn text not null,
    telefon text,
    epost text,
    adresse text,
    dyrid int references dyr (dyrid)
);
