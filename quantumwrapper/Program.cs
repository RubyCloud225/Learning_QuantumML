namespace QuantumWrapper
{
    class program
    {
        static async Task Main(string[] args)
        {
            // Initialize the QuantumWrapper
            var quantumWrapper = new QuantumWrapper("Your-Quantum-Provider-Connection-String");
            using var sim = new QuantumSimulator();
            var qsharp = new QSharpClient(sim);
            var BellState = await qsharp.RunAsync(BellState, new QSharpClientOptions
            {
                // Set any options you need for the Q# client here
                // For example, you can set the number of shots or the backend to use
                Shots = 1024,
                Backend = "QuantumSimulator"
            });
            var result = await qsharp.RunAsync(teleportation, new QSharpClientOptions
            {
                Shots = 1024,
                Backend = "QuantumSimulator"
            });
            
            // Call the method to run the quantum program
            await quantumWrapper.RunQuantumProgramAsync();
        }
    }
    
}
