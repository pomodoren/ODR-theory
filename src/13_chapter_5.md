---
geometry: margin=2.5cm
header-includes:
  - \usepackage{setspace}
  - \doublespacing
  - \usepackage{lineno}
  - \pagenumbering{arabic}
  - \setlength{\parindent}{0in}
---

\newpage
\newpage

# Chapter 5. Discussion

This works attempts to revise the clinical criteria for Dementia using explainable models of machine learning. It additionally establishes a baseline process against which the models can be benchmarked and tested. The process was tested using two open datasets: ADNI and NACC, and four models were built. The Alzheimer Disease Neuroimaging Initiative dataset was smaller, and it included subjects of the {HC-MCI-AD} spectrum. The National Alzheimer’s Coordinating Center dataset was similarly extensive in terms of data types, and it included a wider range of Dementia cases. This work did not intend to achieve the highest performance, but to evaluate whether the models can be useful in to re-defining the boundaries of existing protocols. The following are lessons learned:

The model building is highly reproducible, and the presence of a pipeline allows for further expansion. These models can also be developed for other datasets. Light Gradient Boosting Method tends to do better than the other models (such as the RanodmForestModel or LogisticRegression), making it more reliable in the diagnostic process. Additionally, the LGBM pipeline requires almost no preprocessing, which makes it easier for the process of model-building to avoid introducing artifacts. The results for A DNI are as good as the literature describes.

When building models using detailed demographic and neuropsychological data performs as good as having a more restricted dataset including neuroimaging too. The features that are important for the definition of the classes {HC, MCI, AD} are related mostly to the neuropsychological tests like CDRSB, FAQ, MMSE, and do not require the neuroimaging data.

The clinical criteria defined in the protocols can be reproduced using these models, in both cases. For the diseases that are in NA C C the predictors like {CDRSUM, MEMORY, COGSTAT} are defining for the {HC, MCI, AD} spectrum, {CDRLANG, COMPORT} are relevant for F T L D, {FACEXP, REGDUPRT, REMDIS} are relevant for DwMD, and {CBSTROKE, HACHIN, CVDCOG} are relevant features for VaD. Additionally, for the case of MCI which is more complicated than the other disorders the models learn the diagnosis by exclusion.

This work was exploratory, delineating the boundaries of the diseases, and see whether machine learning can provide some insight. The clinical criteria for the different types of Dementia are based on the separation between core criteria and supportive criteria. To date it is standard to have a structure for the diagnostic process that includes conditional logic. In all diseases an essential component is a progressive cognitive decline (I. F. McKeith, Boeve, and Dickson 2017; Dubois et al. 2014; Winblad et al. 2004). Through the insights provided by these models there may be multiple feedback loops in the disease improvement of the protocols of these complex diseases. This process is illustrated below.

![Protocol update cycles](docs/protocol-update.jpeg){width=80%}

The importance of some neuropsychological tests in the diagnostic process can also be seen explicitly. While
seeing how the distributions of the test scores related to the several diseases can be useful (as in Section 4.1.),
understanding how the tests interact with each other is also important. This can allow for the interaction of
the conditional format described in the protocols. For example, the interaction and conditionals described in
the work of (I. F. McKeith, Boeve, and Dickson 2017) needs to allow for such updates.


#### Limitations

This work has several limitations. First, the datasets have longitudinal data, but they are used as cross-sectional data in the models. The core feature for the definition of Dementia is cognitive decline. This work does not make use of the information that lies in the progression of the subjects, and treats the cases as single shot learning. Although the models created have prognostic value, they do not aim to be predictive in that sense. Nevertheless, the problems that may arise from not considering the relation between the visits of same patients were considered and used to improve the validity of the models. This can be seen in the grouping of the validation method.

Also, during the cleaning of the datasets, there has been a unification of the missigness by reducing the codes provided from the datasets into NaN. These codes sometime include useful information, still a further processing step would be out of scope for this work. As described in chapter 3, missing clinical data can be distinguished in the NAC C and ADNI datasets. In the NACC dataset does provide some information on the type of missingness, and such information could be used to create better and more detailed strategies. Overall, the models tend to not show big differences, and the resulting model does well with no imputation needed.

What was lacking of the validation of the pipeline is an extensive validation of parameters. While in this thesis there has been a concentration on the methodology, the extensive testing of the parameters has not been done, mainly due to computational reasons and the sizes of the datasets. This suggests that the models that have been predicted are probably in the local maxima, so the predictions can be improved. This technical limit was known beforehand.

Besides these, there is a significant accuracy drop between the models built from ADNI and NACC, mainly related to the fact that NACC models are doing a six class classification, while the ADNI models are doing a 3 class classification. Even though this difference  exists, it is of importance to understand why the line is blurry, and is the process dificult, or could the model do much better? While  in general the boundaries between the diseasess are clearer through explainability analysis, more must be done in increasing the predictive power of the model.

#### Recommendations

This work provides an in-depth look of the insights that can be given from the models. Further development of the method would require a fix for the limitations, and an extensions to the depth of the models used here. Also, there is a further interest in seeing how these models can be integrated to the daily practice of dealing of subjects with Dementia. While the datasets used are extensive, the models allow for an easier way to standardize the process by selecting the more significant tests. This standardization can help the professionals and caregivers to use the time of more eficiently and have more reliable and reproducible results.

Additionally, this process of standardization and lowering of the number of tests makes the handling of Dementia diagnosis more manageable. In the context of the two datasets, the tests defined in their clinical protocols are defined in detail in their study definition. The variation of tests used, their specificity, the equivalence scores, and the additional information can be provided (in an electronical format) for the tests. This kind of information transfer can allow reproducibility for the clinical application. Such open-data initiatives are not possible right now because of the licenses that the tests have, but should be allowed in the future.

Besides the diagnostification, there might be need to apply similar pipelines for the prognostic models. Among the latest methods for dealing with longitudinal data is the use of deep learning models that can account for the relation between the several visits by the same subject. Such models can make such inferences, and then make projections about the short-term risk of progression. This work did not attempt at dealing with such models as it was out of scope. When this work will be extended for clinical usage, the deep learning models can be tested too.

\newpage
