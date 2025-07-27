#[test_only]
module testing::testing_tests {
    use testing::testing::{sum, compare_dates};
    use sui::test_scenario;
    use sui::clock::Clock; // compare_dates fonksiyonu için Clock tipini import et

    const SENDER: address = @0xCAFE;

    #[test]
    fun test_sum_success() {
        assert!(sum(5, 10) == 15, 0);
        assert!(sum(0, 0) == 0, 1);
    }

    #[test]
    fun test_compare_dates_success() {
        // Bu test, modern test senaryosu API'sini kullanır.
        // Hata almamak için Move.toml dosyasındaki Sui bağımlılığını
        // 'devnet' veya 'mainnet' gibi güncel bir revizyona çekmelisiniz.
        let mut scenario = test_scenario::begin(SENDER);

        // Modern fonksiyonlarla zamanı ilerletme
        test_scenario::advance_clock_ms(&mut scenario, 1000);

        // Clock objesini senaryodan ödünç alma
        let clock = test_scenario::take_clock(&mut scenario);
        {
            let ctx = test_scenario::ctx(&mut scenario);
            assert!(compare_dates(&clock, ctx) == true, 0);
        };
        // Clock objesini senaryoya iade etme
        test_scenario::return_clock(&mut scenario, clock);

        test_scenario::end(scenario);
    }

    #[test]
    #[expected_failure]
    fun test_sum_fail() {
        assert!(sum(5, 10) == 10, 0);
    }
}