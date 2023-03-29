COMMENT ON TABLE person_discounts IS 'Table for storing data about persons orders discounts';
COMMENT ON COLUMN person_discounts.id IS 'Identifier of storage data';
COMMENT ON COLUMN person_discounts.person_id IS 'Identifier of the person who has a discount';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Identifier of the pizzeria where the user has a discount';
COMMENT ON COLUMN person_discounts.discount IS 'Person discount percentage';
