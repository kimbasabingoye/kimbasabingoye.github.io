---
title: "Toll Plaza Simulation Project"
excerpt: "The Toll Plaza Simulation System efficiently simulates the flow of vehicles through multiple toll booths, utilizing threading for concurrent processing."
header:
  teaser: assets/images/toll-plaza.avif
sidebar:
  - title: "Date"
    text: "May 2024"
---


## Project Overview

This project simulates a dynamic toll plaza management system that handles vehicle traffic efficiently through various toll booths. The system is designed to demonstrate real-time traffic management and processing of vehicles, providing an engaging experience for users and insights into the functionality of toll plazas.

[Code Repository](https://github.com/kimbasabingoye/toll-plaza-simulator)

### Key Features

- **Dynamic Toll Booth Management:** Simulates multiple toll booths within each plaza, allowing vehicles to be assigned based on different strategies (e.g., shortest queue, random selection).
- **Vehicle Generation:** Continuously generates vehicles to simulate real-world traffic flow.
- **Thread Management:** Implements threading to enable simultaneous processing of vehicles across multiple booths, ensuring responsiveness.
- **Monitoring System:** Provides real-time logging and monitoring of vehicle assignments and processing status for each booth.
- **Customizable Parameters:** Allows customization of vehicle generation rates and booth processing speeds through environment variables.

## Architecture

The system architecture comprises several interconnected components:

1. **Toll Plazas Controller:** Manages multiple toll plazas, allowing for the addition, starting, and stopping of individual plazas.
2. **Toll Plaza:** Encapsulates the logic for managing booths and processing vehicles, including strategies for vehicle assignment.
3. **Booth:** Represents individual toll booths, handling vehicle processing, queuing, and state management (running, paused, stopped).
4. **Vehicle Generator:** Continuously generates random vehicles and assigns them to toll plazas, simulating ongoing traffic.
5. **Logging:** Utilizes Python's logging module to provide real-time feedback on operations and vehicle processing.

### Technology Stack

- **Programming Language:** Python
- **Frameworks/Libraries:**
  - `threading`: For managing concurrent processes.
  - `logging`: For tracking system operations.
  - `dotenv`: For loading environment variables.
- **Data Structures:** Custom classes and enums for managing state and vehicle properties.


## Conclusion

This toll plaza simulation project not only provides an interesting way to understand traffic management systems but also showcases essential programming skills, including object-oriented design, threading, and real-time processing. This project can serve as a basis for further enhancements, such as implementing a graphical user interface (GUI) or adding more complex vehicle processing algorithms.

## Future Enhancements

- **Graphical User Interface:** Develop a user-friendly interface to visualize vehicle processing and plaza status.
- **Advanced Vehicle Assignment Strategies:** Implement machine learning algorithms to optimize vehicle assignments based on historical data.
- **Integration with Real-Time Data:** Connect the system with real-world traffic data for enhanced simulation accuracy.
