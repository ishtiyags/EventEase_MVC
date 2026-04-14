CREATE DATABASE EventEaseDB;
GO

USE EventEaseDB;
GO

CREATE TABLE Venue (
    VenueId INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Location NVARCHAR(150) NOT NULL,
    Capacity INT NOT NULL,
    ImageUrl NVARCHAR(255)
);

CREATE TABLE Event (
    EventId INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(500),
    EventDate DATETIME NOT NULL,
    ImageUrl NVARCHAR(255),
    VenueId INT NOT NULL,
    CONSTRAINT FK_Event_Venue FOREIGN KEY (VenueId)
        REFERENCES Venue(VenueId)
        ON DELETE CASCADE
);

CREATE TABLE Booking (
    BookingId INT PRIMARY KEY IDENTITY(1,1),
    CustomerName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    NumberOfTickets INT NOT NULL,
    EventId INT NOT NULL,
    CONSTRAINT FK_Booking_Event FOREIGN KEY (EventId)
        REFERENCES Event(EventId)
        ON DELETE CASCADE
);