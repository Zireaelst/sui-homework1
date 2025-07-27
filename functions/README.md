# There are functions:
## sum function: we have 2 number, we need to summarize these numbers
## say_hello function: we need to say hello in this function
## check function: we give a number and we check this number is odd or not 

# Functions Modülü

Bu modülde üç farklı fonksiyonun implemente edilmesi istendi: `sum`, `say_hello` ve `check`.

## Yapılan İmplementasyonlar ve Düzeltmeler

- **sum Fonksiyonu**: İki adet `u64` tipinde sayıyı parametre olarak alır ve bu sayıların toplamını `u64` olarak döndürür.
- **say_hello Fonksiyonu**: Parametre almaz ve "Hello" metnini `String` tipinde döndürür.
- **is_odd (check) Fonksiyonu**: `check` ismi yerine daha anlaşılır olması için `is_odd` adı kullanıldı. Bir `u64` sayı alır ve bu sayının tek olup olmadığını kontrol eder. Sayı tek ise `true`, çift ise `false` döndürür. Bu kontrol, sayının 2'ye bölümünden kalanın 0 olup olmadığına bakılarak yapılır.