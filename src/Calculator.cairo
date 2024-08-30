#[starknet::interface]
trait ICalculator<TContractState> {
    fn set_owner(ref self: TContractState, new_owner: ByteArray);
    fn is_on(self: @TContractState) -> bool;
    fn turn_off(ref self: TContractState);
    fn turn_on(ref self: TContractState);
    fn sum(ref self: TContractState, a: u128, b: u128);
    fn sub(ref self: TContractState, a: u128, b: u128);
    fn div(ref self: TContractState, a: u128, b: u128);
    fn mult(ref self: TContractState, a: u128, b: u128);
    fn sum_result(self: @TContractState) -> u128;
    fn sub_result(self: @TContractState) -> u128;
    fn div_result(self: @TContractState) -> u128;
    fn mult_result(self: @TContractState) -> u128;
    fn return_result_of(self: @TContractState, operation: felt252) -> u128;
}

#[starknet::contract]
mod Calculator {
    use::ICalculator;

    #[storage] //To storage data in memory. ALWAYS must exist
    struct Storage {
        owner: ByteArray,
        power: bool,
        sum_result: u128,
        sub_result: u128,
        div_result: u128,
        mult_result: u128,
        fallback_value: u128,
    }

    #[constructor]
        fn constructor(ref self: ContractState){
            self.owner.write("I don't have an owner");
            self.power.write(true);
            self.sum_result.write(0);
            self.sub_result.write(0);
            self.div_result.write(0);
            self.mult_result.write(0);
            self.fallback_value.write(0);
        }


    #[abi(embed_0)] //To declare a public function
    impl Calculator of ICalculator<ContractState> {

        fn

    }

}
