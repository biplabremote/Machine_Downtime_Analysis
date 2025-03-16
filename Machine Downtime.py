#!/usr/bin/env python
# coding: utf-8

# Importing Libraries

# In[1]:


import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns


# In[306]:


file_path = "C:/Users/infof/Desktop/360TMG Project/Machine_Downtime.csv"


# In[ ]:


Dataset = pd.read_csv("C:/Users/infof/Desktop/360TMG Project/Machine_Downtime.csv")


# In[328]:


Dataset


# In[330]:


Dataset.shape


# In[332]:


Dataset.info()


# In[334]:


Dataset.describe()


# In[338]:


Dataset.columns.tolist()


# Checking Missing Values

# In[341]:


Dataset.isnull()


# In[343]:


Dataset.isnull().sum()


# In[345]:


new_df = Dataset.dropna(inplace = True)


# In[347]:


Dataset.isnull().sum()


# Measures of Central Tendency / First moment business decision
# Mean( The average value)
# 

# In[350]:


Dataset.Hydraulic_Pressure_bar.mean()


# In[352]:


Dataset.Coolant_Pressure_bar .mean()


# In[354]:


Dataset.Air_System_Pressure_bar.mean()


# In[356]:


Dataset.Coolant_Temperature .mean()


# In[358]:


Dataset.Hydraulic_Oil_Temperature.mean()


# In[360]:


Dataset.Spindle_Bearing_Temperature.mean()


# In[362]:


Dataset.Spindle_Vibration.mean()


# In[364]:


Dataset.Tool_Vibration.mean()  


# In[366]:


Dataset.Spindle_Speed_RPM.mean()


# In[368]:


Dataset.Voltage_volts.mean() 


# In[370]:


Dataset.Torque_Nm.mean()  


# In[372]:


Dataset.Cutting_kN.mean()  


# ****** Median( The mid point value)*****

# In[375]:


Dataset.Hydraulic_Pressure_bar.median()


# In[377]:


Dataset.Coolant_Pressure_bar.median()


# In[379]:


Dataset.Air_System_Pressure_bar.median()


# In[381]:


Dataset.Coolant_Temperature .median()


# In[383]:


Dataset.Hydraulic_Oil_Temperature.median()


# In[385]:


Dataset.Spindle_Bearing_Temperature.median()


# In[387]:


Dataset.Spindle_Vibration.median()


# In[389]:


Dataset.Tool_Vibration.median()  


# In[391]:


Dataset.Spindle_Speed_RPM.median()


# In[393]:


Dataset.Voltage_volts.median()


# In[395]:


Dataset.Torque_Nm.median()


# In[397]:


Dataset.Cutting_kN.median()  


# **** Mode (The most common value)  ***

# In[400]:


Dataset.Hydraulic_Pressure_bar.mode()


# In[402]:


Dataset.Coolant_Pressure_bar.mode()


# In[404]:


Dataset.Air_System_Pressure_bar.mode()


# In[406]:


Dataset.Coolant_Temperature.mode()


# In[408]:


Dataset.Hydraulic_Oil_Temperature.mode()


# In[410]:


Dataset.Spindle_Vibration.mode()


# In[412]:


Dataset.Tool_Vibration.mode()


# In[414]:


Dataset.Spindle_Speed_RPM.mode()


# In[416]:


Dataset.Voltage_volts.mode()


# In[418]:


Dataset.Torque_Nm.mode()


# In[420]:


Dataset.Cutting_kN.mode()


# *********Measures of Dispersion / Second moment business decision**********
# variance(.var)
# 

# In[423]:


Dataset.Hydraulic_Pressure_bar.var()


# In[425]:


Dataset.Coolant_Pressure_bar.var()


# In[427]:


Dataset.Air_System_Pressure_bar.var()


# In[429]:


Dataset.Coolant_Temperature.var()


# In[431]:


Dataset.Hydraulic_Oil_Temperature.var()


# In[433]:


Dataset.Spindle_Vibration.var()


# In[435]:


Dataset.Tool_Vibration.var()


# In[437]:


Dataset.Spindle_Speed_RPM.var()


# In[439]:


Dataset.Voltage_volts.var()


# In[441]:


Dataset.Torque_Nm.var()


# In[443]:


Dataset.Cutting_kN.var()


# In[445]:


******standard deviation******


# In[447]:


Dataset.Hydraulic_Pressure_bar.std()


# In[449]:


Dataset.Coolant_Pressure_bar.std()


# In[451]:


Dataset.Air_System_Pressure_bar.std()


# In[453]:


Dataset.Coolant_Temperature.std()


# In[455]:


Dataset.Hydraulic_Oil_Temperature.std()


# In[457]:


Dataset.Spindle_Vibration.std()


# In[459]:


Dataset.Tool_Vibration.std()


# In[461]:


Dataset.Spindle_Speed_RPM.std()


# In[463]:


Dataset.Voltage_volts.std()


# In[465]:


Dataset.Torque_Nm.std()


# In[467]:


Dataset.Cutting_kN.std()


# ******Rangefo the all colums******

# In[470]:


range = max(Dataset.Hydraulic_Pressure_bar) - min(Dataset.Hydraulic_Pressure_bar)
range


# In[472]:


range = max(Dataset.Coolant_Pressure_bar) - min(Dataset.Coolant_Pressure_bar)
range


# In[474]:


range = max(Dataset.Air_System_Pressure_bar) - min(Dataset.Air_System_Pressure_bar)
range


# In[476]:


range = max(Dataset.Coolant_Temperature) - min(Dataset.Coolant_Temperature)
range


# In[478]:


range = max(Dataset.Hydraulic_Oil_Temperature) - min(Dataset.Hydraulic_Oil_Temperature)
range


# In[480]:


range = max(Dataset.Spindle_Vibration) - min(Dataset.Spindle_Vibration)
range


# In[482]:


range = max(Dataset.Tool_Vibration) - min(Dataset.Tool_Vibration)
range


# In[484]:


range = max(Dataset.Spindle_Speed_RPM) - min(Dataset.Spindle_Speed_RPM)
range


# In[486]:


range = max(Dataset.Voltage_volts) - min(Dataset.Voltage_volts)
range


# In[488]:


range = max(Dataset.Torque_Nm) - min(Dataset.Torque_Nm)
range


# In[490]:


range = max(Dataset.Cutting_kN) - min(Dataset.Cutting_kN)
range


# ***********Business decision*******

# In[493]:


Dataset.Hydraulic_Pressure_bar.skew()


# In[495]:


Dataset.Coolant_Pressure_bar.skew()


# In[497]:


Dataset.Air_System_Pressure_bar.skew()


# In[499]:


Dataset.Coolant_Temperature.skew()


# In[501]:


Dataset.Hydraulic_Oil_Temperature.skew()


# In[503]:


Dataset.Spindle_Vibration.skew()


# In[505]:


Dataset.Tool_Vibration.skew()


# In[507]:


Dataset.Spindle_Speed_RPM.skew()


# In[509]:


Dataset.Voltage_volts.skew()


# In[511]:


Dataset.Torque_Nm.skew()


# In[513]:


Dataset.Cutting_kN.skew()


# ********** Fourth business decision *********

# In[516]:


Dataset.Hydraulic_Pressure_bar.kurt()


# In[518]:


Dataset.Coolant_Pressure_bar.kurt()


# In[520]:


Dataset.Air_System_Pressure_bar.kurt()


# In[522]:


Dataset.Coolant_Temperature.kurt()


# In[524]:


Dataset.Hydraulic_Oil_Temperature.kurt()


# In[526]:


Dataset.Spindle_Vibration.kurt()


# In[528]:


Dataset.Tool_Vibration.kurt()


# In[530]:


Dataset.Spindle_Speed_RPM.kurt()


# In[532]:


Dataset.Voltage_volts.kurt()


# In[534]:


Dataset.Torque_Nm.kurt()


# In[536]:


Dataset.Cutting_kN.kurt()


# *****************Correlation heatmap **************

# In[539]:


correlation_matrix = Dataset.select_dtypes(include=['number']).corr()
print(correlation_matrix)


# In[541]:


dataplot = sns.heatmap(correlation_matrix, cmap="YlGnBu", annot=True, fmt=".2f")


# **********displaying heatmap *******

# In[543]:


dataplot=sns.heatmap(correlation_matrix.corr()) 


# ********** EDA for Categorical Variables *******

# In[553]:


ds_cat = Dataset.select_dtypes(include = 'object').copy() 
ds_cat.head()


# In[555]:


ds_cat['Machine_ID'].unique()  


# In[557]:


ds_cat['Machine_ID'].isnull().sum() 


# In[561]:


nrow, ncol = Dataset.shape
nrow, ncol


# In[563]:


ds_cat['Machine_ID'].isnull().sum()/ nrow  


# In[565]:


(ds_cat['Machine_ID'].isnull().sum()/ nrow).round(3)*100


# ********* Frequency Distribution   *********
# Count Plot
# 

# In[567]:


sns.countplot(data = ds_cat, x = 'Machine_ID')


# In[569]:


sns.countplot(data = ds_cat, x = 'Assembly_Line_No')


# In[571]:


sns.countplot(data = ds_cat, x = 'Downtime')


# ********* Frequency Distribution *********

# In[605]:


ds_cat['Hydraulic_Pressure_bar'] = Dataset.loc[ds_cat.index, 'Hydraulic_Pressure_bar'].copy()
ix = 1
fig = plt.figure(figsize = (15,10))
for c in list(ds_cat.columns):
    if ix <= 3:
        if c != 'Hydraulic_Pressure_bar':
            ax1 = fig.add_subplot(2,3,ix)
            sns.countplot(data = ds_cat, x=c, ax = ax1)
            ax2 = fig.add_subplot(2,3,ix+3)
            sns.boxplot(data=ds_cat, x=c, y='Hydraulic_Pressure_bar', ax=ax2)
            
            
            ix = ix +1
    if ix == 4: 
        fig = plt.figure(figsize = (15,10))
        ix =1


# In[607]:


ds_cat['Coolant_Pressure_bar'] = Dataset.loc[ds_cat.index, 'Coolant_Pressure_bar'].copy()


ix = 1
fig = plt.figure(figsize = (15,10))
for c in list(ds_cat.columns):
    if ix <= 3:
        if c != 'Coolant_Pressure_bar':
            ax1 = fig.add_subplot(2,3,ix)
            sns.countplot(data = ds_cat, x=c, ax = ax1)
            ax2 = fig.add_subplot(2,3,ix+3)
            sns.boxplot(data=ds_cat, x=c, y='Coolant_Pressure_bar', ax=ax2)
            
            
    ix = ix +1
    if ix == 4: 
        fig = plt.figure(figsize = (15,10))
        ix =1


# In[611]:


ds_cat['Hydraulic_Oil_Temperature'] = Dataset.loc[ds_cat.index, 'Hydraulic_Oil_Temperature'].copy()

ix = 1
fig = plt.figure(figsize = (15,10))
for c in list(ds_cat.columns):
    if ix <= 3:
        if c != 'Hydraulic_Oil_Temperature':
            ax1 = fig.add_subplot(2,3,ix)
            sns.countplot(data = ds_cat, x=c, ax = ax1)
            ax2 = fig.add_subplot(2,3,ix+3)
            sns.boxplot(data=ds_cat, x=c, y='Hydraulic_Oil_Temperature', ax=ax2)
            
            
    ix = ix +1
    if ix == 4: 
        fig = plt.figure(figsize = (15,10))
        ix =1


# In[612]:


ds_cat['Spindle_Bearing_Temperature'] = Dataset.loc[ds_cat.index, 'Spindle_Bearing_Temperature'].copy()


ix = 1
fig = plt.figure(figsize = (15,10))
for c in list(ds_cat.columns):
    if ix <= 3:
        if c != 'Spindle_Bearing_Temperature':
            ax1 = fig.add_subplot(2,3,ix)
            sns.countplot(data = ds_cat, x=c, ax = ax1)
            ax2 = fig.add_subplot(2,3,ix+3)
            sns.boxplot(data=ds_cat, x=c, y='Spindle_Bearing_Temperature', ax=ax2)
            
            
    ix = ix +1
    if ix == 4: 
        fig = plt.figure(figsize = (15,10))
        ix =1


# In[615]:


ds_cat['Spindle_Vibration'] = Dataset.loc[ds_cat.index, 'Spindle_Vibration'].copy()


ix = 1
fig = plt.figure(figsize = (15,10))
for c in list(ds_cat.columns):
    if ix <= 3:
        if c != 'Spindle_Vibration':
            ax1 = fig.add_subplot(2,3,ix)
            sns.countplot(data = ds_cat, x=c, ax = ax1)
            ax2 = fig.add_subplot(2,3,ix+3)
            sns.boxplot(data=ds_cat, x=c, y='Spindle_Vibration', ax=ax2)
            
            
    ix = ix +1
    if ix == 4: 
        fig = plt.figure(figsize = (15,10))
        ix =1


# In[617]:


ds_cat['Tool_Vibration'] = Dataset.loc[ds_cat.index, 'Tool_Vibration'].copy()


ix = 1
fig = plt.figure(figsize = (15,10))
for c in list(ds_cat.columns):
    if ix <= 3:
        if c != 'Tool_Vibration':
            ax1 = fig.add_subplot(2,3,ix)
            sns.countplot(data = ds_cat, x=c, ax = ax1)
            ax2 = fig.add_subplot(2,3,ix+3)
            sns.boxplot(data=ds_cat, x=c, y='Tool_Vibration', ax=ax2)
            
            
    ix = ix +1
    if ix == 4: 
        fig = plt.figure(figsize = (15,10))
        ix =1


# In[625]:


ds_cat['Spindle_Speed_RPM'] = Dataset.loc[ds_cat.index, 'Spindle_Speed_RPM'].copy()


ix = 1
fig = plt.figure(figsize = (15,10))
for c in list(ds_cat.columns):
    if ix <= 3:
        if c != 'Spindle_Speed_RPM':
            ax1 = fig.add_subplot(2,3,ix)
            sns.countplot(data = ds_cat, x=c, ax = ax1)
            ax2 = fig.add_subplot(2,3,ix+3)
            sns.boxplot(data=ds_cat, x=c, y='Spindle_Speed_RPM', ax=ax2)
            
            
    ix = ix +1
    if ix == 4: 
        fig = plt.figure(figsize = (15,10))
        ix =1



# In[623]:


ds_cat['Voltage_volts'] = Dataset.loc[ds_cat.index, 'Voltage_volts'].copy()


ix = 1
fig = plt.figure(figsize = (15,10))
for c in list(ds_cat.columns):
    if ix <= 3:
        if c != 'Voltage_volts':
            ax1 = fig.add_subplot(2,3,ix)
            sns.countplot(data = ds_cat, x=c, ax = ax1)
            ax2 = fig.add_subplot(2,3,ix+3)
            sns.boxplot(data=ds_cat, x=c, y='Voltage_volts', ax=ax2)
            
            
    ix = ix +1
    if ix == 4: 
        fig = plt.figure(figsize = (15,10))
        ix =1


# In[627]:


ds_cat['Torque_Nm'] = Dataset.loc[ds_cat.index, 'Torque_Nm'].copy()


ix = 1
fig = plt.figure(figsize = (15,10))
for c in list(ds_cat.columns):
    if ix <= 3:
        if c != 'Torque_Nm':
            ax1 = fig.add_subplot(2,3,ix)
            sns.countplot(data = ds_cat, x=c, ax = ax1)
            ax2 = fig.add_subplot(2,3,ix+3)
            sns.boxplot(data=ds_cat, x=c, y='Torque_Nm', ax=ax2)
            
            
    ix = ix +1
    if ix == 4: 
        fig = plt.figure(figsize = (15,10))
        ix =1


# In[629]:


ds_cat['Cutting_kN'] = Dataset.loc[ds_cat.index, 'Cutting_kN'].copy()


ix = 1
fig = plt.figure(figsize = (15,10))
for c in list(ds_cat.columns):
    if ix <= 3:
        if c != 'Cutting_kN':
            ax1 = fig.add_subplot(2,3,ix)
            sns.countplot(data = ds_cat, x=c, ax = ax1)
            ax2 = fig.add_subplot(2,3,ix+3)
            sns.boxplot(data=ds_cat, x=c, y='Cutting_kN', ax=ax2)
            
            
    ix = ix +1
    if ix == 4: 
        fig = plt.figure(figsize = (15,10))
        ix =1


# In[631]:


sns.boxplot(x='Machine_ID', y='Hydraulic_Pressure_bar', data=Dataset)


# In[633]:


sns.boxplot(x='Machine_ID', y='Coolant_Pressure_bar', data=Dataset)


# In[635]:


sns.boxplot(x='Machine_ID', y='Air_System_Pressure_bar', data=Dataset)


# In[637]:


sns.boxplot(x='Machine_ID', y='Coolant_Temperature', data=Dataset)


# In[639]:


sns.boxplot(x='Machine_ID', y='Hydraulic_Oil_Temperature', data=Dataset)


# In[641]:


sns.boxplot(x='Machine_ID', y='Spindle_Bearing_Temperature', data=Dataset)


# In[643]:


sns.boxplot(x='Machine_ID', y='Spindle_Vibration', data=Dataset)


# In[645]:


sns.boxplot(x='Machine_ID', y='Tool_Vibration', data=Dataset)


# In[647]:


sns.boxplot(x='Machine_ID', y='Spindle_Speed_RPM', data=Dataset)


# In[649]:


sns.boxplot(x='Machine_ID', y='Voltage_volts', data=Dataset)


# In[651]:


sns.boxplot(x='Machine_ID', y='Torque_Nm', data=Dataset)


# In[653]:


sns.boxplot(x='Machine_ID', y='Cutting_kN', data=Dataset)


# In[669]:


sns.set_palette("Pastel1")
plt.figure(figsize=(10, 6))


# In[672]:


sns.pairplot(Dataset)
plt.suptitle('Pair Plot for DataFrame')
plt.show()


# In[676]:


quality_counts = Dataset['Machine_ID'].value_counts()
quality_counts 


# In[678]:


plt.figure(figsize=(8, 6))
plt.bar(quality_counts.index, quality_counts, color='maroon')
plt.title('Count Plot of Machine_ID')
plt.xlabel('Machine_ID')
plt.ylabel('Count')
plt.show()


# In[680]:


Dataset.hist(figsize=(14,14), xrot=45)
plt.show()


# In[682]:


plt.figure(figsize=(10, 8))


# In[698]:


sns.swarmplot(x="Machine_ID", y="Hydraulic_Pressure_bar", data=Dataset, palette='viridis')
plt.title('Swarm Plot for Machine_ID and Hydraulic_Pressure')
plt.xlabel('Machine_ID')
plt.ylabel('Hydraulic_Pressure')
plt.show()


# In[710]:


sns.set_style("darkgrid")
numerical_columns = Dataset.select_dtypes(include=["int64", "float64"]).columns
plt.figure(figsize=(14, len(numerical_columns) * 3))
for idx, feature in enumerate(numerical_columns, 1):
	plt.subplot(len(numerical_columns), 2, idx)
	sns.histplot(Dataset[feature], kde=True)
	plt.title(f"{feature} | Skewness: {round(Dataset[feature].skew(), 2)}")
plt.tight_layout()
plt.show()


# In[712]:


sns.set_style("darkgrid")
numerical_columns = Dataset.select_dtypes(include=["int64", "float64"]).columns
plt.figure(figsize=(14, len(numerical_columns) * 3))
for idx, feature in enumerate(numerical_columns, 1):
	plt.subplot(len(numerical_columns), 2, idx)
	sns.histplot(Dataset[feature], kde=True)
	plt.title(f"{feature} | Kurtosis: {round(Dataset[feature].kurt(), 2)}")
plt.tight_layout()
plt.show()



