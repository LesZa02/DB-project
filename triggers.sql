/* triggers */
/* если удаляется какой-то отель, то нужно удалить его из таблицы review, placement, hotels, bookmarks */
CREATE OR REPLACE FUNCTION booking_base.automatically_delete_hotel() RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
    BEGIN
        DELETE
        FROM reviews
        WHERE reviews.hotel_id = OLD.hotel_id;

        DELETE
        FROM placements
        WHERE placements.hotel_id = OLD.hotel_id;

        DELETE
        FROM bookmarks
        WHERE bookmarks.hotel_id = OLD.hotel_id;

        DELETE
        FROM hotels
        WHERE hotels.hotel_id = OLD.hotel_id;
        return new;
    END
$$;

CREATE TRIGGER automatically_delete_hotel BEFORE DELETE ON booking_base.hotels
    FOR EACH ROW EXECUTE PROCEDURE booking_base.automatically_delete_hotel();

/* если удаляется компания/сеть отелей, то нужно удалить все ее отели из таблицы review, placement, hotels, bookmarks */
CREATE OR REPLACE FUNCTION booking_base.automatically_delete_company() RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
    BEGIN
        DELETE
        FROM reviews
        WHERE hotel_id IN (SELECT hotel_id
                           FROM hotels
                           WHERE hotel_company_id = OLD.hotel_company_id);
        DELETE
        FROM placements
        WHERE hotel_id IN (SELECT hotel_id
                           FROM hotels
                           WHERE hotel_company_id = OLD.hotel_company_id);
        DELETE
        FROM bookmarks
        WHERE hotel_id IN (SELECT hotel_id
                           FROM hotels
                           WHERE hotel_company_id = OLD.hotel_company_id);
        DELETE
        FROM hotels
        WHERE hotel_id IN (SELECT hotel_id
                           FROM hotels
                           WHERE hotel_company_id = OLD.hotel_company_id);
        return new;
    END
$$;

CREATE TRIGGER automatically_delete_company BEFORE DELETE ON booking_base.company
    FOR EACH ROW EXECUTE PROCEDURE booking_base.automatically_delete_company();
