using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConciFes
{
    using System;

    public static class SifreKontrol
    {
        public static bool SifreEslesiyorMu(string sifre, string sifreTekrar)
        {
            if (sifre == sifreTekrar)
            {
                if (sifre.Length >= 6)
                {
                    return true; // Şifreler eşleşiyor ve uzunluk gereksinimini karşılıyor
                }
                else
                {
                    return false; // Şifreler eşleşiyor, ancak uzunluk gereksinimini karşılamıyor
                }
            }
            else
            {
                return false; // Şifreler eşleşmiyor
            }
        }
    }

}