namespace QuantumOperations
{
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Measurement;

    operation BellState() : Unit {
        use qubits = Qubit[2];
        // Initialize the qubits to |00>
        H(qubits[0]);
        CNOT(qubits[0], qubits[1]);
        // Measure the qubits
        let result0 = M(qubits[0]);
        if (result0 == One) {
            Message("The state is |11>");
        } else {
            Message("The state is |00>");
        }
        let result1 = M(qubits[1]);
        if (result1 == One) {
            Message("The state is |01>");
        } else {
            Message("The state is |10>");
        }
        //output the results
        Message($"Result: {result0}, {result1}");
        // Reset the qubits
        ResetAll(qubits);
        // Release the qubits
        for qubit in qubits {
            Reset(qubit);
        }
    }
}