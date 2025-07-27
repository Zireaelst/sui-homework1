# This repo has these:

* WorkshopCapability -> this is a permission to organize a workshop, add actions
* create a workshop with permission
* add a lesson name to workshop list

---

## Yapılan İmplementasyonlar ve Düzeltmeler

- `WorkshopCapability` adında bir yetki (capability) Move modülünde tanımlandı.
- Bu yetkiyle yeni bir workshop oluşturulabiliyor (`create_workshop` fonksiyonu).
- Workshop listesine ders adı eklenebiliyor (`add_lesson` fonksiyonu), bu işlem de yetki gerektiriyor.
- String ve vector tipleri için `std::string::String` ve `std::vector` kullanıldı.
- Struct'lar Move kurallarına uygun şekilde modülün dışında, public olarak tanımlandı.
- Fonksiyon imzaları ve sahiplik kontrolleri Move/Sui standartlarına uygun şekilde düzenlendi.

