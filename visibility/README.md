# We have private, entry and public functions.
## Visibility Modülü

Bu modülde `private`, `entry` ve `public` fonksiyonların nasıl çalıştığını gösteren örnekler implemente edilmesi istendi.

## Yapılan İmplementasyonlar ve Düzeltmeler

Move dilinde fonksiyonların görünürlüğü üç seviyede kontrol edilir:

1.  **Private (Özel) Fonksiyonlar**: `fun` ile başlar ve sadece tanımlandıkları modül içinden çağrılabilirler.
2.  **Public (Genel) Fonksiyonlar**: `public fun` ile tanımlanır ve diğer modüller tarafından çağrılabilirler.
3.  **Entry (Giriş) Fonksiyonları**: `public entry fun` ile tanımlanır ve bir işlem olarak doğrudan çağrılabilirler.

Bu modülde bu kurallara göre aşağıdaki fonksiyonlar implemente edildi:

- **add_one (Private)**: Sadece bu modül içinden erişilebilen, özel bir fonksiyondur.
- **add_two (Public)**: Diğer modüllerden çağrılabilen, genel bir fonksiyondur.
- **execute_addition (Entry)**: Bir işlem olarak dışarıdan çağrılabilen bir giriş fonksiyonudur.

### Derleyici Düzeltmeleri
- **Parametre Sırası**: Bir `entry` fonksiyonunda `&mut TxContext` parametresinin her zaman sonda olması gerektiği kuralına uyularak `execute_addition` fonksiyonunun imzası düzeltildi.
- **Kod Temizliği**: Kullanılmayan parametreler alt çizgi (`_`) ile işaretlendi ve gereksiz `use` ifadeleri kaldırıldı.