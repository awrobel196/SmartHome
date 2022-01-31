# Dokumentacja SmartHome ![alt text](https://img.shields.io/badge/Aplikacja-1.0-blue) ![alt text](https://img.shields.io/badge/Dokumentacja-1.2-green)
![Netwings logo](https://github.com/awrobel196/CSharpDeveloper/blob/main/_Assets/logos.jpg?raw=true)



#### O aplikacji
Aplikacja SmartHome to domowa pogodynka, która pozwala na śledzenie informacji dotyczących aktualnej pogody, jakości powietrza czy prognozowanej pogody. Dodatkowo aplikacja intergruje moduły IoT monitorujące temperaturę, ciśnienie oraz wilgotność w danych pomieszczeniach i pozwala wyświetlać otrzymane z nich dane.

![Netwings logo](https://github.com/awrobel196/CSharpDeveloper/blob/main/_Assets/weather_forecast_roun.png?raw=true)

#### Demo
Aplikacja SmartHome to domowa pogodynka, która pozwala na śledzenie informacji dotyczących aktualnej pogody, jakości powietrza czy prognozowanej pogody. Dodatkowo aplikacja intergruje moduły IoT monitorujące temperaturę, ciśnienie oraz wilgotność w danych pomieszczaeniach i pozwala wyświetlać otrzymane z nich dane.

#### Instalacja
Aplikacja SmartHome to domowa pogodynka, która pozwala na śledzenie informacji dotyczących aktualnej pogody, jakości powietrza czy prognozowanej pogody. Dodatkowo aplikacja intergruje moduły IoT monitorujące temperaturę, ciśnienie oraz wilgotność w danych pomieszczaeniach i pozwala wyświetlać otrzymane z nich dane.

---

### 2. Komponenty aplikacji

#### 2.1. Pogoda
Za obsługę aktualnej pogody oraz prognozy pogody odpowiedzialna jest aplikacja uruchamiana za pomocą **Azure Function**. Dane na temat aktualnej pogody jak i jej prognozy pobieranę są za pomocą API OpenWeatherMap. Dane dotyczące prognozy pogody pobierane są na cztery najbliższe dni. W czasie przetwarzania danych pogody, pobierane są takie informację jak:
- temperatura powietrza
- odczuwalna temperatura
- prędkość wiatru
- ciśnienie atmosferyczne
- poziom wilgotności

#### 2.2. Jakość powietrza
Pobieraniem oraz obsługą informacji na temat jakości powietrza zarządza aplikacja uruchamiana za pomocą **Azure Function**, która agreguje dane o aktualnej jakości powietrza przy użyciu Airly API. Aplikacja przetwarza następujące dane:
- PM1 - pył którego cząsteczka nie przekracza 1 μm
- PM2.5 - pył którego cząsteczka nie przekracza 2.5 μm
- PM10 - pył którego cząsteczka nie przekracza 10 μm
- AQI - indeks informujący o jakości powietrza (skala od 1 do 100 gdzie 100 to najgorsza jakość powietrza)

#### 2.3. Cykl słoneczny
Informacje na temat wschodu jak i zachodu słońca agreguje aplikacja uruchamiana za pomocą **Azure Function**, która korzysta z API Sunrise-Sunset API i zbiera informację na temat godziny wschodu jak i zachodu słońca dla danej lokalizacji

#### 2.4. Lokalny pomiar temperatury
Obsługiwany za pomocą urządzeń Raspberry Pi oraz modułu ESP8266, które kontroluje aplikacja agregująca dane z czujnka co określony przedział czasu. W samym interfejsie aplikacji wyświetlane mogą być informacje z kilku czujników temperatury rozmieszczonych w różnych pomiesczeniach. Sam moduł IoT monitoruje dane na temat:
- temperatury powietrza
- ciśnienia atmosferycznego
- poziomu wilgotności

---
