using System;
using System.ComponentModel.DataAnnotations;

namespace EventEase.Models
{
    public class Event
    {
        public int EventId { get; set; }

        [Required]
        public string Name { get; set; }

        public string Description { get; set; }

        [Required]
        public DateTime EventDate { get; set; }

        public string ImageUrl { get; set; }

        [Required]
        public int VenueId { get; set; }

        public Venue Venue { get; set; }
    }
}