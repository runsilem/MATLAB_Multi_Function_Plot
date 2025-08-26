
# 📊 Gelişmiş Çoklu Fonksiyon Çizici (MATLAB)

Bu proje, MATLAB kullanarak **birden fazla fonksiyonu aynı grafikte** karşılaştırmalı olarak çizmeyi sağlar.  
Kullanıcı, **fonksiyon türlerini**, **grafik aralığını**, **çözünürlüğü**, **renk** ve **çizgi stilini** kendi seçebilir.  
Hem öğrenme amaçlı hem de görsel sunumlarda kullanılabilecek, interaktif bir grafik oluşturma aracıdır.

---

## 🚀 Özellikler
- **Çoklu Fonksiyon Seçimi:** sin(x), cos(x), exp(x), tan(x) (*listeye kolayca yenileri eklenebilir*).
- **Kişiselleştirilebilir Görünüm:** Her fonksiyon için farklı renk ve çizgi tipi.
- **Dinamik Aralık ve Çözünürlük:** Kullanıcı başlangıç–bitiş değerlerini ve nokta sayısını belirler.
- **Karşılaştırmalı Grafik:** Tüm fonksiyonlar tek eksende gösterilir.
- **Geliştirilebilir Alt Yapı:** Yeni fonksiyonlar ve grafik özellikleri kolayca eklenebilir.

---

## 📂 Proje Yapısı
```plaintext
📁 proje_klasoru
 ├── multi_function_plot.m   # Ana MATLAB kodu
 ├── README.md               # Proje dökümantasyonu
 └── img/
     ├── example1.png
     ├── example2.png
     └── example3.png
     └── example4.png
     └── example5.png
     └── example6.png
     └── example7.png
     └── example8.png
---

## 🖥️ Kullanım
1. MATLAB veya Octave açın.
2. `multi_function_plot.m` dosyasını çalıştırın.
3. Konsolda yönlendirmeleri takip ederek:
   - **X aralığını**
   - **Çözünürlüğü**
   - **Fonksiyon numaralarını**
   - **Renk ve çizgi stillerini** girin.
4. Grafiğiniz otomatik olarak oluşturulacaktır.

---

## 📷 Örnek Çıktılar
Aşağıdaki örnekler, farklı kombinasyonlar ile elde edilmiştir:

| Fonksiyonlar       | Renk/Stil     | Çıktı Görseli |
|--------------------|--------------|---------------|
| sin(x), cos(x)     | m- , g--     | ![Example 6](img/example6.png) |
| exp(x), tan(x)     | r: , b-.     | ![Example 7](img/example7.png) |
| sin(x), exp(x), cos(x) | b-, r--, g: | ![Example 8](img/example8.png) |

---

## 🔧 Geliştirme Fikirleri
- Logaritmik eksen seçeneği eklemek
- `area()` ile alan dolgulu grafikler
- Kullanıcıdan matematiksel ifade string olarak alma (`inline`/`str2func`)
- PNG olarak otomatik çıktı kaydetme
- GUI (Grafiksel Arayüz) ekleme

---

## 🤝 Katkı
- İyileştirme, yeni özellik ekleme veya hata düzeltme için **Pull Request** açabilirsiniz.
- Sorularınız için **Issues** sekmesini kullanabilirsiniz.

