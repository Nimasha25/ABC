//package com.abcres.service;
//
//import static org.junit.jupiter.api.Assertions.*;
//import static org.mockito.Mockito.*;
//
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//import org.mockito.MockitoAnnotations;
//
//import com.abcres.dao.ReservationDAO;
//import com.abcres.model.Reservation;
//import com.abcres.service.ReservationService;
//
//import java.sql.Date;
//import java.sql.Time;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
//public class ReservationServiceTest {
//
//    private ReservationService reservationService;
//    private ReservationDAO mockReservationDAO;
//
//    @BeforeEach
//    void setUp() {
//        MockitoAnnotations.openMocks(this); // Initialize Mockito annotations
//        mockReservationDAO = mock(ReservationDAO.class); // Create a mock DAO
//        reservationService = new ReservationService(mockReservationDAO); // Inject mock DAO
//    }
//
//    @Test
//    void testAddReservation() throws SQLException {
//        // Arrange
//        Reservation reservation = new Reservation();
//        reservation.setId(1);
//        reservation.setName("John Doe");
//        reservation.setEmail("johndoe@example.com");
//        reservation.setPhone("123456789");
//        reservation.setServiceType("Dinner");
//        reservation.setReservationDate(Date.valueOf("2024-09-01"));
//        reservation.setReservationTime(Time.valueOf("19:00:00"));
//        reservation.setGuests(4);
//        reservation.setStatus("Confirmed");
//
//        // Act
//        reservationService.addReservation(reservation);
//
//        // Assert
//        verify(mockReservationDAO).saveReservation(reservation); // Verify that the DAO method was called
//    }
//    
//    @Test
//    void testUpdateReservation() throws SQLException {
//        // Arrange
//        Reservation reservation = new Reservation();
//        reservation.setId(1);
//        reservation.setName("John Doe");
//        reservation.setEmail("johndoe@example.com");
//        reservation.setPhone("123456789");
//        reservation.setServiceType("Dinner");
//        reservation.setReservationDate(Date.valueOf("2024-09-01"));
//        reservation.setReservationTime(Time.valueOf("19:00:00"));
//        reservation.setGuests(4);
//        reservation.setStatus("Confirmed");
//
//        // Act
//        reservationService.updateReservation(reservation);
//
//        // Assert
//        verify(mockReservationDAO).updateReservation(reservation); // Verify that the DAO method was called
//    }
//    @Test
//    void testDeleteReservation() throws SQLException {
//        // Arrange
//        int reservationId = 1;
//
//        // Act
//        reservationService.deleteReservation(reservationId);
//
//        // Assert
//        verify(mockReservationDAO).deleteReservation(reservationId); // Verify that the DAO method was called
//    }
//    @Test
//    void testGetReservationById() throws SQLException {
//        // Arrange
//        int reservationId = 1;
//        Reservation reservation = new Reservation();
//        reservation.setId(reservationId);
//        reservation.setName("John Doe");
//        reservation.setEmail("johndoe@example.com");
//        reservation.setPhone("123456789");
//        reservation.setServiceType("Dinner");
//        reservation.setReservationDate(Date.valueOf("2024-09-01"));
//        reservation.setReservationTime(Time.valueOf("19:00:00"));
//        reservation.setGuests(4);
//        reservation.setStatus("Confirmed");
//
//        when(mockReservationDAO.getReservationById(reservationId)).thenReturn(reservation);
//
//        // Act
//        Reservation result = reservationService.getReservationById(reservationId);
//
//        // Assert
//        assertEquals(reservationId, result.getId());
//        assertEquals("John Doe", result.getName());
//        verify(mockReservationDAO).getReservationById(reservationId); // Verify that the DAO method was called
//    }
//
//
//    @Test
//    void testGetAllReservations() throws SQLException {
//        // Arrange
//        List<Reservation> reservations = new ArrayList<>();
//        Reservation reservation = new Reservation();
//        reservation.setId(1);
//        reservation.setName("John Doe");
//        reservation.setEmail("johndoe@example.com");
//        reservation.setPhone("123456789");
//        reservation.setServiceType("Dinner");
//        reservation.setReservationDate(Date.valueOf("2024-09-01"));
//        reservation.setReservationTime(Time.valueOf("19:00:00"));
//        reservation.setGuests(4);
//        reservation.setStatus("Confirmed");
//        reservations.add(reservation);
//
//        when(mockReservationDAO.getAllReservations()).thenReturn(reservations);
//
//        // Act
//        List<Reservation> result = reservationService.getAllReservations();
//
//        // Assert
//        assertEquals(1, result.size());
//        assertEquals("John Doe", result.get(0).getName());
//        verify(mockReservationDAO).getAllReservations(); // Verify that the DAO method was called
//    }
//    
//    
//}
