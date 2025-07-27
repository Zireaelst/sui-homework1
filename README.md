# Sui Homework 1 Projesi

Bu proje, Sui Move programlama dilinin temel konseptlerini ve özelliklerini öğrenmek amacıyla hazırlanmış bir dizi alıştırma içermektedir. Proje, her biri farklı bir konuya odaklanan modüllerden oluşur. Her modülün kendi içerisinde, yapılan implementasyonları ve düzeltmeleri açıklayan detaylı bir `README.md` dosyası bulunmaktadır.

Aşağıdaki listeden ilgilendiğiniz modülü seçerek ilgili `README.md` dosyasına ulaşabilir ve yapılan çalışmalar hakkında detaylı bilgi alabilirsiniz.

## Modüller ve Açıklamaları

- **[Build](./build/README.md)**: Hatalı bir projenin `sui move build` komutu ile nasıl derlenebilir hale getirildiğini ve yapılan düzeltmeleri içerir.

- **[Capability](./capability/README.md)**: Sui'deki "Capability" deseninin nasıl kullanılacağını, yetkiye bağlı fonksiyonların nasıl oluşturulacağını gösterir.

- **[Coin](./coin/README.md)**: `WORKSHOP` adında, 1,000,000 arza sahip ve tek seferlik şahit (one-time witness) ile oluşturulan bir coinin nasıl implemente edildiğini açıklar.

- **[Data Types](./data_types/README.md)**: Move dilindeki temel veri tiplerinin (`String`, `u8`, `bool`, `vector`) nasıl kullanıldığını bir `UserProfile` struct'ı üzerinden örnekler.

- **[First Smart Contract](./first_smart_contract/README.md)**: "Hello, Sui!" yazan basit bir akıllı kontratın nasıl oluşturulduğunu ve derlendiğini gösterir.

- **[Functions](./functions/README.md)**: Toplama, metin döndürme ve sayı kontrolü gibi farklı amaçlara hizmet eden fonksiyonların nasıl yazıldığını anlatır.

- **[NFT](./nft/README.md)**: Ad, açıklama ve URL gibi temel özelliklere sahip bir `WorkshopNFT`'nin nasıl oluşturulduğunu ve mint'lendiğini gösterir.

- **[Ownership](./ownership/README.md)**: Sui'deki dört farklı obje sahiplik modelini (Owned, Shared, Immutable, Owned by another object) örneklerle açıklar.

- **[Testing](./testing/README.md)**: `sum` ve `compare_dates` fonksiyonlarının `test_scenario` kullanılarak nasıl test edildiğini gösterir.

- **[Time Usage](./time_usage/README.md)**: `TxContext` ve `Clock` objelerinden alınan zaman damgalarının nasıl karşılaştırıldığını anlatan bir `compare` fonksiyonu içerir.

- **[Transaction Context](./transaction_context/README.md)**: Bir işlem içerisindeki `TxContext` objesinden işlem zaman damgasının nasıl alınacağını gösterir.

- **[Visibility](./visibility/README.md)**: Move dilindeki `private`, `public` ve `entry` fonksiyon görünürlüklerinin ne anlama geldiğini ve nasıl kullanıldığını örneklerle açıklar.