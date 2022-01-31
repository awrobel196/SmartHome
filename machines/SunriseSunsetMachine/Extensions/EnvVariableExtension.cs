using Infrastructure.Persistance;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace SunriseSunsetMachine.Extensions
{
    public static class EnvVariableExtension
    {
        public static string GetEnvVariable(this ApplicationDbContext context, string envKey)
        {
            string result = context.EnvVariable.First(x => x.Key == envKey).Value;
            return result;
        }
    }
}
