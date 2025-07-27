# You have a function is named compare
## This function compare two dates. First date from TxContext -> epoch
## You can pass Clock object for other date. 
## You compare these dates. return type is bool

# Time Usage Modülü

Bu modülde, `compare` adında bir fonksiyonun implemente edilmesi istendi. Bu fonksiyon, `TxContext`'ten alınan epoch zaman damgasını, parametre olarak verilen bir `Clock` objesinin zaman damgasıyla karşılaştıracaktır.

## Yapılan İmplementasyonlar ve Düzeltmeler

- **compare Fonksiyonu**:
    - Parametre olarak `&TxContext` ve `&Clock` alır.
    - `tx_context::epoch_timestamp_ms(ctx)` ile mevcut işlemin başladığı epoch'un milisaniye cinsinden zaman damgasını alır.
    - `clock::timestamp_ms(clock)` ile `Clock` objesinin milisaniye cinsinden zaman damgasını alır.
    - Bu iki zaman damgasını karşılaştırır ve işlemin zamanı `Clock` objesinin zamanından büyük veya eşitse `true`, değilse `false` döndürür.