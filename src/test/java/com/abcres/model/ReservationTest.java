//package com.abcres.model;
//
//import org.junit.jupiter.api.Test;
//
//import java.sql.Date;
//import java.sql.Time;
//
//import static org.junit.jupiter.api.Assertions.*;
//
//class ReservationTest {
//
//    @Test
//    void testReservationConstructorAndGetters() {
//        // Arrange
//        Date reservationDate = Date.valueOf("2024-08-22");
//        Time reservationTime = Time.valueOf("23:25:00");
//        Reservation reservation = new Reservation("Nimasha", "nim@gmail.com", "0112457788", "delivery", reservationDate, reservationTime, 10, "pending");
//
//        // Act & Assert
//        assertEquals("Nimasha", reservation.getName());
//        assertEquals("nim@gmail.com", reservation.getEmail());
//        assertEquals("0112457788", reservation.getPhone());
//        assertEquals("delivery", reservation.getServiceType());
//        assertEquals(reservationDate, reservation.getReservationDate());
//        assertEquals(reservationTime, reservation.getReservationTime());
//        assertEquals(10, reservation.getGuests());
//        assertEquals("pending", reservation.getStatus());
//    }
//
//    @Test
//    void testReservationSetters() {
//        // Arrange
//        Reservation reservation = new Reservation();
//        Date reservationDate = Date.valueOf("2024-08-22");
//        Time reservationTime = Time.valueOf("23:25:00");
//
//        // Act
//        reservation.setName("Ashen");
//        reservation.setEmail("ashen@gmail.com");
//        reservation.setPhone("0112457874");
//        reservation.setServiceType("dine-in");
//        reservation.setReservationDate(reservationDate);
//        reservation.setReservationTime(reservationTime);
//        reservation.setGuests(4);
//        reservation.setStatus("pending");
//
//        // Assert
//        assertEquals("Ashen", reservation.getName());
//        assertEquals("ashen@gmail.com", reservation.getEmail());
//        assertEquals("0112457874", reservation.getPhone());
//        assertEquals("dine-in", reservation.getServiceType());
//        assertEquals(reservationDate, reservation.getReservationDate());
//        assertEquals(reservationTime, reservation.getReservationTime());
//        assertEquals(4, reservation.getGuests());
//        assertEquals("pending", reservation.getStatus());
//    }
//
//    @Test
//    void testDefaultConstructor() {
//        // Arrange
//        Reservation reservation = new Reservation();
//
//        // Act & Assert
//        assertEquals(0, reservation.getId());
//        assertNull(reservation.getName());
//        assertNull(reservation.getEmail());
//        assertNull(reservation.getPhone());
//        assertNull(reservation.getServiceType());
//        assertNull(reservation.getReservationDate());
//        assertNull(reservation.getReservationTime());
//        assertEquals(0, reservation.getGuests());
//        assertNull(reservation.getStatus());
//    }
//
//    @Test
//    void testParameterizedConstructor() {
//        // Arrange
//        Date reservationDate = Date.valueOf("2024-08-22");
//        Time reservationTime = Time.valueOf("23:25:00");
//        Reservation reservation = new Reservation("Saman", "saman@gmail.com", "1574584120", "dine-in", reservationDate, reservationTime, 3, "pending");
//
//        // Act
//        reservation.setId(1);
//
//        // Assert
//        assertEquals(1, reservation.getId());
//        assertEquals("Saman", reservation.getName());
//        assertEquals("saman@gmail.com", reservation.getEmail());
//        assertEquals("1574584120", reservation.getPhone());
//        assertEquals("dine-in", reservation.getServiceType());
//        assertEquals(reservationDate, reservation.getReservationDate());
//        assertEquals(reservationTime, reservation.getReservationTime());
//        assertEquals(3, reservation.getGuests());
//        assertEquals("pending", reservation.getStatus());
//    }
//}
