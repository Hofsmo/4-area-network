# The four area test network
This README describes the data set for the four-area test network used by SINTEF Energy Research in several publications. The test network was first presented in [1] and has been used by SINTEF Energy Research in several studies [2,3]. In this README we are presenting a version most resembling the one presented in [2].

## Explanation of files

### 4_area_network_bus.csv
File containing data according to the case format defined by <www.matpower.org>.

### 4_area_network_gen.csv
File containing data according to the case format defined by <www.matpower.org>.

### 4_area_network_branch.csv
File containing data according to the case format defined by <www.matpower.org>.

### 4_area_network_gencost.csv
File containing data according to the case format defined by <www.matpower.org>.

### 4area_network_areas.csv
File containing data according to the case format defined by <www.matpower.org>.

### 4_area_network_gendata.csv
This file contains a table with information on the generated active power in MW for the different operating states. An example of such a table is given below.

|       | Bus no | generation | generation |
|-------|--------|------------|------------|
| OS no |        | 1          | 2          |
|       | 10     | 100        | 50         |
|       | 11     | 75         | 30         |

In the table there are two operating states denoted *1* and *2* and two buses with generation denoted *10* and *11*.

### 4area_network_opstates.csv
This file contains a specification of the time and duration of each operating state (operating state and delivery point data). All the operating states in the 4-area network represent an individual month of the year, as well as 24 hours for a representative week during this month. 

### 4_area_network_loaddata.csv
This file contains a table with information on the load demand in MW for the different operating states. In addition it includes the interruption cost that is assumed for each bus in the OPF-based model for load shedding. An example of such a table is given below.

|       | Type | Bus no | Interruption cost | demand | demand |
|-------|------|--------|-------------------|--------|--------|
| OS no |      |        |                   | 1      | 2      |
|       | 1    | 8      | 60                | 100    | 50     |
|       | 1    | 9      | 66                | 75     | 30     |

In the table there are two operating states denoted *1* and *2* and two load buses denoted *8* and *9*.

### 4_area_network_outagedata.csv
This file contains information on what type of equipment a component is and on what its reliability data are. An example of a table contained in such a file is given below.

|#  |Main Type |Type|From Bus|To bus|lambda|r  |length|
|---|----------|----|--------|------|------|---|------|
|1  |1         |4   |10      |11    |0.004 |10 |2     |

In the table *lambda* is the yearly failure rate and *r* is the outage time in hours. The *Main Type* and *Type* information is according to the tables below.

|Main Type              |Type number|
|-----------------------|-----------|
|Branch                 |1          |
|Bus                    |2          |
|Transformer            |3          |
|Protection and control |4          |
|Generator              |5          |

|Type                            |Type number|
|-----------------------------------|-----------|
|Transmission line 420kV            |1          |
|Transmission line 300-220kV        |2          |
|Transmission line 132kV            |3          |
|Transmission line 110kV-33kV       |4          |
|Power cable 420kV                  |5          |
|Power cable 330-220kV              |6          |
|Power cable 132kV                  |7          |
|Power cable 110-33kV               |8          |
|Transformer 420kV                  |9          |
|Transformer 300-220kV              |10         |
|Transformer 132kV                  |11         |
|Transformer 110-33kV               |12         |
|Generator 420-132kV, >150MVA       |13         |
|Generator 420-132kV, 150-100MVA    |14         |
|Generator 420-132kV, 100-50MVA     |15         |
|Generator 420-132kV, <50MVA        |16         |
|Generator 110-33kV, 0-120MVA       |17         |
|Transmission line 300 kV, TR A6429	|18	        |

### 4area_network_protcontdata.csv
This file contains reliability data for protection and control equipment in the 4-area network. The format is much like that of 4area_network_outagedata.csv, but lambda (the failure rate) here refers to unwanted spontaneous tripping of a circuit breaker. Further, it contains data on the conditional probability of missing tripping of circuit breaker (Pm), conditional probability of unwanted tripping of circuit breaker (Pu) and the time to restore supply after missing or unwanted tripping of breaker (rtime). Note that each row of this file represents a circuit breaker on the "from bus" end of the branch, so here there can be two rows per branch.

### compdata_component_relative_lambda.csv
This file contains relative factors for the time-dependence of the yearly failure rate of components. To get the failure rate for a specific point in time, the average yearly failure rate is multiplied with the relative factors for the relevant month, day, and hour. (The data are based on the Norwegian standardised system FASIT for collection, calculation and reporting of disturbance and reliability data.)

### compdata_component_relative_outage.csv
This file contains relative factors for the time-dependence of the outage time of components. To get the outage time for a specific point in time, the average outage time is multiplied with the relative factors for the relevant month, day, and hour. (The data are based on the Norwegian standardised system FASIT for collection, calculation and reporting of disturbance and reliability data.)

### custdata_relative_load.csv
This file contains relative factors for the load demand. To get the load demand for a specific load at a point in time, the load in the base case (operating state that is given in the 4-area network dataset by default) is multiplied with the relative factors for the relevant month, day, and hour. (The data are based on the Norwegian standardised system FASIT for collection, calculation and reporting of disturbance and reliability data.)


## References
[1] O. Gjerde, L. Aleixo, L. Warland, I. H. Døskeland, Integrated approach for reliability of electricity supply analysis - studies of demonstration network, in:  Proceedings of the 2012 CIGRE Session, Paris, 2012.\
[2] I. B. Sperstad, S. H. Jakobsen, O. Gjerde, Modelling of corrective actions in power system reliability analysis, in: PowerTech 2015, 2015.doi:10.1109/PTC.2015.7232453.\
[3] O. Gjerde, G. Kjølle, S. H. Jakobsen, V. V. Vadlamudi, Enhanced method for reliability of supply assessment - an integrated approach, in: 2016 Power Systems Computation Conference (PSCC), Genoa, 2016.doi:10.1109/PSCC.2016.7540989.\
