namespace QuantumOperations
{
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;

    open Microsoft.Quantum.Measurement;

    operation teleportation(source: Qubit, target: Qubit) : Unit {
        // Create Bell pair
        use bellPair = Qubit[2];
        H(target);
        CNOT(target, bellPair[0]);
        // Entangle the source qubit with the target qubit
        CNOT(source, target);
        H(source);
        // Measure the source qubit
        let m1 = M(source);
        let m2 = M(target);
        // Apply corrections to the bell pair based on the measurement results
        if (m1 == One) {
            Z(bellPair[0]);
        }
        if (m2 == One) {
            X(bellPair[0]);
        }
        // copy the state
        CNOT(bellPair[0], target);
        Reset(bellPair[0]);
    }
    operation TeleportandVerify() : Result {
        use source = Qubit();
        use target = Qubit();
        // Initialize the source qubit to |1>
        H(source);
        // Teleport the state
        teleportation(source, target);
        // Measure the target qubit
        let result = M(target);
        if (result == One) {
            Message("The state is |1>");
            return One;
        } else {
            Message("The state is |0>");
            return Zero;
        }
        Reset(source);
        Reset(target);
        return result;
    }
    operation teleportationTest() : Unit {
        use source = Qubit();
        use target = Qubit();
        // Initialize the source qubit to |1>
        X(source);
        // Teleport the state
        teleportation(source, target);
        // Measure the target qubit
        let result = M(target);
        if (result == One) {
            Message("The state is |1>");
        } else {
            Message("The state is |0>");
        }
        // Reset the qubits
        Reset(source);
        Reset(target);
    }
    operation teleportationTest2() : Unit {
        use source = Qubit();
        use target = Qubit();
        // Initialize the source qubit to |1>
        X(source);
        // Teleport the state
        teleportation(source, target);
        // Measure the target qubit
        let result = M(target);
        if (result == One) {
            Message("The state is |1>");
        } else {
            Message("The state is |0>");
        }
        // Reset the qubits
        Reset(source);
        Reset(target);
    }
}