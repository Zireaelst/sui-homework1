# You can take miliseconds from TxContext

# Transaction Context Modülü

Bu modülde, `TxContext`'ten milisaniye cinsinden zaman damgasının alınması istendi.

## Yapılan İmplementasyonlar ve Düzeltmeler

- **get_current_timestamp Fonksiyonu**:
    - `public` olarak tanımlanan bu fonksiyon, parametre olarak `&TxContext` alır.
    - Sui framework'ünün `tx_context` modülünde yer alan `epoch_timestamp_ms` fonksiyonunu çağırır.
    - Bu fonksiyon, mevcut işlemin içinde bulunduğu epoch'un başlangıç zamanını milisaniye cinsinden `u64` olarak döndürür.
    - Dönen bu değeri doğrudan fonksiyonun geri dönüş değeri olarak verir.