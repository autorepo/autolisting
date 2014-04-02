﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Globalization;
using System.Threading;

namespace GlobalisationSupport
{
    public static class CultureManager
    {
        const string EnglishCultureName = "en";
        const string FrenchCultureName = "fr";
        const string ChineseCultureName = "zh";
        const string GermanCultureName = "de";
        const string ItalianCultureName = "it";

        static CultureInfo DefaultCulture
        {
            get
            {
                return SupportedCultures[EnglishCultureName];
            }
        }

        static Dictionary<string, CultureInfo> SupportedCultures { get; set; }


        static void AddSupportedCulture(string name)
        {
            SupportedCultures.Add(name, CultureInfo.CreateSpecificCulture(name));
        }

        static void InitializeSupportedCultures()
        {
            SupportedCultures = new Dictionary<string, CultureInfo>();
            AddSupportedCulture(EnglishCultureName);
            AddSupportedCulture(FrenchCultureName);
            AddSupportedCulture(ChineseCultureName);
            AddSupportedCulture(GermanCultureName);
            AddSupportedCulture(ItalianCultureName);
        }

        static string ConvertToShortForm(string code)
        {
            return code.Substring(0, 2);
        }

        static bool CultureIsSupported(string code)
        {
            if (string.IsNullOrWhiteSpace(code))
                return false;
            code = code.ToLowerInvariant();
            if (code.Length == 2)
                return SupportedCultures.ContainsKey(code);
            return CultureFormatChecker.FormattedAsCulture(code) && SupportedCultures.ContainsKey(ConvertToShortForm(code));
        }

        public static string GetLanguage(string code)
        {
            if (!CultureIsSupported(code))
                return DefaultCulture.TwoLetterISOLanguageName;
            
            string shortForm = ConvertToShortForm(code).ToLowerInvariant();
            return shortForm;
        }

        public static string GetLanguage()
        {
            string code = System.Threading.Thread.CurrentThread.CurrentUICulture.TwoLetterISOLanguageName;

            if (!CultureIsSupported(code))
                return DefaultCulture.TwoLetterISOLanguageName;

            string shortForm = ConvertToShortForm(code).ToLowerInvariant();
            return shortForm;
        }		
		
        static CultureInfo GetCulture(string code)
        {
            if (!CultureIsSupported(code))
                return DefaultCulture;
            string shortForm = ConvertToShortForm(code).ToLowerInvariant(); ;
            return SupportedCultures[shortForm];
        }

        public static void SetCulture(string code)
        {
            CultureInfo cultureInfo = GetCulture(code);
            Thread.CurrentThread.CurrentUICulture = cultureInfo;
            Thread.CurrentThread.CurrentCulture = cultureInfo;
        }

        public static string GetCulture()
        {
            string code = System.Threading.Thread.CurrentThread.CurrentUICulture.TwoLetterISOLanguageName;
            return code;
        }

        static CultureManager()
        {
            InitializeSupportedCultures();
        }
    }
}
