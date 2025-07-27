# You can test your code
## You have coded a function is named sum and compare
## You need testing these functions

# Testing Modülü

Bu modülde `sum` ve `compare` adında iki fonksiyonun kodlanması ve bu fonksiyonların test edilmesi istendi. Testler, Sui'nin güncel test kütüphanesi olan `test_scenario` kullanılarak yazılmıştır.

## Yapılan İmplementasyonlar ve Düzeltmeler

- **sum Fonksiyonu**: İki `u64` sayıyı toplayıp sonucu döndüren basit bir fonksiyon implemente edildi.
- **compare_dates Fonksiyonu**: `compare` ismi yerine daha açıklayıcı olması için `compare_dates` adı kullanıldı. Bu fonksiyon, `TxContext`'ten alınan mevcut işlem zaman damgasını bir `Clock` objesinden alınan zaman damgasıyla karşılaştırır.

### Testlerin Düzeltilmesi ve Güncellenmesi

Derleyici hataları, Sui framework'ünün test fonksiyonlarındaki değişikliklerden kaynaklanıyordu. Testler şu şekilde düzeltildi:

- **Test Senaryosu Başlatma**: `test_scenario::begin(@0xADMIN)` kullanılarak bir test senaryosu başlatıldı.
- **Zamanı İlerletme**: Zamanı ilerletmek için `test_scenario::advance_clock_for_testing` yerine, milisaniye cinsinden zamanı artıran `test_scenario::advance_clock_ms` fonksiyonu kullanıldı.
- **Clock Objesini Alma**: Senaryodan `Clock` objesini almak için eski `test_scenario::clock` yerine `test_scenario::take_clock` ve `test_scenario::return_clock` fonksiyonları kullanıldı. Bu, `Clock` objesinin test sırasında ödünç alınıp sonra senaryoya iade edilmesini sağlar.
- **Kod Temizliği**: Kullanılmayan `use` ifadeleri kaldırılarak test kodu daha temiz hale getirildi.

Bu düzeltmeler sayesinde testler, Sui'nin en son sürümüyle uyumlu ve hatasız bir şekilde çalışmaktadır.