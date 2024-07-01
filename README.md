# ☕☕☕ World Coffee Roaster Review Analysis || SQL & Power BI

![image](https://github.com/linhnguyen2601/World-Coffee-Roaster-Review-Analysis/assets/166676829/f5c11dec-2beb-4a0c-a3b3-866733caef7a)

Datasource: FP20 Analytics Data Challenges: Challenge 16 — “World Roasters Review" 
https://zoomcharts.com/en/microsoft-power-bi-custom-visuals/challenges/fp20-analytics-may-2024

## 🍫 Introduction and Data Background
The dataset covers 1,245 reviews of 1,141 coffee brands from 294 roaster locations during the period from November 2017 to November 2022. 

The report shows where the coffee beans of each brand come from, the roasters that serve each brand, and the countries where the roasters operate. It also highlights which coffee brands received the best ratings and which ones are the most expensive. Additionally, the dataset provides short descriptions and information about the aromas and flavors (mouthfeel) of each coffee brand.

## 🍫 Objectives 
There are two main objectives for this project:

Objective 1: Effectively clean and transform the dataset to enable proper data analysis

Objective 2: Unveil interesting and useful insights from the data, answering business questions and providing strategic recommendations

## 🍫 Business Questions:
Q1: Which brand names are rated highest?

What is the range of ratings these brand names are assessed on? 

Q2: Is there a relationship between ratings and prices? 

What is the average price of the top-rated coffee brands compared to the average price of all coffee brands in the dataset?

Q3: What are the countries of origin and countries of production for these brand names? 

Are there any coffee brands that produce their beans in the same country where they are grown?

Q4: Are there any regional trends in ratings, such as whether certain regions consistently produce higher-rated coffees?

How do the prices of coffee brands from different countries of origin compare?

Q5: Which roasters have the highest average rating across all its brand names?

Q6: Which roasters have the most diverse range of coffee origins under their brand names?

Q7: What are the most common aroma and flavor profiles described in the dataset?

Q8: How do the ratings of medium-light roasts compare to those of light roasts?

## 🍫 Key Findings:
**1. Most highly rated brand names:**
   
  The most highly rated brand names receive a score of 97, with nine brands achieving this rating while the lowest rating a brand name in this dataset receive is 84. Additionally, **83% of brand names are rated between 92 and 95**.

**2. Rating and Price**

  As expected, there is a small positive correlation between rating and price. The higher the rating a brand receives, the more likely it is to be pricey.  
  
  The average price of top-rated brand-names are $28/100g, which is nearly **2.8 times** the average price of all coffee brands in the dataset.

**3. Countries of origin and countries of Production**

  Coffee beans of 60% of brand names originate from Ethiopia, Colombia, and Kenya. However, these beans are primarily roasted in the US (56.6%), Taiwan (31.53%), and Hawai'i (5.42%). If we consider the fact that Hawai'i is a part of the United States, then US roasters represent over 62% of the dataset.

  There are 33 brand names that have their coffee beans produced in the same country where those beans are grown. However, most of these brands are located in Guatemala (24), followed by Taiwan(8) and Kenya(1).

**4. Regional trend**
  
   On average, roasting companies in the US and Taiwan receive lower ratings compared to those in Australia, England, and Kenya, each with fewer than two roasters highlighted.

   The average price of coffee brands manufactured in the US ($9.26/100g) and Taiwan ($10.07/100g) hovers slightly below the dataset average of $10.48/100g. This may be influenced by the significant representation of brands from these two countries in the dataset.

   When compared with coffee from England and Australia, which is priced at $92/100g and $68/100g respectively, it's evident that coffee from the US and Taiwan is considerably less expensive.
  
**5. Roasters**

  Kakalove Cafe is the roaster with the largest number of brand names under its umbrella, with 91 brands, followed by JBC Coffee Roasters with 80 and Paradise Roasters with 77. Kakalove Cafe is a Taiwanese roaster, while JBC Coffee Roasters and Paradise Roasters are based in the US.

   Similar to the scenario with the countries of roasters, roasters owning the highest number of brand names are not rated as highly as those with a smaller number of brand names. Most of the top 20 highest-rated roasters, on average, have only one brand name.

   Some brand names have more than one roaster producing their coffee beans. Notably, Ethiopia Kayon Mountain has as many as five different coffee roasting companies.

**6. Roasters and Countries of Origin**

   The United States, with the highest number of roasters, imports coffee beans from all 27 countries of origin recorded in this dataset. Taiwan follows, importing from 18 countries, while other nations import from fewer than 6 countries.
  
  Most coffee brands source their beans from a single country, except for Espresso Holiday Blend and Nicaragua Mierish Finca La Huela Yellow Pacamara Honey, which import their beans from two countries. This could be due to changes in the brand's roaster or country of production, leading to a shift in the origin of their products.

**7. Aroma and Flavor**

  The most common aroma and flavor profiles described in the dataset is chocolate, nib, cocoa.

**8. Type of roast**

   By type of roast, nearly three-quarters of brand names are categorized as medium-light, while the next most popular category, light, is much lower at 16%. However, the difference in average ratings among these categories is minor.

**For dashboard data validation**: I use SQL, you can check my sourcecode in this repository.

**Lessions learned:**
Always define business questions before jumping into building dashboards in Power BI. A clear and thorough list of business questions will help the data analyst avoid any omissions in examining the data. More data charts mean a longer report and more pages. 

Recently I find the 3-30-300  rule is quite effective when it comes to building user-friendly dashboards. You can find here: https://www.youtube.com/watch?v=qM8jXKc9Qco.

I will have to find a way to shorten my report and reduce the number of pages with fewer charts. I could either revisit my business questions and discard those that are not necessary for the reader or apply more technical skills such as parameters or filters. See you in my upgraded version of this analysis ^^ 

