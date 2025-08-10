# You can build this package

# First Smart Contract Modülü

Bu paketin build edilebilmesi (derlenebilmesi) istendi.

## Yapılan İmplementasyonlar ve Düzeltmeler

- **HelloWorldObject Struct'ı**: Akıllı kontratın bir obje oluşturabilmesi için `HelloWorldObject` adında basit bir struct tanımlandı. Bu struct, bir `id` ve bir `text` alanı içerir.
- **mint Fonksiyonu**: `entry` olarak tanımlanan `mint` fonksiyonu, `HelloWorldObject` objesi oluşturur.
- **"Hello, Sui!"**: Oluşturulan objenin `text` alanına "Hello, Sui!" metni atanır.
- **Transfer**: Oluşturulan obje `transfer` fonksiyonu ile işlemi başlatan adrese gönderilir.
- **Derleme**: Bu haliyle `sui move build` komutu çalıştırıldığında paket hatasız bir şekilde derlenmektedir.