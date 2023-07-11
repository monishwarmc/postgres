CREATE TABLE vehicle_uuid (
    uid UUID NOT NULL PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    year INTEGER NOT NULL
);

CREATE TABLE customer_uuid (
    uid UUID NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INTEGER NOT NULL,
    vehicle_uid UUID REFERENCES vehicle_uuid (uid)
);

insert into vehicle_uuid (uid, type, year) values (uuid_generate_v4(), 'bike', 2023);
insert into vehicle_uuid (uid, type, year) values (uuid_generate_v4(), 'car', 2024);
insert into vehicle_uuid (uid, type, year) values (uuid_generate_v4(), 'car', 2025);
insert into vehicle_uuid (uid, type, year) values (uuid_generate_v4(), 'lorry', 2026);


insert into customer_uuid (uid , name, age) values (uuid_generate_v4(), 'Monishwar M C', 20);
insert into customer_uuid (uid , name, age) values (uuid_generate_v4(), 'karthi', 15);