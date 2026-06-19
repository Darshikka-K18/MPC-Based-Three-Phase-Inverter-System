# DC-AC Three-Phase Inverter using Model Predictive Control

##  Overview

Designed and simulated a 1 kW three-phase DC-AC inverter in MATLAB/Simulink using Model Predictive Control (MPC). The system uses a discrete-time state-space model to predict and optimize switching states in real-time, eliminating the need for a traditional PWM modulation stage. Featuring integrated fault protection and custom LC filter dynamics, the inverter delivers a highly stable sinusoidal output, significantly outperforming conventional SPWM techniques.

##  Project Report

For an in-depth look at the mathematical modeling, state-space equations, Simulink block diagrams, and detailed THD analysis, please refer to the full project documentation:
[**📄 View the Full PDF Report**](./DC–AC%20Three-Phase%20Inverter%20using%20Model%20Predictive%20Control.pdf)

##  Key Features

* **Model Predictive Control (MPC):** Directly controls output voltage by evaluating a cost function and predicting future states to optimize switching in real-time.
* **High Power Quality:** Effectively removes high-frequency switching components, yielding an exceptionally smooth output waveform.
* **Integrated Protection System:** Actively monitors for over-voltage (threshold: 206 V) and over-current (threshold: 4.5 A). It includes an automatic gate-blocking mechanism (enable logic) to shut down the inverter during abnormal conditions, alongside a thermal monitoring model.
* **SPWM Benchmark:** Includes a traditional Sinusoidal Pulse Width Modulation (SPWM) implementation for direct baseline comparison.

##  System Specifications

The system is designed for small-scale wind energy applications with the following parameters:

* **Rated Power:** ~1 kW
* **DC Link Voltage:** 400 V
* **Reference Output Voltage (Phase Peak):** 188 V
* **Output/Fundamental Frequency:** 50 Hz
* **MPC Sampling Time:** 10 µs
* **Resistive Load:** 50 Ω
* **LC Filter:** Inductor = 2.4 mH, Capacitor = 40 µF (Cutoff Frequency ~514 Hz)

##  Performance Comparison (MPC vs. SPWM)

The predictive nature of MPC allows for direct optimization, resulting in significantly superior waveform quality compared to standard modulation.

| Parameter | Model Predictive Control (MPC) | Sinusoidal PWM (SPWM) |
| --- | --- | --- |
| **Total Harmonic Distortion (THD)** | **~0.41%** | **~34.76%** |
| **Waveform Quality** | Very smooth | Distorted |
| **Control Type** | Predictive | Modulation |
| **Harmonics Level** | Very low | High |

##  Software Requirements

* MATLAB / Simulink


