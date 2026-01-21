import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;
  const AppLocalizations(this.locale);

  static const supportedLocales = <Locale>[Locale('ar'), Locale('en')];

  static AppLocalizations of(BuildContext context) {
    final loc = Localizations.of<AppLocalizations>(context, AppLocalizations);
    assert(loc != null, 'AppLocalizations not found in context');
    return loc!;
  }

  static const _strings = <String, Map<String, String>>{
    'app_title': {'ar': 'موقعي التعريفي', 'en': 'My Portfolio'},
    'services': {'ar': 'الخدمات', 'en': 'Services'},
    'projects': {'ar': 'المشاريع', 'en': 'Projects'},
    'about': {'ar': 'نبذة', 'en': 'About'},
    'contact': {'ar': 'تواصل', 'en': 'Contact'},
    'toggle_theme': {'ar': 'الثيم', 'en': 'Theme'},
    'toggle_lang': {'ar': 'EN', 'en': 'AR'},
    'menu': {'ar': 'القائمة', 'en': 'Menu'},
    'language': {'ar': 'اللغة', 'en': 'Language'},
    'theme': {'ar': 'الثيم', 'en': 'Theme'},
    'more': {'ar': 'المزيد', 'en': 'More'},

    'pricing': {'ar': 'الأسعار وأكمال الطلب', 'en': 'Pricing and ceckout'},
    'refund_policy': {'ar': 'سياسة الإلغاء والاسترجاع', 'en': 'Refund Policy'},
    'checkout': {'ar': 'إتمام الطلب', 'en': 'Checkout'},

    'quick_links': {'ar': 'روابط سريعة', 'en': 'Quick links'},
    'legal': {'ar': 'سياسات', 'en': 'Legal'},
    'social': {'ar': 'تواصل', 'en': 'Social'},
    'work_with_me': {'ar': 'التعاقد عبر', 'en': 'Hire me via'},
    'copyright':
    {'ar': '© {year} محمد سعد — جميع الحقوق محفوظة', 'en': '© {year} Mohamed Saad — All rights reserved'},

  };

  String t(String key) {
    final lang = locale.languageCode;
    return _strings[key]?[lang] ?? _strings[key]?['en'] ?? key;
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      AppLocalizations.supportedLocales.any((l) => l.languageCode == locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) =>
      SynchronousFuture<AppLocalizations>(AppLocalizations(locale));

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) => false;
}
