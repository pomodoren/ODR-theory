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

# Appendix C: Useful Scripts {.unnumbered}

## Creating ADNI dataset

#### Merging ADNI files based on columns (Mentioned in 3.1.1.)

```py
import pandas as pd
# get all the files related to ADNI
adni_files_df = pd.read_csv(ADNI_FILES_SELECT, index_col=0)
# read ADNIMERGE file
adni_base_df = pd.read_csv(ADNIMERGE_LOCATION)
# filter based on protocol
adni_base_df = adni_base_df[adni_base_df["COLPROT"].isin(["ADNI2", "ADNI3"])]
# fix viscode-2 problem
adni_base_df["VISCODE2"] = adni_base_df["VISCODE"]
cols = ["PHASE", "Phase", "ProtocolID", "COLPROT"]  # usefule later for merging
# expand the base dataframe with data from the other files
expanded_adni_df = adni_base_df
for i, file_row in adni_files_df[adni_files_df['Select']==1].iterrows():
    # set the file name
    file = file_row["block"]
    if file == "ADNIMERGE.csv":
        continue
    # extract the data in this
    file_i_df = pd.read_csv(ADNI_BASE_PATH + file)
    # set which cols are shared between ADNIMERGE and this file
    col_to_merge = ["RID", "VISCODE2"] + [i for i in cols if i in file_i_df.columns]
    # expand adni dataframe
    # ATTENTION: it creates replicated columns that were processed again
    expanded_adni_df = pd.merge(
        expanded_adni_df,
        file_i_df,
        how="left",
        left_on=["RID", "VISCODE2", "ORIGPROT"],
        right_on=col_to_merge,
        suffixes=(None, "_y"),
    )
# save the file for future role
expanded_adni_df.to_csv(ADNI_BASE_PATH+"expanded_adni_df.csv")
```

#### Merging duplicated columns from joining ADNI files

```py
# split into columns that are duplicate and non-duplicate
# ['a', 'b', 'b_y'] -> non-duplicate: ['a','b'], duplicate: ['b_y']
non_duplicate_cols = [col for col in expanded_adni_df.columns if "_y" not in col]
duplicate_cols = sorted(
    list(set([col.split("_y")[0] for col in expanded_adni_df.columns if "_y" in col]))
)
# ['a', 'b', 'b_bl', 'b_y', 'c', 'c_y', 'c_y.1'] -> dict_vals: {'b':['b_y'], 'c': ['c_y', 'c_y.1']}
# bl: baseline, _y: appended from the merging
dict_vals = {
    col: [i for i in expanded_adni_df.columns if i.startswith(col) and not i.endswith("_bl")]
    for col in duplicate_cols
}
# merge all the cols in the dict_vals (for ex. b, b_y, b_y.1) into a single column (b)
merger_df = expanded_adni_df
for i, vals in dict_vals.items():
    merger_df[i] = merger_df[vals].apply(
        lambda x: ([i for i in x if not pd.isnull(i)] + [np.nan])[0], axis=1
    )
```

##  NACC variables

### NACC variables filter (Mentioned in 3.2. and 3.2.1.)

```py
# initial setup
column_verifier = {
    "column": None,
    'Binary': False,
    'Categorical': True,
}  # useful for keeping same structure
cv_list = []
# set replacable values with NaN
replaceable_values = [-4] + [ 8, 9] + [88, 888, 8888,  999, 9999] + [*range(95, 100)] + [*range(995, 1000)]
replaceable_values += [str(i) for i in replaceable_values]
# reasons for missing
defaults = {
    "-4": "Not available",
    "8": "Not applicable",
    "9": "Unknown",
    "88": "Not applicable",
    "888": "Not applicable",
    "8888": "Not applicable",
    "95": "Physical problem",
    "995": "Physical problem",
    "96": "Cognitive/behavior problem",
    "996": "Cognitive/behavior problem",
    "97": "Other problem",
    "997": "Other problem",
    "98": "Verbal refusal",
    "998": "Verbal refusal",
    "99": "Unknown",
    "999": "Unknown",
    "9999": "Unknown",
}

for col in nacc_df:
    cv = column_verifier.copy()
    cv['column'] = col
    row_miss = {}   # which values not missing in row
    # if the type of data is an object, categorical
    if nacc_df[col].dtype == "O":
        cv_list.append(cv)
        continue
    # if not int or float, then print it to check its value
    if not nacc_df[col].dtype == "int64" and not nacc_df[col].dtype == "float64":
        cv_list.append(cv)
        print(col)
        continue
    # Otherwise, its a column containing numbers
    # -4 is extensively used, take it out of the system now
    if -4 in nacc_df[col]:
        row_miss[-4] = defaults[str(-4)]
    n_unique = nacc_df[col].nunique()
    if n_unique >= 15:          # Set a baseline for uniquenes - (15 picked as an upper bound)
        cv['Categorical'] = False
    # count all the values included in the dataset
    vals = nacc_df[col].value_counts().to_dict()
    # separate them into potentially noting missing or otherwise
    non_missingable = set(vals.keys()) - set(replaceable_values)
    missingable = set(vals.keys()) & set(replaceable_values)
    # the decision is made based on the non-missingables
    # ex: data[col] = {-4, 0, 1, 9} --> binary
    if len(non_missingable) == 2:
        cv['Binary'] = True
    if len(missingable) and len(non_missingable):
        # ex: data[col] = {-4, 0, 1, 2, 3, 4, 9} --> categorical
        if (int(max(missingable)) == 8 or int(max(missingable)) == 9) and int(max(non_missingable)) <= 6:
            for miss in missingable:
                row_miss[miss] = defaults[str(int(miss))]
        # ex: data[col] = {-4, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 88, 99} --> categorical
        elif int(max(missingable)) - int(max(non_missingable)) > 10:
            for miss in set(missingable)-set([8,9, 8.0, 9.0]):
                row_miss[miss] = defaults[str(int(miss))]
    # store
    cv['missing'] = '\n'.join(str(i)+':'+j for i,j in row_miss.items())
    cv_list.append(cv)
```

## Balancing phenotypes

\newpage

#### Getting spectrum for each

```py
def stats_spectrum(df, PTID="RID", DX="DX", relevant_cols=[]):
    # set levels of missingness
    df["missingness"] = df.isna().sum(axis=1)
    df["relevant_missingness"] = df[relevant_cols].isna().sum(axis=1)
    groups = {}
    groups_ids = {}
    groups_missingness = {}
    groups_relevant = {}
    # group by clinical phenotype
    for i, gr in df.groupby(PTID):
        tx = tuple(sorted(set(gr[DX]) - set([np.nan])))
        if tx not in groups:
            groups[tx] = []
            groups_ids[tx] = []
            groups_missingness[tx] = []
            groups_relevant[tx] = []

        groups[tx].append(len(gr))  # visits for each participant
        groups_ids[tx].append(i)  # participant ids
        groups_missingness[tx].append(
            np.mean(gr["missingness"]) / len(df.columns) * 100
        )  # missingness of all rows in df
        groups_relevant[tx].append(
            np.mean(gr["relevant_missingness"]) / len(relevant_cols) * 100
        )  # missingness of relevant columns
    # put everything in a dataframe for descriptions
    stats = []
    total_visit_count = 0
    for i, vals in groups.items():
        name = ", ".join(sorted([str(k) for k in i]))
        stats.append(
            [
                name,
                len(vals),
                np.sum(vals),
                round(np.mean(vals), 2),
                round(np.mean(groups_missingness[i]), 2),
                round(np.mean(groups_relevant[i]), 2),
            ],
        )
        total_visit_count += np.sum(vals)
    stats_df = pd.DataFrame(
        stats,
        columns=[
            "Diagnosis spectrum",
            "Subjects",
            "Visits (%)",
            "Avg. visit no.",
            "Miss. %",
            "Relevant Miss. %",
        ],
    )
    stats_df["Visits (%)"] = stats_df.apply(
        lambda row: f"{row['Visits (%)']} ({round(row['Visits (%)'] / total_visit_count *100, 2)} %)",
        axis=1,
    )
    print()
    print(stats_df.sort_values("Subjects", ascending=False).to_markdown(index=False))
    print()
    # return groups of ids
    return groups_ids, groups
```

\newpage

#### Reducing subject count

```py
def reduce_subject_count(
    df, less_represented, more_represented, groups_ids, PTID="RID", DX="DX"
):
    less_represented_cnt = len(less_represented)
    keep = []
    # make sure the list is sorted before checked
    more_represented = [tuple(sorted(list(i))) for i in more_represented]
    # groups_ids: {('AD'):[ID1, ID2,], ('HC'):[ID3,], ('AD', 'HC'):[ID4, ID5]}
    # iterate through these groups and decide which ones to keep
    for key, vals in groups_ids.items():
        # if this group is over-represented
        if key not in more_represented:
            keep += list(df[df[PTID].isin(vals)].index)
            continue
        if len(key) > 1:
            to_keep = list(
                df[df[PTID].isin(vals)]
                .sort_values(by=[PTID, "missingness", "DX"])
                .drop_duplicates(subset=[PTID, "DX"], keep="first")
                .index
            )
            keep += to_keep
            continue
        else:
            # initially keep at least on visit for each participant
            to_keep = list(
                df[df[PTID].isin(vals)]
                .sort_values(by=[PTID, "missingness"])
                .drop_duplicates(subset=[PTID], keep="first")
                .index
            )
        # if the number passes the less represented count
        # drop some of the visits
        if len(to_keep) >= less_represented_cnt:
            to_keep = random.sample(to_keep, less_represented_cnt)
        # otherwise, add some random visits to match the same levels
        # of representation
        else:
            difference = less_represented_cnt - len(to_keep)
            all_ind = list(df[(df[PTID].isin(vals)) & (~df.index.isin(keep))].index)
            to_keep = to_keep + random.sample(all_ind, difference)
        keep += to_keep
    return keep

```

\newpage

#### C.3.3. Save each subgroup

```py
EXPERIMENT_LOWER_REPRESENTATIONS = {
    "M3": "MCI",
    "M4": "MCI",
    "M5": "FTLD",
}
for exp, lower_rep in EXPERIMENT_LOWER_REPRESENTATIONS.items():
    print(f"EXPERIMENT:\t {exp}")
    # extract subset
    nacc_df_model_i = nacc_df[
        nacc_df["DX"].isin(experiments[exp]["diagnostic_vals"].keys())
    ]
    # print spectrum of initial dataset
    groups_ids, groups_visits = stats_spectrum(
        nacc_df_model_i, relevant_cols=nacc_cols_relevant, PTID="NACCID", DX="DX"
    )
    # get the less represented category count of individuals
    less_represented = nacc_df_model_i[
        nacc_df_model_i["NACCID"].isin(groups_ids[(lower_rep,)])
    ]
    # reduce the subject count for the more represented classes
    more_represented = [("HC",), ("AD",), ("AD", "HC")]
    keep = reduce_subject_count(
        nacc_df_model_i, less_represented, more_represented, groups_ids, PTID="NACCID"
    )
    df = nacc_df_model_i[nacc_df_model_i.index.isin(keep)]
    new_groups_ids, new_groups_visits = stats_spectrum(
        df, relevant_cols=nacc_cols_relevant, PTID="NACCID", DX="DX"
    )
    graph_from_phenotypes(new_groups_ids)
    graph_from_phenotypes(new_groups_visits, func=np.sum)
    nacc_df_model_i[nacc_df_model_i.index.isin(keep)].to_csv("../data/NACC_"+exp+".csv")
    print("*"*100)
```

\newpage

## Experiment configurations

```json
{
  "experiments": {
    "M1": {
      "dataset": "ADNI",
      "diagnostic_vals": {
        "HC": ["CN"],
        "MCI": ["MCI"],
        "AD": ["AD"]
      },
      "predictors": {
        "source": "ADNIMERGE.csv",
        "type": ["demographics", "npa", "nps", "nimg"]
      }
    },
    "M2": {
      "dataset": "ADNI",
      "diagnostic_vals": {
        "HC": ["CN"],
        "MCI": ["MCI"],
        "AD": ["AD"]
      },
      "predictors": {
        "source": "*.csv",
        "type": ["demographics", "npa", "nps"]
      }
    },
    "M3": {
      "dataset": "NACC",
      "diagnostic_vals": {
        "HC": [88],
        "MCI": [26, 27, 28, 29, 30],
        "AD": [1]
      },
      "predictors": {
        "source": "*.csv",
        "type": ["*"]
      }
    },
    "M4": {
      "dataset": "NACC",
      "diagnostic_vals": {
        "HC": [88],
        "MCI": [26, 27, 28, 29, 30],
        "AD": [1],
        "VaD": [8]
      },
      "predictors": {
        "source": "*.csv",
        "type": ["*"]
      }
    },
    "M5": {
      "dataset": "NACC",
      "diagnostic_vals": {
        "HC": [88],
        "AD": [1],
        "FTLD": [6, 7],
        "DwMD": [2, 3, 4, 5]
      },
      "predictors": {
        "source": "*.csv",
        "type": ["*"]
      }
    }
  },
  "datasets": {
    "NACC": {
      "id": "NACCID",
      "date": "VISITYR",
      "gender": "SEX",
      "age": "NACCAGE",
      "education": "EDUC",
      "dx": "NACCETPR",
      "female": 2
    },
    "ADNI": {
      "id": "PTID",
      "date": "EXAMDATE",
      "gender": "PTGENDER",
      "age": "AGE",
      "education": "PTEDUCAT",
      "dx": "DX",
      "female": "Female"
    }
  }
}
```

\newpage

## Grid search parameters

```py
unsupervised_selection_params = {
    "transformer__categorical__feature_selection": [
        SelectPercentile(percentile=40, score_func=chi2)
    ],
    "transformer__numerical__feature_selection": [
        SelectPercentile(percentile=10, score_func=chi2),
        SelectPercentile(percentile=40, score_func=chi2),
        SelectPercentile(percentile=10, score_func=mutual_info_classif),
        SelectPercentile(percentile=40, score_func=mutual_info_classif),
    ],
    "transformer__categorical__feature_selection__percentile": [10, 40,],
    # "transformer__numerical__feature_selection__score_func": [mutual_info_classif, chi2, f_classif]
}
supervised_selection_params = {
    "transformer__categorical__feature_selection": [SelectFromModel(DecisionTreeClassifier())],
    "transformer__numerical__feature_selection": [SelectFromModel(DecisionTreeClassifier())],
}


scaling_params = {
    "transformer__numerical__scaling": [
        RobustScaler(),
        StandardScaler(),
    ],
}

simple_sampling_over_params = {"balance": [RandomOverSampler()]}
simple_sampling_under_params = {"balance": [RandomUnderSampler()]}
def get_advanced_sampling_params(categorical_features=[]):
    advanced_sampling_params = {
        "balance": [SMOTENC(categorical_features=categorical_features)],
        "balance_2": [NearMiss()],
    }
    return advanced_sampling_params


model_params = {
    "classifier": [
        RandomForestClassifier(),
        LGBMClassifier(),
        RandomForestClassifier(),
    ],
}

main_grid_params = {
    "transformer__categorical__imputation": ["passthrough"],
    "transformer__categorical__feature_selection": ["passthrough"],
    "transformer__numerical__imputation": ["passthrough"],
    "transformer__numerical__feature_selection": ["passthrough"],
    "transformer__numerical__scaling": ["passthrough"],
    "classifier": [RandomForestClassifier()],
    "balance": [RandomUnderSampler()],
    "balance_2": ["passthrough"],
}

vanilla_grid_params = {
    key: [val[0]] for key, val in main_grid_params.items()
}  # for control

selection_grid_params = [
    {**main_grid_params, **unsupervised_selection_params},
    {**main_grid_params, **supervised_selection_params},
]
# selection_grid_params.append(vanilla_grid_params)

scaling_grid_params = [{**main_grid_params, **scaling_params}]
# scaling_grid_params.append(vanilla_grid_params)

sampling_grid_params = [
    {**main_grid_params, **simple_sampling_over_params},
    {**main_grid_params, **simple_sampling_under_params},
]
# scaling_grid_params.append(vanilla_grid_params)

## GRID params
# defined_grid_params = grid_params
PARAMS = {
    "feature_selection": selection_grid_params,
    "imputation": vanilla_grid_params,
    "scaling": scaling_grid_params,
    "sampling": sampling_grid_params,
}

```


\newpage
