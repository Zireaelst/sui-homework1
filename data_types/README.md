# You can use let heyword. You can use it to assing a type's value
## You can describe a name, age, is_coder, lessons fields.
## 

# Primitive Types Modülü

Bu modülde `let` anahtar kelimesi kullanılarak çeşitli tiplerde değerler atanması istendi. İstenen alanlar: `name`, `age`, `is_coder` ve `lessons`.

## Yapılan İmplementasyonlar ve Düzeltmeler

- **UserProfile Struct'ı**: İstenen alanları (`name`, `age`, `is_coder`, `lessons`) içeren `UserProfile` adında bir struct tanımlandı.
- **create_user_profile Fonksiyonu**: `entry` olarak tanımlanan bu fonksiyon içinde `let` anahtar kelimesi kullanılarak değerler atandı:
    - `name`: "Zireael" olarak bir `String` atandı.
    - `age`: 25 olarak bir `u8` (tamsayı) atandı.
    - `is_coder`: `true` olarak bir `bool` atandı.
    - `lessons`: "Move", "Sui", "Rust" elemanlarını içeren bir `vector<String>` atandı.
- **Obje Oluşturma**: Atanan bu değerler kullanılarak bir `UserProfile` objesi oluşturuldu ve `public_transfer` ile göndericiye aktarıldı.