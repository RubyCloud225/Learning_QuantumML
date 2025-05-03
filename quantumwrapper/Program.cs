using Microsoft.Quantum.Simulation.Simulators;

namespace QuantumWrapper {
    public class QuantumWrapper
    {
        public async Task RunQuantumProgramAsync()
        {
            // Initialize the quantum simulator
            using var sim = new QuantumSimulator();

            // Ensure the BellState operation is correctly defined and referenced
            var bellState = await QuantumWrapper.BellState.Run(sim);
            Console.WriteLine($"Result: {bellState}");
            var teleportationResult = await QuantumWrapper.Teleportation.Run(sim);
            Console.WriteLine($"Teleportation Result: {teleportationResult}");
        }
    }
}
