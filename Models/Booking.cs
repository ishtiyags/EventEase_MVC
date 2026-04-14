using System.ComponentModel.DataAnnotations;

namespace EventEase.Models
{
    public class Booking
    {
        public int BookingId { get; set; }

        [Required]
        public string CustomerName { get; set; }

        public string Email { get; set; }

        public int NumberOfTickets { get; set; }

        public int EventId { get; set; }

        public Event? Event { get; set; }
    }
}