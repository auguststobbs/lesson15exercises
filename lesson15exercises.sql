CREATE TABLE plant (
    plant_id INT NOT NULL,
    plant_name VARCHAR(40) NOT NULL,
    zone INT,
	season VARCHAR(10),
    PRIMARY KEY (plant_id)
);

CREATE TABLE seeds (
    seed_id INT,
    expiration_date DATE,
    quantity INT,
	reorder BOOL,
    PRIMARY KEY (seed_id),
    FOREIGN KEY (seed_id) REFERENCES plant(plant_id)
);

CREATE TABLE garden_bed (
    space_number INT,
    date_planted DATE,
    doing_well BOOL,
	plant_id INT,
    PRIMARY KEY (space_number),
    FOREIGN KEY (plant_id) REFERENCES plant(plant_id)
);