# MediScribe-GPT

This is the repository for the final project of the course AMS 691.

## Project Overview
This project leverages advanced Large Language Models (LLMs) to automate the generation of structured medical reports from unstructured doctor-patient conversations. The primary objective is to create a scalable, accurate, and user-friendly solution for healthcare professionals.

## Features
- **Automated Medical Report Generation**: Structured and error-free reports tailored to healthcare needs.
- **Enhanced Speaker Differentiation**: Improved accuracy in multi-speaker scenarios.
- **Customizable Templates**: User-defined templates for specific use cases.
- **Real-Time Transcription**: Leveraging LLMs for fast and accurate transcription.
- **User Interface**: A front-end system for processing audio files and managing reports.

## Dataset
The dataset used for this project is titled:  
**"A dataset of simulated patient-physician medical interviews with a focus on respiratory cases"**  
It is available at [Springer Nature Figshare](https://springernature.figshare.com/collections/A_dataset_of_simulated_patient-physician_medical_interviews_with_a_focus_on_respiratory_cases/5545842/1).

### Dataset Features
- **Audio Recordings**: Simulated medical interviews focusing on respiratory cases.
- **Transcriptions**: Manually corrected for high accuracy.
- **Applications**:
  - Training NLP models to extract symptoms, detect diseases, or perform speech-to-text error analysis.
  - Educational tools for training medical students in patient interaction scenarios.
  - Benchmark dataset for medical speech recognition tasks.

## Installation and Setup
### Prerequisites
- Python 3.8+
- Node.js 14+
- npm 6+

### Backend Setup
1. Clone the repository:
    ```bash
    git clone https://github.com/SuhasMaddi29/MediScribe-GPT.git
    cd MediScribes-GPT
    ```
2. Export the required API keys:
    ```bash
    export GEMINI_API_KEY=your_gemini_api_key
    export ANTHROPIC_API_KEY=your_anthropic_api_key
    export ASSEMBLYAI_API_KEY=your_assemblyai_api_key
    ```
3. Install the backend dependencies:
    ```bash
    pip install -r requirements.txt
    ```

### Frontend Setup
1. Navigate to the `my-audio-app` directory:
    ```bash
    cd my-audio-app
    ```
2. Install npm dependencies:
    ```bash
    npm install
    ```

## Running the Application
1. Start the backend server:
    ```bash
    uvicorn docreport:app --reload
    ```
2. Start the frontend server:
    ```bash
    cd my-audio-app
    npm run dev
    ```
3. Access the frontend at [http://localhost:5173/](http://localhost:5173/).

## Usage
1. Upload an example file (audio files of doctor-patient conversations).
2. Wait for the processing to complete.
3. Download the generated medical report.

## Key Results
- **AI Model Comparison**: Claude and Gemini models were evaluated:
    - Claude maintained over 75% transcription accuracy across all shot categories.
    - Gemini showed significant improvement from zero-shot to one-shot learning.
- **Exact vs Relaxed Match**:
    - Claude's outputs were more consistent, while Gemini exhibited higher variability.

### Results Table
| Prompting Method | Model                | Exact Match Accuracy | Relaxed Match Accuracy |
|-------------------|----------------------|-----------------------|-------------------------|
| Zero-Shot         | Claude's Zero-Shot  | 65.9%                | 77.3%                  |
| Zero-Shot         | Gemini's Zero-Shot  | 40.9%                | 52.3%                  |
| One-Shot          | Claude's One-Shot   | 72.7%                | 86.4%                  |
| One-Shot          | Gemini's One-Shot   | 75.0%                | 88.6%                  |
| Three-Shot        | Claude's Three-Shot | 63.6%                | 72.7%                  |
| Three-Shot        | Gemini's Three-Shot | 56.8%                | 75.0%                  |

## Challenges Addressed
- **Privacy and Security**:
    - Dataset used is anonymized with no personally identifiable information (PII).
    - Compliance with HIPAA standards.
- **Accuracy and Hallucination**:
    - Fine-tuned LLMs with domain-specific datasets.
    - Validation checks to reduce hallucination and improve accuracy.
- **Multi-Speaker Differentiation**:
    - Algorithms for improved recognition of overlapping speech.

## Contributors
- **Suhas Guptha Maddi**: Backend development and API integration.
- **Maharshi Uprit**: Frontend design and implementation.
- **Eshwari Ponnamanda**: Model evaluation and testing.

## Future Work
- Integration with Electronic Health Records (EHR).
- Support for multilingual transcription.
- Real-world deployment in clinical settings.

## License
This project is licensed under the GNU General Public License v3.0. See the [LICENSE](LICENSE) file for details.

## Acknowledgments
- Special thanks to the professors and teaching assistants of AMS 691 for their guidance and support throughout the project.

---
