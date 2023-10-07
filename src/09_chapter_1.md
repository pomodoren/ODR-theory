---
geometry: margin=2.5cm
header-includes:
  - \usepackage{setspace}
  - \usepackage{lineno}
---

\doublespacing
\setlength{\parindent}{0in}
\widowpenalty=10000
\clubpenalty=10000
\setcounter{page}{1}
\pagenumbering{arabic}
\newpage

# Chapter 1. Introduction

The pathological aging processes that are reflected in a drop in cognitive abilities are defined as diseases of Dementia. Dementias affect over 47 million people worldwide [@WHO2017-ad]. In developed countries, with an increase in living standards and an increase in age, the number of older adults with Dementia is increasing. More than 1.3 million demented people lived in Italy by 2019, and the predicted prevalence by 2050 is expected to reach more than 2.2 million [@AlzheimerEurope2019]. Developing countries are facing bigger public health challenges because of Dementia. For example, Turkey and Brazil had the highest age-standardized prevalence as of 2016, with more than a thousand individuals affected for every a hundred thousand [@Nichols2019]. This increases the need for easy to use tools that help with the clinical management of the disease until a cure has been found.
For the various forms of neurodegenerative diseases, existing literature has pointed out a series of biomarkers that can distinguish between them and that are prognostic of their evolution. They comprise the presence genetic mutations (e.g., the MAPT mutation in Cortico-Basal-Degeneration, [@Kouri2014-xl]) or specific brain pathologic changes (e.g., the presence of hippocampal atrophy in Alzheimer's Disease, [@Pini2016]). Over the years evidence has mounted supporting the diagnostic and prognostic role of patients' performance in neuropsychiatric or neuropsychological tests, which could be used as useful early markers in the diagnostic process. Some of the important differences are captured only in the distribution of errors in neuropsychological assessment (NPA) [@Salmon2002-fn]. For example, differentiation between Alzheimer's Disease (AD) and FrontoTemporal Lobe Degeneration (FTLD) patients is possible through a qualitative analysis of visuospatial and visuo-constructive deficits measured by their corresponding tests. Many of these qualitative differences have been proven through subsequent autopsy-confirmed data [@Salmon2009-rc].
The search for the neurological (brain) markers for neurodegenerative diseases like Alzheimer's has produced a large bulk of computational models with an inclusion of demographic, minimal NPA, neurological, and neuroimaging data. The question most of these models ask is: will a patient in a Mild Cognitive Impairment (MCI) stage progress into Alzheimer's Disease? The results have been promising, with high accuracy of predicting progression for several models [@Kumar2021;@Tosi2020]. The development of computational models holds the promise that one day a simple clinical examination combined with a neuroimaging procedure will be able to accurately predict the route of a disease in an individual patient. The benefits of such a large field of research have allowed for a general scrutiny that has improved the data, practices and models related to the study of Dementia. The latest models as of now are the explainable machine learning models built on the ADNI dataset that can predict a transition to AD from MCI accurately, and the decisions can be explained using the features [@Bogdanovic2022,@Hernandez2022].

## 1.1. Problem description

While the models of diagnosis for Dementia have been developing, several problems have arised related to the cost, specificity, and ability to personalize them.

Most of the research is concentrated on neuroimaging data because the power of machine learning has been observed mostly in the Convolutional Neural Networks direction. This intuitive direction for looking for neuroimaging biomarkers requires the clinical practice that is not cost-efficient and is based on well-funded initiatives. A more integrative approach needs to be taken, concentrating more on the cheaper methods like the clinical data provided by the other methods of assessment.

Based on the prevalence of Alzheimer's Disease, a good proportion of the models have been built to predict the progression in the spectrum of Healthy-MCI-AD [@Kumar2021]. This significant amount of research is closely related also to the availability of the datasets and the previous literature that makes them easier to compare. The problem is that the cases in a clinical setting can be more complex, with patients showing symptoms of FTLD and Parkinsonisms. In this context the models described have no power because they have been tuned to be sensitive to one subgroup of Dementia. Having models that consider a wide range of possible diagnose is necessary.

The success of these models is based on the integration level to the medical practice. Still, the research of the field deals mostly with the problems through its engineering problem: optimizing a model to improve metrics like precision or f1-score. This frame of thinking in terms of benchmarking diminishes the significance of the models for the clinician. For the bulk of the cases that the models predict well, the doctors do so too; for the ones that the model does better the explanation tends to be in the non-clinical language. Having better explainable models that integrate clinical knowledge with computational methods is essential to the future usage of these tools for the diagnosis of Dementia.

## 1.2. Research questions

<!--
Specify the objectives, including whether the study describes the development or validation of the model or both
-->

This thesis aims to further develop further and validate existing models of Dementia diagnosis by improving the pipeline of analysis. The research questions this thesis  aims to answer:

1. What is the variety of computational models that can be created, and how to select the better ones for diagnosis of Dementia?
2. Are automatically selected predictors of the computational models similar to the predictors defined in the protocols of diagnosis of Dementia?
3. Can computational models built on an extensive clinical assessment (like the NACC dataset) can have a similar predictive power as the models built using neuroimaging data and a restricted group of clincial data (like the ADNI dataset)? While the neuroimaging data presence is not central to the thesis, it is important to compare the new models with the previous models of the literature.
4. Can these models provide possible improvements that can be done for specific cases by checking the best route to changing a diagnosis?

## 1.3. Significance

There is a large research area on Dementia biomarkers, mainly concentrating on the performance metric of classification. To the knowledge of the author, this is the first work to:

- use a detailed reproducible pipeline of analysis for the NACC dataset, an extensive Dementia dataset,
- test how the clinical criteria for Dementia are represented in the models for diagnosis in diseases like Frontotemporal Dementia and Lewy Bodies Dementia,
- provide a metric of instability of the diagnosis with possible routes through counterfactuals.

Additionally, in this work can be found detailed discussions on Feature Selection, Missing data, and Dataset Imbalance that can be useful for future directions for improving the diagnostic models of Dementia.

## 1.4. Organization of chapters

The thesis is organized into six chapters. In the first chapter "Introduction" the scale of the problem and its importance is presented, together with the related research questions, and the significance of this work. Additionally, the organization of the chapters is given. In the second chapter "Theoretical Background" a description of the clinical examination, the normal aging process and the possible neuropathologies is presented. Then the latest computational models with possible problems that these models face like predictor selection, missing data, and imbalanced classes are described. Then the explainability of these models is shortly mentioned in terms of Shapley values and counterfactual explanations. This complete overview serves to have a context for the hypotheses. In the third chapter "Methodology" the components of testing the hypothesis is described by introducing the datasets and the participants involved, the clinically derived features from the protocols, the machine learning model building process, and the explainability of such models. The possible limitations of these multi-step procedures are described and the attempt to systematically minimize them is explained. In the fourth chapter "Results" the results of the experimentation with the dataset and the method are provided. The findings are explained in the light of the research questions and the usage of the models for direct clinical insight is shown. In the fifth chapter, the "Discussions" the extent of implications of the results is mainly discussed in the context of personalizable diagnostic path. The limitations of the study and the degree of interpretation are presented. In the sixth chapter, "Conclusions", the results are presented in the light of the theory and recommendations for future research are provided.

\newpage
