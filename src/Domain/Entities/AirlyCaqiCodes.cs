﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain.Entities
{
    public class AirlyCaqiCodes
    {
        [Key] public int AirlyCaqiCodesId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string Advice { get; set; }
        public string Icon { get; set; }
        public string Color { get; set; }
    }
}