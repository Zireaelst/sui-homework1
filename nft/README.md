# NFT Modülü

Bu modülde bir NFT (Non-Fungible Token) oluşturulması istendi.

## Yapılan İmplementasyonlar ve Düzeltmeler

- **WorkshopNFT Struct'ı**: Bir NFT'yi temsil etmek için `WorkshopNFT` adında bir struct tanımlandı. Bu struct, Sui'deki standart NFT'ler gibi `key` ve `store` yeteneklerine sahiptir ve aşağıdaki alanları içerir:
    - `id`: NFT'nin benzersiz kimliği.
    - `name`: NFT'nin adı.
    - `description`: NFT'nin açıklaması.
    - `url`: NFT'nin görseli veya meta verisi için bir URL.
- **mint_nft Fonksiyonu**: Dışarıdan çağrılabilen (`entry`) bu fonksiyon, yeni bir `WorkshopNFT` objesi oluşturur (mint'ler).
    - Parametre olarak `name`, `description` ve `url` alır.
    - `public_transfer` ile oluşturulan NFT'yi işlemi başlatan adrese transfer eder.