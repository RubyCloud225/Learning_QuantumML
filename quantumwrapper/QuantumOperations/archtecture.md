**Bell State Implementation - Hello World implementation

Using the Dirac Notation and Linear Algebra

First Initialize our Qubit
|q_0> = |0> = [1, 0]^t
|q_1> = |0> = [1, 0]^t

then combine the two

|q_0q_1> = |00> = [1, 0, 0, 0]^t

apply the hadamard gate (H)- creates a superposition

H|0> = (1/SQRT2)(|0> |1>)

then we combine our state with this- turning our Qubit to a superposition
(1/SQRT2)(|00> + |10>)

Applying the CNOT (Controlled-NOT)- need to look at this not sure what it is
(1/SQRT2)(|00> + |10>) -> (1/SQRT2)(|00> + |11>)

Its entangled state then becomes

|0_+> =(1/SQRT2)(|00> + |11>)

Measure Both Qubits

|0_+> = (1/SQRT2)(|00> + |11>)

** taking this implementation further - extend this to teleportation

transferring the state of one qubit to another across distances without physically sending the qubit itself. (could be used in transformer maybe)

sending the qubit to an unknown state- in this case we are sending our bell pair
∣ψ⟩=α∣0⟩+β∣1⟩

Initialise the qubits |ψ> = α∣0⟩+β∣1⟩
Qubit A is unknown: 
Qubit B is Bellstate

total state |ψ>A⊗1/SQRT2(|00>_BC = |11>_BC)

Apply Hadamard on A

measure both A and B(2 classical bits)
using classical communication