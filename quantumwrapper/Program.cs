using Microsoft.Quantum.Simulation.Simulators;
using Microsoft.Quantum.Simulation.Core;
namespace QuantumWrapper {
    public class QuantumWrapper
    {
        public static void Main(string[] args)
        {
            // Create a quantum simulator instance
            using (var simulator = new QuantumSimulator())
            {
                // Call the BellState operation
                var result = QuantumOperations.BellState.Run(simulator).Result;

                // Print the result
                Console.WriteLine($"Bell state: {result}");
            }
        }
    }
}
