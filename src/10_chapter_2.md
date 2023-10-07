---
geometry: margin=2.5cm
header-includes:
  - \usepackage{setspace}
  - \usepackage{lineno}
  - \usepackage[all]{nowidow}
---

\doublespacing
\setlength{\parindent}{0in}
\newpage
\clubpenalty=9996
\widowpenalty=9999
\brokenpenalty=4991
\predisplaypenalty=10000
\postdisplaypenalty=1549
\displaywidowpenalty=1602

# Chapter 2. Theoretical background

<!--
Explain the medical context (including whether diagnostic or prognostic) and rationale for developing or validating the multivariable prediction model, including references to existing models
-->

In light of the latest developments in open-source data science tools and the aggregation of longitudinal data from the neuropsychological units, we can reproduce prior research and create new biomarkers with predictive value. The literature on the cognitive resilience of individuals with dementia suggests the prospect of helping these patients with different rehabilitation protocols. Cognitive resilience can improve a patient's daily life by enabling them to be independent and maintain their functional routine.

## 2.1. Normal aging

Aging challenges the brain to maintain cognitive abilities central to daily life. The aspects of independence and socialization, two central features of human nature, face major difficulties. Some of these ongoing processes are worrying and need attention, and for some elderly the process is more pathological. Defining the cause, the probable progression, and modification strategies can help improve the life of these old adults, and even more - provide an insight into the process of aging.

Chronological aging tends to be accompanied by cognitive changes that condition the life of older adults. The brain structure and activity patterns also change. An example is the bilateral activation compensatory mechanism that helps maintain a similar performance for tasks of perception. Some of the impacts of structural changes can be directly observed in the cognitive abilities of the elderly. The decrease of White Matter (WM) density affects the processing speed of most of the networks [@REF]. This in turn makes the elderly slower at processing multiple inputs at once, so they can get confused from complex sensory inputs. There is a loss of dopamine receptors that affects the attentive capacities and concentration on goals [@REF]. Neurofibrillary tangles (NFTs) and senile plaques (SPs) start appearing initially in the limbic region, damaging the areas that are responsible for processes like memory and emotion [@REF].

#### Neuropsychological theories of aging

Several theories try to explain the relationship between the structural brain changes and cognitive aging. These theories deal mostly with the reorganization of the brain and re-purposing of networks like the Default Mode Network (DMN).

- _Dedifferentiation_ is the reduction of neural specificity that happens in old age that forces some cognitive abilities to be performed through compensatory mechanisms [@Persson2006]. For example, learning in young adults activates primarily hippocampal regions, while its activity involves mainly frontal regions in old people.
- The _processing speed theory_ suggests that loss of white matter forces slow processing. This increases resistance to the consumption of simultaneously complex information [@Salthouse1996]. For example, the attention system performs worse in old age because it is difficult for the brain to shift processes at the right _speed_.
- The _scaffolding theory_ considers the brain as a responsive system that, in the face of adversity because of structural changes, shifts the processing of main tasks from specific regions to more generalized regions [@Park2009]. This keeps the cognitive performance stable but relies heavily on the networks of the frontal regions of the brain, and on networks like the DMN.

#### Cognitive reserve

While the structural brain changes have been observed to impact cognition, the degree of change does not have predictive power for the future development of the aging process. Some people with largely structural brain damage can function properly, while some others with less damage might be more cognitively impaired. The high variability expressed has been related to the individual differences (health, education, occupational complexity) and contextual factors (living with a partner, location) [@REF]. Cognitive reserve has been proposed as an internal factor of the brain's overall elasticity and connectivity that can explain to some level this mismatch between the level of impairment and the structural brain damage [@Stern2009-rc]. Particularly a healthy lifestyle that comprises physical activity and a rich social life seem to be protective factors [@REF]. This lifestyle increases the protection from cardiovascular diseases that are closely related to mild impairment from vascular dementia. Also early life education and continuous occupational complexity seem to help in the formation of elegant connections between networks that can be resilient to damage [@REF].

## 2.2. Neuropathology of aging

In the following subsections the different neuropathologies related to Dementia will be mentioned. They have been grouped based on their symptoms and on the literature so far. For each group there is a table of predictors that shows the type of predict, the category based on section 2.1, and some notes on the differential power or some reference.

![Transitions to dementia, a simple illustration.](src/imgs/disorders.png){ width=90%}

### 2.2.1. Mild Cognitive Impairment

Mild Cognitive Impairment (MCI) is often referred because of a subjective decline of cognitive abilities that interferes with the daily life of the patient. MCI patients' results are lower than elderly at their age, but their cognitive impairment is not at the level of people with Dementia [@Petersen2004-rc]. The earlier criteria were concentrated on the subjective memory complaint, the MMSE-score higher than 24 and the occupational impairment. The updated clinical criteria for MCI according to the International Working Group (IWG) on MCI [@Winblad2004-rc] are more generalized, and include impairment in one or more cognitive domains, and a level of preservation in functional abilities.
The neural correlates of MCI tend to show a volume loss in the temporal lobe, the cingulate, and precuneus. Additionally, the ventricular (CSF) volume increases depending on the type of MCI. The neuropathology found through Pittsburgh compound B (PiB) using Positron Emission Tomography (PET) shows an increase of PiB retention for MCI patients. The degree of impairment of the different domains together with the etiology of the MCI can have prognostic importance. For example, patients with a-MCI tend to convert into Alzheimer’s Disease [@Albert2011-rc], while the ones with na-MCI in a domain like attention or visuospatial functions tend to convert to Lewy Bodies Dementia [@McKeith2020-rc].
The MCI phenotypes can be separated based on the presence of memory problems (amnesic or not), number of domains mainly impaired (single- or multi-domain), or on the progression state (stable or progressive).

- _Amnestic (a-MCI)_: patients have predominantly memory problems.
- _Non-amnestic (na-MCI)_: patients are impaired in other areas of cognition, be them the executive-functions or visuospatial.
- _Single-domain (sd-MCI)_: patients tend to be mainly on the memory field, but not necessarily.
- _Multi-domain (md-MCI)_: patients impairment might impact memory and another function like
  attention or visuospatial functions.
- _Stable (s-MCI)_: patients tends to maintain a level of impairment.
- _Progressive (p-MCI)_: patients convert to some type of Dementia.

### 2.2.2. Alzheimer's Disease

The most common form of neurodegenerative disorder is Alzheimer's Disease (AD). Besides the general decline centered on amnesia, there are differentiating features of AD patients: they have abnormally rapid forgetting, less effective semantic encoding, intrusion errors, extended difficulties in concurrent manipulation of information, and more [@Salmon2009-rc]. The genetic factor of APOE allele e4 can increase the chances of AD progression [@Ref-Genetics].

For AD, the related brain pathologic changes are the neuronal atrophy, synapse loss, amyloid protein forming of plaques, and creation of neurofibrillary tangles by tau mainly in the medial temporal lobe limbic structures, and then their distribution (Braak and Braak, 1991). There is a tendency of these biological factors to generally create a brain volume reduction, and specifically disconnect cortical layers (neocortex) and the limbic system (entorhinal cortex, hippocampus). Tau pathology first appears in the trans-entorhinal region, followed by the limbic and neocortical areas [@Ref]. These spatial patterns are correlated with the different clinical stages of the disease.
With the progression of the disease, the severity of the symptoms increases, thus increasing the dependence of individuals on caregivers. Changes in personality, emotions, and social functioning are also evident in individuals with AD [@Ref]. Individuals that meet the core clinical criteria of AD demonstrate progressive cognitive and functional decline on neuropsychological assessments, with the additional biomarker evidence of amyloid-beta (Ab) deposition, and elevated CSF tau increasing the certainty of AD pathophysiological process. The clinical diagnosis is based on the 2011 NIA-AA criteria for IWG on AD [@McKhann2011-rc]. The phenotypes of AD can be described as follows:

- _Early onset AD_: starts earlier than the other ADs with memory decline. Tends to have a quicker downturn.
- _Possible AD_: amnesic or non-amnesic AD with an atypical course or without evidence for a cognitive decline.
- _Probable AD_: Gradual onset with memory impairments that start from episodic memory, an in-ability to form or retain new memories, and expand to the other areas of cognition.
- _Prodromal AD_: patients with mild cognitive impairment but with high levels of pathology in the brain. It is observed at people with a high cognitive reserve.

### 2.2.3. Dementia with movement disorders

Parkinsonian signs and symptoms tend to be grouped as autonomic dysfunction, tremors, slow movement, muscle rigidity, and postural instability. Atypical parkinsonism is not mentioned. The main phenotypes are described below:

- _Lewy Body Dementia (DLB)_: characterized by cognitive impairment, parkinsonism motor symptoms, fluctuating mental status, visual hallucinations, and rapid eye movement (REM) sleep disorders. Clinical criteria diagnosis based on IWG on DLB [@McKeith2017-rc].
- _Corticobasal Degeneration (CBD)_: characterized by limb apraxia, rigidity, dystonia, movement deficits, and sensory loss [@Armstrong2013-rc]. Mainly related to executive dysfunction and visuospatial functions.
- _Progressive Supranuclear Palsy (PSP)_: patients exhibit downgaze palsy, retropulsion, and parkinsonisms. The pseudo-psychiatric signs are uncontrollable laughter or crying. Cognitively they are dysfunctional in terms of executive functions and working memory. Clinical criteria according to the NNIPSS study [@Bensimon2009-rc]
- _Multiple System Atrophy (MSA)_: patients exhibit cerebellar ataxia, impotence and vocal cord paralysis among others. Clinical criteria based on IWG on MSA [@Gilman2008-rc].
- _Amyotrophic Lateral Sclerosis (ALS)_: patients show a pattern of lower motor degeneration, and progressive spread of the symptoms.

<!--
CBD was first described as a syndrome of asymmetric rigidity and apraxia.[79] Patients present with limb apraxia, axial and limb rigidity, dystonia, postural instability, myoclonus, supranuclear gaze palsies (primarily gaze apraxia and delayed saccades), the ‘alien limb phenomenon’ (spontaneous and at times antagonistic involuntary limb movements) and cortical sensory loss.[80] Cognitive features include executive and visuospatial dysfunction and, rarely, hemispatial neglect.[81,82] Although diagnostic criteria emphasize hemispheric asymmetry as a key feature, in our experience, symptoms and signs are often bilateral.

Patients with PSP show supranuclear gaze palsies (slowed and restricted saccades, with downgaze palsy being most specific), axial-predominant parkinsonism and profound retropulsion.[83] Pseudobulbar signs such as dysarthria, dysphagia and pseudobulbar affect often evolve. Cognitive dysfunction is referable to failure of frontal-subcortical circuits leading to executive dysfunction, psychomotor slowing and poor working memory.[8

Patients with CBD and PSP may show behavioural changes similar to bvFTD or language changes reminiscent of PNFA. [78] Furthermore, patients who initially present with bvFTD or PNFA may, over time, evolve the movement disorders characteristic of CBD or PSP, with cognitive and behavioural changes preceding the movement disorder by years.

-->

### 2.2.4. Fronto-Temporal Lobe Degeneration

Frontal lobe degeneration is a syndrome term used for many progressive diseases that affect mainly the language or behavior of the patient. The early onset, together with the co-occurrence with motor neuron diseases, tend to separate them from the other dementias [@Josephs2007]. The degeneration tends to be lateral in the temporal lobe, and a volume decrease tends to be significant. The clinical criteria vary for the phenotypes. These individuals typically have predominant frontal temporal atrophy on structural MRI, high levels of executive dysfunction and characteristic patterns of frontal and temporal lobe decreased metabolism or blood flow, and functional neuroimaging such as PET or SPECT. The phenotypes of FTLD can either be classified by their symptoms (bv-FTD, SD, PNFA), or by their causes (FTLD-TAU, FTLD-TDP, FUS-FTLD). We here describe only the first group, as it concentrates more on the clinical profile, and this is useful to our aim:

- _behavioural-variant Fronto-Temporal Dementia (bv-FTD)_: patients show sharp personality and behavior change, with apathy and disinhibition being main drivers of impairment [@Rascovsky2011-rc]. Co-occurrence with ALS.
- _Semantic Dementia (SD)_: patients have a fluent aphasia, where they talk but lose the semantic meaning. Left degeneration is observed than right degeneration. Tends to be related to TDP-43 caused FTLD.
- _Progressive Non-Fluent Aphasia (PNFA)_: patients show mainly a difficulty in speaking and agrammatism. Co-occurrence with CBD and PSP.

### 2.2.5. Vascular Cognitive Impairment

Imaging evidence for Cardio-Vascular Disease according to each center and the accepted practices [@Wardlaw2013-rc]. Cerebrovascular diseases might affect one’s cognitive sphere and cause impairment of different severity. The several Vascular Cognitive Impairments are sub grouped into Vascular Dementia (VaD), Vascular Cognitive Impairment No Dementia (VCIND), Mild Cognitive Impairment (MCI) and more [@Wardlaw2013-rc]. Adhering patients to one group or another might be challenging for the clinicians as sometimes it is unclear if the impairment is caused or rather revealed by the Cerebrovascular event. Some way to distinguish them is through a 12-month follow up neuropsychological tests for attention, executive function, clock , psychomotor speed, activation/language, visuospatial, memory and Beck Depression (REF?). However some of the case examples e.g. those having VaD might differ themselves from others not only through tests but also through recognisable loss of several daily life functionalities (REF?).

- _Vascular Dementia (VaD)_: VaD is the syndrome with the most severe impairment from the ones mentioned above. It is caused by the lacunar infarcts, and/or by the presence of stroke in the cerebral arteries. Due to VaD the patient might have several cognitive deficits combined such as memory impairment, cognitive disturbances(executive functioning, aphasia, apraxia, and agnosia), physical symptoms(extrapyramidal, bilateral pyramidal, positive masseter reflex, imbalance, incontinence, dysarthria, and dysphagia), and depression. (REF?). A patient is diagnosed with VaD after they have gone through a stroke and/or infract, reckon the above mentioned symptomes and scores low in above mentioned tests.
- _Mild Cognitive Impairment (MCI)_: Relating MCI to cerebrovascular diseases is at times as difficult as separating it from Normal Aging. Similar struggles do clinicians have with VCIND. Neuropsychological tests data come handy yet when backed up with Neuroimaging evidence (e.g., 3T MRI, 1.5T MRI, FLAIR) they are more trustworthy and state defining (REF?).

## 2.3. Clinical data

#### Clinical interview

The present state of the patient can be better assessed by understanding the disturbances in their cognition. Understanding the compensatory strategies that they are using, on the other hand, is as essential. The clinical interview can help the process of gathering and allows an assessment of the patient’s behavior and responsiveness. It includes the severity and the progression of cognitive symptoms, their impact on daily life, the patient’s awareness of their problem, attitude, mood, spontaneous speech, and behavior. Table 1 shows a summary of the information stored. Potential physical problems examination follows. This process helps select the breadth and depth of the questionnaires and assessments for the patient. It can be a starting point to create hypotheses for the possible neuropsychological correlates and set some predictions for the test results.

_Demographics_: Asking for demographic information is a convenient way to observe the basic level of insight the patient has. Information like age, gender, handedness, language, and who referred them are collected. Age, as mentioned, is a primary risk factor, with people having a high probability of Dementia once they are older than 80-85 years.

_Symptoms_: At the same time, the initial visit can be valuable to track when the symptoms evolve into impairment and help understand their nature. The symptoms can be physical, cognitive, or emotional. The “Physical assessment” subsection examines the physical symptoms. Cognition-wise, symptoms start mainly with memory complaints, but they might have underlying causes such as language or attention. Emotional symptoms are also of great importance, such as personality change, depression or anxiety, or psychosis. The proper evaluation and characterization of such symptoms can provide good differential diagnosis power to the clinician. Both cognitive and emotional symptoms are assessed further with questionnaires and neuropsychological testing.

_Physical_: The physical assessment can help reckon some physical difficulty that comes with age and impacts the test results. The physical symptoms can be motor, sensory, or corporal. For example, hearing loss can affect the results for most of the tests but does not imply that there is cognitive impairment. Still, some motor symptoms, such as tremors or an account of falls, can set possible safety concerns.

_Health history and medications_: Health history can be an indicator of risk factors for cognitive impairment. For example, having a stroke increases the risk of having Vascular Dementia. Some of the medications can directly impact the cognitive abilities of the subject. For instance, one’s attention can be affected directly by neuropsychiatric drugs, which can impact motivational circuits.

_Family history_: Having a first-degree relative affected by cognitive impairment is significant to the diagnostic process. Some genetic factors can increase susceptibility to cognitive impairment, for example, Huntington’s Disease.

_Caregiver presence_: The partner, a family member, or a friend generally accompanies the subjects coming for testing. The co-participant can help with a secondary view of the patient’s state through a parallel clinical interview and questionnaires. They can inform about the level of impairment, physical symptoms, neuropsychiatric issues, medications or additional issues on the subject. The level of detail is dependent on how close they are to the subject.

_Additional interpretation (text)_: Common to the clinical reports are also the clinical notes. This discharge summary can have nuanced observations that are not included in the tests, and might be related to some behavior that is to be noted later.

#### Clinical examination

After conducting the clinical interview, the patient goes through some questionnaires and testing defined by the examiner. When the extensive assessment is not enough to define the diagnosis, more advanced tests are required, like neuroimaging. The type of neuroimaging test administered is chosen based on the clinician’s hypothesis. Table 2 depicts a summary of these questionnaires and tests.

_Impairment (impair.)_: Functional capacity to handle their activities of daily living (ADL) is of primary importance to the patient and their family. A basic ADL(bathing, dressing, feeding, etc.) can assess the independence of the patient and the higher-order abilities by the instrumental ADL (pay bills, shop, meal, etc.).

_Neuropsychiatric examination (nps)_: The emotional state of the patient can be a marker of the pathology of their brain. The application of NPS is traditionally conceptualized as non-cognitive symptoms and include impairments of mood, anxiety, drive, sleep, appetite, and behavioral disturbances such as agitation. A perceived loss of independence and an awareness of the demented patient’s cognitive decline can induce depression or anxiety in more than 20% of the patients [@TODO]. For instance, in patients that present with depressive symptoms separating the Dementia because of depression (because of lack of social bonding) and depression because of Dementia can be challenging. The questionnaires need to be followed by an in-depth understanding of the context of the symptoms by interacting with the patient and their caregiver.

_Neuropsychological assessment (npa)_: Neuropsychological assessment allows an in-depth and complete analysis of each patient’s cognitive and emotional status. This assessment allows a comparative profiling of the patient with standard measures, controlled per age and socioeconomic background. The neuropsychologist assesses aspects of the human cognition to understand the ability and vulnerability of the patient. The neuropsychological assessment can follow different protocols, and tests can be selectively administered to the patient depending on the hypothesis (created in the clinical interview) and the assessed ability to respond to long testing. Sample tests with their descriptions can be found at Appendix B.

_Neuroimaging (nimg-\*)_: In difficult cases where the stage or the type of the disease are not clear, radiology based imaging processes can be used, such as Magnetic Resonance Imaging (MRI) or PET Positron Emission Tomography (PET). Additionally, for a more comprehensive list of neuropsychological tests for Dementias like AD and their power to explain the stage of the disease read the meta-analysis by Dukehan and colleagues [@DukeHan2017].

_Biomedical (biomed) and Genetics (genetics)_: Biomedical data like Cerebrospinal Fluid have proven valuable in distinguishing Alzheimer’s Disease from other Dementias such asLewy Body Disease. Moreover, the APOE4 gene has been found as an important risk factor for developing AD. While the data related to these biomarkers are less prevalent in the open datasets, it is still important to acknowledge their diagnostic power.

_Diagnosis (dx)_: After gathering most of the information, the clinician sets a possible or probable diagnosis, and defines the cognitive impairment level. It also defines what were the main reasons for the diagnosis, including the biomarker effect. This allows a future validation of the reasoning; and keeping track of patients affected - in case the clinical criteria change because of new research. The etiology (EX) of the disease does define a probable route for the patients, defined as prognosis. The differential diagnosis is the disease that shows a close phenotype, and for which the model of diagnosis needs to show care.

\small

|       Category |         Interest |                                   Example Predictor |
| -------------: | ---------------: | --------------------------------------------------: |
|   **Clinical** |    **interview** |                                                     |
|   demographics |     demographics |                             age, race, gender, etc. |
|   demographics |    initial-visit |                                                year |
| co-participant |  co-demographics |                   relation, age, race, gender, etc. |
|       physical |         physical |                                              others |
|       physical |          sensory |              vision, hearing, taste, appetite, etc. |
|       physical |            motor |             gait, weakness, tremor, stiffness, etc. |
|       physical |          somatic |                   sleep disturbance, headache, etc. |
|       physical |            sleep |                         REM sleep disturbance, etc. |
|       physical |     measurements |                           height, weight, body-mass |
| health-history |   health-history |              stroke, surgeries, substance use, etc. |
| health-history | cardio-metabolic |                     ischemia, type-2-diabetes, etc. |
| health-history |        self-care |                 blood-sugar, diet, exercising, etc. |
| health-history |      psychiatric |                depression, anxiety, psychosis, etc. |
| health-history |         neurodev |                  learning difficulties, autim, etc. |
| family-history |   family-history |                        family-cogimp, parent-cogimp |
|    medications |      medications |                                          x-medicine |
|    medications |         dementia |                 Donezepil (AD), antiparkinson, etc. |
|    medications |       compliance |                     forgetfulness, preference, etc. |
|           text |            #text |                                    additional signs |
|                |                  |                                                     |
|   **Clinical** |  **examination** |                                                     |
|        impair. |       impairment |                         Basic-ADL, Instrumental-ADL |
|        impair. |            onset |                                         early, late |
|        impair. |      progression |                                     sudden, gradual |
|            nps |          general |                                          NPI-q, FQI |
|            nps |       depression |                        Beck Depression Inventory II |
|            npa |           global |         MMSE, MDRS, MoCA, ADAS-Cog, STMS, WMS, etc. |
|            npa |           memory | AVLT, BVRT, CVLT-II, Detail Acc., FRsrt, ISLT, etc. |
|            npa |         language |  BNT, CAT, CF, FAS, Phonemic Fl., SM, Animals, etc. |
|            npa |     visuospatial |  BPSO, GMLT, PDT, RCFT, Rey, VFDT, WAIS Block, etc. |
|            npa | processing-speed |  DSST, WAIS Digital, WMS-R Digit, Motor Speed, etc. |
|            npa |     executive-f. |             TMPt. B, WCST, ToL, Stroop, Mazes, etc. |
|            npa |        attention |       useful field of view, cancellation task, etc. |
|            npa |     intelligence |                                          WAIS, etc. |
|      nimg(vol) |   #region/#extra |                                                sMRI |
|      nimg(act) | #region/#network |                                                fMRI |
|      nimg(pat) |          #region |                                                 PET |
|      nimg(fra) |         #network |                                                 DTI |
|         biomed |          #biomed |                                                 CSF |
|       genetics |            #gene |                                               APOE4 |
|      diagnosis |               dx |       Healthy, MCI, AD, VaD, FTLD, DLB, PsycD, etc. |
|      diagnosis |            prob. |                                  possible, probable |

Table: The elements of clinical examination.

\normalsize

\newpage

## 2.4. Clinical protocols

The clinical protocols for Dementia are results of observations of the clinicians on the nature of the diseases, together with the biomarker findings. For most of these diseases an International Working Group (IWG) with specialists comes together and they define or revise existing clinical criteria. Some of these IWGs have been gathered for MCI [@IWG-MCI], AD [@IWG-AD], DLB [@IWG-DLB], or bv-FTD [@IWG-FTD].

The clinical criteria are defined in terms of significant predictors, and existing biomarkers. With the development of new biomarkers, the clinical criteria change. An example of this kind of change has been seen in the AD clinical criteria: the biomarkers once a supportive feature, now are central to the diagnosis. These kinds of changes require training for most of the medical doctors, and they increase the need for the integration with the technologies for all the hospitals that deal with patients with Dementia. Once that the problem includes the subtypes of the diseases, and possible interactions with them, the system of protocols does not maintain its level of practical knowledge.

#### Definitions

A simple description of these protocols contains many layers: predictor, observation, clinical criterion, protocol. Testing the significance of each of these layers remains difficult because of the complexity of the disorders and the lack of data. Still, a tentative of defining them looks like this:

- Predictor (`p`): The predictors can be either a core clinical feature, or a supportive feature. They can be symptoms (ex. memory measurements), process descriptors (ex. sudden onset), or biomarkers (ex. amyloid PET trace).
- Observed state (`o`): It is a level of impairment or lack of impairment that can be described through the score of the predictor `p`. A possible score can be the equivalence scores of tests that are in the range `[0-3]`, where `0` means deficient, while `3` means completely normal. An observed state would be: $p_1>1, p_2=3, p_3=0$ where the subject is deficient in $p_3$, but is okay for $p_1$ and $p_2$.
- Clinical criterion (`cc`): It is the unit of the clinical criteria. It can be either core or supportive, and either inclusive or exclusive. It is made of combination of predictors that can either be simple or conditional. Put in another way, let us define `L` as a list of observations that are described in the clinical criterion, $o_i$ as predictor in `L` ($o_i \in L$), `len(L)` as the size (length) of the list, and `O` as the list of predictors observed in the subject ($o_i \in O$):

  1. **simple cc**: `x` observations out of `L` are present in `O`: $x <= len(O) <= len(L)$. This includes also the case of all predictors in list, where $x=a$. It also considers the cases that the observations might not be done all, as the tests might be lengthy or expensive.
  2. **indirect cc**: contains some kind of count (ex. instances of falling in the last one year), or some kind of unmeasurable predictor.
  3. **conditional cc**: the combination of multiple clinical criteria through `and`, `or`, `xor`, and `not`.

For example, one valid typical AD diagnosis is defined when the patient experiences a progressive change in memory, and there is some biomarker validation of the tracer retention on amyloid PET. Additionally, we know that if the patient shows some impairment in the movement disorders the etiology of the disease will include some kind of movement disorders. Similarly, if the changes in the personality are big in an early age then FTLD disorders are more probable. In this case:

- Predictors: $p_1=memory, p_2=nimg(pat), p_3=movement, p_4=behavior, p_5=age$
- Observations: $o_1=(p_1<2), o_2=(p<2)$ and $o_3=(p3<2), o_4=(p4<2), o_5=(age<70)$
- Clinical criterion: $cc_1=(o_1, o_2), cc_2=(o_3), cc_3=(o_4, o_5)$
- Clinical criteria: $CC(typical-AD)=\{cc_1\}$, not $\{cc_2, cc_3\}$

This provides some kind of freedom in the description of the clinical criteria, for example in the description of the phenotypes or more complex diagnosis. For example:

- $CC(AD)=\{CC(typical-AD), CC(atypical-AD)\}$,
- $CC(MCI)=not\{CC(x), x \in Dementia\}$,$cc(impairment<3, impairment>0)$.

Eventually, such definitions can be revised and updated for the technology that will deal with the inclusion of the biomarkers. Additionally there is the power of the dealing with a case in a personalized manner, as the case can be described through such definitions, and possible interventive measures can be defined through counterfactuals.

#### Complexity

Sources of noise in the process can increase the complexity. Among the common problems are:

- test noise: the tests do not necessarily reflect the level of impairment, as they might be affected by several factors (ex. was the subject in a good mood, is possible retesting?),
- diagnosis noise: the diagnosis might not be stable (ex. transitory state, mixed diagnosis),
- missingness: some of the information might be missing (ex. are the biomarkers available for AD?).

These allow for the clinician's input and verdict to be based on a more holistic perspective. To be able to handle these, a relatively wide assumption of noise needs to be taken, allowing for errors or milder levels of judgement. For example, while the research criteria suggests that memory is a later problem for DLB, having it early might be related to the late observation because of compensatory mechanisms. While realistic, this kind of process is more difficult to be represented and validated. These cases can be handled through counterfactuals post-analysis, and the description for that is provided later in this chapter.

#### Predictors

Based on the protocols and the literature, the following are the features that are involved in the diagnosis of Dementia. `Dx` stands for diagnostic value in relation to the other Dementia disorders group, while `Ph` stands for a predictor involved in the phenotypic differentiation.

\small

| Type       | Predictor category                      | Value | Notes                                        |
| ---------- | --------------------------------------- | ----- | -------------------------------------------- |
| **MCI**    |                                         |       |                                              |
| ci         | health-history                          | Ph    | defines etiology                             |
| impairment | impairment, progression                 | Dx    | general predictor of MCI                     |
| npa        | memory                                  | Ph    | for a-MCI                                    |
| npa        | executive-f., language, visuospatial    | Ph    | for na-MCI                                   |
| nimg(vol)  | CSF, temporal, cingulate, precuneus     | Dx&Ph |                                              |
| nimg(pat)  | limbic                                  | Dx    |                                              |
|            |                                         |       |                                              |
| **AD**     |                                         |       |                                              |
| ci         | demographics, health-history            | Ph    | age, gender                                  |
| impairment | impairment                              | Dx    | vs. MCI                                      |
| impairment | onset                                   | Dx    | vs. FTLD vs VD                               |
| nps        | psychotic                               | Dx    | vs. DLB - hallucinations                     |
| npa        | memory                                  | Dx&Ph | general predictor of AD                      |
| npa        | language, executive-f.                  | Dx    | vs. FTLD in presence of early age            |
| npa        | attention, executive-f., visuospatial   | Dx    | vs. DLB                                      |
| nimg(vol)  | hippocampus, entorhinal cortex          | Dx&Ph |                                              |
| nimg(pat)  | CSF                                     | Dx    | amyloid or tau deposition                    |
| nimg(pat)  | temporal, parietal                      | Dx    | hypometabolism                               |
|            |                                         |       |                                              |
| **DwMD**   |                                         |       |                                              |
| physical   | motor                                   | Dx&Ph | motor dysfunctions profiling is important    |
| physical   | somatic                                 | Dx&Ph | sleep disturbances - REM sleep - DLB or MSA  |
| physical   | sensory                                 | Ph    | sensory loss - CBD                           |
| nps        | psychotic                               | Ph    | hallucinations - DLB                         |
| nps        | others                                  | Ph    | pseudobulbar - PSP                           |
| nps        | personality                             | Dx    | co-occurrence with bv-FTD, PNFA              |
| npa        | executive-f., visuospatial, psychomotor | Dx    |                                              |
| npa        | attention                               | Ph    | DLB                                          |
| npa        | memory                                  | Ph    | DLB and PSP defining                         |
| nimg(vol)  | limbic, brain-stem                      | Dx&Ph | DLB atrophy                                  |
| nimg(vol)  | basal-ganglia, pons, cerebellum         | Dx&Ph | MSA atrophy                                  |
| nimg(pat)  | basal-ganglia                           | Dx    | tau presence                                 |
|            |                                         |       |                                              |
| **FTLD**   |                                         |       |                                              |
| ci         | demographics                            | Ph    | gender - male SD and bvFTD, female PNFA      |
| impairment | onset                                   | Dx    | earlier than other progressive dementias     |
| npa        | personality                             | Dx    | general predictor of FTLD,                   |
| npa        | executive-f.                            | Ph    | behavioral, set shifting, flexibility,       |
|            |                                         |       | abstract reasoning                           |
| npa        | language                                | Ph    | semantic (anomic) vs PNFA (non-fluent) vs bv |
| npa        | visuo-spatial, memory                   | Dx    | vs. AD, spared                               |
| nimg(vol)  | frontal, temporal, cingulate, insular   | Dx&Ph | vs. AD, mainly bv-FTD                        |
| nimg(vol)  | motor, insula, operculum                | Ph    | PNFA                                         |
| nimg(pat)  | frontal, temporal                       | Dx    | hypometabolism                               |
|            |                                         |       |                                              |
| **VaD**    |                                         |       |                                              |
| **ToDO**   |                                         |       |                                              |

Table: Category of predictors relevant for the disorders.

\normalsize

\newpage

## 2.5. Computational models

<!--https://medium.com/spikelab/convolutional-neural-networks-on-tabular-datasets-part-1-4abdd67795b6-->
<!--https://www.nature.com/articles/s41598-021-90923-y-->

The modeling of Dementia can be done through building a model that uses clincial features, as the ones mentioned in the Clinical criteria, or Clinical examination sections. The models are simply trying to understand the relation between the predictors (features) and the result. We provide the model with some initial data to train it, and present later some new data, and see whether the model can accurately predict the resulting value.
A simple linear model is shown below at (I), where $x_{i_j}$ is the input, $\theta_i$ is the parameter, and $y_i$ is the resulting wanted prediction. The training is done to find the best parameters through optimizing a loss function, and reducing the parameter space and avoiding overfitting through regularization, as shown in (II). The combination of the loss ($\Lambda$) and regularization ($\Omega$) is called the objective function (_obj_). The Mean Squared Error (MSE) is an example of a loss function used for regression, and the Lasso regularization, as shown in (III) and (IV).

\large

(I) $\hat{y_i} = \frac{1}{N} \sum_{j} \theta_i x_{i_j}$
(II) $obj(\theta) = \Lambda(\theta) + \Omega(\theta)$
(III) $\Lambda(\theta) = \sum_{i=1}(\hat{y_i}-y_i)^2$
(IV) $\Omega(\theta) = \lambda \sum_{i=1} |\theta_i|$

\normalsize

The algorithms are various, starting from simple methods like Logistic Regression, to more advanced ones like Ensemble models or Neural Networks. For each of the methods there are several variations of the models that might make them more compatible for specific tasks.

#### Ensemble tree models

The tree models are based on trees that separate the decision space based on features (see figure below). For an introduction to trees check sklearn documentation [@scikit-learn].

\small

| Model Type              | Variations                            | Value for Diagnostic models       |
| ----------------------- | ------------------------------------- | --------------------------------- |
| Logistic Regression     | Regularized with Lasso, Ridge         | Reduce the feature space          |
| Support Vector Machines | SVC-based, SVM                        | Classification standard           |
| Distance-based          | KNN, K-means                          | Useful for imputation             |
| Tree models             | Decision Tree, Random Forest          | Intuitive results                 |
| Ensemble models         | XGBoost, LightGBM, AdaBoost           | Good results with intuitive bases |
| Bayesian networks       | Naive Bayes, Bayesian belief networks | Probabilistic integration         |
| Neural networks         | CNN-based, RNN-based, Graph-NN        | Advanced black-box modelling      |

Table: The different types of machine learning models.

\normalsize

![An example decision tree on Dementia.](src/imgs/tree.png){ width=80%}

A variation of trees are the classification and regression trees (CART) [@xgboost2016]. CART keeps a score for each separation and decision that allows the combination of many of them into an ensemble model. The ensemble based scoring is shown in (V), and the objective function described in (VI).

\large

(V) $\hat{y}_i = \sum_{k=1}^K f_k(x_i), f_k \in \mathcal{F}$

(VI) $\text{obj}(\theta) = \sum_i^n l(y_i, \hat{y}_i) + \sum_{k=1}^K \omega(f_k)$

\normalsize

#### Models of Dementia

For example, the tree models are more explainable, while the Neural Networks might perform better. The resulting power of these models is dependent on the type of data that is being processed too. Recent literature reviews and meta-analyses show the extensive work done on models that try to diagnose Dementia, and their preference for different types of datasets.

- The neuropsychological measurements alone have a differentiating power for the HC-MCI-AD progression, but not a prognostic power [@DukeHan2017;@Battista2020].
- Multimodal prediction of Dementia through deep learning and medical imaging makes possible early detection of the HC-MCI-AD spectrum diseases [@Ahmed2019].
- Personalization of the diagnostic process can be based on the open datasets, and inclusion of various biomedical information is valuable [@Kumar2021].

Additionally, the latest models have achieved positive results that can have predictive power. These models can be integrated to geriatrics departments for improving the patient care through correct early diagnostic evaluation or prognostic evaluation. For the diagnosis several ensemble models have proven useful [@Bogdanovic2022], and for prognostic evaluation the temporal recurrent neural networks trained on longitudinal data have shown the first results [@Jung2021]. After these models have proven useful for an extensive range of tests and datasets, they can be integrated to the clinical practice for specific correctable decisions.

#### Private models

Models built from clinical data can leak the training data, which makes the task of learning from closed datasets (for example the extensive datasets of governmental institutions) risky. A mathematical solution to this problem is the Differential Privacy, which in combination to Explainable Boosting Machines (EBMs), can provide a long-term solution to the reproducibility and extensibility of the pipelines of analysis.

<!--Accuracy, Interpretability, and Differential Privacy via Explainable Boosting-->

## 2.6. Explaining models

<!--https://towardsdatascience.com/best-practice-to-calculate-and-interpret-model-feature-importance-14f0e11ee660-->

The explainability of machine learning in the case of diagnosis of Dementia because it allows insight in the decision-making process of the models. One valuable contribution of such models is the ability to find predictor interactions that might have not been observed before as important to the diagnostic process. In this sense, exploring the interpretability of the model can be insightful to the clinical decision making process. There are several ways to explain how the models learn, among them SHapley Additive Explanation (SHAP), Locally Interpretable Model-agnostic Explanations (LIME), Partial Dependence plots, and more are being developed.

SHAP is a method based on game theory that considers each predictor as a player of several games, and makes evaluations on the impact of each such predictor on the game's result [@lundberg2017]. The algorithm tries to do a fair allocation of importance to each player. The main usefulness of the SHAP method is its interpretabiity of the model both in the global and local sense.

### 2.6.1. Example

For the sake of explanation, let's take the case where four diseases have little overlapping, and the patients show a defined set of symptoms. A clinical diagnostic process would take note of these predictors: `Age`, `Impairment`, `Memory`, and `Gait`. The protocol for diagnosis of diseases for such minimalistic process based on the existing guidelines would be as follows:

- Disease 1: `Memory` problems is the main predictor, shown mostly with increased `Age`.
- Disease 2: `Gait` problems are the main predictor, no `Memory` problems.
- Disease 3: young `Age` is the main predictor, and shows high level of `Impairment`.
- Disease 4: a lower degree of `Impairment` than the other diseases is the main predictor.

A model would find these relationships and would correctly predict the diseases if a new subject is provided. The simple relationship `Disease 1` ~ `Memory` is easier to measure than the `Disease 4` ~ `Impairment` level. Linear or logistic regression is able to capture the first relationship, while DecisionTrees would be more able to represent the conditional relationship in the second one. What if we have a patient that at a young `Age` shows a low level of `Impairment`? Then we need a more advanced model, but in the moment that the models become more complicated, the importance of each predictor, and the combined effect that some predictors might have, is more difficult to measure.

### 2.6.2. Logic of SHAP

<!--https://towardsdatascience.com/introduction-to-shap-values-and-their-application-in-machine-learning-8003718e6827
-->

In this context, SHAP values are helpful. They take all the predictors and measure their impact on the diagnostic result in terms of coalitions. So, the predictors are players of these games, and they contribute at changing (or maintaining) the default result of the game. The default result of the toy-example game is the most prevalent disease, for example `Disease-4`. While it might be easy to measure the impact of a single predictor like `Impairment` on the diagnostic result, it is more difficult to measure how the combination of `Age`, `Impairment` and `Memory` affect the diagnosis in collaboration, besides their impact on their own.

![Combination of predictors for building SHAP.](docs/shaps.drawio.png){width=70%}

For each of the combinations that are provided in the figure, SHAP calculates a predictive model that starts from same data and parameters and considers only the predictors in the node. Each node in the graph in the figure shows a SHAP internal model built with the mentioned predictors. Each edge shows the marginal contribution (MC) of each predictor.

For example, the effect of `Age` is measured from the difference in impact between groups of predictors not containing `Age`, and then adding `Age` to that group. As shown in the figure, starting from no predictors and adding `Age` is one (`MC(Age){1,2}`), but also starting from `Imp`, `Gait` and adding `Age` also reflects the marginal contribution of `Age` (`MC(Age){10,12}`). Adding all these contributions allows for an overall overview of how does adding `Age` affect the groups of predictors.

To have a balanced distribution of the impact, the impact of each model is weighted through the coefficient `w` that represents the relative contribution for the level. For example, each predictor at level 0 to level 1 has the weight 1/4, as they are in total 4 edges. In the second level there are two edges for each combination of predictors, so 6\*2=12. For a full example check the example [@Mazzanti2022]. Eventually the function for measuring SHAP for `Age` has the following form, that can generalize for each predictor, and for each coalition of predictors.

```
SHAP(Age) = 1/4 x MC(Age){1,2}
  + 1/12 x MC(Age){3,6} + 1/12 x MC(Age){4,7} + 1/12 x MC(Age){5,8}
  + 1/12 x MC(Age){9,12} + 1/12 x MC(Age){10,13} + 1/12 x MC(Age){11,14}
  + 1/4 x MC(Age){15,16}
```

#### Plots

Visualizations of the impact of the predictors can be observed through the different plots that aim at the global and local explainability. Plots aiming at explaining the example relation are found in the end of this chapter.

- Global explainability plots: The SHAP value provides knowledge about how much a certain predictor impacts the prediction of the model. The visualization tools used tend to be intuitive and help build trust to the machine learning models decision-making process [@lundberg2020].
- Local explainability plots: These plots reflect some kind of decision making similar to a clinician. The graph is an effect (x) by feature graph (y). The effect of each feature is added strating from the bottom, with the features in the top being the most impactful ones.

### 2.6.3. Counterfactual explanations

Understanding the decisional process of the model is important but does not provide actionable intelligence. For example, if a subject is in the state of MCI and a model can predict that their diagnosis will change soon into AD, the question that comes up is: how can we prolong the process? For that we can use the counterfactual explanations (CE). CE are examples of the smallest actions to be taken so that the prediction can change [@Wachter2017]. These examples are the closest as possible to the provided case, and the possible changes can be provided.
The counterfactual generation is based on an optimization algorithm that minimizes a loss function based on several requirements. An example method is introduced by Dandl and colleagues [@Dandl2020], where they define the requirements for plausible counterfactuals:

- the prediction should be close to our desirable prediction,
- the counterfactual should be as close to the initial case,
- the changes should include a small amount of features,
- the feature changes should be likely (based on the dataset).

These methods can be valuable for the clinician to take action to improve a certain area for the patient or to train another area for the patient to not deteriorate. In the case of MCI mentioned above, training the cognitive side might help into maintaining the current diagnosis, while some actions like increasing the cardio-vascular medications can deteriorate the condition. In combination with SHAP these explanations can be used for understanding what the best strategy for an institution (for example a hospital) is to apply trainings at a subgroup of patients.

## 2.7. Hypotheses

The aims of the thesis are to handle issues like cost (test time and money), validity (protocols), and potential interventions (counterfactuals). The process creates a parallel process to the diagnostic process and analyses the combination of factors through explainable machine learning to define the clinical protocols mathematically, for making them testable and changeable. This kind of expansion of the method should allow an iterative improvement, and expansion of the models, and some explainability to the expert knowledge.

With the data from the open datasets, like the NACC dataset, we can have a chance at looking at the statistical models. They can add some insights on the disorders, at least be comparable to the clinical criteria.

**Hypothesis 1**: Computational models based on extensive clinical examination (NACC dataset) of patients of the HC-MCI-AD spectrum are able to diagnose similarly to the ones built from a restricted clinical assessment and neuroimaging (ADNI dataset).

**Hypothesis 2**: Predictors selected from automatic selection of the model are similar to the ones defined in the clinical protocol for the diagnosis of diseases: MCI, AD, DLB, FTD, or VaD (NACC dataset).

**Hypothesis 3**: The counterfactual examples of mis-diagnosed cases from the computational models creates subgroups for possible interventions for the most prevalent diseases.

<!--
**Hypothesis 4**: Differential diagnosis for Dementia for disorders that are not in the Dementia spectrum, like Depression.
-->

\newpage

![Feature Importance plot. The most important features plot can be an initial interaction with the existing plot.](docs/sample-features.png){width=70%}

![Summary plot. In the summary plot, this SHAP value of every feature inserted in the prediction is set in relation with the value of the respective feature. It provides an overview about which feature is important (SHAP value on x-axis) if it has a certain value (y-axis). ](docs/sample-beeswarm.png){width=70%}

![Dependence plot. In a next step, one single of the features is picked out and plotted with its value on the y-axis and its SHAP value on the x-axis. The dependence plot zooms into one single feature and its behavior in the prediction depending on its value.](docs/sample-dependence.png){width=70% height=50%}

\newpage

![Force plot. For a single observation, it shows the accumulated importance of the positive and negative features in a horizontal bar. Additionally it can be done for a group of instances, and this can be useful for visualizing mistaken observations from the model.](docs/sample-force.png){width=70%}

![Waterfall plot. How did the model’s output deviate from its expected output? In a cascade-like shape the features contributing positively and negatively to the model’s output value are visualized above each other ordered from lowest importance at the bottom to highest importance at the top.](docs/sample-waterfall.png){width=70% height=50%}

![Decision plot. The more intuitive explanations of the models can be done using the decision plots, and  The features are sorted by importance of the subsample shown in the graph, and possibly can be hierarchically clustered.](docs/sample-decision.png){width=70%}

\newpage
