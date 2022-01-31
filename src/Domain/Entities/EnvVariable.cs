﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain.Entities
{
    public class EnvVariable
    {
        [Key] public int IdEnvVariable { get; set; }
        public string Key { get; set; }
        public string Value { get; set; }
    }
}