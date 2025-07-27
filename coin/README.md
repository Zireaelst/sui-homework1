# Workshop Coin Modülü

Bu modülde, "Workshop" adında bir coin (jeton) oluşturulması istendi.

## Yapılan İmplementasyonlar ve Düzeltmeler

Başlangıçta kod derlenirken bazı hatalar ve uyarılar alındı. Kod, Move dilinin kurallarına ve en iyi pratiklerine uygun olacak şekilde aşağıda belirtilen adımlarla düzeltildi:

- **One-Time Witness (Tek Seferlik Şahit) Düzeltmesi**:
    - **Hata**: `init` fonksiyonu, modül adıyla aynı isme sahip büyük harfli bir struct (`COIN`) beklerken, `WORKSHOP` adında bir struct tanımlanmıştı.
    - **Düzeltme**: Move kuralları gereği, one-time witness struct'ının adı modül adının büyük harfli hali olmalıdır. Bu nedenle `struct WORKSHOP`, `struct COIN` olarak yeniden adlandırıldı.

- **`init` Fonksiyonu Görünürlüğü**:
    - **Hata**: `init` fonksiyonu `public` olarak