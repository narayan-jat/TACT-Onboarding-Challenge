import "@stdlib/deploy";

// Creating new contract CounterContract.
// Deployable is trait which is used to deploy contract in the standard way
// we have imported this from the @stdlib.
contract CounterContract with Deployable{
    // creating a holder for value.
    val: Int as unit32;
    // init is like a constructor which is executed while deploying the contract.
    init(){
        // setting value for the val
        self.val = 0;
    }

    // creating a getter function.
    get fun counter(): Int {
        return self.val;
    }

    // sending message.
    receive("Increment") {
        self.val = self.val + 1;
    }
}