---
geometry: margin=2.5cm
header-includes:
  - \usepackage{setspace}
  - \usepackage{lineno}
---

\doublespacing
\setlength{\parindent}{0in}

# Abstract {.unnumbered}

**Background**: Dementias are disorders of the brain that require an early intervention for slowing down the progression of the disease. Publicly open datasets have made possible the research for early markers for the various Dementia phenotypes. A research area of these markers is based on the machine learning models of diagnosis of Dementia.

**Objective**: This thesis uses the explainability analysis of these models to investigate whether similar criteria are shared between the clinical criteria of Dementia diagnosis and the machine learning criteria. This analysis can help specify the protocols and increase the sensitivity of the diagnostic process.

**Design**: First the clinical criteria for the main phenotypes of Dementia were defined. Then a pipeline that handles imputation, scaling, imbalance, and model optimization was set. The datasets were tested using different machine learning models like LightGBM, RandomForest, or LogisticRegression.

**Setting**: Two multi-center open datasets were mainly used for development and internal validation of the models: the Alzheimer’s Disease Neuroimaging Initiative (ADNI) dataset and National Alzheimer’s Coordinating Center (NAC C ) dataset. These two datasets include multiple visits for heterogenous groups of Dementia patients. They contain the data extracted during the clinical interview, questionnaires and assessments, and the diagnostic process. In one case (ADNI) processed neuroimaging data was also included.

**Participants**: There are 45100 participants in the NAC C dataset, and 2294 participants in the ADNI dataset.

**Results**: The better performing pipelines do not need additional preprocessing steps. An extensive non-neuroimaging evaluation of a subject is as good as a standard evaluation containing neuroimaging data. The clinical predictors described in the protocols can be improved and specified using the explainability of machine learning models.

**Conclusions**: Explainable machine learning models on clinical data can help shape the clinical criteria for the diagnosis of Dementia.

\newpage
