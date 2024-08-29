#[starknet::interface]
trait ICalculator<TContractState> {
    fn set_owner(ref self: TContractState, new_owner: ByteArray);
    fn is_on(self: @TContractState) -> bool;
    fn turn_off(ref self: TContractState);
    fn turn_on(ref self: TContractState);
    fn sum(ref self: TContractState, a: u128, b: u128);
    fn sub(ref self: TContractState, a: u128, b: u128);
    fn div(ref self: TContractState, a: u128, b: u128);
    fn mult(ref self: TContractState, a:u128, b:u128);
    fn sum_result(self: @TContractState) -> u128;
    fn sub_result(self: @TContractState) -> u128;
    fn div_result(self: @TContractState) -> u128;
    fn mult_result(self: @TContractState) -> u128;
    fn return_result_of(self: @TContractState, operation: felt252) -> u128;
}