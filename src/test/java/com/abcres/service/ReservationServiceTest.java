package com.abcres.service;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.MockitoAnnotations;

import com.abcres.dao.ReservationDAO;
import com.abcres.model.Reservation;
import com.abcres.service.ReservationService;

import java.sql.Date;
import java.sql.Time;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ReservationServiceTest {

    private ReservationService reservationService;
    private ReservationDAO mockReservationDAO;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this); 
        mockReservationDAO = mock(ReservationDAO.class); 
        reservationService = new ReservationService(mockReservationDAO); 
    }

    @Test
    void testAddReservation() throws SQLException {
      
        Reservation reservation = new Reservation();
        reservation.setId(1);
        reservation.setName("John Doe");
        reservation.setEmail("johndoe@example.com");
        reservation.setPhone("123456789");
        reservation.setServiceType("Dinner");
        reservation.setReservationDate(Date.valueOf("2024-09-01"));
        reservation.setReservationTime(Time.valueOf("19:00:00"));
        reservation.setGuests(4);
        reservation.setStatus("Confirmed");

        
        reservationService.addReservation(reservation);

      
        verify(mockReservationDAO).saveReservation(reservation); 
    }
    
    @Test
    void testUpdateReservation() throws SQLException {
       
        Reservation reservation = new Reservation();
        reservation.setId(1);
        reservation.setName("John Doe");
        reservation.setEmail("johndoe@example.com");
        reservation.setPhone("123456789");
        reservation.setServiceType("Dinner");
        reservation.setReservationDate(Date.valueOf("2024-09-01"));
        reservation.setReservationTime(Time.valueOf("19:00:00"));
        reservation.setGuests(4);
        reservation.setStatus("Confirmed");

        
        reservationService.updateReservation(reservation);

        
        verify(mockReservationDAO).updateReservation(reservation); 
    }
    @Test
    void testDeleteReservation() throws SQLException {
        
        int reservationId = 1;

        
        reservationService.deleteReservation(reservationId);

       
        verify(mockReservationDAO).deleteReservation(reservationId); 
    }
    @Test
    void testGetReservationById() throws SQLException {
        
        int reservationId = 1;
        Reservation reservation = new Reservation();
        reservation.setId(reservationId);
        reservation.setName("John Doe");
        reservation.setEmail("johndoe@example.com");
        reservation.setPhone("123456789");
        reservation.setServiceType("Dinner");
        reservation.setReservationDate(Date.valueOf("2024-09-01"));
        reservation.setReservationTime(Time.valueOf("19:00:00"));
        reservation.setGuests(4);
        reservation.setStatus("Confirmed");

        when(mockReservationDAO.getReservationById(reservationId)).thenReturn(reservation);

       
        Reservation result = reservationService.getReservationById(reservationId);

       
        assertEquals(reservationId, result.getId());
        assertEquals("John Doe", result.getName());
        verify(mockReservationDAO).getReservationById(reservationId); 
    }


    @Test
    void testGetAllReservations() throws SQLException {
       
        List<Reservation> reservations = new ArrayList<>();
        Reservation reservation = new Reservation();
        reservation.setId(1);
        reservation.setName("John Doe");
        reservation.setEmail("johndoe@example.com");
        reservation.setPhone("123456789");
        reservation.setServiceType("Dinner");
        reservation.setReservationDate(Date.valueOf("2024-09-01"));
        reservation.setReservationTime(Time.valueOf("19:00:00"));
        reservation.setGuests(4);
        reservation.setStatus("Confirmed");
        reservations.add(reservation);

        when(mockReservationDAO.getAllReservations()).thenReturn(reservations);

      
        List<Reservation> result = reservationService.getAllReservations();

        
        assertEquals(1, result.size());
        assertEquals("John Doe", result.get(0).getName());
        verify(mockReservationDAO).getAllReservations(); 
    }
    
    
}
