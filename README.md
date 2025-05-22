# Learning_QuantumML
# Quantum Teleportation in Q#  
**Learn Quantum Computing by Building a Real Quantum Teleportation Protocol**

---

## Overview

This open-source project is a public portfolio for learning the foundational protocols in quantum computing: **Quantum Teleportation**.

Using Microsoft's [Quantum Development Kit (QDK)](https://learn.microsoft.com/en-us/azure/quantum/), I am looking at the the mechanics of:

- Creating **Bell states** (entangled qubits)
- Applying **quantum gates** (like `H`, `CNOT`, `X`, and `Z`)
- Using **quantum measurement and classical communication**
- Transferring a quantum state from one qubit to another — **without sending the qubit**

---

## My takeaways from this

- Basic Q# syntax and project structure
- How to entangle qubits and measure quantum states
- The real-world mechanics behind quantum teleportation
- How classical and quantum information interact

---

## How It Works (I hope, Still learning here)

1. **Prepare an unknown quantum state** (e.g. `|+⟩`)
2. **Entangle two qubits** of Person A and B using a Bell state
3. **Person A performs operations and measurements** on qubits
4. **Person A sends two classical bits** to Person B
5. **Person B applies correction gates** to recover the original state

---

## Prerequisites

- [.NET 6.0 SDK or later](https://dotnet.microsoft.com/en-us/download)
- [Visual Studio Code](https://code.visualstudio.com/) or your preferred editor
- [Microsoft Quantum Development Kit extension](https://marketplace.visualstudio.com/items?itemName=quantum.quantum-devkit-vscode)

---

## How to Run- (though not published yet)

```bash
# Clone the repo
git clone https://github.com/RubyCloud225/Learning_QuantumML.git
cd quantumwrapper.qsharp

# Restore packages and run the simulator
dotnet run
