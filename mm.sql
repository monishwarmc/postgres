CREATE TABLE vehicle (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    type VARCHAR(50) NOT NULL,
    year INTEGER NOT NULL
);

CREATE TABLE customer (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INTEGER NOT NULL,
    vehicle_id BIGINT REFERENCES vehicle (id)
);

insert into vehicle (type, year) values ('bike', 2023);
insert into vehicle (type, year) values ('car', 2024);
insert into vehicle (type, year) values ('car', 2025);
insert into vehicle (type, year) values ('lorry', 2026);


insert into customer (name, age, vehicle_id) values ('Monishwar M C', 20, 1);
insert into customer (name, age, vehicle_id) values ('karthi', 15, 3);