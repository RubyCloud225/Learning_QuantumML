# Learning_QuantumML
# 🧠 Quantum Teleportation in Q#  
**Learn Quantum Computing by Building a Real Quantum Teleportation Protocol**

---

## 📘 Overview

This open-source project demonstrates one of the most iconic and foundational protocols in quantum computing: **Quantum Teleportation**.

Using Microsoft's [Quantum Development Kit (QDK)](https://learn.microsoft.com/en-us/azure/quantum/), this educational project walks you through the mechanics of:

- Creating **Bell states** (entangled qubits)
- Applying **quantum gates** (like `H`, `CNOT`, `X`, and `Z`)
- Using **quantum measurement and classical communication**
- Transferring a quantum state from one qubit to another — **without sending the qubit**

---

## 🎯 What You’ll Learn

- Basic Q# syntax and project structure
- How to entangle qubits and measure quantum states
- The real-world mechanics behind quantum teleportation
- How classical and quantum information interact

---

## 🧪 How It Works (In Plain English)

1. **Prepare an unknown quantum state** (e.g. `|+⟩`)
2. **Entangle two qubits** (Alice’s and Bob’s) using a Bell state
3. **Alice performs operations and measurements** on her qubits
4. **Alice sends two classical bits** to Bob
5. **Bob applies correction gates** to recover the original state

---

## 🛠️ Prerequisites

- [.NET 6.0 SDK or later](https://dotnet.microsoft.com/en-us/download)
- [Visual Studio Code](https://code.visualstudio.com/) or your preferred editor
- [Microsoft Quantum Development Kit extension](https://marketplace.visualstudio.com/items?itemName=quantum.quantum-devkit-vscode)

---

## 🚀 How to Run

```bash
# Clone the repo
git clone https://github.com/yourusername/quantum-teleportation-qsharp.git
cd quantum-teleportation-qsharp

# Restore packages and run the simulator
dotnet run
