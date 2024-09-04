//package com.abcres.dao;
//
//import com.abcres.model.Reservation;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//import org.mockito.InjectMocks;
//import org.mockito.Mock;
//import org.mockito.MockitoAnnotations;
//
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.List;
//
//import static org.junit.jupiter.api.Assertions.*;
//import static org.mockito.Mockito.*;
//
//class ReservationDAOTest {
//
//    @Mock
//    private Connection mockConnection;
//
//    @InjectMocks
//    private ReservationDAO reservationDAO;
//
//    @BeforeEach
//    void setUp() throws SQLException {
//        MockitoAnnotations.openMocks(this);
//    }
//
//    @Test
//    void testSaveReservation() throws SQLException {
//        // Arrange
//        Reservation reservation = new Reservation("John Doe", "john.doe@example.com", "123456789", "Dinner", Date.valueOf("2024-09-01"), Time.valueOf("19:00:00"), 4, "Confirmed");
//        String sql = "INSERT INTO reservations (name, email, phone, service_type, reservation_date, reservation_time, guests, status, created_at) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
//        PreparedStatement mockStatement = mock(PreparedStatement.class);
//        when(mockConnection.prepareStatement(sql)).thenReturn(mockStatement);
//
//        // Act
//        reservationDAO.saveReservation(reservation);
//
//        // Assert
//        verify(mockStatement, times(1)).setString(1, reservation.getName());
//        verify(mockStatement, times(1)).setString(2, reservation.getEmail());
//        verify(mockStatement, times(1)).setString(3, reservation.getPhone());
//        verify(mockStatement, times(1)).setString(4, reservation.getServiceType());
//        verify(mockStatement, times(1)).setDate(5, reservation.getReservationDate());
//        verify(mockStatement, times(1)).setTime(6, reservation.getReservationTime());
//        verify(mockStatement, times(1)).setInt(7, reservation.getGuests());
//        verify(mockStatement, times(1)).setString(8, reservation.getStatus());
//        verify(mockStatement, times(1)).setTimestamp(9, any(Timestamp.class));
//        verify(mockStatement, times(1)).executeUpdate();
//    }
//
//    @Test
//    void testGetAllReservations() throws SQLException {
//        // Arrange
//        String sql = "SELECT * FROM reservations";
//        Statement mockStatement = mock(Statement.class);
//        ResultSet mockResultSet = mock(ResultSet.class);
//
//        when(mockConnection.createStatement()).thenReturn(mockStatement);
//        when(mockStatement.executeQuery(sql)).thenReturn(mockResultSet);
//
//        when(mockResultSet.next()).thenReturn(true).thenReturn(false);
//        when(mockResultSet.getInt("id")).thenReturn(1);
//        when(mockResultSet.getString("name")).thenReturn("John Doe");
//        when(mockResultSet.getString("email")).thenReturn("john.doe@example.com");
//        when(mockResultSet.getString("phone")).thenReturn("123456789");
//        when(mockResultSet.getString("service_type")).thenReturn("Dinner");
//        when(mockResultSet.getDate("reservation_date")).thenReturn(Date.valueOf("2024-09-01"));
//        when(mockResultSet.getTime("reservation_time")).thenReturn(Time.valueOf("19:00:00"));
//        when(mockResultSet.getInt("guests")).thenReturn(4);
//        when(mockResultSet.getString("status")).thenReturn("Confirmed");
//
//        // Act
//        List<Reservation> reservations = reservationDAO.getAllReservations();
//
//        // Assert
//        assertEquals(1, reservations.size());
//        Reservation reservation = reservations.get(0);
//        assertEquals("John Doe", reservation.getName());
//        assertEquals("john.doe@example.com", reservation.getEmail());
//        assertEquals("123456789", reservation.getPhone());
//        assertEquals("Dinner", reservation.getServiceType());
//        assertEquals(Date.valueOf("2024-09-01"), reservation.getReservationDate());
//        assertEquals(Time.valueOf("19:00:00"), reservation.getReservationTime());
//        assertEquals(4, reservation.getGuests());
//        assertEquals("Confirmed", reservation.getStatus());
//    }
//
//    @Test
//    void testGetReservationById() throws SQLException {
//        // Arrange
//        String sql = "SELECT * FROM reservations WHERE id = ?";
//        PreparedStatement mockStatement = mock(PreparedStatement.class);
//        ResultSet mockResultSet = mock(ResultSet.class);
//
//        when(mockConnection.prepareStatement(sql)).thenReturn(mockStatement);
//        when(mockStatement.executeQuery()).thenReturn(mockResultSet);
//
//        when(mockResultSet.next()).thenReturn(true).thenReturn(false);
//        when(mockResultSet.getInt("id")).thenReturn(1);
//        when(mockResultSet.getString("name")).thenReturn("John Doe");
//        when(mockResultSet.getString("email")).thenReturn("john.doe@example.com");
//        when(mockResultSet.getString("phone")).thenReturn("123456789");
//        when(mockResultSet.getString("service_type")).thenReturn("Dinner");
//        when(mockResultSet.getDate("reservation_date")).thenReturn(Date.valueOf("2024-09-01"));
//        when(mockResultSet.getTime("reservation_time")).thenReturn(Time.valueOf("19:00:00"));
//        when(mockResultSet.getInt("guests")).thenReturn(4);
//        when(mockResultSet.getString("status")).thenReturn("Confirmed");
//
//        // Act
//        Reservation reservation = reservationDAO.getReservationById(1);
//
//        // Assert
//        assertNotNull(reservation);
//        assertEquals(1, reservation.getId());
//        assertEquals("John Doe", reservation.getName());
//        assertEquals("john.doe@example.com", reservation.getEmail());
//        assertEquals("123456789", reservation.getPhone());
//        assertEquals("Dinner", reservation.getServiceType());
//        assertEquals(Date.valueOf("2024-09-01"), reservation.getReservationDate());
//        assertEquals(Time.valueOf("19:00:00"), reservation.getReservationTime());
//        assertEquals(4, reservation.getGuests());
//        assertEquals("Confirmed", reservation.getStatus());
//    }
//
//    @Test
//    void testUpdateReservation() throws SQLException {
//        // Arrange
//        Reservation reservation = new Reservation("Jane Doe", "jane.doe@example.com", "987654321", "Lunch", Date.valueOf("2024-10-01"), Time.valueOf("12:00:00"), 2, "Pending");
//        String sql = "UPDATE reservations SET name = ?, email = ?, phone = ?, service_type = ?, reservation_date = ?, reservation_time = ?, guests = ?, status = ? WHERE id = ?";
//        PreparedStatement mockStatement = mock(PreparedStatement.class);
//        when(mockConnection.prepareStatement(sql)).thenReturn(mockStatement);
//
//        // Act
//        reservation.setId(1);
//        reservationDAO.updateReservation(reservation);
//
//        // Assert
//        verify(mockStatement, times(1)).setString(1, reservation.getName());
//        verify(mockStatement, times(1)).setString(2, reservation.getEmail());
//        verify(mockStatement, times(1)).setString(3, reservation.getPhone());
//        verify(mockStatement, times(1)).setString(4, reservation.getServiceType());
//        verify(mockStatement, times(1)).setDate(5, reservation.getReservationDate());
//        verify(mockStatement, times(1)).setTime(6, reservation.getReservationTime());
//        verify(mockStatement, times(1)).setInt(7, reservation.getGuests());
//        verify(mockStatement, times(1)).setString(8, reservation.getStatus());
//        verify(mockStatement, times(1)).setInt(9, reservation.getId());
//        verify(mockStatement, times(1)).executeUpdate();
//    }
//
//    @Test
//    void testDeleteReservation() throws SQLException {
//        // Arrange
//        String sql = "DELETE FROM reservations WHERE id = ?";
//        PreparedStatement mockStatement = mock(PreparedStatement.class);
//        when(mockConnection.prepareStatement(sql)).thenReturn(mockStatement);
//
//        // Act
//        reservationDAO.deleteReservation(1);
//
//        // Assert
//        verify(mockStatement, times(1)).setInt(1, 1);
//        verify(mockStatement, times(1)).executeUpdate();
//    }
//}
