# This repo has ownership examples
## Link: https://move-book.com/object/ownership/#:~:text=Sui%20introduces%20four%20distinct%20ownership,and%20control%20in%20object%20management. 

# Ownership Modülü

Bu modülde Sui'deki sahiplik (ownership) tiplerine örnekler verilmesi istendi. Sui'de dört temel sahiplik türü bulunur: bir adrese ait (owned by an address), paylaşılan (shared), değişmez (immutable) ve başka bir objeye ait (owned by another object).

## Yapılan İmplementasyonlar ve Düzeltmeler

- **OwnedObject ve SharedObject Struct'ları**: Örneklerde kullanılmak üzere iki basit struct tanımlandı.
- **create_owned_object Fonksiyonu**: "Owned by an address" (Bir adrese ait) sahiplik türüne örnektir. Oluşturulan `OwnedObject`, `transfer` fonksiyonu ile sadece göndericiye transfer edilir.
- **create_shared_object Fonksiyonu**: "Shared object" (Paylaşılan obje) türüne örnektir. Oluşturulan `SharedObject`, `public_share_object` ile herkesin erişebileceği paylaşılan bir obje haline getirilir.
- **create_immutable_object Fonksiyonu**: "Immutable object" (Değişmez obje) türüne örnektir. Oluşturulan obje, `public_freeze_object` ile dondurulur ve bir daha değiştirilemez hale gelir.
- **Owned by another object**: Dördüncü sahiplik türü olan "başka bir objeye ait olma" durumu, bir objenin başka bir objenin alanına eklenmesiyle gerçekleşir ve daha karmaşık senaryolar gerektirdiği için bu temel örnekte doğrudan gösterilmemiştir.