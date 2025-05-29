https://arxiv.org/pdf/2504.20989 influence

## 📌 **Summary: Quantum Data Loader (QDL)**

**Purpose:**
Efficiently load high-dimensional classical data (like images or tensors) into quantum states using **tensor-based amplitude encoding**, especially for use in **photonic quantum computing**.

---

### 🧠 **Core Idea:**

Given a classical tensor $x \in \mathbb{R}^{d_1 \times \cdots \times d_k}$, it’s encoded into a **quantum state** using:

|x\rangle = \frac{1}{\|x\|} \sum_{i_1 \in [d_1]} \cdots \sum_{i_k \in [d_k]} x_{i_1,\ldots,i_k} \, |e_{d_1,i_1}\rangle \otimes \cdots \otimes |e_{d_k,i_k}\rangle
$$

* Each $|e_{d_l,i_l}\rangle$ is a **Fock state**: a quantum state over $d_l$ modes with one photon in mode $i_l$.
* This means data features are encoded into **amplitudes** of photonic quantum states.
* The full state spans $m = \sum_{i=1}^k d_i$ **optical modes**, divided across **k registers** (one per tensor axis).
* With this setup, each register holds exactly **one photon**, enabling encoding of **separable** tensor product states.

---

### ⚠️ **Limitations:**

* This basic scheme **only supports separable states**.
* To represent **entangled tensor structures**, more complex setups are needed:

  * **Ancilla photons**,
  * **More optical modes**, or
  * **Feed-forward measurement logic**.

---

## 📊 **Use Case Example: Image Encoding**

* A 2D image is encoded with:

  * **Rows** mapped to the first register (with $d_1$ modes)
  * **Columns** mapped to the second register (with $d_2$ modes)
* Each pixel value becomes part of the amplitude in the overall quantum state.

---

## 🧱 Architecture Diagram

Here's a simplified conceptual view of the architecture:

```
+-----------------------------+
|     Classical Tensor x      |
|   Shape: d1 x d2 x ... x dk |
+-------------+---------------+
              |
              v
    +---------------------+
    |   Tensor Encoding   |
    | (Amplitude Encoding |
    |   using Fock States)|
    +---------+-----------+
              |
              v
   +------------------------------+
   | Quantum Registers (k total) |
   | Each with di optical modes  |
   |  & 1 photon per register     |
   +---------+--------------------+
             |
             v
  +-----------------------------+
  |  Quantum State |x⟩          |
  | Encoded in amplitudes of   |
  | Fock basis (one excitation)|
  +-----------------------------+
```

---

