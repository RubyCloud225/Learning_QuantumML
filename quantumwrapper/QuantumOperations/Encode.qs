namespace QuantumWrapper
{
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Arrays;
    
    
    operation EncodeTensorAmplitude(tensor: Double[][]) : Unit {
        // Flatten the tensor into a single array
        let flattenedTensor = Fold((acc, x) -> acc + x, [], tensor);
        let norm = Sqrt(Fold((acc, x) -> acc + x, 0.0, Mapped(x -> x * x, flattenedTensor)));
        // Normalize the tensor
        let normalizedTensor = Mapped(x -> x / norm, flattenedTensor);
        // Allocate qubits
        // amplitude Encode the normalized tensor into the qubits
        // Measure the qubits and output the results
        let results = Mapped(M, qubits);
        for i in 0..Length(results) - 1 {
            let result = results[i];
            if (result == One) {
                Message($"The state is |{i}>");
            } else {
                Message($"The state is |{i}>");
            }
        }
        // Reset the qubits to |0⟩ state before releasing them
        ResetAll(qubits);
    }
}